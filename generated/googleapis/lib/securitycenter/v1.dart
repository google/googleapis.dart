// Copyright 2019 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Security Command Center API - v1
///
/// Security Command Center API provides access to temporal views of assets and
/// findings within an organization.
///
/// For more information, see <https://cloud.google.com/security-command-center>
///
/// Create an instance of [SecurityCommandCenterApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersAssetsResource]
///   - [FoldersBigQueryExportsResource]
///   - [FoldersEventThreatDetectionSettingsResource]
///     - [FoldersEventThreatDetectionSettingsCustomModulesResource]
///     - [FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource]
///   - [FoldersFindingsResource]
///   - [FoldersLocationsResource]
///     - [FoldersLocationsMuteConfigsResource]
///   - [FoldersMuteConfigsResource]
///   - [FoldersNotificationConfigsResource]
///   - [FoldersSecurityHealthAnalyticsSettingsResource]
///     - [FoldersSecurityHealthAnalyticsSettingsCustomModulesResource]
/// - [FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource]
///   - [FoldersSourcesResource]
///     - [FoldersSourcesFindingsResource]
///       - [FoldersSourcesFindingsExternalSystemsResource]
/// - [OrganizationsResource]
///   - [OrganizationsAssetsResource]
///   - [OrganizationsAttackPathsResource]
///   - [OrganizationsBigQueryExportsResource]
///   - [OrganizationsEventThreatDetectionSettingsResource]
///     - [OrganizationsEventThreatDetectionSettingsCustomModulesResource]
/// - [OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource]
///   - [OrganizationsFindingsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsMuteConfigsResource]
///   - [OrganizationsMuteConfigsResource]
///   - [OrganizationsNotificationConfigsResource]
///   - [OrganizationsOperationsResource]
///   - [OrganizationsResourceValueConfigsResource]
///   - [OrganizationsSecurityHealthAnalyticsSettingsResource]
///     - [OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource]
/// -
/// [OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource]
///   - [OrganizationsSimulationsResource]
///     - [OrganizationsSimulationsAttackExposureResultsResource]
///       - [OrganizationsSimulationsAttackExposureResultsAttackPathsResource]
/// - [OrganizationsSimulationsAttackExposureResultsValuedResourcesResource]
///     - [OrganizationsSimulationsAttackPathsResource]
///     - [OrganizationsSimulationsValuedResourcesResource]
///       - [OrganizationsSimulationsValuedResourcesAttackPathsResource]
///   - [OrganizationsSourcesResource]
///     - [OrganizationsSourcesFindingsResource]
///       - [OrganizationsSourcesFindingsExternalSystemsResource]
///   - [OrganizationsValuedResourcesResource]
/// - [ProjectsResource]
///   - [ProjectsAssetsResource]
///   - [ProjectsBigQueryExportsResource]
///   - [ProjectsEventThreatDetectionSettingsResource]
///     - [ProjectsEventThreatDetectionSettingsCustomModulesResource]
///     - [ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource]
///   - [ProjectsFindingsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsMuteConfigsResource]
///   - [ProjectsMuteConfigsResource]
///   - [ProjectsNotificationConfigsResource]
///   - [ProjectsSecurityHealthAnalyticsSettingsResource]
///     - [ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource]
/// - [ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource]
///   - [ProjectsSourcesResource]
///     - [ProjectsSourcesFindingsResource]
///       - [ProjectsSourcesFindingsExternalSystemsResource]
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

/// Security Command Center API provides access to temporal views of assets and
/// findings within an organization.
class SecurityCommandCenterApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// See, edit, configure, and delete your Google Cloud Security Command Center
  /// data and see the email address for your Google Account
  static const securitycenterScope =
      'https://www.googleapis.com/auth/securitycenter';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  SecurityCommandCenterApi(
    http.Client client, {
    core.String rootUrl = 'https://securitycenter.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersAssetsResource get assets => FoldersAssetsResource(_requester);
  FoldersBigQueryExportsResource get bigQueryExports =>
      FoldersBigQueryExportsResource(_requester);
  FoldersEventThreatDetectionSettingsResource
  get eventThreatDetectionSettings =>
      FoldersEventThreatDetectionSettingsResource(_requester);
  FoldersFindingsResource get findings => FoldersFindingsResource(_requester);
  FoldersLocationsResource get locations =>
      FoldersLocationsResource(_requester);
  FoldersMuteConfigsResource get muteConfigs =>
      FoldersMuteConfigsResource(_requester);
  FoldersNotificationConfigsResource get notificationConfigs =>
      FoldersNotificationConfigsResource(_requester);
  FoldersSecurityHealthAnalyticsSettingsResource
  get securityHealthAnalyticsSettings =>
      FoldersSecurityHealthAnalyticsSettingsResource(_requester);
  FoldersSourcesResource get sources => FoldersSourcesResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersAssetsResource {
  final commons.ApiRequester _requester;

  FoldersAssetsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GroupAssetsResponse> group(
    GroupAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [compareDuration] - null
  ///
  /// [fieldMask] - null
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [readTime] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<ListAssetsResponse> list(
    core.String parent, {
    core.String? compareDuration,
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'compareDuration': ?compareDuration == null ? null : [compareDuration],
      'fieldMask': ?fieldMask == null ? null : [fieldMask],
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/assets/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
    SecurityMarks request,
    core.String name, {
    core.String? startTime,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'startTime': ?startTime == null ? null : [startTime],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityMarks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersBigQueryExportsResource {
  final commons.ApiRequester _requester;

  FoldersBigQueryExportsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [bigQueryExportId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> create(
    GoogleCloudSecuritycenterV1BigQueryExport request,
    core.String parent, {
    core.String? bigQueryExportId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'bigQueryExportId': ?bigQueryExportId == null ? null : [bigQueryExportId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/bigQueryExports/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBigQueryExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBigQueryExportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBigQueryExportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> patch(
    GoogleCloudSecuritycenterV1BigQueryExport request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsCustomModulesResource get customModules =>
      FoldersEventThreatDetectionSettingsCustomModulesResource(_requester);
  FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource
  get effectiveCustomModules =>
      FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource(
        _requester,
      );

  FoldersEventThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateEventThreatDetectionCustomModuleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateEventThreatDetectionCustomModuleResponse>
  validateCustomModule(
    ValidateEventThreatDetectionCustomModuleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':validateCustomModule';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateEventThreatDetectionCustomModuleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersEventThreatDetectionSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> create(
    EventThreatDetectionCustomModule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventThreatDetectionCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListDescendantEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDescendantEventThreatDetectionCustomModulesResponse>
  listDescendant(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> patch(
    EventThreatDetectionCustomModule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/eventThreatDetectionSettings/effectiveCustomModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EffectiveEventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EffectiveEventThreatDetectionCustomModule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EffectiveEventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEffectiveEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveEventThreatDetectionCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersFindingsResource {
  final commons.ApiRequester _requester;

  FoldersFindingsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
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
  async.Future<Operation> bulkMute(
    BulkMuteFindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:bulkMute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersLocationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsMuteConfigsResource get muteConfigs =>
      FoldersLocationsMuteConfigsResource(_requester);

  FoldersLocationsResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsMuteConfigsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsMuteConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> patch(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersMuteConfigsResource {
  final commons.ApiRequester _requester;

  FoldersMuteConfigsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [muteConfigId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> create(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String parent, {
    core.String? muteConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'muteConfigId': ?muteConfigId == null ? null : [muteConfigId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/muteConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMuteConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMuteConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMuteConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> patch(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersNotificationConfigsResource {
  final commons.ApiRequester _requester;

  FoldersNotificationConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [configId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> create(
    NotificationConfig request,
    core.String parent, {
    core.String? configId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'configId': ?configId == null ? null : [configId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/notificationConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^folders/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> patch(
    NotificationConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsCustomModulesResource
  get customModules =>
      FoldersSecurityHealthAnalyticsSettingsCustomModulesResource(_requester);
  FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource
  get effectiveCustomModules =>
      FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
        _requester,
      );

  FoldersSecurityHealthAnalyticsSettingsResource(commons.ApiRequester client)
    : _requester = client;
}

class FoldersSecurityHealthAnalyticsSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  create(
    GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecurityHealthAnalyticsCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListDescendantSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDescendantSecurityHealthAnalyticsCustomModulesResponse>
  listDescendant(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  patch(
    GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SimulateSecurityHealthAnalyticsCustomModuleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SimulateSecurityHealthAnalyticsCustomModuleResponse> simulate(
    SimulateSecurityHealthAnalyticsCustomModuleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/customModules:simulate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SimulateSecurityHealthAnalyticsCustomModuleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings/effectiveCustomModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListEffectiveSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveSecurityHealthAnalyticsCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersSourcesResource {
  final commons.ApiRequester _requester;

  FoldersSourcesFindingsResource get findings =>
      FoldersSourcesFindingsResource(_requester);

  FoldersSourcesResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersSourcesFindingsResource {
  final commons.ApiRequester _requester;

  FoldersSourcesFindingsExternalSystemsResource get externalSystems =>
      FoldersSourcesFindingsExternalSystemsResource(_requester);

  FoldersSourcesFindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupFindingsResponse> group(
    GroupFindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^folders/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [compareDuration] - null
  ///
  /// [fieldMask] - null
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [readTime] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingsResponse> list(
    core.String parent, {
    core.String? compareDuration,
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'compareDuration': ?compareDuration == null ? null : [compareDuration],
      'fieldMask': ?fieldMask == null ? null : [fieldMask],
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> patch(
    Finding request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setMute(
    SetMuteRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setState(
    SetFindingStateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
    SecurityMarks request,
    core.String name, {
    core.String? startTime,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'startTime': ?startTime == null ? null : [startTime],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityMarks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersSourcesFindingsExternalSystemsResource {
  final commons.ApiRequester _requester;

  FoldersSourcesFindingsExternalSystemsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/externalSystems/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1ExternalSystem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1ExternalSystem> patch(
    GoogleCloudSecuritycenterV1ExternalSystem request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsAssetsResource get assets =>
      OrganizationsAssetsResource(_requester);
  OrganizationsAttackPathsResource get attackPaths =>
      OrganizationsAttackPathsResource(_requester);
  OrganizationsBigQueryExportsResource get bigQueryExports =>
      OrganizationsBigQueryExportsResource(_requester);
  OrganizationsEventThreatDetectionSettingsResource
  get eventThreatDetectionSettings =>
      OrganizationsEventThreatDetectionSettingsResource(_requester);
  OrganizationsFindingsResource get findings =>
      OrganizationsFindingsResource(_requester);
  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);
  OrganizationsMuteConfigsResource get muteConfigs =>
      OrganizationsMuteConfigsResource(_requester);
  OrganizationsNotificationConfigsResource get notificationConfigs =>
      OrganizationsNotificationConfigsResource(_requester);
  OrganizationsOperationsResource get operations =>
      OrganizationsOperationsResource(_requester);
  OrganizationsResourceValueConfigsResource get resourceValueConfigs =>
      OrganizationsResourceValueConfigsResource(_requester);
  OrganizationsSecurityHealthAnalyticsSettingsResource
  get securityHealthAnalyticsSettings =>
      OrganizationsSecurityHealthAnalyticsSettingsResource(_requester);
  OrganizationsSimulationsResource get simulations =>
      OrganizationsSimulationsResource(_requester);
  OrganizationsSourcesResource get sources =>
      OrganizationsSourcesResource(_requester);
  OrganizationsValuedResourcesResource get valuedResources =>
      OrganizationsValuedResourcesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/organizationSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrganizationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrganizationSettings> getOrganizationSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrganizationSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/organizationSettings$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrganizationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<OrganizationSettings> updateOrganizationSettings(
    OrganizationSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return OrganizationSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsAssetsResource {
  final commons.ApiRequester _requester;

  OrganizationsAssetsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GroupAssetsResponse> group(
    GroupAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [compareDuration] - null
  ///
  /// [fieldMask] - null
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [readTime] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<ListAssetsResponse> list(
    core.String parent, {
    core.String? compareDuration,
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'compareDuration': ?compareDuration == null ? null : [compareDuration],
      'fieldMask': ?fieldMask == null ? null : [fieldMask],
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<Operation> runDiscovery(
    RunAssetDiscoveryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/assets:runDiscovery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/assets/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
    SecurityMarks request,
    core.String name, {
    core.String? startTime,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'startTime': ?startTime == null ? null : [startTime],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityMarks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsAttackPathsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttackPathsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttackPathsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsBigQueryExportsResource {
  final commons.ApiRequester _requester;

  OrganizationsBigQueryExportsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [bigQueryExportId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> create(
    GoogleCloudSecuritycenterV1BigQueryExport request,
    core.String parent, {
    core.String? bigQueryExportId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'bigQueryExportId': ?bigQueryExportId == null ? null : [bigQueryExportId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/bigQueryExports/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBigQueryExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBigQueryExportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBigQueryExportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> patch(
    GoogleCloudSecuritycenterV1BigQueryExport request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsCustomModulesResource
  get customModules =>
      OrganizationsEventThreatDetectionSettingsCustomModulesResource(
        _requester,
      );
  OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource
  get effectiveCustomModules =>
      OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource(
        _requester,
      );

  OrganizationsEventThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateEventThreatDetectionCustomModuleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateEventThreatDetectionCustomModuleResponse>
  validateCustomModule(
    ValidateEventThreatDetectionCustomModuleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':validateCustomModule';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateEventThreatDetectionCustomModuleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsEventThreatDetectionSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> create(
    EventThreatDetectionCustomModule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventThreatDetectionCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListDescendantEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDescendantEventThreatDetectionCustomModulesResponse>
  listDescendant(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> patch(
    EventThreatDetectionCustomModule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings/effectiveCustomModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EffectiveEventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EffectiveEventThreatDetectionCustomModule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EffectiveEventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEffectiveEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveEventThreatDetectionCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsFindingsResource {
  final commons.ApiRequester _requester;

  OrganizationsFindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
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
  async.Future<Operation> bulkMute(
    BulkMuteFindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:bulkMute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsMuteConfigsResource get muteConfigs =>
      OrganizationsLocationsMuteConfigsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsMuteConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsMuteConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> patch(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsMuteConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsMuteConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [muteConfigId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> create(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String parent, {
    core.String? muteConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'muteConfigId': ?muteConfigId == null ? null : [muteConfigId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/muteConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMuteConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMuteConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMuteConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> patch(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsNotificationConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsNotificationConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [configId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> create(
    NotificationConfig request,
    core.String parent, {
    core.String? configId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'configId': ?configId == null ? null : [configId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/notificationConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> patch(
    NotificationConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/operations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/operations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/operations$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [returnPartialSuccess] - null
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

class OrganizationsResourceValueConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsResourceValueConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateResourceValueConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateResourceValueConfigsResponse> batchCreate(
    BatchCreateResourceValueConfigsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/resourceValueConfigs:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateResourceValueConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/resourceValueConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/resourceValueConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1ResourceValueConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1ResourceValueConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListResourceValueConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListResourceValueConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/resourceValueConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResourceValueConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/resourceValueConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1ResourceValueConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1ResourceValueConfig> patch(
    GoogleCloudSecuritycenterV1ResourceValueConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource
  get customModules =>
      OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource(
        _requester,
      );
  OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource
  get effectiveCustomModules =>
      OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
        _requester,
      );

  OrganizationsSecurityHealthAnalyticsSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;
}

class OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  create(
    GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecurityHealthAnalyticsCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListDescendantSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDescendantSecurityHealthAnalyticsCustomModulesResponse>
  listDescendant(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  patch(
    GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SimulateSecurityHealthAnalyticsCustomModuleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SimulateSecurityHealthAnalyticsCustomModuleResponse> simulate(
    SimulateSecurityHealthAnalyticsCustomModuleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/customModules:simulate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SimulateSecurityHealthAnalyticsCustomModuleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings/effectiveCustomModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListEffectiveSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveSecurityHealthAnalyticsCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSimulationsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsResource
  get attackExposureResults =>
      OrganizationsSimulationsAttackExposureResultsResource(_requester);
  OrganizationsSimulationsAttackPathsResource get attackPaths =>
      OrganizationsSimulationsAttackPathsResource(_requester);
  OrganizationsSimulationsValuedResourcesResource get valuedResources =>
      OrganizationsSimulationsValuedResourcesResource(_requester);

  OrganizationsSimulationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/simulations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Simulation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Simulation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Simulation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSimulationsAttackExposureResultsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsAttackPathsResource
  get attackPaths =>
      OrganizationsSimulationsAttackExposureResultsAttackPathsResource(
        _requester,
      );
  OrganizationsSimulationsAttackExposureResultsValuedResourcesResource
  get valuedResources =>
      OrganizationsSimulationsAttackExposureResultsValuedResourcesResource(
        _requester,
      );

  OrganizationsSimulationsAttackExposureResultsResource(
    commons.ApiRequester client,
  ) : _requester = client;
}

class OrganizationsSimulationsAttackExposureResultsAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsAttackPathsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/attackExposureResults/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttackPathsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttackPathsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSimulationsAttackExposureResultsValuedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsValuedResourcesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/attackExposureResults/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListValuedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListValuedResourcesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/valuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListValuedResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSimulationsAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackPathsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+/simulations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttackPathsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttackPathsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSimulationsValuedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsValuedResourcesAttackPathsResource get attackPaths =>
      OrganizationsSimulationsValuedResourcesAttackPathsResource(_requester);

  OrganizationsSimulationsValuedResourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/valuedResources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValuedResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValuedResource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ValuedResource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+/simulations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListValuedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListValuedResourcesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/valuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListValuedResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSimulationsValuedResourcesAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsValuedResourcesAttackPathsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/valuedResources/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttackPathsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttackPathsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsResource get findings =>
      OrganizationsSourcesFindingsResource(_requester);

  OrganizationsSourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> create(
    Source request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> patch(
    Source request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSourcesFindingsResource {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsExternalSystemsResource get externalSystems =>
      OrganizationsSourcesFindingsExternalSystemsResource(_requester);

  OrganizationsSourcesFindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [findingId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> create(
    Finding request,
    core.String parent, {
    core.String? findingId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'findingId': ?findingId == null ? null : [findingId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupFindingsResponse> group(
    GroupFindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [compareDuration] - null
  ///
  /// [fieldMask] - null
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [readTime] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingsResponse> list(
    core.String parent, {
    core.String? compareDuration,
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'compareDuration': ?compareDuration == null ? null : [compareDuration],
      'fieldMask': ?fieldMask == null ? null : [fieldMask],
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> patch(
    Finding request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setMute(
    SetMuteRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setState(
    SetFindingStateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
    SecurityMarks request,
    core.String name, {
    core.String? startTime,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'startTime': ?startTime == null ? null : [startTime],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityMarks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSourcesFindingsExternalSystemsResource {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsExternalSystemsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/externalSystems/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1ExternalSystem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1ExternalSystem> patch(
    GoogleCloudSecuritycenterV1ExternalSystem request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsValuedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsValuedResourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListValuedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListValuedResourcesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/valuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListValuedResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAssetsResource get assets => ProjectsAssetsResource(_requester);
  ProjectsBigQueryExportsResource get bigQueryExports =>
      ProjectsBigQueryExportsResource(_requester);
  ProjectsEventThreatDetectionSettingsResource
  get eventThreatDetectionSettings =>
      ProjectsEventThreatDetectionSettingsResource(_requester);
  ProjectsFindingsResource get findings => ProjectsFindingsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsMuteConfigsResource get muteConfigs =>
      ProjectsMuteConfigsResource(_requester);
  ProjectsNotificationConfigsResource get notificationConfigs =>
      ProjectsNotificationConfigsResource(_requester);
  ProjectsSecurityHealthAnalyticsSettingsResource
  get securityHealthAnalyticsSettings =>
      ProjectsSecurityHealthAnalyticsSettingsResource(_requester);
  ProjectsSourcesResource get sources => ProjectsSourcesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAssetsResource {
  final commons.ApiRequester _requester;

  ProjectsAssetsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<GroupAssetsResponse> group(
    GroupAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [compareDuration] - null
  ///
  /// [fieldMask] - null
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [readTime] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<ListAssetsResponse> list(
    core.String parent, {
    core.String? compareDuration,
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'compareDuration': ?compareDuration == null ? null : [compareDuration],
      'fieldMask': ?fieldMask == null ? null : [fieldMask],
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/assets/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
    SecurityMarks request,
    core.String name, {
    core.String? startTime,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'startTime': ?startTime == null ? null : [startTime],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityMarks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsBigQueryExportsResource {
  final commons.ApiRequester _requester;

  ProjectsBigQueryExportsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [bigQueryExportId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> create(
    GoogleCloudSecuritycenterV1BigQueryExport request,
    core.String parent, {
    core.String? bigQueryExportId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'bigQueryExportId': ?bigQueryExportId == null ? null : [bigQueryExportId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/bigQueryExports/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBigQueryExportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBigQueryExportsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBigQueryExportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1BigQueryExport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1BigQueryExport> patch(
    GoogleCloudSecuritycenterV1BigQueryExport request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsCustomModulesResource get customModules =>
      ProjectsEventThreatDetectionSettingsCustomModulesResource(_requester);
  ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource
  get effectiveCustomModules =>
      ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource(
        _requester,
      );

  ProjectsEventThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateEventThreatDetectionCustomModuleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateEventThreatDetectionCustomModuleResponse>
  validateCustomModule(
    ValidateEventThreatDetectionCustomModuleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':validateCustomModule';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateEventThreatDetectionCustomModuleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsEventThreatDetectionSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> create(
    EventThreatDetectionCustomModule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventThreatDetectionCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListDescendantEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDescendantEventThreatDetectionCustomModulesResponse>
  listDescendant(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionCustomModule> patch(
    EventThreatDetectionCustomModule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/eventThreatDetectionSettings/effectiveCustomModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EffectiveEventThreatDetectionCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EffectiveEventThreatDetectionCustomModule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EffectiveEventThreatDetectionCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEffectiveEventThreatDetectionCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveEventThreatDetectionCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsFindingsResource {
  final commons.ApiRequester _requester;

  ProjectsFindingsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> bulkMute(
    BulkMuteFindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:bulkMute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMuteConfigsResource get muteConfigs =>
      ProjectsLocationsMuteConfigsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsMuteConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMuteConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> patch(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsMuteConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsMuteConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [muteConfigId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> create(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String parent, {
    core.String? muteConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'muteConfigId': ?muteConfigId == null ? null : [muteConfigId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/muteConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMuteConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMuteConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMuteConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1MuteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1MuteConfig> patch(
    GoogleCloudSecuritycenterV1MuteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsNotificationConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsNotificationConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [configId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> create(
    NotificationConfig request,
    core.String parent, {
    core.String? configId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'configId': ?configId == null ? null : [configId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/notificationConfigs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationConfigsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern `^projects/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationConfig> patch(
    NotificationConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource
  get customModules =>
      ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource(_requester);
  ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource
  get effectiveCustomModules =>
      ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
        _requester,
      );

  ProjectsSecurityHealthAnalyticsSettingsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  create(
    GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecurityHealthAnalyticsCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListDescendantSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDescendantSecurityHealthAnalyticsCustomModulesResponse>
  listDescendant(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>
  patch(
    GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SimulateSecurityHealthAnalyticsCustomModuleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SimulateSecurityHealthAnalyticsCustomModuleResponse> simulate(
    SimulateSecurityHealthAnalyticsCustomModuleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/customModules:simulate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SimulateSecurityHealthAnalyticsCustomModuleResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings/effectiveCustomModules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
    GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
  >
  get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [ListEffectiveSecurityHealthAnalyticsCustomModulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveSecurityHealthAnalyticsCustomModulesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesFindingsResource get findings =>
      ProjectsSourcesFindingsResource(_requester);

  ProjectsSourcesResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSourcesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSourcesFindingsResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesFindingsExternalSystemsResource get externalSystems =>
      ProjectsSourcesFindingsExternalSystemsResource(_requester);

  ProjectsSourcesFindingsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupFindingsResponse> group(
    GroupFindingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^projects/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [compareDuration] - null
  ///
  /// [fieldMask] - null
  ///
  /// [filter] - null
  ///
  /// [orderBy] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [readTime] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingsResponse> list(
    core.String parent, {
    core.String? compareDuration,
    core.String? fieldMask,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'compareDuration': ?compareDuration == null ? null : [compareDuration],
      'fieldMask': ?fieldMask == null ? null : [fieldMask],
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> patch(
    Finding request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setMute(
    SetMuteRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setState(
    SetFindingStateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setState';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - null
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
    SecurityMarks request,
    core.String name, {
    core.String? startTime,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'startTime': ?startTime == null ? null : [startTime],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityMarks.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSourcesFindingsExternalSystemsResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesFindingsExternalSystemsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/externalSystems/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudSecuritycenterV1ExternalSystem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudSecuritycenterV1ExternalSystem> patch(
    GoogleCloudSecuritycenterV1ExternalSystem request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class Access {
  core.String? callerIp;
  Geolocation? callerIpGeo;
  core.String? methodName;
  core.String? principalEmail;
  core.String? principalSubject;
  core.List<ServiceAccountDelegationInfo>? serviceAccountDelegationInfo;
  core.String? serviceAccountKeyName;
  core.String? serviceName;
  core.String? userAgent;
  core.String? userAgentFamily;
  core.String? userName;

  Access({
    this.callerIp,
    this.callerIpGeo,
    this.methodName,
    this.principalEmail,
    this.principalSubject,
    this.serviceAccountDelegationInfo,
    this.serviceAccountKeyName,
    this.serviceName,
    this.userAgent,
    this.userAgentFamily,
    this.userName,
  });

  Access.fromJson(core.Map json_)
    : this(
        callerIp: json_['callerIp'] as core.String?,
        callerIpGeo: json_.containsKey('callerIpGeo')
            ? Geolocation.fromJson(
                json_['callerIpGeo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        methodName: json_['methodName'] as core.String?,
        principalEmail: json_['principalEmail'] as core.String?,
        principalSubject: json_['principalSubject'] as core.String?,
        serviceAccountDelegationInfo:
            (json_['serviceAccountDelegationInfo'] as core.List?)
                ?.map(
                  (value) => ServiceAccountDelegationInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        serviceAccountKeyName: json_['serviceAccountKeyName'] as core.String?,
        serviceName: json_['serviceName'] as core.String?,
        userAgent: json_['userAgent'] as core.String?,
        userAgentFamily: json_['userAgentFamily'] as core.String?,
        userName: json_['userName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final callerIp = this.callerIp;
    final callerIpGeo = this.callerIpGeo;
    final methodName = this.methodName;
    final principalEmail = this.principalEmail;
    final principalSubject = this.principalSubject;
    final serviceAccountDelegationInfo = this.serviceAccountDelegationInfo;
    final serviceAccountKeyName = this.serviceAccountKeyName;
    final serviceName = this.serviceName;
    final userAgent = this.userAgent;
    final userAgentFamily = this.userAgentFamily;
    final userName = this.userName;
    return {
      'callerIp': ?callerIp,
      'callerIpGeo': ?callerIpGeo,
      'methodName': ?methodName,
      'principalEmail': ?principalEmail,
      'principalSubject': ?principalSubject,
      'serviceAccountDelegationInfo': ?serviceAccountDelegationInfo,
      'serviceAccountKeyName': ?serviceAccountKeyName,
      'serviceName': ?serviceName,
      'userAgent': ?userAgent,
      'userAgentFamily': ?userAgentFamily,
      'userName': ?userName,
    };
  }
}

class AccessReview {
  core.String? group;
  core.String? name;
  core.String? ns;
  core.String? resource;
  core.String? subresource;
  core.String? verb;
  core.String? version;

  AccessReview({
    this.group,
    this.name,
    this.ns,
    this.resource,
    this.subresource,
    this.verb,
    this.version,
  });

  AccessReview.fromJson(core.Map json_)
    : this(
        group: json_['group'] as core.String?,
        name: json_['name'] as core.String?,
        ns: json_['ns'] as core.String?,
        resource: json_['resource'] as core.String?,
        subresource: json_['subresource'] as core.String?,
        verb: json_['verb'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final group = this.group;
    final name = this.name;
    final ns = this.ns;
    final resource = this.resource;
    final subresource = this.subresource;
    final verb = this.verb;
    final version = this.version;
    return {
      'group': ?group,
      'name': ?name,
      'ns': ?ns,
      'resource': ?resource,
      'subresource': ?subresource,
      'verb': ?verb,
      'version': ?version,
    };
  }
}

class AdaptiveProtection {
  core.double? confidence;

  AdaptiveProtection({this.confidence});

  AdaptiveProtection.fromJson(core.Map json_)
    : this(confidence: (json_['confidence'] as core.num?)?.toDouble());

  core.Map<core.String, core.dynamic> toJson() {
    final confidence = this.confidence;
    return {'confidence': ?confidence};
  }
}

class AdcApplication {
  GoogleCloudSecuritycenterV1ResourceApplicationAttributes? attributes;
  core.String? name;

  AdcApplication({this.attributes, this.name});

  AdcApplication.fromJson(core.Map json_)
    : this(
        attributes: json_.containsKey('attributes')
            ? GoogleCloudSecuritycenterV1ResourceApplicationAttributes.fromJson(
                json_['attributes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final name = this.name;
    return {'attributes': ?attributes, 'name': ?name};
  }
}

typedef AdcApplicationTemplateRevision = $Shared00;
typedef AdcSharedTemplateRevision = $Shared00;

class AffectedResources {
  core.String? count;

  AffectedResources({this.count});

  AffectedResources.fromJson(core.Map json_)
    : this(count: json_['count'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    return {'count': ?count};
  }
}

typedef Agent = $Shared08;

class AgentAnomaly {
  core.double? confidenceScore;
  core.List<DetectorReference>? detectorReferences;
  core.List<InvocationReference>? invocationReferences;

  AgentAnomaly({
    this.confidenceScore,
    this.detectorReferences,
    this.invocationReferences,
  });

  AgentAnomaly.fromJson(core.Map json_)
    : this(
        confidenceScore: (json_['confidenceScore'] as core.num?)?.toDouble(),
        detectorReferences: (json_['detectorReferences'] as core.List?)
            ?.map(
              (value) => DetectorReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        invocationReferences: (json_['invocationReferences'] as core.List?)
            ?.map(
              (value) => InvocationReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidenceScore = this.confidenceScore;
    final detectorReferences = this.detectorReferences;
    final invocationReferences = this.invocationReferences;
    return {
      'confidenceScore': ?confidenceScore,
      'detectorReferences': ?detectorReferences,
      'invocationReferences': ?invocationReferences,
    };
  }
}

class AgentDataAccessEvent {
  core.String? eventId;
  core.String? eventTime;

  ///
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED"
  /// - "READ"
  /// - "MOVE"
  /// - "COPY"
  core.String? operation;
  core.String? principalSubject;

  AgentDataAccessEvent({
    this.eventId,
    this.eventTime,
    this.operation,
    this.principalSubject,
  });

  AgentDataAccessEvent.fromJson(core.Map json_)
    : this(
        eventId: json_['eventId'] as core.String?,
        eventTime: json_['eventTime'] as core.String?,
        operation: json_['operation'] as core.String?,
        principalSubject: json_['principalSubject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventId = this.eventId;
    final eventTime = this.eventTime;
    final operation = this.operation;
    final principalSubject = this.principalSubject;
    return {
      'eventId': ?eventId,
      'eventTime': ?eventTime,
      'operation': ?operation,
      'principalSubject': ?principalSubject,
    };
  }
}

class AgentSession {
  core.String? sessionId;

  AgentSession({this.sessionId});

  AgentSession.fromJson(core.Map json_)
    : this(sessionId: json_['sessionId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final sessionId = this.sessionId;
    return {'sessionId': ?sessionId};
  }
}

class AiModel {
  ///
  /// Possible string values are:
  /// - "DEPLOYMENT_PLATFORM_UNSPECIFIED"
  /// - "VERTEX_AI"
  /// - "GKE"
  /// - "GCE"
  /// - "FINE_TUNED_MODEL"
  core.String? deploymentPlatform;
  core.String? displayName;
  core.String? domain;
  core.String? library;
  core.String? location;
  core.String? name;
  core.String? publisher;
  core.String? usageCategory;

  AiModel({
    this.deploymentPlatform,
    this.displayName,
    this.domain,
    this.library,
    this.location,
    this.name,
    this.publisher,
    this.usageCategory,
  });

  AiModel.fromJson(core.Map json_)
    : this(
        deploymentPlatform: json_['deploymentPlatform'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        domain: json_['domain'] as core.String?,
        library: json_['library'] as core.String?,
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        publisher: json_['publisher'] as core.String?,
        usageCategory: json_['usageCategory'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deploymentPlatform = this.deploymentPlatform;
    final displayName = this.displayName;
    final domain = this.domain;
    final library = this.library;
    final location = this.location;
    final name = this.name;
    final publisher = this.publisher;
    final usageCategory = this.usageCategory;
    return {
      'deploymentPlatform': ?deploymentPlatform,
      'displayName': ?displayName,
      'domain': ?domain,
      'library': ?library,
      'location': ?location,
      'name': ?name,
      'publisher': ?publisher,
      'usageCategory': ?usageCategory,
    };
  }
}

class Allowed {
  core.List<IpRule>? ipRules;

  Allowed({this.ipRules});

  Allowed.fromJson(core.Map json_)
    : this(
        ipRules: (json_['ipRules'] as core.List?)
            ?.map(
              (value) =>
                  IpRule.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipRules = this.ipRules;
    return {'ipRules': ?ipRules};
  }
}

class Application {
  core.String? baseUri;
  core.String? fullUri;

  Application({this.baseUri, this.fullUri});

  Application.fromJson(core.Map json_)
    : this(
        baseUri: json_['baseUri'] as core.String?,
        fullUri: json_['fullUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseUri = this.baseUri;
    final fullUri = this.fullUri;
    return {'baseUri': ?baseUri, 'fullUri': ?fullUri};
  }
}

class ArtifactGuardPolicies {
  core.List<ArtifactGuardPolicy>? failingPolicies;
  core.String? resourceId;

  ArtifactGuardPolicies({this.failingPolicies, this.resourceId});

  ArtifactGuardPolicies.fromJson(core.Map json_)
    : this(
        failingPolicies: (json_['failingPolicies'] as core.List?)
            ?.map(
              (value) => ArtifactGuardPolicy.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resourceId: json_['resourceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final failingPolicies = this.failingPolicies;
    final resourceId = this.resourceId;
    return {'failingPolicies': ?failingPolicies, 'resourceId': ?resourceId};
  }
}

class ArtifactGuardPolicy {
  core.String? failureReason;
  core.String? policyId;

  ///
  /// Possible string values are:
  /// - "ARTIFACT_GUARD_POLICY_TYPE_UNSPECIFIED"
  /// - "VULNERABILITY"
  core.String? type;

  ArtifactGuardPolicy({this.failureReason, this.policyId, this.type});

  ArtifactGuardPolicy.fromJson(core.Map json_)
    : this(
        failureReason: json_['failureReason'] as core.String?,
        policyId: json_['policyId'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final failureReason = this.failureReason;
    final policyId = this.policyId;
    final type = this.type;
    return {
      'failureReason': ?failureReason,
      'policyId': ?policyId,
      'type': ?type,
    };
  }
}

class Asset {
  core.String? canonicalName;
  core.String? createTime;
  IamPolicy? iamPolicy;
  core.String? name;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resourceProperties;
  SecurityCenterProperties? securityCenterProperties;
  SecurityMarks? securityMarks;
  core.String? updateTime;

  Asset({
    this.canonicalName,
    this.createTime,
    this.iamPolicy,
    this.name,
    this.resourceProperties,
    this.securityCenterProperties,
    this.securityMarks,
    this.updateTime,
  });

  Asset.fromJson(core.Map json_)
    : this(
        canonicalName: json_['canonicalName'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        iamPolicy: json_.containsKey('iamPolicy')
            ? IamPolicy.fromJson(
                json_['iamPolicy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        resourceProperties: json_.containsKey('resourceProperties')
            ? json_['resourceProperties'] as core.Map<core.String, core.dynamic>
            : null,
        securityCenterProperties: json_.containsKey('securityCenterProperties')
            ? SecurityCenterProperties.fromJson(
                json_['securityCenterProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        securityMarks: json_.containsKey('securityMarks')
            ? SecurityMarks.fromJson(
                json_['securityMarks'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final canonicalName = this.canonicalName;
    final createTime = this.createTime;
    final iamPolicy = this.iamPolicy;
    final name = this.name;
    final resourceProperties = this.resourceProperties;
    final securityCenterProperties = this.securityCenterProperties;
    final securityMarks = this.securityMarks;
    final updateTime = this.updateTime;
    return {
      'canonicalName': ?canonicalName,
      'createTime': ?createTime,
      'iamPolicy': ?iamPolicy,
      'name': ?name,
      'resourceProperties': ?resourceProperties,
      'securityCenterProperties': ?securityCenterProperties,
      'securityMarks': ?securityMarks,
      'updateTime': ?updateTime,
    };
  }
}

class AssetDiscoveryConfig {
  core.List<core.String>? folderIds;

  ///
  /// Possible string values are:
  /// - "INCLUSION_MODE_UNSPECIFIED"
  /// - "INCLUDE_ONLY"
  /// - "EXCLUDE"
  core.String? inclusionMode;
  core.List<core.String>? projectIds;

  AssetDiscoveryConfig({this.folderIds, this.inclusionMode, this.projectIds});

  AssetDiscoveryConfig.fromJson(core.Map json_)
    : this(
        folderIds: (json_['folderIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        inclusionMode: json_['inclusionMode'] as core.String?,
        projectIds: (json_['projectIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final folderIds = this.folderIds;
    final inclusionMode = this.inclusionMode;
    final projectIds = this.projectIds;
    return {
      'folderIds': ?folderIds,
      'inclusionMode': ?inclusionMode,
      'projectIds': ?projectIds,
    };
  }
}

class Attack {
  core.String? classification;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? volumeBps;
  core.String? volumeBpsLong;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? volumePps;
  core.String? volumePpsLong;

  Attack({
    this.classification,
    this.volumeBps,
    this.volumeBpsLong,
    this.volumePps,
    this.volumePpsLong,
  });

  Attack.fromJson(core.Map json_)
    : this(
        classification: json_['classification'] as core.String?,
        volumeBps: json_['volumeBps'] as core.int?,
        volumeBpsLong: json_['volumeBpsLong'] as core.String?,
        volumePps: json_['volumePps'] as core.int?,
        volumePpsLong: json_['volumePpsLong'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final classification = this.classification;
    final volumeBps = this.volumeBps;
    final volumeBpsLong = this.volumeBpsLong;
    final volumePps = this.volumePps;
    final volumePpsLong = this.volumePpsLong;
    return {
      'classification': ?classification,
      'volumeBps': ?volumeBps,
      'volumeBpsLong': ?volumeBpsLong,
      'volumePps': ?volumePps,
      'volumePpsLong': ?volumePpsLong,
    };
  }
}

class AttackExposure {
  core.String? attackExposureResult;
  core.int? exposedHighValueResourcesCount;
  core.int? exposedLowValueResourcesCount;
  core.int? exposedMediumValueResourcesCount;
  core.String? latestCalculationTime;
  core.double? score;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "CALCULATED"
  /// - "NOT_CALCULATED"
  core.String? state;

  AttackExposure({
    this.attackExposureResult,
    this.exposedHighValueResourcesCount,
    this.exposedLowValueResourcesCount,
    this.exposedMediumValueResourcesCount,
    this.latestCalculationTime,
    this.score,
    this.state,
  });

  AttackExposure.fromJson(core.Map json_)
    : this(
        attackExposureResult: json_['attackExposureResult'] as core.String?,
        exposedHighValueResourcesCount:
            json_['exposedHighValueResourcesCount'] as core.int?,
        exposedLowValueResourcesCount:
            json_['exposedLowValueResourcesCount'] as core.int?,
        exposedMediumValueResourcesCount:
            json_['exposedMediumValueResourcesCount'] as core.int?,
        latestCalculationTime: json_['latestCalculationTime'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attackExposureResult = this.attackExposureResult;
    final exposedHighValueResourcesCount = this.exposedHighValueResourcesCount;
    final exposedLowValueResourcesCount = this.exposedLowValueResourcesCount;
    final exposedMediumValueResourcesCount =
        this.exposedMediumValueResourcesCount;
    final latestCalculationTime = this.latestCalculationTime;
    final score = this.score;
    final state = this.state;
    return {
      'attackExposureResult': ?attackExposureResult,
      'exposedHighValueResourcesCount': ?exposedHighValueResourcesCount,
      'exposedLowValueResourcesCount': ?exposedLowValueResourcesCount,
      'exposedMediumValueResourcesCount': ?exposedMediumValueResourcesCount,
      'latestCalculationTime': ?latestCalculationTime,
      'score': ?score,
      'state': ?state,
    };
  }
}

class AttackPath {
  core.List<AttackPathEdge>? edges;
  core.String? name;
  core.List<AttackPathNode>? pathNodes;

  AttackPath({this.edges, this.name, this.pathNodes});

  AttackPath.fromJson(core.Map json_)
    : this(
        edges: (json_['edges'] as core.List?)
            ?.map(
              (value) => AttackPathEdge.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        pathNodes: (json_['pathNodes'] as core.List?)
            ?.map(
              (value) => AttackPathNode.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final edges = this.edges;
    final name = this.name;
    final pathNodes = this.pathNodes;
    return {'edges': ?edges, 'name': ?name, 'pathNodes': ?pathNodes};
  }
}

class AttackPathEdge {
  core.String? destination;
  core.String? source;

  AttackPathEdge({this.destination, this.source});

  AttackPathEdge.fromJson(core.Map json_)
    : this(
        destination: json_['destination'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destination = this.destination;
    final source = this.source;
    return {'destination': ?destination, 'source': ?source};
  }
}

class AttackPathNode {
  core.List<PathNodeAssociatedFinding>? associatedFindings;
  core.List<AttackStepNode>? attackSteps;
  core.String? displayName;
  core.String? resource;
  core.String? resourceType;
  core.String? uuid;

  AttackPathNode({
    this.associatedFindings,
    this.attackSteps,
    this.displayName,
    this.resource,
    this.resourceType,
    this.uuid,
  });

  AttackPathNode.fromJson(core.Map json_)
    : this(
        associatedFindings: (json_['associatedFindings'] as core.List?)
            ?.map(
              (value) => PathNodeAssociatedFinding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        attackSteps: (json_['attackSteps'] as core.List?)
            ?.map(
              (value) => AttackStepNode.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        displayName: json_['displayName'] as core.String?,
        resource: json_['resource'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final associatedFindings = this.associatedFindings;
    final attackSteps = this.attackSteps;
    final displayName = this.displayName;
    final resource = this.resource;
    final resourceType = this.resourceType;
    final uuid = this.uuid;
    return {
      'associatedFindings': ?associatedFindings,
      'attackSteps': ?attackSteps,
      'displayName': ?displayName,
      'resource': ?resource,
      'resourceType': ?resourceType,
      'uuid': ?uuid,
    };
  }
}

class AttackStepNode {
  core.String? description;
  core.String? displayName;
  core.Map<core.String, core.String>? labels;

  ///
  /// Possible string values are:
  /// - "NODE_TYPE_UNSPECIFIED"
  /// - "NODE_TYPE_AND"
  /// - "NODE_TYPE_OR"
  /// - "NODE_TYPE_DEFENSE"
  /// - "NODE_TYPE_ATTACKER"
  core.String? type;
  core.String? uuid;

  AttackStepNode({
    this.description,
    this.displayName,
    this.labels,
    this.type,
    this.uuid,
  });

  AttackStepNode.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        type: json_['type'] as core.String?,
        uuid: json_['uuid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final labels = this.labels;
    final type = this.type;
    final uuid = this.uuid;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'type': ?type,
      'uuid': ?uuid,
    };
  }
}

class AuditConfig {
  core.List<AuditLogConfig>? auditLogConfigs;
  core.String? service;

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
}

class AuditLogConfig {
  core.List<core.String>? exemptedMembers;

  ///
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED"
  /// - "ADMIN_READ"
  /// - "DATA_WRITE"
  /// - "DATA_READ"
  core.String? logType;

  AuditLogConfig({this.exemptedMembers, this.logType});

  AuditLogConfig.fromJson(core.Map json_)
    : this(
        exemptedMembers: (json_['exemptedMembers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        logType: json_['logType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exemptedMembers = this.exemptedMembers;
    final logType = this.logType;
    return {'exemptedMembers': ?exemptedMembers, 'logType': ?logType};
  }
}

typedef AwsAccount = $Shared05;

class AwsMetadata {
  AwsAccount? account;
  AwsOrganization? organization;
  core.List<AwsOrganizationalUnit>? organizationalUnits;

  AwsMetadata({this.account, this.organization, this.organizationalUnits});

  AwsMetadata.fromJson(core.Map json_)
    : this(
        account: json_.containsKey('account')
            ? AwsAccount.fromJson(
                json_['account'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        organization: json_.containsKey('organization')
            ? AwsOrganization.fromJson(
                json_['organization'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        organizationalUnits: (json_['organizationalUnits'] as core.List?)
            ?.map(
              (value) => AwsOrganizationalUnit.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final account = this.account;
    final organization = this.organization;
    final organizationalUnits = this.organizationalUnits;
    return {
      'account': ?account,
      'organization': ?organization,
      'organizationalUnits': ?organizationalUnits,
    };
  }
}

typedef AwsOrganization = $Shared02;
typedef AwsOrganizationalUnit = $Shared05;
typedef AzureManagementGroup = $Shared08;

class AzureMetadata {
  core.List<AzureManagementGroup>? managementGroups;
  AzureResourceGroup? resourceGroup;
  AzureSubscription? subscription;
  AzureTenant? tenant;

  AzureMetadata({
    this.managementGroups,
    this.resourceGroup,
    this.subscription,
    this.tenant,
  });

  AzureMetadata.fromJson(core.Map json_)
    : this(
        managementGroups: (json_['managementGroups'] as core.List?)
            ?.map(
              (value) => AzureManagementGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resourceGroup: json_.containsKey('resourceGroup')
            ? AzureResourceGroup.fromJson(
                json_['resourceGroup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subscription: json_.containsKey('subscription')
            ? AzureSubscription.fromJson(
                json_['subscription'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tenant: json_.containsKey('tenant')
            ? AzureTenant.fromJson(
                json_['tenant'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final managementGroups = this.managementGroups;
    final resourceGroup = this.resourceGroup;
    final subscription = this.subscription;
    final tenant = this.tenant;
    return {
      'managementGroups': ?managementGroups,
      'resourceGroup': ?resourceGroup,
      'subscription': ?subscription,
      'tenant': ?tenant,
    };
  }
}

typedef AzureResourceGroup = $Shared05;
typedef AzureSubscription = $Shared08;
typedef AzureTenant = $Shared08;

class BackupDisasterRecovery {
  core.String? appliance;
  core.List<core.String>? applications;
  core.String? backupCreateTime;
  core.String? backupTemplate;
  core.String? backupType;
  core.String? host;
  core.List<core.String>? policies;
  core.List<core.String>? policyOptions;
  core.String? profile;
  core.String? storagePool;

  BackupDisasterRecovery({
    this.appliance,
    this.applications,
    this.backupCreateTime,
    this.backupTemplate,
    this.backupType,
    this.host,
    this.policies,
    this.policyOptions,
    this.profile,
    this.storagePool,
  });

  BackupDisasterRecovery.fromJson(core.Map json_)
    : this(
        appliance: json_['appliance'] as core.String?,
        applications: (json_['applications'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        backupCreateTime: json_['backupCreateTime'] as core.String?,
        backupTemplate: json_['backupTemplate'] as core.String?,
        backupType: json_['backupType'] as core.String?,
        host: json_['host'] as core.String?,
        policies: (json_['policies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        policyOptions: (json_['policyOptions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        profile: json_['profile'] as core.String?,
        storagePool: json_['storagePool'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appliance = this.appliance;
    final applications = this.applications;
    final backupCreateTime = this.backupCreateTime;
    final backupTemplate = this.backupTemplate;
    final backupType = this.backupType;
    final host = this.host;
    final policies = this.policies;
    final policyOptions = this.policyOptions;
    final profile = this.profile;
    final storagePool = this.storagePool;
    return {
      'appliance': ?appliance,
      'applications': ?applications,
      'backupCreateTime': ?backupCreateTime,
      'backupTemplate': ?backupTemplate,
      'backupType': ?backupType,
      'host': ?host,
      'policies': ?policies,
      'policyOptions': ?policyOptions,
      'profile': ?profile,
      'storagePool': ?storagePool,
    };
  }
}

class BatchCreateResourceValueConfigsRequest {
  core.List<CreateResourceValueConfigRequest>? requests;

  BatchCreateResourceValueConfigsRequest({this.requests});

  BatchCreateResourceValueConfigsRequest.fromJson(core.Map json_)
    : this(
        requests: (json_['requests'] as core.List?)
            ?.map(
              (value) => CreateResourceValueConfigRequest.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requests = this.requests;
    return {'requests': ?requests};
  }
}

class BatchCreateResourceValueConfigsResponse {
  core.List<GoogleCloudSecuritycenterV1ResourceValueConfig>?
  resourceValueConfigs;

  BatchCreateResourceValueConfigsResponse({this.resourceValueConfigs});

  BatchCreateResourceValueConfigsResponse.fromJson(core.Map json_)
    : this(
        resourceValueConfigs: (json_['resourceValueConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourceValueConfigs = this.resourceValueConfigs;
    return {'resourceValueConfigs': ?resourceValueConfigs};
  }
}

class Binding {
  Expr? condition;
  core.List<core.String>? members;
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? Expr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
}

class BulkMuteFindingsRequest {
  core.String? filter;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? muteAnnotation;

  ///
  /// Possible string values are:
  /// - "MUTE_STATE_UNSPECIFIED"
  /// - "MUTED"
  /// - "UNDEFINED"
  core.String? muteState;

  BulkMuteFindingsRequest({this.filter, this.muteAnnotation, this.muteState});

  BulkMuteFindingsRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        muteAnnotation: json_['muteAnnotation'] as core.String?,
        muteState: json_['muteState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    final muteAnnotation = this.muteAnnotation;
    final muteState = this.muteState;
    return {
      'filter': ?filter,
      'muteAnnotation': ?muteAnnotation,
      'muteState': ?muteState,
    };
  }
}

class Chokepoint {
  core.List<core.String>? relatedFindings;

  Chokepoint({this.relatedFindings});

  Chokepoint.fromJson(core.Map json_)
    : this(
        relatedFindings: (json_['relatedFindings'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final relatedFindings = this.relatedFindings;
    return {'relatedFindings': ?relatedFindings};
  }
}

class CloudArmor {
  AdaptiveProtection? adaptiveProtection;
  Attack? attack;
  core.String? duration;
  Requests? requests;
  SecurityPolicy? securityPolicy;
  core.String? threatVector;

  CloudArmor({
    this.adaptiveProtection,
    this.attack,
    this.duration,
    this.requests,
    this.securityPolicy,
    this.threatVector,
  });

  CloudArmor.fromJson(core.Map json_)
    : this(
        adaptiveProtection: json_.containsKey('adaptiveProtection')
            ? AdaptiveProtection.fromJson(
                json_['adaptiveProtection']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        attack: json_.containsKey('attack')
            ? Attack.fromJson(
                json_['attack'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        duration: json_['duration'] as core.String?,
        requests: json_.containsKey('requests')
            ? Requests.fromJson(
                json_['requests'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        securityPolicy: json_.containsKey('securityPolicy')
            ? SecurityPolicy.fromJson(
                json_['securityPolicy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        threatVector: json_['threatVector'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adaptiveProtection = this.adaptiveProtection;
    final attack = this.attack;
    final duration = this.duration;
    final requests = this.requests;
    final securityPolicy = this.securityPolicy;
    final threatVector = this.threatVector;
    return {
      'adaptiveProtection': ?adaptiveProtection,
      'attack': ?attack,
      'duration': ?duration,
      'requests': ?requests,
      'securityPolicy': ?securityPolicy,
      'threatVector': ?threatVector,
    };
  }
}

class CloudControl {
  core.String? cloudControlName;
  core.String? policyType;

  ///
  /// Possible string values are:
  /// - "CLOUD_CONTROL_TYPE_UNSPECIFIED"
  /// - "BUILT_IN"
  /// - "CUSTOM"
  core.String? type;
  core.int? version;

  CloudControl({
    this.cloudControlName,
    this.policyType,
    this.type,
    this.version,
  });

  CloudControl.fromJson(core.Map json_)
    : this(
        cloudControlName: json_['cloudControlName'] as core.String?,
        policyType: json_['policyType'] as core.String?,
        type: json_['type'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudControlName = this.cloudControlName;
    final policyType = this.policyType;
    final type = this.type;
    final version = this.version;
    return {
      'cloudControlName': ?cloudControlName,
      'policyType': ?policyType,
      'type': ?type,
      'version': ?version,
    };
  }
}

class CloudDlpDataProfile {
  core.String? dataProfile;
  core.List<InfoType>? infoTypes;

  ///
  /// Possible string values are:
  /// - "PARENT_TYPE_UNSPECIFIED"
  /// - "ORGANIZATION"
  /// - "PROJECT"
  core.String? parentType;

  CloudDlpDataProfile({this.dataProfile, this.infoTypes, this.parentType});

  CloudDlpDataProfile.fromJson(core.Map json_)
    : this(
        dataProfile: json_['dataProfile'] as core.String?,
        infoTypes: (json_['infoTypes'] as core.List?)
            ?.map(
              (value) => InfoType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        parentType: json_['parentType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataProfile = this.dataProfile;
    final infoTypes = this.infoTypes;
    final parentType = this.parentType;
    return {
      'dataProfile': ?dataProfile,
      'infoTypes': ?infoTypes,
      'parentType': ?parentType,
    };
  }
}

class CloudDlpInspection {
  core.bool? fullScan;
  core.String? infoType;
  core.String? infoTypeCount;
  core.String? inspectJob;

  CloudDlpInspection({
    this.fullScan,
    this.infoType,
    this.infoTypeCount,
    this.inspectJob,
  });

  CloudDlpInspection.fromJson(core.Map json_)
    : this(
        fullScan: json_['fullScan'] as core.bool?,
        infoType: json_['infoType'] as core.String?,
        infoTypeCount: json_['infoTypeCount'] as core.String?,
        inspectJob: json_['inspectJob'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fullScan = this.fullScan;
    final infoType = this.infoType;
    final infoTypeCount = this.infoTypeCount;
    final inspectJob = this.inspectJob;
    return {
      'fullScan': ?fullScan,
      'infoType': ?infoType,
      'infoTypeCount': ?infoTypeCount,
      'inspectJob': ?inspectJob,
    };
  }
}

class CloudLoggingEntry {
  core.String? insertId;
  core.String? logId;
  core.String? resourceContainer;
  core.String? timestamp;

  CloudLoggingEntry({
    this.insertId,
    this.logId,
    this.resourceContainer,
    this.timestamp,
  });

  CloudLoggingEntry.fromJson(core.Map json_)
    : this(
        insertId: json_['insertId'] as core.String?,
        logId: json_['logId'] as core.String?,
        resourceContainer: json_['resourceContainer'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final insertId = this.insertId;
    final logId = this.logId;
    final resourceContainer = this.resourceContainer;
    final timestamp = this.timestamp;
    return {
      'insertId': ?insertId,
      'logId': ?logId,
      'resourceContainer': ?resourceContainer,
      'timestamp': ?timestamp,
    };
  }
}

class Compliance {
  core.List<core.String>? ids;
  core.String? standard;
  core.String? version;

  Compliance({this.ids, this.standard, this.version});

  Compliance.fromJson(core.Map json_)
    : this(
        ids: (json_['ids'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        standard: json_['standard'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ids = this.ids;
    final standard = this.standard;
    final version = this.version;
    return {'ids': ?ids, 'standard': ?standard, 'version': ?version};
  }
}

class ComplianceDetails {
  CloudControl? cloudControl;
  core.List<core.String>? cloudControlDeploymentNames;
  core.List<Framework>? frameworks;

  ComplianceDetails({
    this.cloudControl,
    this.cloudControlDeploymentNames,
    this.frameworks,
  });

  ComplianceDetails.fromJson(core.Map json_)
    : this(
        cloudControl: json_.containsKey('cloudControl')
            ? CloudControl.fromJson(
                json_['cloudControl'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudControlDeploymentNames:
            (json_['cloudControlDeploymentNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        frameworks: (json_['frameworks'] as core.List?)
            ?.map(
              (value) => Framework.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudControl = this.cloudControl;
    final cloudControlDeploymentNames = this.cloudControlDeploymentNames;
    final frameworks = this.frameworks;
    return {
      'cloudControl': ?cloudControl,
      'cloudControlDeploymentNames': ?cloudControlDeploymentNames,
      'frameworks': ?frameworks,
    };
  }
}

class Connection {
  core.String? destinationIp;
  core.int? destinationPort;

  ///
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED"
  /// - "ICMP"
  /// - "TCP"
  /// - "UDP"
  /// - "GRE"
  /// - "ESP"
  core.String? protocol;
  core.String? sourceIp;
  core.int? sourcePort;

  Connection({
    this.destinationIp,
    this.destinationPort,
    this.protocol,
    this.sourceIp,
    this.sourcePort,
  });

  Connection.fromJson(core.Map json_)
    : this(
        destinationIp: json_['destinationIp'] as core.String?,
        destinationPort: json_['destinationPort'] as core.int?,
        protocol: json_['protocol'] as core.String?,
        sourceIp: json_['sourceIp'] as core.String?,
        sourcePort: json_['sourcePort'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinationIp = this.destinationIp;
    final destinationPort = this.destinationPort;
    final protocol = this.protocol;
    final sourceIp = this.sourceIp;
    final sourcePort = this.sourcePort;
    return {
      'destinationIp': ?destinationIp,
      'destinationPort': ?destinationPort,
      'protocol': ?protocol,
      'sourceIp': ?sourceIp,
      'sourcePort': ?sourcePort,
    };
  }
}

typedef Contact = $Shared30;

class ContactDetails {
  core.List<Contact>? contacts;

  ContactDetails({this.contacts});

  ContactDetails.fromJson(core.Map json_)
    : this(
        contacts: (json_['contacts'] as core.List?)
            ?.map(
              (value) => Contact.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contacts = this.contacts;
    return {'contacts': ?contacts};
  }
}

class Container {
  core.String? createTime;
  core.String? imageId;
  core.List<Label>? labels;
  core.String? name;
  core.String? uri;

  Container({this.createTime, this.imageId, this.labels, this.name, this.uri});

  Container.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        imageId: json_['imageId'] as core.String?,
        labels: (json_['labels'] as core.List?)
            ?.map(
              (value) =>
                  Label.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        name: json_['name'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final imageId = this.imageId;
    final labels = this.labels;
    final name = this.name;
    final uri = this.uri;
    return {
      'createTime': ?createTime,
      'imageId': ?imageId,
      'labels': ?labels,
      'name': ?name,
      'uri': ?uri,
    };
  }
}

class Control {
  core.String? controlName;
  core.String? displayName;

  Control({this.controlName, this.displayName});

  Control.fromJson(core.Map json_)
    : this(
        controlName: json_['controlName'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final controlName = this.controlName;
    final displayName = this.displayName;
    return {'controlName': ?controlName, 'displayName': ?displayName};
  }
}

class CreateResourceValueConfigRequest {
  core.String? parent;
  GoogleCloudSecuritycenterV1ResourceValueConfig? resourceValueConfig;

  CreateResourceValueConfigRequest({this.parent, this.resourceValueConfig});

  CreateResourceValueConfigRequest.fromJson(core.Map json_)
    : this(
        parent: json_['parent'] as core.String?,
        resourceValueConfig: json_.containsKey('resourceValueConfig')
            ? GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
                json_['resourceValueConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parent = this.parent;
    final resourceValueConfig = this.resourceValueConfig;
    return {'parent': ?parent, 'resourceValueConfig': ?resourceValueConfig};
  }
}

class CustomModuleValidationError {
  core.String? description;
  Position? end;
  core.String? fieldPath;
  Position? start;

  CustomModuleValidationError({
    this.description,
    this.end,
    this.fieldPath,
    this.start,
  });

  CustomModuleValidationError.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        end: json_.containsKey('end')
            ? Position.fromJson(
                json_['end'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldPath: json_['fieldPath'] as core.String?,
        start: json_.containsKey('start')
            ? Position.fromJson(
                json_['start'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final end = this.end;
    final fieldPath = this.fieldPath;
    final start = this.start;
    return {
      'description': ?description,
      'end': ?end,
      'fieldPath': ?fieldPath,
      'start': ?start,
    };
  }
}

class CustomModuleValidationErrors {
  core.List<CustomModuleValidationError>? errors;

  CustomModuleValidationErrors({this.errors});

  CustomModuleValidationErrors.fromJson(core.Map json_)
    : this(
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => CustomModuleValidationError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errors = this.errors;
    return {'errors': ?errors};
  }
}

class Cve {
  Cvssv3? cvssv3;
  core.String? exploitReleaseDate;

  ///
  /// Possible string values are:
  /// - "EXPLOITATION_ACTIVITY_UNSPECIFIED"
  /// - "WIDE"
  /// - "CONFIRMED"
  /// - "AVAILABLE"
  /// - "ANTICIPATED"
  /// - "NO_KNOWN"
  core.String? exploitationActivity;
  core.String? firstExploitationDate;
  core.String? id;

  ///
  /// Possible string values are:
  /// - "RISK_RATING_UNSPECIFIED"
  /// - "LOW"
  /// - "MEDIUM"
  /// - "HIGH"
  /// - "CRITICAL"
  core.String? impact;
  core.bool? observedInTheWild;
  core.List<Reference>? references;
  core.bool? upstreamFixAvailable;
  core.bool? zeroDay;

  Cve({
    this.cvssv3,
    this.exploitReleaseDate,
    this.exploitationActivity,
    this.firstExploitationDate,
    this.id,
    this.impact,
    this.observedInTheWild,
    this.references,
    this.upstreamFixAvailable,
    this.zeroDay,
  });

  Cve.fromJson(core.Map json_)
    : this(
        cvssv3: json_.containsKey('cvssv3')
            ? Cvssv3.fromJson(
                json_['cvssv3'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        exploitReleaseDate: json_['exploitReleaseDate'] as core.String?,
        exploitationActivity: json_['exploitationActivity'] as core.String?,
        firstExploitationDate: json_['firstExploitationDate'] as core.String?,
        id: json_['id'] as core.String?,
        impact: json_['impact'] as core.String?,
        observedInTheWild: json_['observedInTheWild'] as core.bool?,
        references: (json_['references'] as core.List?)
            ?.map(
              (value) => Reference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        upstreamFixAvailable: json_['upstreamFixAvailable'] as core.bool?,
        zeroDay: json_['zeroDay'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cvssv3 = this.cvssv3;
    final exploitReleaseDate = this.exploitReleaseDate;
    final exploitationActivity = this.exploitationActivity;
    final firstExploitationDate = this.firstExploitationDate;
    final id = this.id;
    final impact = this.impact;
    final observedInTheWild = this.observedInTheWild;
    final references = this.references;
    final upstreamFixAvailable = this.upstreamFixAvailable;
    final zeroDay = this.zeroDay;
    return {
      'cvssv3': ?cvssv3,
      'exploitReleaseDate': ?exploitReleaseDate,
      'exploitationActivity': ?exploitationActivity,
      'firstExploitationDate': ?firstExploitationDate,
      'id': ?id,
      'impact': ?impact,
      'observedInTheWild': ?observedInTheWild,
      'references': ?references,
      'upstreamFixAvailable': ?upstreamFixAvailable,
      'zeroDay': ?zeroDay,
    };
  }
}

class Cvssv3 {
  ///
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED"
  /// - "ATTACK_COMPLEXITY_LOW"
  /// - "ATTACK_COMPLEXITY_HIGH"
  core.String? attackComplexity;

  ///
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED"
  /// - "ATTACK_VECTOR_NETWORK"
  /// - "ATTACK_VECTOR_ADJACENT"
  /// - "ATTACK_VECTOR_LOCAL"
  /// - "ATTACK_VECTOR_PHYSICAL"
  core.String? attackVector;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? availabilityImpact;
  core.double? baseScore;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? confidentialityImpact;

  ///
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED"
  /// - "IMPACT_HIGH"
  /// - "IMPACT_LOW"
  /// - "IMPACT_NONE"
  core.String? integrityImpact;

  ///
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED"
  /// - "PRIVILEGES_REQUIRED_NONE"
  /// - "PRIVILEGES_REQUIRED_LOW"
  /// - "PRIVILEGES_REQUIRED_HIGH"
  core.String? privilegesRequired;

  ///
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED"
  /// - "SCOPE_UNCHANGED"
  /// - "SCOPE_CHANGED"
  core.String? scope;

  ///
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED"
  /// - "USER_INTERACTION_NONE"
  /// - "USER_INTERACTION_REQUIRED"
  core.String? userInteraction;

  Cvssv3({
    this.attackComplexity,
    this.attackVector,
    this.availabilityImpact,
    this.baseScore,
    this.confidentialityImpact,
    this.integrityImpact,
    this.privilegesRequired,
    this.scope,
    this.userInteraction,
  });

  Cvssv3.fromJson(core.Map json_)
    : this(
        attackComplexity: json_['attackComplexity'] as core.String?,
        attackVector: json_['attackVector'] as core.String?,
        availabilityImpact: json_['availabilityImpact'] as core.String?,
        baseScore: (json_['baseScore'] as core.num?)?.toDouble(),
        confidentialityImpact: json_['confidentialityImpact'] as core.String?,
        integrityImpact: json_['integrityImpact'] as core.String?,
        privilegesRequired: json_['privilegesRequired'] as core.String?,
        scope: json_['scope'] as core.String?,
        userInteraction: json_['userInteraction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attackComplexity = this.attackComplexity;
    final attackVector = this.attackVector;
    final availabilityImpact = this.availabilityImpact;
    final baseScore = this.baseScore;
    final confidentialityImpact = this.confidentialityImpact;
    final integrityImpact = this.integrityImpact;
    final privilegesRequired = this.privilegesRequired;
    final scope = this.scope;
    final userInteraction = this.userInteraction;
    return {
      'attackComplexity': ?attackComplexity,
      'attackVector': ?attackVector,
      'availabilityImpact': ?availabilityImpact,
      'baseScore': ?baseScore,
      'confidentialityImpact': ?confidentialityImpact,
      'integrityImpact': ?integrityImpact,
      'privilegesRequired': ?privilegesRequired,
      'scope': ?scope,
      'userInteraction': ?userInteraction,
    };
  }
}

class Cwe {
  core.String? id;
  core.List<Reference>? references;

  Cwe({this.id, this.references});

  Cwe.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        references: (json_['references'] as core.List?)
            ?.map(
              (value) => Reference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final references = this.references;
    return {'id': ?id, 'references': ?references};
  }
}

class DataAccessEvent {
  core.String? eventId;
  core.String? eventTime;

  ///
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED"
  /// - "READ"
  /// - "MOVE"
  /// - "COPY"
  core.String? operation;
  core.String? principalEmail;

  DataAccessEvent({
    this.eventId,
    this.eventTime,
    this.operation,
    this.principalEmail,
  });

  DataAccessEvent.fromJson(core.Map json_)
    : this(
        eventId: json_['eventId'] as core.String?,
        eventTime: json_['eventTime'] as core.String?,
        operation: json_['operation'] as core.String?,
        principalEmail: json_['principalEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventId = this.eventId;
    final eventTime = this.eventTime;
    final operation = this.operation;
    final principalEmail = this.principalEmail;
    return {
      'eventId': ?eventId,
      'eventTime': ?eventTime,
      'operation': ?operation,
      'principalEmail': ?principalEmail,
    };
  }
}

class DataFlowEvent {
  core.String? eventId;
  core.String? eventTime;

  ///
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED"
  /// - "READ"
  /// - "MOVE"
  /// - "COPY"
  core.String? operation;
  core.String? principalEmail;
  core.String? violatedLocation;

  DataFlowEvent({
    this.eventId,
    this.eventTime,
    this.operation,
    this.principalEmail,
    this.violatedLocation,
  });

  DataFlowEvent.fromJson(core.Map json_)
    : this(
        eventId: json_['eventId'] as core.String?,
        eventTime: json_['eventTime'] as core.String?,
        operation: json_['operation'] as core.String?,
        principalEmail: json_['principalEmail'] as core.String?,
        violatedLocation: json_['violatedLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventId = this.eventId;
    final eventTime = this.eventTime;
    final operation = this.operation;
    final principalEmail = this.principalEmail;
    final violatedLocation = this.violatedLocation;
    return {
      'eventId': ?eventId,
      'eventTime': ?eventTime,
      'operation': ?operation,
      'principalEmail': ?principalEmail,
      'violatedLocation': ?violatedLocation,
    };
  }
}

class DataRetentionDeletionEvent {
  core.String? dataObjectCount;
  core.String? eventDetectionTime;

  ///
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED"
  /// - "EVENT_TYPE_MAX_TTL_EXCEEDED"
  /// - "EVENT_TYPE_MAX_TTL_FROM_CREATION"
  /// - "EVENT_TYPE_MAX_TTL_FROM_LAST_MODIFICATION"
  /// - "EVENT_TYPE_MIN_TTL_FROM_CREATION"
  core.String? eventType;
  core.String? maxRetentionAllowed;
  core.String? minRetentionAllowed;

  DataRetentionDeletionEvent({
    this.dataObjectCount,
    this.eventDetectionTime,
    this.eventType,
    this.maxRetentionAllowed,
    this.minRetentionAllowed,
  });

  DataRetentionDeletionEvent.fromJson(core.Map json_)
    : this(
        dataObjectCount: json_['dataObjectCount'] as core.String?,
        eventDetectionTime: json_['eventDetectionTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
        maxRetentionAllowed: json_['maxRetentionAllowed'] as core.String?,
        minRetentionAllowed: json_['minRetentionAllowed'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataObjectCount = this.dataObjectCount;
    final eventDetectionTime = this.eventDetectionTime;
    final eventType = this.eventType;
    final maxRetentionAllowed = this.maxRetentionAllowed;
    final minRetentionAllowed = this.minRetentionAllowed;
    return {
      'dataObjectCount': ?dataObjectCount,
      'eventDetectionTime': ?eventDetectionTime,
      'eventType': ?eventType,
      'maxRetentionAllowed': ?maxRetentionAllowed,
      'minRetentionAllowed': ?minRetentionAllowed,
    };
  }
}

class Database {
  core.String? displayName;
  core.List<core.String>? grantees;
  core.String? name;
  core.String? query;
  core.String? userName;
  core.String? version;

  Database({
    this.displayName,
    this.grantees,
    this.name,
    this.query,
    this.userName,
    this.version,
  });

  Database.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        grantees: (json_['grantees'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        query: json_['query'] as core.String?,
        userName: json_['userName'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final grantees = this.grantees;
    final name = this.name;
    final query = this.query;
    final userName = this.userName;
    final version = this.version;
    return {
      'displayName': ?displayName,
      'grantees': ?grantees,
      'name': ?name,
      'query': ?query,
      'userName': ?userName,
      'version': ?version,
    };
  }
}

class Dataset {
  core.String? displayName;
  core.String? name;
  core.String? source;

  Dataset({this.displayName, this.name, this.source});

  Dataset.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final source = this.source;
    return {'displayName': ?displayName, 'name': ?name, 'source': ?source};
  }
}

class Denied {
  core.List<IpRule>? ipRules;

  Denied({this.ipRules});

  Denied.fromJson(core.Map json_)
    : this(
        ipRules: (json_['ipRules'] as core.List?)
            ?.map(
              (value) =>
                  IpRule.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipRules = this.ipRules;
    return {'ipRules': ?ipRules};
  }
}

class Detection {
  core.String? binary;
  core.double? percentPagesMatched;

  Detection({this.binary, this.percentPagesMatched});

  Detection.fromJson(core.Map json_)
    : this(
        binary: json_['binary'] as core.String?,
        percentPagesMatched: (json_['percentPagesMatched'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final binary = this.binary;
    final percentPagesMatched = this.percentPagesMatched;
    return {'binary': ?binary, 'percentPagesMatched': ?percentPagesMatched};
  }
}

class DetectorReference {
  core.String? detectorId;
  core.String? displayName;
  core.String? explanation;
  core.String? recommendation;

  ///
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "CRITICAL"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  core.String? severity;

  DetectorReference({
    this.detectorId,
    this.displayName,
    this.explanation,
    this.recommendation,
    this.severity,
  });

  DetectorReference.fromJson(core.Map json_)
    : this(
        detectorId: json_['detectorId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        explanation: json_['explanation'] as core.String?,
        recommendation: json_['recommendation'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final detectorId = this.detectorId;
    final displayName = this.displayName;
    final explanation = this.explanation;
    final recommendation = this.recommendation;
    final severity = this.severity;
    return {
      'detectorId': ?detectorId,
      'displayName': ?displayName,
      'explanation': ?explanation,
      'recommendation': ?recommendation,
      'severity': ?severity,
    };
  }
}

class DiscoveredWorkload {
  ///
  /// Possible string values are:
  /// - "CONFIDENCE_UNSPECIFIED"
  /// - "CONFIDENCE_HIGH"
  core.String? confidence;
  core.bool? detectedRelevantHardware;
  core.bool? detectedRelevantKeywords;
  core.bool? detectedRelevantPackages;

  ///
  /// Possible string values are:
  /// - "WORKLOAD_TYPE_UNSPECIFIED"
  /// - "MCP_SERVER"
  /// - "AI_INFERENCE"
  /// - "AGENT"
  core.String? workloadType;

  DiscoveredWorkload({
    this.confidence,
    this.detectedRelevantHardware,
    this.detectedRelevantKeywords,
    this.detectedRelevantPackages,
    this.workloadType,
  });

  DiscoveredWorkload.fromJson(core.Map json_)
    : this(
        confidence: json_['confidence'] as core.String?,
        detectedRelevantHardware:
            json_['detectedRelevantHardware'] as core.bool?,
        detectedRelevantKeywords:
            json_['detectedRelevantKeywords'] as core.bool?,
        detectedRelevantPackages:
            json_['detectedRelevantPackages'] as core.bool?,
        workloadType: json_['workloadType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final confidence = this.confidence;
    final detectedRelevantHardware = this.detectedRelevantHardware;
    final detectedRelevantKeywords = this.detectedRelevantKeywords;
    final detectedRelevantPackages = this.detectedRelevantPackages;
    final workloadType = this.workloadType;
    return {
      'confidence': ?confidence,
      'detectedRelevantHardware': ?detectedRelevantHardware,
      'detectedRelevantKeywords': ?detectedRelevantKeywords,
      'detectedRelevantPackages': ?detectedRelevantPackages,
      'workloadType': ?workloadType,
    };
  }
}

typedef Disk = $Shared00;

class DiskPath {
  core.String? partitionUuid;
  core.String? relativePath;

  DiskPath({this.partitionUuid, this.relativePath});

  DiskPath.fromJson(core.Map json_)
    : this(
        partitionUuid: json_['partitionUuid'] as core.String?,
        relativePath: json_['relativePath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final partitionUuid = this.partitionUuid;
    final relativePath = this.relativePath;
    return {'partitionUuid': ?partitionUuid, 'relativePath': ?relativePath};
  }
}

class DynamicMuteRecord {
  core.String? matchTime;
  core.String? muteConfig;

  DynamicMuteRecord({this.matchTime, this.muteConfig});

  DynamicMuteRecord.fromJson(core.Map json_)
    : this(
        matchTime: json_['matchTime'] as core.String?,
        muteConfig: json_['muteConfig'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final matchTime = this.matchTime;
    final muteConfig = this.muteConfig;
    return {'matchTime': ?matchTime, 'muteConfig': ?muteConfig};
  }
}

class EffectiveEventThreatDetectionCustomModule {
  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? config;
  core.String? description;
  core.String? displayName;

  ///
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED"
  /// - "ENABLED"
  /// - "DISABLED"
  core.String? enablementState;
  core.String? name;
  core.String? type;

  EffectiveEventThreatDetectionCustomModule({
    this.cloudProvider,
    this.config,
    this.description,
    this.displayName,
    this.enablementState,
    this.name,
    this.type,
  });

  EffectiveEventThreatDetectionCustomModule.fromJson(core.Map json_)
    : this(
        cloudProvider: json_['cloudProvider'] as core.String?,
        config: json_.containsKey('config')
            ? json_['config'] as core.Map<core.String, core.dynamic>
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enablementState: json_['enablementState'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudProvider = this.cloudProvider;
    final config = this.config;
    final description = this.description;
    final displayName = this.displayName;
    final enablementState = this.enablementState;
    final name = this.name;
    final type = this.type;
    return {
      'cloudProvider': ?cloudProvider,
      'config': ?config,
      'description': ?description,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'name': ?name,
      'type': ?type,
    };
  }
}

typedef Empty = $Empty;

class EnvironmentVariable {
  core.String? name;
  core.String? val;

  EnvironmentVariable({this.name, this.val});

  EnvironmentVariable.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        val: json_['val'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final val = this.val;
    return {'name': ?name, 'val': ?val};
  }
}

class EventThreatDetectionCustomModule {
  core.String? ancestorModule;

  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? config;
  core.String? description;
  core.String? displayName;

  ///
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED"
  /// - "ENABLED"
  /// - "DISABLED"
  /// - "INHERITED"
  core.String? enablementState;
  core.String? lastEditor;
  core.String? name;
  core.String? type;
  core.String? updateTime;

  EventThreatDetectionCustomModule({
    this.ancestorModule,
    this.cloudProvider,
    this.config,
    this.description,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.type,
    this.updateTime,
  });

  EventThreatDetectionCustomModule.fromJson(core.Map json_)
    : this(
        ancestorModule: json_['ancestorModule'] as core.String?,
        cloudProvider: json_['cloudProvider'] as core.String?,
        config: json_.containsKey('config')
            ? json_['config'] as core.Map<core.String, core.dynamic>
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enablementState: json_['enablementState'] as core.String?,
        lastEditor: json_['lastEditor'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ancestorModule = this.ancestorModule;
    final cloudProvider = this.cloudProvider;
    final config = this.config;
    final description = this.description;
    final displayName = this.displayName;
    final enablementState = this.enablementState;
    final lastEditor = this.lastEditor;
    final name = this.name;
    final type = this.type;
    final updateTime = this.updateTime;
    return {
      'ancestorModule': ?ancestorModule,
      'cloudProvider': ?cloudProvider,
      'config': ?config,
      'description': ?description,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }
}

class ExfilResource {
  core.List<core.String>? components;
  core.String? name;

  ExfilResource({this.components, this.name});

  ExfilResource.fromJson(core.Map json_)
    : this(
        components: (json_['components'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final components = this.components;
    final name = this.name;
    return {'components': ?components, 'name': ?name};
  }
}

class Exfiltration {
  core.List<ExfilResource>? sources;
  core.List<ExfilResource>? targets;
  core.String? totalExfiltratedBytes;

  Exfiltration({this.sources, this.targets, this.totalExfiltratedBytes});

  Exfiltration.fromJson(core.Map json_)
    : this(
        sources: (json_['sources'] as core.List?)
            ?.map(
              (value) => ExfilResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        targets: (json_['targets'] as core.List?)
            ?.map(
              (value) => ExfilResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        totalExfiltratedBytes: json_['totalExfiltratedBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final sources = this.sources;
    final targets = this.targets;
    final totalExfiltratedBytes = this.totalExfiltratedBytes;
    return {
      'sources': ?sources,
      'targets': ?targets,
      'totalExfiltratedBytes': ?totalExfiltratedBytes,
    };
  }
}

class Expr {
  core.String? description;
  core.String? expression;
  core.String? location;
  core.String? title;

  Expr({this.description, this.expression, this.location, this.title});

  Expr.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        expression: json_['expression'] as core.String?,
        location: json_['location'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final expression = this.expression;
    final location = this.location;
    final title = this.title;
    return {
      'description': ?description,
      'expression': ?expression,
      'location': ?location,
      'title': ?title,
    };
  }
}

class ExternalExposure {
  core.String? backendBucket;
  core.String? backendService;
  core.String? exposedApplication;
  core.String? exposedEndpoint;
  core.String? exposedService;
  core.String? forwardingRule;
  core.String? hostnameUri;
  core.List<HttpResponse>? httpResponse;
  core.String? instanceGroup;
  core.String? internalBackendService;
  core.String? loadBalancerFirewallPolicy;
  core.String? networkEndpointGroup;
  core.String? networkIngressFirewallPolicy;
  core.String? networkPathInsightsGenerationTime;
  core.String? privateIpAddress;
  core.String? privatePort;
  core.String? pscNetworkAttachment;
  core.String? pscServiceAttachment;
  core.String? publicIpAddress;
  core.String? publicPort;
  core.String? serviceFirewallPolicy;

  ExternalExposure({
    this.backendBucket,
    this.backendService,
    this.exposedApplication,
    this.exposedEndpoint,
    this.exposedService,
    this.forwardingRule,
    this.hostnameUri,
    this.httpResponse,
    this.instanceGroup,
    this.internalBackendService,
    this.loadBalancerFirewallPolicy,
    this.networkEndpointGroup,
    this.networkIngressFirewallPolicy,
    this.networkPathInsightsGenerationTime,
    this.privateIpAddress,
    this.privatePort,
    this.pscNetworkAttachment,
    this.pscServiceAttachment,
    this.publicIpAddress,
    this.publicPort,
    this.serviceFirewallPolicy,
  });

  ExternalExposure.fromJson(core.Map json_)
    : this(
        backendBucket: json_['backendBucket'] as core.String?,
        backendService: json_['backendService'] as core.String?,
        exposedApplication: json_['exposedApplication'] as core.String?,
        exposedEndpoint: json_['exposedEndpoint'] as core.String?,
        exposedService: json_['exposedService'] as core.String?,
        forwardingRule: json_['forwardingRule'] as core.String?,
        hostnameUri: json_['hostnameUri'] as core.String?,
        httpResponse: (json_['httpResponse'] as core.List?)
            ?.map(
              (value) => HttpResponse.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        instanceGroup: json_['instanceGroup'] as core.String?,
        internalBackendService: json_['internalBackendService'] as core.String?,
        loadBalancerFirewallPolicy:
            json_['loadBalancerFirewallPolicy'] as core.String?,
        networkEndpointGroup: json_['networkEndpointGroup'] as core.String?,
        networkIngressFirewallPolicy:
            json_['networkIngressFirewallPolicy'] as core.String?,
        networkPathInsightsGenerationTime:
            json_['networkPathInsightsGenerationTime'] as core.String?,
        privateIpAddress: json_['privateIpAddress'] as core.String?,
        privatePort: json_['privatePort'] as core.String?,
        pscNetworkAttachment: json_['pscNetworkAttachment'] as core.String?,
        pscServiceAttachment: json_['pscServiceAttachment'] as core.String?,
        publicIpAddress: json_['publicIpAddress'] as core.String?,
        publicPort: json_['publicPort'] as core.String?,
        serviceFirewallPolicy: json_['serviceFirewallPolicy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backendBucket = this.backendBucket;
    final backendService = this.backendService;
    final exposedApplication = this.exposedApplication;
    final exposedEndpoint = this.exposedEndpoint;
    final exposedService = this.exposedService;
    final forwardingRule = this.forwardingRule;
    final hostnameUri = this.hostnameUri;
    final httpResponse = this.httpResponse;
    final instanceGroup = this.instanceGroup;
    final internalBackendService = this.internalBackendService;
    final loadBalancerFirewallPolicy = this.loadBalancerFirewallPolicy;
    final networkEndpointGroup = this.networkEndpointGroup;
    final networkIngressFirewallPolicy = this.networkIngressFirewallPolicy;
    final networkPathInsightsGenerationTime =
        this.networkPathInsightsGenerationTime;
    final privateIpAddress = this.privateIpAddress;
    final privatePort = this.privatePort;
    final pscNetworkAttachment = this.pscNetworkAttachment;
    final pscServiceAttachment = this.pscServiceAttachment;
    final publicIpAddress = this.publicIpAddress;
    final publicPort = this.publicPort;
    final serviceFirewallPolicy = this.serviceFirewallPolicy;
    return {
      'backendBucket': ?backendBucket,
      'backendService': ?backendService,
      'exposedApplication': ?exposedApplication,
      'exposedEndpoint': ?exposedEndpoint,
      'exposedService': ?exposedService,
      'forwardingRule': ?forwardingRule,
      'hostnameUri': ?hostnameUri,
      'httpResponse': ?httpResponse,
      'instanceGroup': ?instanceGroup,
      'internalBackendService': ?internalBackendService,
      'loadBalancerFirewallPolicy': ?loadBalancerFirewallPolicy,
      'networkEndpointGroup': ?networkEndpointGroup,
      'networkIngressFirewallPolicy': ?networkIngressFirewallPolicy,
      'networkPathInsightsGenerationTime': ?networkPathInsightsGenerationTime,
      'privateIpAddress': ?privateIpAddress,
      'privatePort': ?privatePort,
      'pscNetworkAttachment': ?pscNetworkAttachment,
      'pscServiceAttachment': ?pscServiceAttachment,
      'publicIpAddress': ?publicIpAddress,
      'publicPort': ?publicPort,
      'serviceFirewallPolicy': ?serviceFirewallPolicy,
    };
  }
}

class File {
  core.String? contents;
  DiskPath? diskPath;

  ///
  /// Possible string values are:
  /// - "FILE_LOAD_STATE_UNSPECIFIED"
  /// - "LOADED_BY_PROCESS"
  /// - "NOT_LOADED_BY_PROCESS"
  core.String? fileLoadState;
  core.String? hashedSize;
  core.List<FileOperation>? operations;
  core.bool? partiallyHashed;
  core.String? path;
  core.String? sha256;
  core.String? size;

  File({
    this.contents,
    this.diskPath,
    this.fileLoadState,
    this.hashedSize,
    this.operations,
    this.partiallyHashed,
    this.path,
    this.sha256,
    this.size,
  });

  File.fromJson(core.Map json_)
    : this(
        contents: json_['contents'] as core.String?,
        diskPath: json_.containsKey('diskPath')
            ? DiskPath.fromJson(
                json_['diskPath'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fileLoadState: json_['fileLoadState'] as core.String?,
        hashedSize: json_['hashedSize'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => FileOperation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        partiallyHashed: json_['partiallyHashed'] as core.bool?,
        path: json_['path'] as core.String?,
        sha256: json_['sha256'] as core.String?,
        size: json_['size'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contents = this.contents;
    final diskPath = this.diskPath;
    final fileLoadState = this.fileLoadState;
    final hashedSize = this.hashedSize;
    final operations = this.operations;
    final partiallyHashed = this.partiallyHashed;
    final path = this.path;
    final sha256 = this.sha256;
    final size = this.size;
    return {
      'contents': ?contents,
      'diskPath': ?diskPath,
      'fileLoadState': ?fileLoadState,
      'hashedSize': ?hashedSize,
      'operations': ?operations,
      'partiallyHashed': ?partiallyHashed,
      'path': ?path,
      'sha256': ?sha256,
      'size': ?size,
    };
  }
}

class FileOperation {
  ///
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED"
  /// - "OPEN"
  /// - "READ"
  /// - "RENAME"
  /// - "WRITE"
  /// - "EXECUTE"
  core.String? type;

  FileOperation({this.type});

  FileOperation.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

class Finding {
  Access? access;
  AffectedResources? affectedResources;
  Agent? agent;
  AgentAnomaly? agentAnomaly;
  core.List<AgentDataAccessEvent>? agentDataAccessEvents;
  core.List<AgentSession>? agentSessions;
  AiModel? aiModel;
  Application? application;
  ArtifactGuardPolicies? artifactGuardPolicies;
  AttackExposure? attackExposure;
  BackupDisasterRecovery? backupDisasterRecovery;
  core.String? canonicalName;
  core.String? category;
  Chokepoint? chokepoint;
  CloudArmor? cloudArmor;
  CloudDlpDataProfile? cloudDlpDataProfile;
  CloudDlpInspection? cloudDlpInspection;
  ComplianceDetails? complianceDetails;
  core.List<Compliance>? compliances;
  core.List<Connection>? connections;
  core.Map<core.String, ContactDetails>? contacts;
  core.List<Container>? containers;
  core.String? createTime;
  core.List<DataAccessEvent>? dataAccessEvents;
  core.List<DataFlowEvent>? dataFlowEvents;
  core.List<DataRetentionDeletionEvent>? dataRetentionDeletionEvents;
  Database? database;
  core.String? description;
  DiscoveredWorkload? discoveredWorkload;
  Disk? disk;
  core.String? eventTime;
  Exfiltration? exfiltration;
  ExternalExposure? externalExposure;
  core.Map<core.String, GoogleCloudSecuritycenterV1ExternalSystem>?
  externalSystems;
  core.String? externalUri;
  core.List<File>? files;

  ///
  /// Possible string values are:
  /// - "FINDING_CLASS_UNSPECIFIED"
  /// - "THREAT"
  /// - "VULNERABILITY"
  /// - "MISCONFIGURATION"
  /// - "OBSERVATION"
  /// - "SCC_ERROR"
  /// - "POSTURE_VIOLATION"
  /// - "TOXIC_COMBINATION"
  /// - "SENSITIVE_DATA_RISK"
  /// - "CHOKEPOINT"
  /// - "EXTERNAL_EXPOSURE"
  /// - "SECRET"
  core.String? findingClass;
  core.List<GroupMembership>? groupMemberships;
  core.List<IamBinding>? iamBindings;
  GoogleCloudSecuritycenterV1IamDetails? iamDetails;
  Indicator? indicator;
  IpRules? ipRules;
  Job? job;
  KernelRootkit? kernelRootkit;
  Kubernetes? kubernetes;
  core.List<LoadBalancer>? loadBalancers;
  core.List<LogEntry>? logEntries;
  MitreAttack? mitreAttack;
  core.String? moduleName;

  ///
  /// Possible string values are:
  /// - "MUTE_UNSPECIFIED"
  /// - "MUTED"
  /// - "UNMUTED"
  /// - "UNDEFINED"
  core.String? mute;
  MuteInfo? muteInfo;
  core.String? muteInitiator;
  core.String? muteUpdateTime;
  core.String? name;
  core.List<Network>? networks;
  core.String? nextSteps;
  Notebook? notebook;
  core.List<OrgPolicy>? orgPolicies;
  core.String? parent;
  core.String? parentDisplayName;
  PolicyViolationSummary? policyViolationSummary;
  core.List<Process>? processes;
  core.String? resourceName;
  Secret? secret;
  SecurityMarks? securityMarks;
  SecurityPosture? securityPosture;

  ///
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "CRITICAL"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  core.String? severity;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? sourceProperties;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE"
  /// - "INACTIVE"
  core.String? state;
  ToxicCombination? toxicCombination;
  VertexAi? vertexAi;
  Vulnerability? vulnerability;

  Finding({
    this.access,
    this.affectedResources,
    this.agent,
    this.agentAnomaly,
    this.agentDataAccessEvents,
    this.agentSessions,
    this.aiModel,
    this.application,
    this.artifactGuardPolicies,
    this.attackExposure,
    this.backupDisasterRecovery,
    this.canonicalName,
    this.category,
    this.chokepoint,
    this.cloudArmor,
    this.cloudDlpDataProfile,
    this.cloudDlpInspection,
    this.complianceDetails,
    this.compliances,
    this.connections,
    this.contacts,
    this.containers,
    this.createTime,
    this.dataAccessEvents,
    this.dataFlowEvents,
    this.dataRetentionDeletionEvents,
    this.database,
    this.description,
    this.discoveredWorkload,
    this.disk,
    this.eventTime,
    this.exfiltration,
    this.externalExposure,
    this.externalSystems,
    this.externalUri,
    this.files,
    this.findingClass,
    this.groupMemberships,
    this.iamBindings,
    this.iamDetails,
    this.indicator,
    this.ipRules,
    this.job,
    this.kernelRootkit,
    this.kubernetes,
    this.loadBalancers,
    this.logEntries,
    this.mitreAttack,
    this.moduleName,
    this.mute,
    this.muteInfo,
    this.muteInitiator,
    this.muteUpdateTime,
    this.name,
    this.networks,
    this.nextSteps,
    this.notebook,
    this.orgPolicies,
    this.parent,
    this.parentDisplayName,
    this.policyViolationSummary,
    this.processes,
    this.resourceName,
    this.secret,
    this.securityMarks,
    this.securityPosture,
    this.severity,
    this.sourceProperties,
    this.state,
    this.toxicCombination,
    this.vertexAi,
    this.vulnerability,
  });

  Finding.fromJson(core.Map json_)
    : this(
        access: json_.containsKey('access')
            ? Access.fromJson(
                json_['access'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        affectedResources: json_.containsKey('affectedResources')
            ? AffectedResources.fromJson(
                json_['affectedResources']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        agent: json_.containsKey('agent')
            ? Agent.fromJson(
                json_['agent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        agentAnomaly: json_.containsKey('agentAnomaly')
            ? AgentAnomaly.fromJson(
                json_['agentAnomaly'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        agentDataAccessEvents: (json_['agentDataAccessEvents'] as core.List?)
            ?.map(
              (value) => AgentDataAccessEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        agentSessions: (json_['agentSessions'] as core.List?)
            ?.map(
              (value) => AgentSession.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        aiModel: json_.containsKey('aiModel')
            ? AiModel.fromJson(
                json_['aiModel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        application: json_.containsKey('application')
            ? Application.fromJson(
                json_['application'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        artifactGuardPolicies: json_.containsKey('artifactGuardPolicies')
            ? ArtifactGuardPolicies.fromJson(
                json_['artifactGuardPolicies']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        attackExposure: json_.containsKey('attackExposure')
            ? AttackExposure.fromJson(
                json_['attackExposure'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        backupDisasterRecovery: json_.containsKey('backupDisasterRecovery')
            ? BackupDisasterRecovery.fromJson(
                json_['backupDisasterRecovery']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        canonicalName: json_['canonicalName'] as core.String?,
        category: json_['category'] as core.String?,
        chokepoint: json_.containsKey('chokepoint')
            ? Chokepoint.fromJson(
                json_['chokepoint'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudArmor: json_.containsKey('cloudArmor')
            ? CloudArmor.fromJson(
                json_['cloudArmor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudDlpDataProfile: json_.containsKey('cloudDlpDataProfile')
            ? CloudDlpDataProfile.fromJson(
                json_['cloudDlpDataProfile']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudDlpInspection: json_.containsKey('cloudDlpInspection')
            ? CloudDlpInspection.fromJson(
                json_['cloudDlpInspection']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        complianceDetails: json_.containsKey('complianceDetails')
            ? ComplianceDetails.fromJson(
                json_['complianceDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        compliances: (json_['compliances'] as core.List?)
            ?.map(
              (value) => Compliance.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        connections: (json_['connections'] as core.List?)
            ?.map(
              (value) => Connection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        contacts: (json_['contacts'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ContactDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        containers: (json_['containers'] as core.List?)
            ?.map(
              (value) => Container.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        createTime: json_['createTime'] as core.String?,
        dataAccessEvents: (json_['dataAccessEvents'] as core.List?)
            ?.map(
              (value) => DataAccessEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataFlowEvents: (json_['dataFlowEvents'] as core.List?)
            ?.map(
              (value) => DataFlowEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataRetentionDeletionEvents:
            (json_['dataRetentionDeletionEvents'] as core.List?)
                ?.map(
                  (value) => DataRetentionDeletionEvent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        database: json_.containsKey('database')
            ? Database.fromJson(
                json_['database'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        discoveredWorkload: json_.containsKey('discoveredWorkload')
            ? DiscoveredWorkload.fromJson(
                json_['discoveredWorkload']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        disk: json_.containsKey('disk')
            ? Disk.fromJson(
                json_['disk'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventTime: json_['eventTime'] as core.String?,
        exfiltration: json_.containsKey('exfiltration')
            ? Exfiltration.fromJson(
                json_['exfiltration'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalExposure: json_.containsKey('externalExposure')
            ? ExternalExposure.fromJson(
                json_['externalExposure']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        externalSystems:
            (json_['externalSystems'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        externalUri: json_['externalUri'] as core.String?,
        files: (json_['files'] as core.List?)
            ?.map(
              (value) =>
                  File.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        findingClass: json_['findingClass'] as core.String?,
        groupMemberships: (json_['groupMemberships'] as core.List?)
            ?.map(
              (value) => GroupMembership.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        iamBindings: (json_['iamBindings'] as core.List?)
            ?.map(
              (value) => IamBinding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        iamDetails: json_.containsKey('iamDetails')
            ? GoogleCloudSecuritycenterV1IamDetails.fromJson(
                json_['iamDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        indicator: json_.containsKey('indicator')
            ? Indicator.fromJson(
                json_['indicator'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        ipRules: json_.containsKey('ipRules')
            ? IpRules.fromJson(
                json_['ipRules'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        job: json_.containsKey('job')
            ? Job.fromJson(json_['job'] as core.Map<core.String, core.dynamic>)
            : null,
        kernelRootkit: json_.containsKey('kernelRootkit')
            ? KernelRootkit.fromJson(
                json_['kernelRootkit'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        kubernetes: json_.containsKey('kubernetes')
            ? Kubernetes.fromJson(
                json_['kubernetes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        loadBalancers: (json_['loadBalancers'] as core.List?)
            ?.map(
              (value) => LoadBalancer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        logEntries: (json_['logEntries'] as core.List?)
            ?.map(
              (value) => LogEntry.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        mitreAttack: json_.containsKey('mitreAttack')
            ? MitreAttack.fromJson(
                json_['mitreAttack'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        moduleName: json_['moduleName'] as core.String?,
        mute: json_['mute'] as core.String?,
        muteInfo: json_.containsKey('muteInfo')
            ? MuteInfo.fromJson(
                json_['muteInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        muteInitiator: json_['muteInitiator'] as core.String?,
        muteUpdateTime: json_['muteUpdateTime'] as core.String?,
        name: json_['name'] as core.String?,
        networks: (json_['networks'] as core.List?)
            ?.map(
              (value) => Network.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextSteps: json_['nextSteps'] as core.String?,
        notebook: json_.containsKey('notebook')
            ? Notebook.fromJson(
                json_['notebook'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orgPolicies: (json_['orgPolicies'] as core.List?)
            ?.map(
              (value) => OrgPolicy.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        parent: json_['parent'] as core.String?,
        parentDisplayName: json_['parentDisplayName'] as core.String?,
        policyViolationSummary: json_.containsKey('policyViolationSummary')
            ? PolicyViolationSummary.fromJson(
                json_['policyViolationSummary']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        processes: (json_['processes'] as core.List?)
            ?.map(
              (value) => Process.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resourceName: json_['resourceName'] as core.String?,
        secret: json_.containsKey('secret')
            ? Secret.fromJson(
                json_['secret'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        securityMarks: json_.containsKey('securityMarks')
            ? SecurityMarks.fromJson(
                json_['securityMarks'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        securityPosture: json_.containsKey('securityPosture')
            ? SecurityPosture.fromJson(
                json_['securityPosture'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        severity: json_['severity'] as core.String?,
        sourceProperties: json_.containsKey('sourceProperties')
            ? json_['sourceProperties'] as core.Map<core.String, core.dynamic>
            : null,
        state: json_['state'] as core.String?,
        toxicCombination: json_.containsKey('toxicCombination')
            ? ToxicCombination.fromJson(
                json_['toxicCombination']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        vertexAi: json_.containsKey('vertexAi')
            ? VertexAi.fromJson(
                json_['vertexAi'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vulnerability: json_.containsKey('vulnerability')
            ? Vulnerability.fromJson(
                json_['vulnerability'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final access = this.access;
    final affectedResources = this.affectedResources;
    final agent = this.agent;
    final agentAnomaly = this.agentAnomaly;
    final agentDataAccessEvents = this.agentDataAccessEvents;
    final agentSessions = this.agentSessions;
    final aiModel = this.aiModel;
    final application = this.application;
    final artifactGuardPolicies = this.artifactGuardPolicies;
    final attackExposure = this.attackExposure;
    final backupDisasterRecovery = this.backupDisasterRecovery;
    final canonicalName = this.canonicalName;
    final category = this.category;
    final chokepoint = this.chokepoint;
    final cloudArmor = this.cloudArmor;
    final cloudDlpDataProfile = this.cloudDlpDataProfile;
    final cloudDlpInspection = this.cloudDlpInspection;
    final complianceDetails = this.complianceDetails;
    final compliances = this.compliances;
    final connections = this.connections;
    final contacts = this.contacts;
    final containers = this.containers;
    final createTime = this.createTime;
    final dataAccessEvents = this.dataAccessEvents;
    final dataFlowEvents = this.dataFlowEvents;
    final dataRetentionDeletionEvents = this.dataRetentionDeletionEvents;
    final database = this.database;
    final description = this.description;
    final discoveredWorkload = this.discoveredWorkload;
    final disk = this.disk;
    final eventTime = this.eventTime;
    final exfiltration = this.exfiltration;
    final externalExposure = this.externalExposure;
    final externalSystems = this.externalSystems;
    final externalUri = this.externalUri;
    final files = this.files;
    final findingClass = this.findingClass;
    final groupMemberships = this.groupMemberships;
    final iamBindings = this.iamBindings;
    final iamDetails = this.iamDetails;
    final indicator = this.indicator;
    final ipRules = this.ipRules;
    final job = this.job;
    final kernelRootkit = this.kernelRootkit;
    final kubernetes = this.kubernetes;
    final loadBalancers = this.loadBalancers;
    final logEntries = this.logEntries;
    final mitreAttack = this.mitreAttack;
    final moduleName = this.moduleName;
    final mute = this.mute;
    final muteInfo = this.muteInfo;
    final muteInitiator = this.muteInitiator;
    final muteUpdateTime = this.muteUpdateTime;
    final name = this.name;
    final networks = this.networks;
    final nextSteps = this.nextSteps;
    final notebook = this.notebook;
    final orgPolicies = this.orgPolicies;
    final parent = this.parent;
    final parentDisplayName = this.parentDisplayName;
    final policyViolationSummary = this.policyViolationSummary;
    final processes = this.processes;
    final resourceName = this.resourceName;
    final secret = this.secret;
    final securityMarks = this.securityMarks;
    final securityPosture = this.securityPosture;
    final severity = this.severity;
    final sourceProperties = this.sourceProperties;
    final state = this.state;
    final toxicCombination = this.toxicCombination;
    final vertexAi = this.vertexAi;
    final vulnerability = this.vulnerability;
    return {
      'access': ?access,
      'affectedResources': ?affectedResources,
      'agent': ?agent,
      'agentAnomaly': ?agentAnomaly,
      'agentDataAccessEvents': ?agentDataAccessEvents,
      'agentSessions': ?agentSessions,
      'aiModel': ?aiModel,
      'application': ?application,
      'artifactGuardPolicies': ?artifactGuardPolicies,
      'attackExposure': ?attackExposure,
      'backupDisasterRecovery': ?backupDisasterRecovery,
      'canonicalName': ?canonicalName,
      'category': ?category,
      'chokepoint': ?chokepoint,
      'cloudArmor': ?cloudArmor,
      'cloudDlpDataProfile': ?cloudDlpDataProfile,
      'cloudDlpInspection': ?cloudDlpInspection,
      'complianceDetails': ?complianceDetails,
      'compliances': ?compliances,
      'connections': ?connections,
      'contacts': ?contacts,
      'containers': ?containers,
      'createTime': ?createTime,
      'dataAccessEvents': ?dataAccessEvents,
      'dataFlowEvents': ?dataFlowEvents,
      'dataRetentionDeletionEvents': ?dataRetentionDeletionEvents,
      'database': ?database,
      'description': ?description,
      'discoveredWorkload': ?discoveredWorkload,
      'disk': ?disk,
      'eventTime': ?eventTime,
      'exfiltration': ?exfiltration,
      'externalExposure': ?externalExposure,
      'externalSystems': ?externalSystems,
      'externalUri': ?externalUri,
      'files': ?files,
      'findingClass': ?findingClass,
      'groupMemberships': ?groupMemberships,
      'iamBindings': ?iamBindings,
      'iamDetails': ?iamDetails,
      'indicator': ?indicator,
      'ipRules': ?ipRules,
      'job': ?job,
      'kernelRootkit': ?kernelRootkit,
      'kubernetes': ?kubernetes,
      'loadBalancers': ?loadBalancers,
      'logEntries': ?logEntries,
      'mitreAttack': ?mitreAttack,
      'moduleName': ?moduleName,
      'mute': ?mute,
      'muteInfo': ?muteInfo,
      'muteInitiator': ?muteInitiator,
      'muteUpdateTime': ?muteUpdateTime,
      'name': ?name,
      'networks': ?networks,
      'nextSteps': ?nextSteps,
      'notebook': ?notebook,
      'orgPolicies': ?orgPolicies,
      'parent': ?parent,
      'parentDisplayName': ?parentDisplayName,
      'policyViolationSummary': ?policyViolationSummary,
      'processes': ?processes,
      'resourceName': ?resourceName,
      'secret': ?secret,
      'securityMarks': ?securityMarks,
      'securityPosture': ?securityPosture,
      'severity': ?severity,
      'sourceProperties': ?sourceProperties,
      'state': ?state,
      'toxicCombination': ?toxicCombination,
      'vertexAi': ?vertexAi,
      'vulnerability': ?vulnerability,
    };
  }
}

class Folder {
  core.String? resourceFolder;
  core.String? resourceFolderDisplayName;

  Folder({this.resourceFolder, this.resourceFolderDisplayName});

  Folder.fromJson(core.Map json_)
    : this(
        resourceFolder: json_['resourceFolder'] as core.String?,
        resourceFolderDisplayName:
            json_['resourceFolderDisplayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourceFolder = this.resourceFolder;
    final resourceFolderDisplayName = this.resourceFolderDisplayName;
    return {
      'resourceFolder': ?resourceFolder,
      'resourceFolderDisplayName': ?resourceFolderDisplayName,
    };
  }
}

class Framework {
  core.List<core.String>? category;
  core.List<Control>? controls;
  core.String? displayName;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "FRAMEWORK_TYPE_UNSPECIFIED"
  /// - "FRAMEWORK_TYPE_BUILT_IN"
  /// - "FRAMEWORK_TYPE_CUSTOM"
  core.String? type;

  Framework({
    this.category,
    this.controls,
    this.displayName,
    this.name,
    this.type,
  });

  Framework.fromJson(core.Map json_)
    : this(
        category: (json_['category'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        controls: (json_['controls'] as core.List?)
            ?.map(
              (value) => Control.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final controls = this.controls;
    final displayName = this.displayName;
    final name = this.name;
    final type = this.type;
    return {
      'category': ?category,
      'controls': ?controls,
      'displayName': ?displayName,
      'name': ?name,
      'type': ?type,
    };
  }
}

class Geolocation {
  core.String? regionCode;

  Geolocation({this.regionCode});

  Geolocation.fromJson(core.Map json_)
    : this(regionCode: json_['regionCode'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final regionCode = this.regionCode;
    return {'regionCode': ?regionCode};
  }
}

class GetIamPolicyRequest {
  GetPolicyOptions? options;

  GetIamPolicyRequest({this.options});

  GetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        options: json_.containsKey('options')
            ? GetPolicyOptions.fromJson(
                json_['options'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final options = this.options;
    return {'options': ?options};
  }
}

class GetPolicyOptions {
  core.int? requestedPolicyVersion;

  GetPolicyOptions({this.requestedPolicyVersion});

  GetPolicyOptions.fromJson(core.Map json_)
    : this(
        requestedPolicyVersion: json_['requestedPolicyVersion'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestedPolicyVersion = this.requestedPolicyVersion;
    return {'requestedPolicyVersion': ?requestedPolicyVersion};
  }
}

class GoogleCloudSecuritycenterV1BigQueryExport {
  core.String? createTime;
  core.String? dataset;
  core.String? description;
  core.String? filter;
  core.String? mostRecentEditor;
  core.String? name;
  core.String? principal;
  core.String? updateTime;

  GoogleCloudSecuritycenterV1BigQueryExport({
    this.createTime,
    this.dataset,
    this.description,
    this.filter,
    this.mostRecentEditor,
    this.name,
    this.principal,
    this.updateTime,
  });

  GoogleCloudSecuritycenterV1BigQueryExport.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dataset: json_['dataset'] as core.String?,
        description: json_['description'] as core.String?,
        filter: json_['filter'] as core.String?,
        mostRecentEditor: json_['mostRecentEditor'] as core.String?,
        name: json_['name'] as core.String?,
        principal: json_['principal'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final dataset = this.dataset;
    final description = this.description;
    final filter = this.filter;
    final mostRecentEditor = this.mostRecentEditor;
    final name = this.name;
    final principal = this.principal;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'dataset': ?dataset,
      'description': ?description,
      'filter': ?filter,
      'mostRecentEditor': ?mostRecentEditor,
      'name': ?name,
      'principal': ?principal,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudSecuritycenterV1Binding {
  core.String? name;
  core.String? ns;
  Role? role;
  core.List<Subject>? subjects;

  GoogleCloudSecuritycenterV1Binding({
    this.name,
    this.ns,
    this.role,
    this.subjects,
  });

  GoogleCloudSecuritycenterV1Binding.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        ns: json_['ns'] as core.String?,
        role: json_.containsKey('role')
            ? Role.fromJson(
                json_['role'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        subjects: (json_['subjects'] as core.List?)
            ?.map(
              (value) => Subject.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final ns = this.ns;
    final role = this.role;
    final subjects = this.subjects;
    return {'name': ?name, 'ns': ?ns, 'role': ?role, 'subjects': ?subjects};
  }
}

class GoogleCloudSecuritycenterV1CustomConfig {
  GoogleCloudSecuritycenterV1CustomOutputSpec? customOutput;
  core.String? description;
  Expr? predicate;
  core.String? recommendation;
  GoogleCloudSecuritycenterV1ResourceSelector? resourceSelector;

  ///
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED"
  /// - "CRITICAL"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  core.String? severity;

  GoogleCloudSecuritycenterV1CustomConfig({
    this.customOutput,
    this.description,
    this.predicate,
    this.recommendation,
    this.resourceSelector,
    this.severity,
  });

  GoogleCloudSecuritycenterV1CustomConfig.fromJson(core.Map json_)
    : this(
        customOutput: json_.containsKey('customOutput')
            ? GoogleCloudSecuritycenterV1CustomOutputSpec.fromJson(
                json_['customOutput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        predicate: json_.containsKey('predicate')
            ? Expr.fromJson(
                json_['predicate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        recommendation: json_['recommendation'] as core.String?,
        resourceSelector: json_.containsKey('resourceSelector')
            ? GoogleCloudSecuritycenterV1ResourceSelector.fromJson(
                json_['resourceSelector']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customOutput = this.customOutput;
    final description = this.description;
    final predicate = this.predicate;
    final recommendation = this.recommendation;
    final resourceSelector = this.resourceSelector;
    final severity = this.severity;
    return {
      'customOutput': ?customOutput,
      'description': ?description,
      'predicate': ?predicate,
      'recommendation': ?recommendation,
      'resourceSelector': ?resourceSelector,
      'severity': ?severity,
    };
  }
}

class GoogleCloudSecuritycenterV1CustomOutputSpec {
  core.List<GoogleCloudSecuritycenterV1Property>? properties;

  GoogleCloudSecuritycenterV1CustomOutputSpec({this.properties});

  GoogleCloudSecuritycenterV1CustomOutputSpec.fromJson(core.Map json_)
    : this(
        properties: (json_['properties'] as core.List?)
            ?.map(
              (value) => GoogleCloudSecuritycenterV1Property.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final properties = this.properties;
    return {'properties': ?properties};
  }
}

class GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule {
  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;
  GoogleCloudSecuritycenterV1CustomConfig? customConfig;
  core.String? displayName;

  ///
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED"
  /// - "ENABLED"
  /// - "DISABLED"
  core.String? enablementState;
  core.String? name;

  GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule({
    this.cloudProvider,
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.name,
  });

  GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
    core.Map json_,
  ) : this(
        cloudProvider: json_['cloudProvider'] as core.String?,
        customConfig: json_.containsKey('customConfig')
            ? GoogleCloudSecuritycenterV1CustomConfig.fromJson(
                json_['customConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        enablementState: json_['enablementState'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudProvider = this.cloudProvider;
    final customConfig = this.customConfig;
    final displayName = this.displayName;
    final enablementState = this.enablementState;
    final name = this.name;
    return {
      'cloudProvider': ?cloudProvider,
      'customConfig': ?customConfig,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'name': ?name,
    };
  }
}

class GoogleCloudSecuritycenterV1ExternalSystem {
  core.List<core.String>? assignees;
  core.String? caseCloseTime;
  core.String? caseCreateTime;
  core.String? casePriority;
  core.String? caseSla;
  core.String? caseUri;
  core.String? externalSystemUpdateTime;
  core.String? externalUid;
  core.String? name;
  core.String? status;
  TicketInfo? ticketInfo;

  GoogleCloudSecuritycenterV1ExternalSystem({
    this.assignees,
    this.caseCloseTime,
    this.caseCreateTime,
    this.casePriority,
    this.caseSla,
    this.caseUri,
    this.externalSystemUpdateTime,
    this.externalUid,
    this.name,
    this.status,
    this.ticketInfo,
  });

  GoogleCloudSecuritycenterV1ExternalSystem.fromJson(core.Map json_)
    : this(
        assignees: (json_['assignees'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        caseCloseTime: json_['caseCloseTime'] as core.String?,
        caseCreateTime: json_['caseCreateTime'] as core.String?,
        casePriority: json_['casePriority'] as core.String?,
        caseSla: json_['caseSla'] as core.String?,
        caseUri: json_['caseUri'] as core.String?,
        externalSystemUpdateTime:
            json_['externalSystemUpdateTime'] as core.String?,
        externalUid: json_['externalUid'] as core.String?,
        name: json_['name'] as core.String?,
        status: json_['status'] as core.String?,
        ticketInfo: json_.containsKey('ticketInfo')
            ? TicketInfo.fromJson(
                json_['ticketInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assignees = this.assignees;
    final caseCloseTime = this.caseCloseTime;
    final caseCreateTime = this.caseCreateTime;
    final casePriority = this.casePriority;
    final caseSla = this.caseSla;
    final caseUri = this.caseUri;
    final externalSystemUpdateTime = this.externalSystemUpdateTime;
    final externalUid = this.externalUid;
    final name = this.name;
    final status = this.status;
    final ticketInfo = this.ticketInfo;
    return {
      'assignees': ?assignees,
      'caseCloseTime': ?caseCloseTime,
      'caseCreateTime': ?caseCreateTime,
      'casePriority': ?casePriority,
      'caseSla': ?caseSla,
      'caseUri': ?caseUri,
      'externalSystemUpdateTime': ?externalSystemUpdateTime,
      'externalUid': ?externalUid,
      'name': ?name,
      'status': ?status,
      'ticketInfo': ?ticketInfo,
    };
  }
}

class GoogleCloudSecuritycenterV1IamDetails {
  core.List<GoogleCloudSecuritycenterV1IamRolePermission>? iamRolePermissions;

  GoogleCloudSecuritycenterV1IamDetails({this.iamRolePermissions});

  GoogleCloudSecuritycenterV1IamDetails.fromJson(core.Map json_)
    : this(
        iamRolePermissions: (json_['iamRolePermissions'] as core.List?)
            ?.map(
              (value) => GoogleCloudSecuritycenterV1IamRolePermission.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iamRolePermissions = this.iamRolePermissions;
    return {'iamRolePermissions': ?iamRolePermissions};
  }
}

class GoogleCloudSecuritycenterV1IamRolePermission {
  core.String? name;
  core.String? role;

  GoogleCloudSecuritycenterV1IamRolePermission({this.name, this.role});

  GoogleCloudSecuritycenterV1IamRolePermission.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final role = this.role;
    return {'name': ?name, 'role': ?role};
  }
}

class GoogleCloudSecuritycenterV1MuteConfig {
  core.String? createTime;
  core.String? description;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? displayName;
  core.String? expiryTime;
  core.String? filter;
  core.String? mostRecentEditor;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "MUTE_CONFIG_TYPE_UNSPECIFIED"
  /// - "STATIC"
  /// - "DYNAMIC"
  core.String? type;
  core.String? updateTime;

  GoogleCloudSecuritycenterV1MuteConfig({
    this.createTime,
    this.description,
    this.displayName,
    this.expiryTime,
    this.filter,
    this.mostRecentEditor,
    this.name,
    this.type,
    this.updateTime,
  });

  GoogleCloudSecuritycenterV1MuteConfig.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        expiryTime: json_['expiryTime'] as core.String?,
        filter: json_['filter'] as core.String?,
        mostRecentEditor: json_['mostRecentEditor'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final expiryTime = this.expiryTime;
    final filter = this.filter;
    final mostRecentEditor = this.mostRecentEditor;
    final name = this.name;
    final type = this.type;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'expiryTime': ?expiryTime,
      'filter': ?filter,
      'mostRecentEditor': ?mostRecentEditor,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudSecuritycenterV1Property {
  core.String? name;
  Expr? valueExpression;

  GoogleCloudSecuritycenterV1Property({this.name, this.valueExpression});

  GoogleCloudSecuritycenterV1Property.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        valueExpression: json_.containsKey('valueExpression')
            ? Expr.fromJson(
                json_['valueExpression'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final valueExpression = this.valueExpression;
    return {'name': ?name, 'valueExpression': ?valueExpression};
  }
}

class GoogleCloudSecuritycenterV1ResourceApplication {
  GoogleCloudSecuritycenterV1ResourceApplicationAttributes? attributes;
  core.String? name;

  GoogleCloudSecuritycenterV1ResourceApplication({this.attributes, this.name});

  GoogleCloudSecuritycenterV1ResourceApplication.fromJson(core.Map json_)
    : this(
        attributes: json_.containsKey('attributes')
            ? GoogleCloudSecuritycenterV1ResourceApplicationAttributes.fromJson(
                json_['attributes'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final name = this.name;
    return {'attributes': ?attributes, 'name': ?name};
  }
}

class GoogleCloudSecuritycenterV1ResourceApplicationAttributes {
  core.List<
    GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
  >?
  businessOwners;
  GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality?
  criticality;
  core.List<
    GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
  >?
  developerOwners;
  GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment?
  environment;
  core.List<
    GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo
  >?
  operatorOwners;

  GoogleCloudSecuritycenterV1ResourceApplicationAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  GoogleCloudSecuritycenterV1ResourceApplicationAttributes.fromJson(
    core.Map json_,
  ) : this(
        businessOwners: (json_['businessOwners'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        criticality: json_.containsKey('criticality')
            ? GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality.fromJson(
                json_['criticality'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        developerOwners: (json_['developerOwners'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        environment: json_.containsKey('environment')
            ? GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment.fromJson(
                json_['environment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operatorOwners: (json_['operatorOwners'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessOwners = this.businessOwners;
    final criticality = this.criticality;
    final developerOwners = this.developerOwners;
    final environment = this.environment;
    final operatorOwners = this.operatorOwners;
    return {
      'businessOwners': ?businessOwners,
      'criticality': ?criticality,
      'developerOwners': ?developerOwners,
      'environment': ?environment,
      'operatorOwners': ?operatorOwners,
    };
  }
}

typedef GoogleCloudSecuritycenterV1ResourceApplicationAttributesContactInfo =
    $Shared30;

class GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality {
  ///
  /// Possible string values are:
  /// - "CRITICALITY_TYPE_UNSPECIFIED"
  /// - "MISSION_CRITICAL"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  core.String? type;

  GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality({
    this.type,
  });

  GoogleCloudSecuritycenterV1ResourceApplicationAttributesCriticality.fromJson(
    core.Map json_,
  ) : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

class GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment {
  ///
  /// Possible string values are:
  /// - "ENVIRONMENT_TYPE_UNSPECIFIED"
  /// - "PRODUCTION"
  /// - "STAGING"
  /// - "TEST"
  /// - "DEVELOPMENT"
  core.String? type;

  GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment({
    this.type,
  });

  GoogleCloudSecuritycenterV1ResourceApplicationAttributesEnvironment.fromJson(
    core.Map json_,
  ) : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

class GoogleCloudSecuritycenterV1ResourceSelector {
  core.List<core.String>? resourceTypes;

  GoogleCloudSecuritycenterV1ResourceSelector({this.resourceTypes});

  GoogleCloudSecuritycenterV1ResourceSelector.fromJson(core.Map json_)
    : this(
        resourceTypes: (json_['resourceTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourceTypes = this.resourceTypes;
    return {'resourceTypes': ?resourceTypes};
  }
}

class GoogleCloudSecuritycenterV1ResourceValueConfig {
  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;
  core.String? createTime;
  core.String? description;
  core.String? name;
  core.Map<core.String, core.String>? resourceLabelsSelector;
  core.String? resourceType;

  ///
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  /// - "NONE"
  core.String? resourceValue;
  core.String? scope;
  GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping?
  sensitiveDataProtectionMapping;
  core.List<core.String>? tagValues;
  core.String? updateTime;

  GoogleCloudSecuritycenterV1ResourceValueConfig({
    this.cloudProvider,
    this.createTime,
    this.description,
    this.name,
    this.resourceLabelsSelector,
    this.resourceType,
    this.resourceValue,
    this.scope,
    this.sensitiveDataProtectionMapping,
    this.tagValues,
    this.updateTime,
  });

  GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(core.Map json_)
    : this(
        cloudProvider: json_['cloudProvider'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        resourceLabelsSelector:
            (json_['resourceLabelsSelector']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        resourceType: json_['resourceType'] as core.String?,
        resourceValue: json_['resourceValue'] as core.String?,
        scope: json_['scope'] as core.String?,
        sensitiveDataProtectionMapping:
            json_.containsKey('sensitiveDataProtectionMapping')
            ? GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping.fromJson(
                json_['sensitiveDataProtectionMapping']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tagValues: (json_['tagValues'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudProvider = this.cloudProvider;
    final createTime = this.createTime;
    final description = this.description;
    final name = this.name;
    final resourceLabelsSelector = this.resourceLabelsSelector;
    final resourceType = this.resourceType;
    final resourceValue = this.resourceValue;
    final scope = this.scope;
    final sensitiveDataProtectionMapping = this.sensitiveDataProtectionMapping;
    final tagValues = this.tagValues;
    final updateTime = this.updateTime;
    return {
      'cloudProvider': ?cloudProvider,
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'resourceLabelsSelector': ?resourceLabelsSelector,
      'resourceType': ?resourceType,
      'resourceValue': ?resourceValue,
      'scope': ?scope,
      'sensitiveDataProtectionMapping': ?sensitiveDataProtectionMapping,
      'tagValues': ?tagValues,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule {
  core.String? ancestorModule;

  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;
  GoogleCloudSecuritycenterV1CustomConfig? customConfig;
  core.String? displayName;

  ///
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED"
  /// - "ENABLED"
  /// - "DISABLED"
  /// - "INHERITED"
  core.String? enablementState;
  core.String? lastEditor;
  core.String? name;
  core.String? updateTime;

  GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule({
    this.ancestorModule,
    this.cloudProvider,
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.updateTime,
  });

  GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
    core.Map json_,
  ) : this(
        ancestorModule: json_['ancestorModule'] as core.String?,
        cloudProvider: json_['cloudProvider'] as core.String?,
        customConfig: json_.containsKey('customConfig')
            ? GoogleCloudSecuritycenterV1CustomConfig.fromJson(
                json_['customConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        enablementState: json_['enablementState'] as core.String?,
        lastEditor: json_['lastEditor'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ancestorModule = this.ancestorModule;
    final cloudProvider = this.cloudProvider;
    final customConfig = this.customConfig;
    final displayName = this.displayName;
    final enablementState = this.enablementState;
    final lastEditor = this.lastEditor;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'ancestorModule': ?ancestorModule,
      'cloudProvider': ?cloudProvider,
      'customConfig': ?customConfig,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}

class GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping {
  ///
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  /// - "NONE"
  core.String? highSensitivityMapping;

  ///
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED"
  /// - "HIGH"
  /// - "MEDIUM"
  /// - "LOW"
  /// - "NONE"
  core.String? mediumSensitivityMapping;

  GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping({
    this.highSensitivityMapping,
    this.mediumSensitivityMapping,
  });

  GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping.fromJson(
    core.Map json_,
  ) : this(
        highSensitivityMapping: json_['highSensitivityMapping'] as core.String?,
        mediumSensitivityMapping:
            json_['mediumSensitivityMapping'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final highSensitivityMapping = this.highSensitivityMapping;
    final mediumSensitivityMapping = this.mediumSensitivityMapping;
    return {
      'highSensitivityMapping': ?highSensitivityMapping,
      'mediumSensitivityMapping': ?mediumSensitivityMapping,
    };
  }
}

class GroupAssetsRequest {
  core.String? compareDuration;
  core.String? filter;
  core.String? groupBy;
  core.int? pageSize;
  core.String? pageToken;
  core.String? readTime;

  GroupAssetsRequest({
    this.compareDuration,
    this.filter,
    this.groupBy,
    this.pageSize,
    this.pageToken,
    this.readTime,
  });

  GroupAssetsRequest.fromJson(core.Map json_)
    : this(
        compareDuration: json_['compareDuration'] as core.String?,
        filter: json_['filter'] as core.String?,
        groupBy: json_['groupBy'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compareDuration = this.compareDuration;
    final filter = this.filter;
    final groupBy = this.groupBy;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final readTime = this.readTime;
    return {
      'compareDuration': ?compareDuration,
      'filter': ?filter,
      'groupBy': ?groupBy,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'readTime': ?readTime,
    };
  }
}

class GroupAssetsResponse {
  core.List<GroupResult>? groupByResults;
  core.String? nextPageToken;
  core.String? readTime;
  core.int? totalSize;

  GroupAssetsResponse({
    this.groupByResults,
    this.nextPageToken,
    this.readTime,
    this.totalSize,
  });

  GroupAssetsResponse.fromJson(core.Map json_)
    : this(
        groupByResults: (json_['groupByResults'] as core.List?)
            ?.map(
              (value) => GroupResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupByResults = this.groupByResults;
    final nextPageToken = this.nextPageToken;
    final readTime = this.readTime;
    final totalSize = this.totalSize;
    return {
      'groupByResults': ?groupByResults,
      'nextPageToken': ?nextPageToken,
      'readTime': ?readTime,
      'totalSize': ?totalSize,
    };
  }
}

class GroupFindingsRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? compareDuration;
  core.String? filter;
  core.String? groupBy;
  core.int? pageSize;
  core.String? pageToken;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? readTime;

  GroupFindingsRequest({
    this.compareDuration,
    this.filter,
    this.groupBy,
    this.pageSize,
    this.pageToken,
    this.readTime,
  });

  GroupFindingsRequest.fromJson(core.Map json_)
    : this(
        compareDuration: json_['compareDuration'] as core.String?,
        filter: json_['filter'] as core.String?,
        groupBy: json_['groupBy'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compareDuration = this.compareDuration;
    final filter = this.filter;
    final groupBy = this.groupBy;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final readTime = this.readTime;
    return {
      'compareDuration': ?compareDuration,
      'filter': ?filter,
      'groupBy': ?groupBy,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'readTime': ?readTime,
    };
  }
}

class GroupFindingsResponse {
  core.List<GroupResult>? groupByResults;
  core.String? nextPageToken;
  core.String? readTime;
  core.int? totalSize;

  GroupFindingsResponse({
    this.groupByResults,
    this.nextPageToken,
    this.readTime,
    this.totalSize,
  });

  GroupFindingsResponse.fromJson(core.Map json_)
    : this(
        groupByResults: (json_['groupByResults'] as core.List?)
            ?.map(
              (value) => GroupResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupByResults = this.groupByResults;
    final nextPageToken = this.nextPageToken;
    final readTime = this.readTime;
    final totalSize = this.totalSize;
    return {
      'groupByResults': ?groupByResults,
      'nextPageToken': ?nextPageToken,
      'readTime': ?readTime,
      'totalSize': ?totalSize,
    };
  }
}

class GroupMembership {
  core.String? groupId;

  ///
  /// Possible string values are:
  /// - "GROUP_TYPE_UNSPECIFIED"
  /// - "GROUP_TYPE_TOXIC_COMBINATION"
  /// - "GROUP_TYPE_CHOKEPOINT"
  core.String? groupType;

  GroupMembership({this.groupId, this.groupType});

  GroupMembership.fromJson(core.Map json_)
    : this(
        groupId: json_['groupId'] as core.String?,
        groupType: json_['groupType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupId = this.groupId;
    final groupType = this.groupType;
    return {'groupId': ?groupId, 'groupType': ?groupType};
  }
}

class GroupResult {
  core.String? count;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? properties;

  GroupResult({this.count, this.properties});

  GroupResult.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        properties: json_.containsKey('properties')
            ? json_['properties'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final properties = this.properties;
    return {'count': ?count, 'properties': ?properties};
  }
}

class HttpResponse {
  core.String? path;
  core.String? statusCode;

  HttpResponse({this.path, this.statusCode});

  HttpResponse.fromJson(core.Map json_)
    : this(
        path: json_['path'] as core.String?,
        statusCode: json_['statusCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final path = this.path;
    final statusCode = this.statusCode;
    return {'path': ?path, 'statusCode': ?statusCode};
  }
}

class IamBinding {
  ///
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED"
  /// - "ADD"
  /// - "REMOVE"
  core.String? action;
  core.String? member;
  core.String? role;

  IamBinding({this.action, this.member, this.role});

  IamBinding.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        member: json_['member'] as core.String?,
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final member = this.member;
    final role = this.role;
    return {'action': ?action, 'member': ?member, 'role': ?role};
  }
}

class IamPolicy {
  core.String? policyBlob;

  IamPolicy({this.policyBlob});

  IamPolicy.fromJson(core.Map json_)
    : this(policyBlob: json_['policyBlob'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final policyBlob = this.policyBlob;
    return {'policyBlob': ?policyBlob};
  }
}

class Indicator {
  core.List<core.String>? domains;
  core.List<core.String>? ipAddresses;
  core.List<ProcessSignature>? signatures;
  core.List<core.String>? uris;

  Indicator({this.domains, this.ipAddresses, this.signatures, this.uris});

  Indicator.fromJson(core.Map json_)
    : this(
        domains: (json_['domains'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        ipAddresses: (json_['ipAddresses'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        signatures: (json_['signatures'] as core.List?)
            ?.map(
              (value) => ProcessSignature.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        uris: (json_['uris'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final domains = this.domains;
    final ipAddresses = this.ipAddresses;
    final signatures = this.signatures;
    final uris = this.uris;
    return {
      'domains': ?domains,
      'ipAddresses': ?ipAddresses,
      'signatures': ?signatures,
      'uris': ?uris,
    };
  }
}

class InfoType {
  core.String? name;
  SensitivityScore? sensitivityScore;
  core.String? version;

  InfoType({this.name, this.sensitivityScore, this.version});

  InfoType.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        sensitivityScore: json_.containsKey('sensitivityScore')
            ? SensitivityScore.fromJson(
                json_['sensitivityScore']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final sensitivityScore = this.sensitivityScore;
    final version = this.version;
    return {
      'name': ?name,
      'sensitivityScore': ?sensitivityScore,
      'version': ?version,
    };
  }
}

class InvocationReference {
  core.String? invocationId;

  InvocationReference({this.invocationId});

  InvocationReference.fromJson(core.Map json_)
    : this(invocationId: json_['invocationId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final invocationId = this.invocationId;
    return {'invocationId': ?invocationId};
  }
}

class IpRule {
  core.List<PortRange>? portRanges;
  core.String? protocol;

  IpRule({this.portRanges, this.protocol});

  IpRule.fromJson(core.Map json_)
    : this(
        portRanges: (json_['portRanges'] as core.List?)
            ?.map(
              (value) => PortRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        protocol: json_['protocol'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final portRanges = this.portRanges;
    final protocol = this.protocol;
    return {'portRanges': ?portRanges, 'protocol': ?protocol};
  }
}

class IpRules {
  Allowed? allowed;
  Denied? denied;
  core.List<core.String>? destinationIpRanges;

  ///
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED"
  /// - "INGRESS"
  /// - "EGRESS"
  core.String? direction;
  core.List<core.String>? exposedServices;
  core.List<core.String>? sourceIpRanges;

  IpRules({
    this.allowed,
    this.denied,
    this.destinationIpRanges,
    this.direction,
    this.exposedServices,
    this.sourceIpRanges,
  });

  IpRules.fromJson(core.Map json_)
    : this(
        allowed: json_.containsKey('allowed')
            ? Allowed.fromJson(
                json_['allowed'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        denied: json_.containsKey('denied')
            ? Denied.fromJson(
                json_['denied'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinationIpRanges: (json_['destinationIpRanges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        direction: json_['direction'] as core.String?,
        exposedServices: (json_['exposedServices'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sourceIpRanges: (json_['sourceIpRanges'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowed = this.allowed;
    final denied = this.denied;
    final destinationIpRanges = this.destinationIpRanges;
    final direction = this.direction;
    final exposedServices = this.exposedServices;
    final sourceIpRanges = this.sourceIpRanges;
    return {
      'allowed': ?allowed,
      'denied': ?denied,
      'destinationIpRanges': ?destinationIpRanges,
      'direction': ?direction,
      'exposedServices': ?exposedServices,
      'sourceIpRanges': ?sourceIpRanges,
    };
  }
}

class Job {
  core.int? errorCode;
  core.String? location;
  core.String? name;

  ///
  /// Possible string values are:
  /// - "JOB_STATE_UNSPECIFIED"
  /// - "PENDING"
  /// - "RUNNING"
  /// - "SUCCEEDED"
  /// - "FAILED"
  core.String? state;

  Job({this.errorCode, this.location, this.name, this.state});

  Job.fromJson(core.Map json_)
    : this(
        errorCode: json_['errorCode'] as core.int?,
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCode = this.errorCode;
    final location = this.location;
    final name = this.name;
    final state = this.state;
    return {
      'errorCode': ?errorCode,
      'location': ?location,
      'name': ?name,
      'state': ?state,
    };
  }
}

class KernelRootkit {
  core.String? name;
  core.bool? unexpectedCodeModification;
  core.bool? unexpectedFtraceHandler;
  core.bool? unexpectedInterruptHandler;
  core.bool? unexpectedKernelCodePages;
  core.bool? unexpectedKprobeHandler;
  core.bool? unexpectedProcessesInRunqueue;
  core.bool? unexpectedReadOnlyDataModification;
  core.bool? unexpectedSystemCallHandler;

  KernelRootkit({
    this.name,
    this.unexpectedCodeModification,
    this.unexpectedFtraceHandler,
    this.unexpectedInterruptHandler,
    this.unexpectedKernelCodePages,
    this.unexpectedKprobeHandler,
    this.unexpectedProcessesInRunqueue,
    this.unexpectedReadOnlyDataModification,
    this.unexpectedSystemCallHandler,
  });

  KernelRootkit.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        unexpectedCodeModification:
            json_['unexpectedCodeModification'] as core.bool?,
        unexpectedFtraceHandler: json_['unexpectedFtraceHandler'] as core.bool?,
        unexpectedInterruptHandler:
            json_['unexpectedInterruptHandler'] as core.bool?,
        unexpectedKernelCodePages:
            json_['unexpectedKernelCodePages'] as core.bool?,
        unexpectedKprobeHandler: json_['unexpectedKprobeHandler'] as core.bool?,
        unexpectedProcessesInRunqueue:
            json_['unexpectedProcessesInRunqueue'] as core.bool?,
        unexpectedReadOnlyDataModification:
            json_['unexpectedReadOnlyDataModification'] as core.bool?,
        unexpectedSystemCallHandler:
            json_['unexpectedSystemCallHandler'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final unexpectedCodeModification = this.unexpectedCodeModification;
    final unexpectedFtraceHandler = this.unexpectedFtraceHandler;
    final unexpectedInterruptHandler = this.unexpectedInterruptHandler;
    final unexpectedKernelCodePages = this.unexpectedKernelCodePages;
    final unexpectedKprobeHandler = this.unexpectedKprobeHandler;
    final unexpectedProcessesInRunqueue = this.unexpectedProcessesInRunqueue;
    final unexpectedReadOnlyDataModification =
        this.unexpectedReadOnlyDataModification;
    final unexpectedSystemCallHandler = this.unexpectedSystemCallHandler;
    return {
      'name': ?name,
      'unexpectedCodeModification': ?unexpectedCodeModification,
      'unexpectedFtraceHandler': ?unexpectedFtraceHandler,
      'unexpectedInterruptHandler': ?unexpectedInterruptHandler,
      'unexpectedKernelCodePages': ?unexpectedKernelCodePages,
      'unexpectedKprobeHandler': ?unexpectedKprobeHandler,
      'unexpectedProcessesInRunqueue': ?unexpectedProcessesInRunqueue,
      'unexpectedReadOnlyDataModification': ?unexpectedReadOnlyDataModification,
      'unexpectedSystemCallHandler': ?unexpectedSystemCallHandler,
    };
  }
}

class Kubernetes {
  core.List<AccessReview>? accessReviews;
  core.List<GoogleCloudSecuritycenterV1Binding>? bindings;
  core.List<NodePool>? nodePools;
  core.List<Node>? nodes;
  core.List<Object>? objects;
  core.List<Pod>? pods;
  core.List<Role>? roles;

  Kubernetes({
    this.accessReviews,
    this.bindings,
    this.nodePools,
    this.nodes,
    this.objects,
    this.pods,
    this.roles,
  });

  Kubernetes.fromJson(core.Map json_)
    : this(
        accessReviews: (json_['accessReviews'] as core.List?)
            ?.map(
              (value) => AccessReview.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => GoogleCloudSecuritycenterV1Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nodePools: (json_['nodePools'] as core.List?)
            ?.map(
              (value) => NodePool.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nodes: (json_['nodes'] as core.List?)
            ?.map(
              (value) =>
                  Node.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        objects: (json_['objects'] as core.List?)
            ?.map(
              (value) =>
                  Object.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        pods: (json_['pods'] as core.List?)
            ?.map(
              (value) =>
                  Pod.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        roles: (json_['roles'] as core.List?)
            ?.map(
              (value) =>
                  Role.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessReviews = this.accessReviews;
    final bindings = this.bindings;
    final nodePools = this.nodePools;
    final nodes = this.nodes;
    final objects = this.objects;
    final pods = this.pods;
    final roles = this.roles;
    return {
      'accessReviews': ?accessReviews,
      'bindings': ?bindings,
      'nodePools': ?nodePools,
      'nodes': ?nodes,
      'objects': ?objects,
      'pods': ?pods,
      'roles': ?roles,
    };
  }
}

typedef Label = $Shared09;

class ListAssetsResponse {
  core.List<ListAssetsResult>? listAssetsResults;
  core.String? nextPageToken;
  core.String? readTime;
  core.int? totalSize;

  ListAssetsResponse({
    this.listAssetsResults,
    this.nextPageToken,
    this.readTime,
    this.totalSize,
  });

  ListAssetsResponse.fromJson(core.Map json_)
    : this(
        listAssetsResults: (json_['listAssetsResults'] as core.List?)
            ?.map(
              (value) => ListAssetsResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listAssetsResults = this.listAssetsResults;
    final nextPageToken = this.nextPageToken;
    final readTime = this.readTime;
    final totalSize = this.totalSize;
    return {
      'listAssetsResults': ?listAssetsResults,
      'nextPageToken': ?nextPageToken,
      'readTime': ?readTime,
      'totalSize': ?totalSize,
    };
  }
}

class ListAssetsResult {
  Asset? asset;

  ///
  /// Possible string values are:
  /// - "UNUSED"
  /// - "ADDED"
  /// - "REMOVED"
  /// - "ACTIVE"
  core.String? stateChange;

  ListAssetsResult({this.asset, this.stateChange});

  ListAssetsResult.fromJson(core.Map json_)
    : this(
        asset: json_.containsKey('asset')
            ? Asset.fromJson(
                json_['asset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stateChange: json_['stateChange'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final asset = this.asset;
    final stateChange = this.stateChange;
    return {'asset': ?asset, 'stateChange': ?stateChange};
  }
}

class ListAttackPathsResponse {
  core.List<AttackPath>? attackPaths;
  core.String? nextPageToken;

  ListAttackPathsResponse({this.attackPaths, this.nextPageToken});

  ListAttackPathsResponse.fromJson(core.Map json_)
    : this(
        attackPaths: (json_['attackPaths'] as core.List?)
            ?.map(
              (value) => AttackPath.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attackPaths = this.attackPaths;
    final nextPageToken = this.nextPageToken;
    return {'attackPaths': ?attackPaths, 'nextPageToken': ?nextPageToken};
  }
}

class ListBigQueryExportsResponse {
  core.List<GoogleCloudSecuritycenterV1BigQueryExport>? bigQueryExports;
  core.String? nextPageToken;

  ListBigQueryExportsResponse({this.bigQueryExports, this.nextPageToken});

  ListBigQueryExportsResponse.fromJson(core.Map json_)
    : this(
        bigQueryExports: (json_['bigQueryExports'] as core.List?)
            ?.map(
              (value) => GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bigQueryExports = this.bigQueryExports;
    final nextPageToken = this.nextPageToken;
    return {
      'bigQueryExports': ?bigQueryExports,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class ListDescendantEventThreatDetectionCustomModulesResponse {
  core.List<EventThreatDetectionCustomModule>?
  eventThreatDetectionCustomModules;
  core.String? nextPageToken;

  ListDescendantEventThreatDetectionCustomModulesResponse({
    this.eventThreatDetectionCustomModules,
    this.nextPageToken,
  });

  ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
    core.Map json_,
  ) : this(
        eventThreatDetectionCustomModules:
            (json_['eventThreatDetectionCustomModules'] as core.List?)
                ?.map(
                  (value) => EventThreatDetectionCustomModule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventThreatDetectionCustomModules =
        this.eventThreatDetectionCustomModules;
    final nextPageToken = this.nextPageToken;
    return {
      'eventThreatDetectionCustomModules': ?eventThreatDetectionCustomModules,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class ListDescendantSecurityHealthAnalyticsCustomModulesResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>?
  securityHealthAnalyticsCustomModules;

  ListDescendantSecurityHealthAnalyticsCustomModulesResponse({
    this.nextPageToken,
    this.securityHealthAnalyticsCustomModules,
  });

  ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securityHealthAnalyticsCustomModules:
            (json_['securityHealthAnalyticsCustomModules'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final securityHealthAnalyticsCustomModules =
        this.securityHealthAnalyticsCustomModules;
    return {
      'nextPageToken': ?nextPageToken,
      'securityHealthAnalyticsCustomModules':
          ?securityHealthAnalyticsCustomModules,
    };
  }
}

class ListEffectiveEventThreatDetectionCustomModulesResponse {
  core.List<EffectiveEventThreatDetectionCustomModule>?
  effectiveEventThreatDetectionCustomModules;
  core.String? nextPageToken;

  ListEffectiveEventThreatDetectionCustomModulesResponse({
    this.effectiveEventThreatDetectionCustomModules,
    this.nextPageToken,
  });

  ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
    core.Map json_,
  ) : this(
        effectiveEventThreatDetectionCustomModules:
            (json_['effectiveEventThreatDetectionCustomModules'] as core.List?)
                ?.map(
                  (value) => EffectiveEventThreatDetectionCustomModule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effectiveEventThreatDetectionCustomModules =
        this.effectiveEventThreatDetectionCustomModules;
    final nextPageToken = this.nextPageToken;
    return {
      'effectiveEventThreatDetectionCustomModules':
          ?effectiveEventThreatDetectionCustomModules,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class ListEffectiveSecurityHealthAnalyticsCustomModulesResponse {
  core.List<
    GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
  >?
  effectiveSecurityHealthAnalyticsCustomModules;
  core.String? nextPageToken;

  ListEffectiveSecurityHealthAnalyticsCustomModulesResponse({
    this.effectiveSecurityHealthAnalyticsCustomModules,
    this.nextPageToken,
  });

  ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
    core.Map json_,
  ) : this(
        effectiveSecurityHealthAnalyticsCustomModules:
            (json_['effectiveSecurityHealthAnalyticsCustomModules']
                    as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final effectiveSecurityHealthAnalyticsCustomModules =
        this.effectiveSecurityHealthAnalyticsCustomModules;
    final nextPageToken = this.nextPageToken;
    return {
      'effectiveSecurityHealthAnalyticsCustomModules':
          ?effectiveSecurityHealthAnalyticsCustomModules,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class ListEventThreatDetectionCustomModulesResponse {
  core.List<EventThreatDetectionCustomModule>?
  eventThreatDetectionCustomModules;
  core.String? nextPageToken;

  ListEventThreatDetectionCustomModulesResponse({
    this.eventThreatDetectionCustomModules,
    this.nextPageToken,
  });

  ListEventThreatDetectionCustomModulesResponse.fromJson(core.Map json_)
    : this(
        eventThreatDetectionCustomModules:
            (json_['eventThreatDetectionCustomModules'] as core.List?)
                ?.map(
                  (value) => EventThreatDetectionCustomModule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eventThreatDetectionCustomModules =
        this.eventThreatDetectionCustomModules;
    final nextPageToken = this.nextPageToken;
    return {
      'eventThreatDetectionCustomModules': ?eventThreatDetectionCustomModules,
      'nextPageToken': ?nextPageToken,
    };
  }
}

class ListFindingsResponse {
  core.List<ListFindingsResult>? listFindingsResults;
  core.String? nextPageToken;
  core.String? readTime;
  core.int? totalSize;

  ListFindingsResponse({
    this.listFindingsResults,
    this.nextPageToken,
    this.readTime,
    this.totalSize,
  });

  ListFindingsResponse.fromJson(core.Map json_)
    : this(
        listFindingsResults: (json_['listFindingsResults'] as core.List?)
            ?.map(
              (value) => ListFindingsResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final listFindingsResults = this.listFindingsResults;
    final nextPageToken = this.nextPageToken;
    final readTime = this.readTime;
    final totalSize = this.totalSize;
    return {
      'listFindingsResults': ?listFindingsResults,
      'nextPageToken': ?nextPageToken,
      'readTime': ?readTime,
      'totalSize': ?totalSize,
    };
  }
}

class ListFindingsResult {
  Finding? finding;
  Resource? resource;

  ///
  /// Possible string values are:
  /// - "UNUSED"
  /// - "CHANGED"
  /// - "UNCHANGED"
  /// - "ADDED"
  /// - "REMOVED"
  core.String? stateChange;

  ListFindingsResult({this.finding, this.resource, this.stateChange});

  ListFindingsResult.fromJson(core.Map json_)
    : this(
        finding: json_.containsKey('finding')
            ? Finding.fromJson(
                json_['finding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resource: json_.containsKey('resource')
            ? Resource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stateChange: json_['stateChange'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final finding = this.finding;
    final resource = this.resource;
    final stateChange = this.stateChange;
    return {
      'finding': ?finding,
      'resource': ?resource,
      'stateChange': ?stateChange,
    };
  }
}

class ListMuteConfigsResponse {
  core.List<GoogleCloudSecuritycenterV1MuteConfig>? muteConfigs;
  core.String? nextPageToken;

  ListMuteConfigsResponse({this.muteConfigs, this.nextPageToken});

  ListMuteConfigsResponse.fromJson(core.Map json_)
    : this(
        muteConfigs: (json_['muteConfigs'] as core.List?)
            ?.map(
              (value) => GoogleCloudSecuritycenterV1MuteConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final muteConfigs = this.muteConfigs;
    final nextPageToken = this.nextPageToken;
    return {'muteConfigs': ?muteConfigs, 'nextPageToken': ?nextPageToken};
  }
}

class ListNotificationConfigsResponse {
  core.String? nextPageToken;
  core.List<NotificationConfig>? notificationConfigs;

  ListNotificationConfigsResponse({
    this.nextPageToken,
    this.notificationConfigs,
  });

  ListNotificationConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        notificationConfigs: (json_['notificationConfigs'] as core.List?)
            ?.map(
              (value) => NotificationConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final notificationConfigs = this.notificationConfigs;
    return {
      'nextPageToken': ?nextPageToken,
      'notificationConfigs': ?notificationConfigs,
    };
  }
}

class ListOperationsResponse {
  core.String? nextPageToken;
  core.List<Operation>? operations;
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

class ListResourceValueConfigsResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudSecuritycenterV1ResourceValueConfig>?
  resourceValueConfigs;

  ListResourceValueConfigsResponse({
    this.nextPageToken,
    this.resourceValueConfigs,
  });

  ListResourceValueConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resourceValueConfigs: (json_['resourceValueConfigs'] as core.List?)
            ?.map(
              (value) =>
                  GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final resourceValueConfigs = this.resourceValueConfigs;
    return {
      'nextPageToken': ?nextPageToken,
      'resourceValueConfigs': ?resourceValueConfigs,
    };
  }
}

class ListSecurityHealthAnalyticsCustomModulesResponse {
  core.String? nextPageToken;
  core.List<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>?
  securityHealthAnalyticsCustomModules;

  ListSecurityHealthAnalyticsCustomModulesResponse({
    this.nextPageToken,
    this.securityHealthAnalyticsCustomModules,
  });

  ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securityHealthAnalyticsCustomModules:
            (json_['securityHealthAnalyticsCustomModules'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final securityHealthAnalyticsCustomModules =
        this.securityHealthAnalyticsCustomModules;
    return {
      'nextPageToken': ?nextPageToken,
      'securityHealthAnalyticsCustomModules':
          ?securityHealthAnalyticsCustomModules,
    };
  }
}

class ListSourcesResponse {
  core.String? nextPageToken;
  core.List<Source>? sources;

  ListSourcesResponse({this.nextPageToken, this.sources});

  ListSourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sources: (json_['sources'] as core.List?)
            ?.map(
              (value) =>
                  Source.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final sources = this.sources;
    return {'nextPageToken': ?nextPageToken, 'sources': ?sources};
  }
}

class ListValuedResourcesResponse {
  core.String? nextPageToken;
  core.int? totalSize;
  core.List<ValuedResource>? valuedResources;

  ListValuedResourcesResponse({
    this.nextPageToken,
    this.totalSize,
    this.valuedResources,
  });

  ListValuedResourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
        valuedResources: (json_['valuedResources'] as core.List?)
            ?.map(
              (value) => ValuedResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final totalSize = this.totalSize;
    final valuedResources = this.valuedResources;
    return {
      'nextPageToken': ?nextPageToken,
      'totalSize': ?totalSize,
      'valuedResources': ?valuedResources,
    };
  }
}

typedef LoadBalancer = $Shared00;

class LogEntry {
  CloudLoggingEntry? cloudLoggingEntry;

  LogEntry({this.cloudLoggingEntry});

  LogEntry.fromJson(core.Map json_)
    : this(
        cloudLoggingEntry: json_.containsKey('cloudLoggingEntry')
            ? CloudLoggingEntry.fromJson(
                json_['cloudLoggingEntry']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudLoggingEntry = this.cloudLoggingEntry;
    return {'cloudLoggingEntry': ?cloudLoggingEntry};
  }
}

class MemoryHashSignature {
  core.String? binaryFamily;
  core.List<Detection>? detections;

  MemoryHashSignature({this.binaryFamily, this.detections});

  MemoryHashSignature.fromJson(core.Map json_)
    : this(
        binaryFamily: json_['binaryFamily'] as core.String?,
        detections: (json_['detections'] as core.List?)
            ?.map(
              (value) => Detection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final binaryFamily = this.binaryFamily;
    final detections = this.detections;
    return {'binaryFamily': ?binaryFamily, 'detections': ?detections};
  }
}

class MitreAttack {
  core.List<core.String>? additionalTactics;
  core.List<core.String>? additionalTechniques;

  ///
  /// Possible string values are:
  /// - "TACTIC_UNSPECIFIED"
  /// - "RECONNAISSANCE"
  /// - "RESOURCE_DEVELOPMENT"
  /// - "INITIAL_ACCESS"
  /// - "EXECUTION"
  /// - "PERSISTENCE"
  /// - "PRIVILEGE_ESCALATION"
  /// - "DEFENSE_EVASION"
  /// - "CREDENTIAL_ACCESS"
  /// - "DISCOVERY"
  /// - "LATERAL_MOVEMENT"
  /// - "COLLECTION"
  /// - "COMMAND_AND_CONTROL"
  /// - "EXFILTRATION"
  /// - "IMPACT"
  core.String? primaryTactic;
  core.List<core.String>? primaryTechniques;
  core.String? version;

  MitreAttack({
    this.additionalTactics,
    this.additionalTechniques,
    this.primaryTactic,
    this.primaryTechniques,
    this.version,
  });

  MitreAttack.fromJson(core.Map json_)
    : this(
        additionalTactics: (json_['additionalTactics'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        additionalTechniques: (json_['additionalTechniques'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        primaryTactic: json_['primaryTactic'] as core.String?,
        primaryTechniques: (json_['primaryTechniques'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalTactics = this.additionalTactics;
    final additionalTechniques = this.additionalTechniques;
    final primaryTactic = this.primaryTactic;
    final primaryTechniques = this.primaryTechniques;
    final version = this.version;
    return {
      'additionalTactics': ?additionalTactics,
      'additionalTechniques': ?additionalTechniques,
      'primaryTactic': ?primaryTactic,
      'primaryTechniques': ?primaryTechniques,
      'version': ?version,
    };
  }
}

class MuteInfo {
  core.List<DynamicMuteRecord>? dynamicMuteRecords;
  StaticMute? staticMute;

  MuteInfo({this.dynamicMuteRecords, this.staticMute});

  MuteInfo.fromJson(core.Map json_)
    : this(
        dynamicMuteRecords: (json_['dynamicMuteRecords'] as core.List?)
            ?.map(
              (value) => DynamicMuteRecord.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        staticMute: json_.containsKey('staticMute')
            ? StaticMute.fromJson(
                json_['staticMute'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dynamicMuteRecords = this.dynamicMuteRecords;
    final staticMute = this.staticMute;
    return {
      'dynamicMuteRecords': ?dynamicMuteRecords,
      'staticMute': ?staticMute,
    };
  }
}

typedef Network = $Shared00;
typedef Node = $Shared00;

class NodePool {
  core.String? name;
  core.List<Node>? nodes;

  NodePool({this.name, this.nodes});

  NodePool.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        nodes: (json_['nodes'] as core.List?)
            ?.map(
              (value) =>
                  Node.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final nodes = this.nodes;
    return {'name': ?name, 'nodes': ?nodes};
  }
}

class Notebook {
  core.String? lastAuthor;
  core.String? name;
  core.String? notebookUpdateTime;
  core.String? service;

  Notebook({this.lastAuthor, this.name, this.notebookUpdateTime, this.service});

  Notebook.fromJson(core.Map json_)
    : this(
        lastAuthor: json_['lastAuthor'] as core.String?,
        name: json_['name'] as core.String?,
        notebookUpdateTime: json_['notebookUpdateTime'] as core.String?,
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastAuthor = this.lastAuthor;
    final name = this.name;
    final notebookUpdateTime = this.notebookUpdateTime;
    final service = this.service;
    return {
      'lastAuthor': ?lastAuthor,
      'name': ?name,
      'notebookUpdateTime': ?notebookUpdateTime,
      'service': ?service,
    };
  }
}

class NotificationConfig {
  core.String? description;
  core.String? name;
  core.String? pubsubTopic;
  core.String? serviceAccount;
  StreamingConfig? streamingConfig;

  NotificationConfig({
    this.description,
    this.name,
    this.pubsubTopic,
    this.serviceAccount,
    this.streamingConfig,
  });

  NotificationConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        pubsubTopic: json_['pubsubTopic'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        streamingConfig: json_.containsKey('streamingConfig')
            ? StreamingConfig.fromJson(
                json_['streamingConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final name = this.name;
    final pubsubTopic = this.pubsubTopic;
    final serviceAccount = this.serviceAccount;
    final streamingConfig = this.streamingConfig;
    return {
      'description': ?description,
      'name': ?name,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?streamingConfig,
    };
  }
}

class Object {
  core.List<Container>? containers;
  core.String? group;
  core.String? kind;
  core.String? name;
  core.String? ns;

  Object({this.containers, this.group, this.kind, this.name, this.ns});

  Object.fromJson(core.Map json_)
    : this(
        containers: (json_['containers'] as core.List?)
            ?.map(
              (value) => Container.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        group: json_['group'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        ns: json_['ns'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containers = this.containers;
    final group = this.group;
    final kind = this.kind;
    final name = this.name;
    final ns = this.ns;
    return {
      'containers': ?containers,
      'group': ?group,
      'kind': ?kind,
      'name': ?name,
      'ns': ?ns,
    };
  }
}

class Operation {
  core.bool? done;
  Status? error;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? name;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

typedef OrgPolicy = $Shared00;

class OrganizationSettings {
  AssetDiscoveryConfig? assetDiscoveryConfig;
  core.bool? enableAssetDiscovery;
  core.String? name;

  OrganizationSettings({
    this.assetDiscoveryConfig,
    this.enableAssetDiscovery,
    this.name,
  });

  OrganizationSettings.fromJson(core.Map json_)
    : this(
        assetDiscoveryConfig: json_.containsKey('assetDiscoveryConfig')
            ? AssetDiscoveryConfig.fromJson(
                json_['assetDiscoveryConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        enableAssetDiscovery: json_['enableAssetDiscovery'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assetDiscoveryConfig = this.assetDiscoveryConfig;
    final enableAssetDiscovery = this.enableAssetDiscovery;
    final name = this.name;
    return {
      'assetDiscoveryConfig': ?assetDiscoveryConfig,
      'enableAssetDiscovery': ?enableAssetDiscovery,
      'name': ?name,
    };
  }
}

class Package {
  core.String? cpeUri;
  core.String? packageName;
  core.String? packageType;
  core.String? packageVersion;

  Package({
    this.cpeUri,
    this.packageName,
    this.packageType,
    this.packageVersion,
  });

  Package.fromJson(core.Map json_)
    : this(
        cpeUri: json_['cpeUri'] as core.String?,
        packageName: json_['packageName'] as core.String?,
        packageType: json_['packageType'] as core.String?,
        packageVersion: json_['packageVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cpeUri = this.cpeUri;
    final packageName = this.packageName;
    final packageType = this.packageType;
    final packageVersion = this.packageVersion;
    return {
      'cpeUri': ?cpeUri,
      'packageName': ?packageName,
      'packageType': ?packageType,
      'packageVersion': ?packageVersion,
    };
  }
}

class PathNodeAssociatedFinding {
  core.String? canonicalFinding;
  core.String? findingCategory;
  core.String? name;

  PathNodeAssociatedFinding({
    this.canonicalFinding,
    this.findingCategory,
    this.name,
  });

  PathNodeAssociatedFinding.fromJson(core.Map json_)
    : this(
        canonicalFinding: json_['canonicalFinding'] as core.String?,
        findingCategory: json_['findingCategory'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final canonicalFinding = this.canonicalFinding;
    final findingCategory = this.findingCategory;
    final name = this.name;
    return {
      'canonicalFinding': ?canonicalFinding,
      'findingCategory': ?findingCategory,
      'name': ?name,
    };
  }
}

typedef Pipeline = $Shared23;

class Pod {
  core.List<Container>? containers;
  core.List<Label>? labels;
  core.String? name;
  core.String? ns;

  Pod({this.containers, this.labels, this.name, this.ns});

  Pod.fromJson(core.Map json_)
    : this(
        containers: (json_['containers'] as core.List?)
            ?.map(
              (value) => Container.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        labels: (json_['labels'] as core.List?)
            ?.map(
              (value) =>
                  Label.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        name: json_['name'] as core.String?,
        ns: json_['ns'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final containers = this.containers;
    final labels = this.labels;
    final name = this.name;
    final ns = this.ns;
    return {
      'containers': ?containers,
      'labels': ?labels,
      'name': ?name,
      'ns': ?ns,
    };
  }
}

class Policy {
  core.List<AuditConfig>? auditConfigs;
  core.List<Binding>? bindings;
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  core.int? version;

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
}

class PolicyDriftDetails {
  core.String? detectedValue;
  core.String? expectedValue;
  core.String? field;

  PolicyDriftDetails({this.detectedValue, this.expectedValue, this.field});

  PolicyDriftDetails.fromJson(core.Map json_)
    : this(
        detectedValue: json_['detectedValue'] as core.String?,
        expectedValue: json_['expectedValue'] as core.String?,
        field: json_['field'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final detectedValue = this.detectedValue;
    final expectedValue = this.expectedValue;
    final field = this.field;
    return {
      'detectedValue': ?detectedValue,
      'expectedValue': ?expectedValue,
      'field': ?field,
    };
  }
}

class PolicyViolationSummary {
  core.String? conformantResourcesCount;
  core.String? evaluationErrorsCount;
  core.String? outOfScopeResourcesCount;
  core.String? policyViolationsCount;

  PolicyViolationSummary({
    this.conformantResourcesCount,
    this.evaluationErrorsCount,
    this.outOfScopeResourcesCount,
    this.policyViolationsCount,
  });

  PolicyViolationSummary.fromJson(core.Map json_)
    : this(
        conformantResourcesCount:
            json_['conformantResourcesCount'] as core.String?,
        evaluationErrorsCount: json_['evaluationErrorsCount'] as core.String?,
        outOfScopeResourcesCount:
            json_['outOfScopeResourcesCount'] as core.String?,
        policyViolationsCount: json_['policyViolationsCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final conformantResourcesCount = this.conformantResourcesCount;
    final evaluationErrorsCount = this.evaluationErrorsCount;
    final outOfScopeResourcesCount = this.outOfScopeResourcesCount;
    final policyViolationsCount = this.policyViolationsCount;
    return {
      'conformantResourcesCount': ?conformantResourcesCount,
      'evaluationErrorsCount': ?evaluationErrorsCount,
      'outOfScopeResourcesCount': ?outOfScopeResourcesCount,
      'policyViolationsCount': ?policyViolationsCount,
    };
  }
}

class PortRange {
  core.String? max;
  core.String? min;

  PortRange({this.max, this.min});

  PortRange.fromJson(core.Map json_)
    : this(
        max: json_['max'] as core.String?,
        min: json_['min'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final max = this.max;
    final min = this.min;
    return {'max': ?max, 'min': ?min};
  }
}

class Position {
  core.int? columnNumber;
  core.int? lineNumber;

  Position({this.columnNumber, this.lineNumber});

  Position.fromJson(core.Map json_)
    : this(
        columnNumber: json_['columnNumber'] as core.int?,
        lineNumber: json_['lineNumber'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final columnNumber = this.columnNumber;
    final lineNumber = this.lineNumber;
    return {'columnNumber': ?columnNumber, 'lineNumber': ?lineNumber};
  }
}

class Process {
  core.List<core.String>? args;
  core.bool? argumentsTruncated;
  File? binary;
  core.List<EnvironmentVariable>? envVariables;
  core.bool? envVariablesTruncated;
  core.List<File>? libraries;
  core.String? name;
  core.String? parentPid;
  core.String? pid;
  File? script;
  core.String? userId;

  Process({
    this.args,
    this.argumentsTruncated,
    this.binary,
    this.envVariables,
    this.envVariablesTruncated,
    this.libraries,
    this.name,
    this.parentPid,
    this.pid,
    this.script,
    this.userId,
  });

  Process.fromJson(core.Map json_)
    : this(
        args: (json_['args'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        argumentsTruncated: json_['argumentsTruncated'] as core.bool?,
        binary: json_.containsKey('binary')
            ? File.fromJson(
                json_['binary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        envVariables: (json_['envVariables'] as core.List?)
            ?.map(
              (value) => EnvironmentVariable.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        envVariablesTruncated: json_['envVariablesTruncated'] as core.bool?,
        libraries: (json_['libraries'] as core.List?)
            ?.map(
              (value) =>
                  File.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        name: json_['name'] as core.String?,
        parentPid: json_['parentPid'] as core.String?,
        pid: json_['pid'] as core.String?,
        script: json_.containsKey('script')
            ? File.fromJson(
                json_['script'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final argumentsTruncated = this.argumentsTruncated;
    final binary = this.binary;
    final envVariables = this.envVariables;
    final envVariablesTruncated = this.envVariablesTruncated;
    final libraries = this.libraries;
    final name = this.name;
    final parentPid = this.parentPid;
    final pid = this.pid;
    final script = this.script;
    final userId = this.userId;
    return {
      'args': ?args,
      'argumentsTruncated': ?argumentsTruncated,
      'binary': ?binary,
      'envVariables': ?envVariables,
      'envVariablesTruncated': ?envVariablesTruncated,
      'libraries': ?libraries,
      'name': ?name,
      'parentPid': ?parentPid,
      'pid': ?pid,
      'script': ?script,
      'userId': ?userId,
    };
  }
}

class ProcessSignature {
  MemoryHashSignature? memoryHashSignature;

  ///
  /// Possible string values are:
  /// - "SIGNATURE_TYPE_UNSPECIFIED"
  /// - "SIGNATURE_TYPE_PROCESS"
  /// - "SIGNATURE_TYPE_FILE"
  core.String? signatureType;
  YaraRuleSignature? yaraRuleSignature;

  ProcessSignature({
    this.memoryHashSignature,
    this.signatureType,
    this.yaraRuleSignature,
  });

  ProcessSignature.fromJson(core.Map json_)
    : this(
        memoryHashSignature: json_.containsKey('memoryHashSignature')
            ? MemoryHashSignature.fromJson(
                json_['memoryHashSignature']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        signatureType: json_['signatureType'] as core.String?,
        yaraRuleSignature: json_.containsKey('yaraRuleSignature')
            ? YaraRuleSignature.fromJson(
                json_['yaraRuleSignature']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final memoryHashSignature = this.memoryHashSignature;
    final signatureType = this.signatureType;
    final yaraRuleSignature = this.yaraRuleSignature;
    return {
      'memoryHashSignature': ?memoryHashSignature,
      'signatureType': ?signatureType,
      'yaraRuleSignature': ?yaraRuleSignature,
    };
  }
}

class Reference {
  core.String? source;
  core.String? uri;

  Reference({this.source, this.uri});

  Reference.fromJson(core.Map json_)
    : this(
        source: json_['source'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final source = this.source;
    final uri = this.uri;
    return {'source': ?source, 'uri': ?uri};
  }
}

class Requests {
  core.int? longTermAllowed;
  core.int? longTermDenied;
  core.double? ratio;
  core.int? shortTermAllowed;

  Requests({
    this.longTermAllowed,
    this.longTermDenied,
    this.ratio,
    this.shortTermAllowed,
  });

  Requests.fromJson(core.Map json_)
    : this(
        longTermAllowed: json_['longTermAllowed'] as core.int?,
        longTermDenied: json_['longTermDenied'] as core.int?,
        ratio: (json_['ratio'] as core.num?)?.toDouble(),
        shortTermAllowed: json_['shortTermAllowed'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final longTermAllowed = this.longTermAllowed;
    final longTermDenied = this.longTermDenied;
    final ratio = this.ratio;
    final shortTermAllowed = this.shortTermAllowed;
    return {
      'longTermAllowed': ?longTermAllowed,
      'longTermDenied': ?longTermDenied,
      'ratio': ?ratio,
      'shortTermAllowed': ?shortTermAllowed,
    };
  }
}

class Resource {
  AdcApplication? adcApplication;
  AdcApplicationTemplateRevision? adcApplicationTemplate;
  AdcSharedTemplateRevision? adcSharedTemplate;
  GoogleCloudSecuritycenterV1ResourceApplication? application;
  AwsMetadata? awsMetadata;
  AzureMetadata? azureMetadata;

  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;
  core.String? displayName;
  core.List<Folder>? folders;
  core.String? location;
  core.String? name;
  core.String? organization;
  core.String? parentDisplayName;
  core.String? parentName;
  core.String? projectDisplayName;
  core.String? projectName;
  ResourcePath? resourcePath;
  core.String? resourcePathString;
  core.String? service;
  core.String? type;

  Resource({
    this.adcApplication,
    this.adcApplicationTemplate,
    this.adcSharedTemplate,
    this.application,
    this.awsMetadata,
    this.azureMetadata,
    this.cloudProvider,
    this.displayName,
    this.folders,
    this.location,
    this.name,
    this.organization,
    this.parentDisplayName,
    this.parentName,
    this.projectDisplayName,
    this.projectName,
    this.resourcePath,
    this.resourcePathString,
    this.service,
    this.type,
  });

  Resource.fromJson(core.Map json_)
    : this(
        adcApplication: json_.containsKey('adcApplication')
            ? AdcApplication.fromJson(
                json_['adcApplication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        adcApplicationTemplate: json_.containsKey('adcApplicationTemplate')
            ? AdcApplicationTemplateRevision.fromJson(
                json_['adcApplicationTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        adcSharedTemplate: json_.containsKey('adcSharedTemplate')
            ? AdcSharedTemplateRevision.fromJson(
                json_['adcSharedTemplate']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        application: json_.containsKey('application')
            ? GoogleCloudSecuritycenterV1ResourceApplication.fromJson(
                json_['application'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        awsMetadata: json_.containsKey('awsMetadata')
            ? AwsMetadata.fromJson(
                json_['awsMetadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        azureMetadata: json_.containsKey('azureMetadata')
            ? AzureMetadata.fromJson(
                json_['azureMetadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cloudProvider: json_['cloudProvider'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        folders: (json_['folders'] as core.List?)
            ?.map(
              (value) =>
                  Folder.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        organization: json_['organization'] as core.String?,
        parentDisplayName: json_['parentDisplayName'] as core.String?,
        parentName: json_['parentName'] as core.String?,
        projectDisplayName: json_['projectDisplayName'] as core.String?,
        projectName: json_['projectName'] as core.String?,
        resourcePath: json_.containsKey('resourcePath')
            ? ResourcePath.fromJson(
                json_['resourcePath'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resourcePathString: json_['resourcePathString'] as core.String?,
        service: json_['service'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adcApplication = this.adcApplication;
    final adcApplicationTemplate = this.adcApplicationTemplate;
    final adcSharedTemplate = this.adcSharedTemplate;
    final application = this.application;
    final awsMetadata = this.awsMetadata;
    final azureMetadata = this.azureMetadata;
    final cloudProvider = this.cloudProvider;
    final displayName = this.displayName;
    final folders = this.folders;
    final location = this.location;
    final name = this.name;
    final organization = this.organization;
    final parentDisplayName = this.parentDisplayName;
    final parentName = this.parentName;
    final projectDisplayName = this.projectDisplayName;
    final projectName = this.projectName;
    final resourcePath = this.resourcePath;
    final resourcePathString = this.resourcePathString;
    final service = this.service;
    final type = this.type;
    return {
      'adcApplication': ?adcApplication,
      'adcApplicationTemplate': ?adcApplicationTemplate,
      'adcSharedTemplate': ?adcSharedTemplate,
      'application': ?application,
      'awsMetadata': ?awsMetadata,
      'azureMetadata': ?azureMetadata,
      'cloudProvider': ?cloudProvider,
      'displayName': ?displayName,
      'folders': ?folders,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'parentDisplayName': ?parentDisplayName,
      'parentName': ?parentName,
      'projectDisplayName': ?projectDisplayName,
      'projectName': ?projectName,
      'resourcePath': ?resourcePath,
      'resourcePathString': ?resourcePathString,
      'service': ?service,
      'type': ?type,
    };
  }
}

class ResourcePath {
  core.List<ResourcePathNode>? nodes;

  ResourcePath({this.nodes});

  ResourcePath.fromJson(core.Map json_)
    : this(
        nodes: (json_['nodes'] as core.List?)
            ?.map(
              (value) => ResourcePathNode.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nodes = this.nodes;
    return {'nodes': ?nodes};
  }
}

class ResourcePathNode {
  core.String? displayName;
  core.String? id;

  ///
  /// Possible string values are:
  /// - "RESOURCE_PATH_NODE_TYPE_UNSPECIFIED"
  /// - "GCP_ORGANIZATION"
  /// - "GCP_FOLDER"
  /// - "GCP_PROJECT"
  /// - "AWS_ORGANIZATION"
  /// - "AWS_ORGANIZATIONAL_UNIT"
  /// - "AWS_ACCOUNT"
  /// - "AZURE_MANAGEMENT_GROUP"
  /// - "AZURE_SUBSCRIPTION"
  /// - "AZURE_RESOURCE_GROUP"
  core.String? nodeType;

  ResourcePathNode({this.displayName, this.id, this.nodeType});

  ResourcePathNode.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        nodeType: json_['nodeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final id = this.id;
    final nodeType = this.nodeType;
    return {'displayName': ?displayName, 'id': ?id, 'nodeType': ?nodeType};
  }
}

typedef ResourceValueConfigMetadata = $Shared00;

class Role {
  ///
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED"
  /// - "ROLE"
  /// - "CLUSTER_ROLE"
  core.String? kind;
  core.String? name;
  core.String? ns;

  Role({this.kind, this.name, this.ns});

  Role.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        ns: json_['ns'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final name = this.name;
    final ns = this.ns;
    return {'kind': ?kind, 'name': ?name, 'ns': ?ns};
  }
}

typedef RunAssetDiscoveryRequest = $Empty;

class Secret {
  SecretEnvironmentVariable? environmentVariable;
  SecretFilePath? filePath;
  SecretStatus? status;
  core.String? type;

  Secret({this.environmentVariable, this.filePath, this.status, this.type});

  Secret.fromJson(core.Map json_)
    : this(
        environmentVariable: json_.containsKey('environmentVariable')
            ? SecretEnvironmentVariable.fromJson(
                json_['environmentVariable']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        filePath: json_.containsKey('filePath')
            ? SecretFilePath.fromJson(
                json_['filePath'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_.containsKey('status')
            ? SecretStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final environmentVariable = this.environmentVariable;
    final filePath = this.filePath;
    final status = this.status;
    final type = this.type;
    return {
      'environmentVariable': ?environmentVariable,
      'filePath': ?filePath,
      'status': ?status,
      'type': ?type,
    };
  }
}

class SecretEnvironmentVariable {
  core.String? key;

  SecretEnvironmentVariable({this.key});

  SecretEnvironmentVariable.fromJson(core.Map json_)
    : this(key: json_['key'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    return {'key': ?key};
  }
}

class SecretFilePath {
  core.String? path;

  SecretFilePath({this.path});

  SecretFilePath.fromJson(core.Map json_)
    : this(path: json_['path'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final path = this.path;
    return {'path': ?path};
  }
}

class SecretStatus {
  core.String? lastUpdatedTime;

  ///
  /// Possible string values are:
  /// - "SECRET_VALIDITY_UNSPECIFIED"
  /// - "SECRET_VALIDITY_UNSUPPORTED"
  /// - "SECRET_VALIDITY_FAILED"
  /// - "SECRET_VALIDITY_INVALID"
  /// - "SECRET_VALIDITY_VALID"
  core.String? validity;

  SecretStatus({this.lastUpdatedTime, this.validity});

  SecretStatus.fromJson(core.Map json_)
    : this(
        lastUpdatedTime: json_['lastUpdatedTime'] as core.String?,
        validity: json_['validity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastUpdatedTime = this.lastUpdatedTime;
    final validity = this.validity;
    return {'lastUpdatedTime': ?lastUpdatedTime, 'validity': ?validity};
  }
}

class SecurityBulletin {
  core.String? bulletinId;
  core.String? submissionTime;
  core.String? suggestedUpgradeVersion;

  SecurityBulletin({
    this.bulletinId,
    this.submissionTime,
    this.suggestedUpgradeVersion,
  });

  SecurityBulletin.fromJson(core.Map json_)
    : this(
        bulletinId: json_['bulletinId'] as core.String?,
        submissionTime: json_['submissionTime'] as core.String?,
        suggestedUpgradeVersion:
            json_['suggestedUpgradeVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bulletinId = this.bulletinId;
    final submissionTime = this.submissionTime;
    final suggestedUpgradeVersion = this.suggestedUpgradeVersion;
    return {
      'bulletinId': ?bulletinId,
      'submissionTime': ?submissionTime,
      'suggestedUpgradeVersion': ?suggestedUpgradeVersion,
    };
  }
}

class SecurityCenterProperties {
  core.List<Folder>? folders;
  core.String? resourceDisplayName;
  core.String? resourceName;
  core.List<core.String>? resourceOwners;
  core.String? resourceParent;
  core.String? resourceParentDisplayName;
  core.String? resourceProject;
  core.String? resourceProjectDisplayName;
  core.String? resourceType;

  SecurityCenterProperties({
    this.folders,
    this.resourceDisplayName,
    this.resourceName,
    this.resourceOwners,
    this.resourceParent,
    this.resourceParentDisplayName,
    this.resourceProject,
    this.resourceProjectDisplayName,
    this.resourceType,
  });

  SecurityCenterProperties.fromJson(core.Map json_)
    : this(
        folders: (json_['folders'] as core.List?)
            ?.map(
              (value) =>
                  Folder.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        resourceDisplayName: json_['resourceDisplayName'] as core.String?,
        resourceName: json_['resourceName'] as core.String?,
        resourceOwners: (json_['resourceOwners'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        resourceParent: json_['resourceParent'] as core.String?,
        resourceParentDisplayName:
            json_['resourceParentDisplayName'] as core.String?,
        resourceProject: json_['resourceProject'] as core.String?,
        resourceProjectDisplayName:
            json_['resourceProjectDisplayName'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final folders = this.folders;
    final resourceDisplayName = this.resourceDisplayName;
    final resourceName = this.resourceName;
    final resourceOwners = this.resourceOwners;
    final resourceParent = this.resourceParent;
    final resourceParentDisplayName = this.resourceParentDisplayName;
    final resourceProject = this.resourceProject;
    final resourceProjectDisplayName = this.resourceProjectDisplayName;
    final resourceType = this.resourceType;
    return {
      'folders': ?folders,
      'resourceDisplayName': ?resourceDisplayName,
      'resourceName': ?resourceName,
      'resourceOwners': ?resourceOwners,
      'resourceParent': ?resourceParent,
      'resourceParentDisplayName': ?resourceParentDisplayName,
      'resourceProject': ?resourceProject,
      'resourceProjectDisplayName': ?resourceProjectDisplayName,
      'resourceType': ?resourceType,
    };
  }
}

class SecurityMarks {
  core.String? canonicalName;
  core.Map<core.String, core.String>? marks;
  core.String? name;

  SecurityMarks({this.canonicalName, this.marks, this.name});

  SecurityMarks.fromJson(core.Map json_)
    : this(
        canonicalName: json_['canonicalName'] as core.String?,
        marks: (json_['marks'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final canonicalName = this.canonicalName;
    final marks = this.marks;
    final name = this.name;
    return {'canonicalName': ?canonicalName, 'marks': ?marks, 'name': ?name};
  }
}

class SecurityPolicy {
  core.String? name;
  core.bool? preview;
  core.String? type;

  SecurityPolicy({this.name, this.preview, this.type});

  SecurityPolicy.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        preview: json_['preview'] as core.bool?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final preview = this.preview;
    final type = this.type;
    return {'name': ?name, 'preview': ?preview, 'type': ?type};
  }
}

class SecurityPosture {
  core.String? changedPolicy;
  core.String? name;
  core.String? policy;
  core.List<PolicyDriftDetails>? policyDriftDetails;
  core.String? policySet;
  core.String? postureDeployment;
  core.String? postureDeploymentResource;
  core.String? revisionId;

  SecurityPosture({
    this.changedPolicy,
    this.name,
    this.policy,
    this.policyDriftDetails,
    this.policySet,
    this.postureDeployment,
    this.postureDeploymentResource,
    this.revisionId,
  });

  SecurityPosture.fromJson(core.Map json_)
    : this(
        changedPolicy: json_['changedPolicy'] as core.String?,
        name: json_['name'] as core.String?,
        policy: json_['policy'] as core.String?,
        policyDriftDetails: (json_['policyDriftDetails'] as core.List?)
            ?.map(
              (value) => PolicyDriftDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        policySet: json_['policySet'] as core.String?,
        postureDeployment: json_['postureDeployment'] as core.String?,
        postureDeploymentResource:
            json_['postureDeploymentResource'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final changedPolicy = this.changedPolicy;
    final name = this.name;
    final policy = this.policy;
    final policyDriftDetails = this.policyDriftDetails;
    final policySet = this.policySet;
    final postureDeployment = this.postureDeployment;
    final postureDeploymentResource = this.postureDeploymentResource;
    final revisionId = this.revisionId;
    return {
      'changedPolicy': ?changedPolicy,
      'name': ?name,
      'policy': ?policy,
      'policyDriftDetails': ?policyDriftDetails,
      'policySet': ?policySet,
      'postureDeployment': ?postureDeployment,
      'postureDeploymentResource': ?postureDeploymentResource,
      'revisionId': ?revisionId,
    };
  }
}

class SensitivityScore {
  ///
  /// Possible string values are:
  /// - "SENSITIVITY_SCORE_LEVEL_UNSPECIFIED"
  /// - "SENSITIVITY_LOW"
  /// - "SENSITIVITY_UNKNOWN"
  /// - "SENSITIVITY_MODERATE"
  /// - "SENSITIVITY_HIGH"
  core.String? score;

  SensitivityScore({this.score});

  SensitivityScore.fromJson(core.Map json_)
    : this(score: json_['score'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final score = this.score;
    return {'score': ?score};
  }
}

class ServiceAccountDelegationInfo {
  core.String? principalEmail;
  core.String? principalSubject;

  ServiceAccountDelegationInfo({this.principalEmail, this.principalSubject});

  ServiceAccountDelegationInfo.fromJson(core.Map json_)
    : this(
        principalEmail: json_['principalEmail'] as core.String?,
        principalSubject: json_['principalSubject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final principalEmail = this.principalEmail;
    final principalSubject = this.principalSubject;
    return {
      'principalEmail': ?principalEmail,
      'principalSubject': ?principalSubject,
    };
  }
}

class SetFindingStateRequest {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? startTime;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE"
  /// - "INACTIVE"
  core.String? state;

  SetFindingStateRequest({this.startTime, this.state});

  SetFindingStateRequest.fromJson(core.Map json_)
    : this(
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final startTime = this.startTime;
    final state = this.state;
    return {'startTime': ?startTime, 'state': ?state};
  }
}

class SetIamPolicyRequest {
  Policy? policy;
  core.String? updateMask;

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy: json_.containsKey('policy')
            ? Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    final updateMask = this.updateMask;
    return {'policy': ?policy, 'updateMask': ?updateMask};
  }
}

class SetMuteRequest {
  ///
  /// Possible string values are:
  /// - "MUTE_UNSPECIFIED"
  /// - "MUTED"
  /// - "UNMUTED"
  /// - "UNDEFINED"
  core.String? mute;

  SetMuteRequest({this.mute});

  SetMuteRequest.fromJson(core.Map json_)
    : this(mute: json_['mute'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final mute = this.mute;
    return {'mute': ?mute};
  }
}

class SimulateSecurityHealthAnalyticsCustomModuleRequest {
  GoogleCloudSecuritycenterV1CustomConfig? customConfig;
  SimulatedResource? resource;

  SimulateSecurityHealthAnalyticsCustomModuleRequest({
    this.customConfig,
    this.resource,
  });

  SimulateSecurityHealthAnalyticsCustomModuleRequest.fromJson(core.Map json_)
    : this(
        customConfig: json_.containsKey('customConfig')
            ? GoogleCloudSecuritycenterV1CustomConfig.fromJson(
                json_['customConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resource: json_.containsKey('resource')
            ? SimulatedResource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customConfig = this.customConfig;
    final resource = this.resource;
    return {'customConfig': ?customConfig, 'resource': ?resource};
  }
}

class SimulateSecurityHealthAnalyticsCustomModuleResponse {
  SimulatedResult? result;

  SimulateSecurityHealthAnalyticsCustomModuleResponse({this.result});

  SimulateSecurityHealthAnalyticsCustomModuleResponse.fromJson(core.Map json_)
    : this(
        result: json_.containsKey('result')
            ? SimulatedResult.fromJson(
                json_['result'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final result = this.result;
    return {'result': ?result};
  }
}

class SimulatedResource {
  Policy? iamPolicyData;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resourceData;
  core.String? resourceType;

  SimulatedResource({this.iamPolicyData, this.resourceData, this.resourceType});

  SimulatedResource.fromJson(core.Map json_)
    : this(
        iamPolicyData: json_.containsKey('iamPolicyData')
            ? Policy.fromJson(
                json_['iamPolicyData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resourceData: json_.containsKey('resourceData')
            ? json_['resourceData'] as core.Map<core.String, core.dynamic>
            : null,
        resourceType: json_['resourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iamPolicyData = this.iamPolicyData;
    final resourceData = this.resourceData;
    final resourceType = this.resourceType;
    return {
      'iamPolicyData': ?iamPolicyData,
      'resourceData': ?resourceData,
      'resourceType': ?resourceType,
    };
  }
}

class SimulatedResult {
  Status? error;
  Finding? finding;
  Empty? noViolation;

  SimulatedResult({this.error, this.finding, this.noViolation});

  SimulatedResult.fromJson(core.Map json_)
    : this(
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        finding: json_.containsKey('finding')
            ? Finding.fromJson(
                json_['finding'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        noViolation: json_.containsKey('noViolation')
            ? Empty.fromJson(
                json_['noViolation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final finding = this.finding;
    final noViolation = this.noViolation;
    return {'error': ?error, 'finding': ?finding, 'noViolation': ?noViolation};
  }
}

class Simulation {
  ///
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED"
  /// - "GOOGLE_CLOUD_PLATFORM"
  /// - "AMAZON_WEB_SERVICES"
  /// - "MICROSOFT_AZURE"
  core.String? cloudProvider;
  core.String? createTime;
  core.String? name;
  core.List<ResourceValueConfigMetadata>? resourceValueConfigsMetadata;

  Simulation({
    this.cloudProvider,
    this.createTime,
    this.name,
    this.resourceValueConfigsMetadata,
  });

  Simulation.fromJson(core.Map json_)
    : this(
        cloudProvider: json_['cloudProvider'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        resourceValueConfigsMetadata:
            (json_['resourceValueConfigsMetadata'] as core.List?)
                ?.map(
                  (value) => ResourceValueConfigMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudProvider = this.cloudProvider;
    final createTime = this.createTime;
    final name = this.name;
    final resourceValueConfigsMetadata = this.resourceValueConfigsMetadata;
    return {
      'cloudProvider': ?cloudProvider,
      'createTime': ?createTime,
      'name': ?name,
      'resourceValueConfigsMetadata': ?resourceValueConfigsMetadata,
    };
  }
}

class Source {
  core.String? canonicalName;
  core.String? description;
  core.String? displayName;
  core.String? name;

  Source({this.canonicalName, this.description, this.displayName, this.name});

  Source.fromJson(core.Map json_)
    : this(
        canonicalName: json_['canonicalName'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final canonicalName = this.canonicalName;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    return {
      'canonicalName': ?canonicalName,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }
}

class StaticMute {
  core.String? applyTime;

  ///
  /// Possible string values are:
  /// - "MUTE_UNSPECIFIED"
  /// - "MUTED"
  /// - "UNMUTED"
  /// - "UNDEFINED"
  core.String? state;

  StaticMute({this.applyTime, this.state});

  StaticMute.fromJson(core.Map json_)
    : this(
        applyTime: json_['applyTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applyTime = this.applyTime;
    final state = this.state;
    return {'applyTime': ?applyTime, 'state': ?state};
  }
}

typedef Status = $Status01;

class StreamingConfig {
  core.String? filter;

  StreamingConfig({this.filter});

  StreamingConfig.fromJson(core.Map json_)
    : this(filter: json_['filter'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final filter = this.filter;
    return {'filter': ?filter};
  }
}

class Subject {
  ///
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED"
  /// - "USER"
  /// - "SERVICEACCOUNT"
  /// - "GROUP"
  core.String? kind;
  core.String? name;
  core.String? ns;

  Subject({this.kind, this.name, this.ns});

  Subject.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        ns: json_['ns'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kind = this.kind;
    final name = this.name;
    final ns = this.ns;
    return {'kind': ?kind, 'name': ?name, 'ns': ?ns};
  }
}

typedef TestIamPermissionsRequest = $Shared31;
typedef TestIamPermissionsResponse = $Shared31;

class TicketInfo {
  core.String? assignee;
  core.String? description;
  core.String? id;
  core.String? status;
  core.String? updateTime;
  core.String? uri;

  TicketInfo({
    this.assignee,
    this.description,
    this.id,
    this.status,
    this.updateTime,
    this.uri,
  });

  TicketInfo.fromJson(core.Map json_)
    : this(
        assignee: json_['assignee'] as core.String?,
        description: json_['description'] as core.String?,
        id: json_['id'] as core.String?,
        status: json_['status'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assignee = this.assignee;
    final description = this.description;
    final id = this.id;
    final status = this.status;
    final updateTime = this.updateTime;
    final uri = this.uri;
    return {
      'assignee': ?assignee,
      'description': ?description,
      'id': ?id,
      'status': ?status,
      'updateTime': ?updateTime,
      'uri': ?uri,
    };
  }
}

class ToxicCombination {
  core.double? attackExposureScore;
  core.List<core.String>? relatedFindings;

  ToxicCombination({this.attackExposureScore, this.relatedFindings});

  ToxicCombination.fromJson(core.Map json_)
    : this(
        attackExposureScore: (json_['attackExposureScore'] as core.num?)
            ?.toDouble(),
        relatedFindings: (json_['relatedFindings'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attackExposureScore = this.attackExposureScore;
    final relatedFindings = this.relatedFindings;
    return {
      'attackExposureScore': ?attackExposureScore,
      'relatedFindings': ?relatedFindings,
    };
  }
}

class ValidateEventThreatDetectionCustomModuleRequest {
  core.String? rawText;
  core.String? type;

  ValidateEventThreatDetectionCustomModuleRequest({this.rawText, this.type});

  ValidateEventThreatDetectionCustomModuleRequest.fromJson(core.Map json_)
    : this(
        rawText: json_['rawText'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rawText = this.rawText;
    final type = this.type;
    return {'rawText': ?rawText, 'type': ?type};
  }
}

class ValidateEventThreatDetectionCustomModuleResponse {
  CustomModuleValidationErrors? errors;

  ValidateEventThreatDetectionCustomModuleResponse({this.errors});

  ValidateEventThreatDetectionCustomModuleResponse.fromJson(core.Map json_)
    : this(
        errors: json_.containsKey('errors')
            ? CustomModuleValidationErrors.fromJson(
                json_['errors'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errors = this.errors;
    return {'errors': ?errors};
  }
}

class ValuedResource {
  core.String? displayName;
  core.double? exposedScore;
  core.String? name;
  core.String? resource;
  core.String? resourceType;

  ///
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED"
  /// - "RESOURCE_VALUE_LOW"
  /// - "RESOURCE_VALUE_MEDIUM"
  /// - "RESOURCE_VALUE_HIGH"
  core.String? resourceValue;
  core.List<ResourceValueConfigMetadata>? resourceValueConfigsUsed;

  ValuedResource({
    this.displayName,
    this.exposedScore,
    this.name,
    this.resource,
    this.resourceType,
    this.resourceValue,
    this.resourceValueConfigsUsed,
  });

  ValuedResource.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        exposedScore: (json_['exposedScore'] as core.num?)?.toDouble(),
        name: json_['name'] as core.String?,
        resource: json_['resource'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        resourceValue: json_['resourceValue'] as core.String?,
        resourceValueConfigsUsed:
            (json_['resourceValueConfigsUsed'] as core.List?)
                ?.map(
                  (value) => ResourceValueConfigMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final exposedScore = this.exposedScore;
    final name = this.name;
    final resource = this.resource;
    final resourceType = this.resourceType;
    final resourceValue = this.resourceValue;
    final resourceValueConfigsUsed = this.resourceValueConfigsUsed;
    return {
      'displayName': ?displayName,
      'exposedScore': ?exposedScore,
      'name': ?name,
      'resource': ?resource,
      'resourceType': ?resourceType,
      'resourceValue': ?resourceValue,
      'resourceValueConfigsUsed': ?resourceValueConfigsUsed,
    };
  }
}

class VertexAi {
  core.List<Dataset>? datasets;
  core.List<Pipeline>? pipelines;

  VertexAi({this.datasets, this.pipelines});

  VertexAi.fromJson(core.Map json_)
    : this(
        datasets: (json_['datasets'] as core.List?)
            ?.map(
              (value) => Dataset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pipelines: (json_['pipelines'] as core.List?)
            ?.map(
              (value) => Pipeline.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final datasets = this.datasets;
    final pipelines = this.pipelines;
    return {'datasets': ?datasets, 'pipelines': ?pipelines};
  }
}

class Vulnerability {
  Cve? cve;
  core.List<Cwe>? cwes;
  Package? fixedPackage;
  Package? offendingPackage;
  core.String? providerRiskScore;
  core.bool? reachable;
  SecurityBulletin? securityBulletin;

  Vulnerability({
    this.cve,
    this.cwes,
    this.fixedPackage,
    this.offendingPackage,
    this.providerRiskScore,
    this.reachable,
    this.securityBulletin,
  });

  Vulnerability.fromJson(core.Map json_)
    : this(
        cve: json_.containsKey('cve')
            ? Cve.fromJson(json_['cve'] as core.Map<core.String, core.dynamic>)
            : null,
        cwes: (json_['cwes'] as core.List?)
            ?.map(
              (value) =>
                  Cwe.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        fixedPackage: json_.containsKey('fixedPackage')
            ? Package.fromJson(
                json_['fixedPackage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        offendingPackage: json_.containsKey('offendingPackage')
            ? Package.fromJson(
                json_['offendingPackage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        providerRiskScore: json_['providerRiskScore'] as core.String?,
        reachable: json_['reachable'] as core.bool?,
        securityBulletin: json_.containsKey('securityBulletin')
            ? SecurityBulletin.fromJson(
                json_['securityBulletin']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cve = this.cve;
    final cwes = this.cwes;
    final fixedPackage = this.fixedPackage;
    final offendingPackage = this.offendingPackage;
    final providerRiskScore = this.providerRiskScore;
    final reachable = this.reachable;
    final securityBulletin = this.securityBulletin;
    return {
      'cve': ?cve,
      'cwes': ?cwes,
      'fixedPackage': ?fixedPackage,
      'offendingPackage': ?offendingPackage,
      'providerRiskScore': ?providerRiskScore,
      'reachable': ?reachable,
      'securityBulletin': ?securityBulletin,
    };
  }
}

class YaraRuleSignature {
  core.String? yaraRule;

  YaraRuleSignature({this.yaraRule});

  YaraRuleSignature.fromJson(core.Map json_)
    : this(yaraRule: json_['yaraRule'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final yaraRule = this.yaraRule;
    return {'yaraRule': ?yaraRule};
  }
}
