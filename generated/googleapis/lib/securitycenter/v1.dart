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

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  SecurityCommandCenterApi(http.Client client,
      {core.String rootUrl = 'https://securitycenter.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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

  /// Filters an organization's assets and groups them by their specified
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent to group the assets by. Its
  /// format is `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists an organization's assets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource that contains the
  /// assets. The value that you can specify on parent depends on the method in
  /// which you specify parent. You can specify one of the following values:
  /// `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [compareDuration] - When compare_duration is set, the ListAssetsResult's
  /// "state_change" attribute is updated to indicate whether the asset was
  /// added, removed, or remained present during the compare_duration period of
  /// time that precedes the read_time. This is the time between (read_time -
  /// compare_duration) and read_time. The state_change value is derived based
  /// on the presence of the asset at the two points in time. Intermediate state
  /// changes between the two times don't affect the result. For example, the
  /// results aren't affected if the asset is removed and re-created again.
  /// Possible "state_change" values when compare_duration is specified: *
  /// "ADDED": indicates that the asset was not present at the start of
  /// compare_duration, but present at read_time. * "REMOVED": indicates that
  /// the asset was present at the start of compare_duration, but not present at
  /// read_time. * "ACTIVE": indicates that the asset was present at both the
  /// start and the end of the time period defined by compare_duration and
  /// read_time. If compare_duration is not specified, then the only possible
  /// state_change is "UNUSED", which will be the state_change set for all
  /// assets present at read_time.
  ///
  /// [fieldMask] - A field mask to specify the ListAssetsResult fields to be
  /// listed in the response. An empty field mask will list all fields.
  ///
  /// [filter] - Expression that defines the filter to apply across assets. The
  /// expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the Asset resource. Examples include: * name *
  /// security_center_properties.resource_name * resource_properties.a_property
  /// * security_marks.marks.marka The supported operators are: * `=` for all
  /// value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning
  /// substring matching, for strings. The supported value types are: * string
  /// literals in quotes. * integer literals without quotes. * boolean literals
  /// `true` and `false` without quotes. The following are the allowed field and
  /// operator combinations: * name: `=` * update_time: `=`, `>`, `<`, `>=`,
  /// `<=` Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
  /// 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should
  /// be milliseconds since epoch or an RFC3339 string. Examples: `create_time =
  /// "2019-06-10T16:07:18-07:00"` `create_time = 1560208038000` *
  /// iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`,
  /// `<`, `>=`, `<=` * security_marks.marks: `=`, `:` *
  /// security_center_properties.resource_name: `=`, `:` *
  /// security_center_properties.resource_display_name: `=`, `:` *
  /// security_center_properties.resource_type: `=`, `:` *
  /// security_center_properties.resource_parent: `=`, `:` *
  /// security_center_properties.resource_parent_display_name: `=`, `:` *
  /// security_center_properties.resource_project: `=`, `:` *
  /// security_center_properties.resource_project_display_name: `=`, `:` *
  /// security_center_properties.resource_owners: `=`, `:` For example,
  /// `resource_properties.size = 100` is a valid filter string. Use a partial
  /// match on the empty string to filter based on a property existing:
  /// `resource_properties.my_property : ""` Use a negated partial match on the
  /// empty string to filter based on a property not existing:
  /// `-resource_properties.my_property : ""`
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The string value should follow SQL syntax: comma separated list
  /// of fields. For example: "name,resource_properties.a_property". The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix " desc" should be appended to the field name. For example: "name
  /// desc,resource_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,resource_properties.a_property" and "
  /// name desc , resource_properties.a_property " are equivalent. The following
  /// fields are supported: name update_time resource_properties
  /// security_marks.marks security_center_properties.resource_name
  /// security_center_properties.resource_display_name
  /// security_center_properties.resource_parent
  /// security_center_properties.resource_parent_display_name
  /// security_center_properties.resource_project
  /// security_center_properties.resource_project_display_name
  /// security_center_properties.resource_type
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListAssetsResponse`;
  /// indicates that this is a continuation of a prior `ListAssets` call, and
  /// that the system should return the next page of data.
  ///
  /// [readTime] - Time used as a reference point when filtering assets. The
  /// filter is limited to assets existing at the supplied time and their values
  /// are those at that specific time. Absence of this field will default to the
  /// API's version of NOW.
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
      if (compareDuration != null) 'compareDuration': [compareDuration],
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  /// Value must have pattern `^folders/\[^/\]+/assets/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect. If
  /// not set uses current server time. Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time. Must be
  /// earlier or equal to the server time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource. The field mask must not contain duplicate fields. If empty or
  /// set to "marks", all marks will be replaced. Individual marks can be
  /// updated using "marks.".
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
      if (startTime != null) 'startTime': [startTime],
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
    return SecurityMarks.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersBigQueryExportsResource {
  final commons.ApiRequester _requester;

  FoldersBigQueryExportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a BigQuery export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource of the new BigQuery
  /// export. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, or `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [bigQueryExportId] - Required. Unique identifier provided by the client
  /// within the parent scope. It must consist of only lowercase letters,
  /// numbers, and hyphens, must start with a letter, must end with either a
  /// letter or a number, and must be 63 characters or less.
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
      if (bigQueryExportId != null) 'bigQueryExportId': [bigQueryExportId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing BigQuery export.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the BigQuery export to delete. Its format
  /// is `organizations/{organization}/bigQueryExports/{export_id}`,
  /// `folders/{folder}/bigQueryExports/{export_id}`, or
  /// `projects/{project}/bigQueryExports/{export_id}`
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

  /// Gets a BigQuery export.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the BigQuery export to retrieve. Its format is
  /// `organizations/{organization}/bigQueryExports/{export_id}`,
  /// `folders/{folder}/bigQueryExports/{export_id}`, or
  /// `projects/{project}/bigQueryExports/{export_id}`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists BigQuery exports.
  ///
  /// Note that when requesting BigQuery exports at a given level all exports
  /// under that level are also returned e.g. if requesting BigQuery exports
  /// under a folder, then all BigQuery exports immediately under the folder
  /// plus the ones created under the projects within the folder are returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of BigQuery
  /// exports. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListBigQueryExports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListBigQueryExports` must match the call
  /// that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBigQueryExportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a BigQuery export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this export. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name.
  /// Example format:
  /// "organizations/{organization_id}/bigQueryExports/{export_id}" Example
  /// format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format:
  /// "projects/{project_id}/bigQueryExports/{export_id}" This field is provided
  /// in responses, and is ignored when provided in create requests.
  /// Value must have pattern `^folders/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsCustomModulesResource get customModules =>
      FoldersEventThreatDetectionSettingsCustomModulesResource(_requester);
  FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource
      get effectiveCustomModules =>
          FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource(
              _requester);

  FoldersEventThreatDetectionSettingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Validates the given Event Threat Detection custom module.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent to validate the Custom
  /// Module under. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings`. *
  /// `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersEventThreatDetectionSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a resident Event Threat Detection custom module at the scope of
  /// the given Resource Manager parent, and also creates inherited custom
  /// modules for all descendants of the given parent.
  ///
  /// These modules are enabled by default.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The new custom module's parent. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings`. *
  /// `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Event Threat Detection custom module and all of its
  /// descendants in the Resource Manager hierarchy.
  ///
  /// This method is only supported for resident custom modules.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to delete. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
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

  /// Gets an Event Threat Detection custom module.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to get. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Event Threat Detection custom modules for the given Resource
  /// Manager parent.
  ///
  /// This includes resident modules defined at the scope of the parent along
  /// with modules inherited from ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules under. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEventThreatDetectionCustomModules` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListEventThreatDetectionCustomModules` must match the call that provided
  /// the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all resident Event Threat Detection custom modules under the given
  /// Resource Manager parent and its descendants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules under. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDescendantEventThreatDetectionCustomModules` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListDescendantEventThreatDetectionCustomModules` must match
  /// the call that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Event Threat Detection custom module with the given name based
  /// on the given update mask.
  ///
  /// Updating the enablement state is supported for both resident and inherited
  /// modules (though resident modules cannot have an enablement state of
  /// "inherited"). Updating the display name or configuration of a module is
  /// supported for resident modules only. The type of a module cannot be
  /// changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the Event Threat Detection custom
  /// module. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
  /// Value must have pattern
  /// `^folders/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsEffectiveCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets an effective Event Threat Detection custom module at the given level.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the effective Event Threat
  /// Detection custom module. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `folders/{folder}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EffectiveEventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all effective Event Threat Detection custom modules for the given
  /// parent.
  ///
  /// This includes resident modules defined at the scope of the parent along
  /// with modules inherited from its ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules for. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEffectiveEventThreatDetectionCustomModules` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListEffectiveEventThreatDetectionCustomModules` must match
  /// the call that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersFindingsResource {
  final commons.ApiRequester _requester;

  FoldersFindingsResource(commons.ApiRequester client) : _requester = client;

  /// Kicks off an LRO to bulk mute findings for a parent based on a filter.
  ///
  /// The parent can be either an organization, folder or project. The findings
  /// matched by the filter will be muted after the LRO is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, at which bulk action needs to be applied.
  /// Its format is `organizations/[organization_id]`, `folders/[folder_id]`,
  /// `projects/[project_id]`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Deletes an existing mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to delete. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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

  /// Gets a mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to retrieve. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - This field will be ignored if provided on config creation. Format
  /// `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  /// Value must have pattern
  /// `^folders/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersMuteConfigsResource {
  final commons.ApiRequester _requester;

  FoldersMuteConfigsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new mute configs's parent. Its
  /// format is `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [muteConfigId] - Required. Unique identifier provided by the client within
  /// the parent scope. It must consist of only lowercase letters, numbers, and
  /// hyphens, must start with a letter, must end with either a letter or a
  /// number, and must be 63 characters or less.
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
      if (muteConfigId != null) 'muteConfigId': [muteConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to delete. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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

  /// Gets a mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to retrieve. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists mute configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of mute
  /// configs. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListMuteConfigs`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListMuteConfigs` must match the call that
  /// provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMuteConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - This field will be ignored if provided on config creation. Format
  /// `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  /// Value must have pattern `^folders/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersNotificationConfigsResource {
  final commons.ApiRequester _requester;

  FoldersNotificationConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a notification config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new notification config's
  /// parent. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, or `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [configId] - Required. Unique identifier provided by the client within the
  /// parent scope. It must be between 1 and 128 characters and contain
  /// alphanumeric characters, underscores, or hyphens only.
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
      if (configId != null) 'configId': [configId],
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the notification config to delete. Its format
  /// is `organizations/[organization_id]/notificationConfigs/[config_id]`,
  /// `folders/[folder_id]/notificationConfigs/[config_id]`, or
  /// `projects/[project_id]/notificationConfigs/[config_id]`.
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

  /// Gets a notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the notification config to get. Its format is
  /// `organizations/[organization_id]/notificationConfigs/[config_id]`,
  /// `folders/[folder_id]/notificationConfigs/[config_id]`, or
  /// `projects/[project_id]/notificationConfigs/[config_id]`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notification configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent in which to list the
  /// notification configurations. Its format is
  /// "organizations/\[organization_id\]", "folders/\[folder_id\]", or
  /// "projects/\[project_id\]".
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListNotificationConfigsResponse`; indicates that this is a continuation
  /// of a prior `ListNotificationConfigs` call, and that the system should
  /// return the next page of data.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  ///  Updates a notification config.
  ///
  /// The following update fields are allowed: description, pubsub_topic,
  /// streaming_config.filter
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this notification config. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/{organization_id}/notificationConfigs/notify_public_bucket",
  /// "folders/{folder_id}/notificationConfigs/notify_public_bucket", or
  /// "projects/{project_id}/notificationConfigs/notify_public_bucket".
  /// Value must have pattern `^folders/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the notification config.
  /// If empty all mutable fields will be updated.
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
    return NotificationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsCustomModulesResource
      get customModules =>
          FoldersSecurityHealthAnalyticsSettingsCustomModulesResource(
              _requester);
  FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource
      get effectiveCustomModules =>
          FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
              _requester);

  FoldersSecurityHealthAnalyticsSettingsResource(commons.ApiRequester client)
      : _requester = client;
}

class FoldersSecurityHealthAnalyticsSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the
  /// given CRM parent, and also creates inherited
  /// SecurityHealthAnalyticsCustomModules for all CRM descendants of the given
  /// parent.
  ///
  /// These modules are enabled by default.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new custom module's parent. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified SecurityHealthAnalyticsCustomModule and all of its
  /// descendants in the CRM hierarchy.
  ///
  /// This method is only supported for resident custom modules.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to delete. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}`
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

  /// Retrieves a SecurityHealthAnalyticsCustomModule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to get. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}`
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
      get(
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
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all SecurityHealthAnalyticsCustomModules for the given
  /// parent.
  ///
  /// This includes resident modules defined at the scope of the parent, and
  /// inherited modules, inherited from CRM ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list custom modules. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all resident SecurityHealthAnalyticsCustomModules under
  /// the given CRM parent and all of the parent’s CRM descendants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list descendant custom modules. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the SecurityHealthAnalyticsCustomModule under the given name based
  /// on the given update mask.
  ///
  /// Updating the enablement state is supported on both resident and inherited
  /// modules (though resident modules cannot have an enablement state of
  /// "inherited"). Updating the display name and custom config of a module is
  /// supported on resident modules only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the custom module. Its format is
  /// "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}"
  /// The id {customModule} is server-generated and is not user settable. It
  /// will be a numeric id containing 1-20 digits.
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. The only fields that can
  /// be updated are `enablement_state` and `custom_config`. If empty or set to
  /// the wildcard value `*`, both `enablement_state` and `custom_config` are
  /// updated.
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
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Simulates a given SecurityHealthAnalyticsCustomModule and Resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the organization,
  /// project, or folder. For more information about relative resource names,
  /// see
  /// [Relative Resource Name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// Example: `organizations/{organization_id}`
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieves an EffectiveSecurityHealthAnalyticsCustomModule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the effective custom module to get. Its format
  /// is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`
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
          GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule>
      get(
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
    return GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for
  /// the given parent.
  ///
  /// This includes resident modules defined at the scope of the parent, and
  /// inherited modules, inherited from CRM ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list effective custom modules. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersSourcesResource {
  final commons.ApiRequester _requester;

  FoldersSourcesFindingsResource get findings =>
      FoldersSourcesFindingsResource(_requester);

  FoldersSourcesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all sources belonging to an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent of sources to list. Its
  /// format should be `organizations/[organization_id]`, `folders/[folder_id]`,
  /// or `projects/[project_id]`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListSourcesResponse`;
  /// indicates that this is a continuation of a prior `ListSources` call, and
  /// that the system should return the next page of data.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersSourcesFindingsResource {
  final commons.ApiRequester _requester;

  FoldersSourcesFindingsExternalSystemsResource get externalSystems =>
      FoldersSourcesFindingsExternalSystemsResource(_requester);

  FoldersSourcesFindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Filters an organization or source's findings and groups them by their
  /// specified properties.
  ///
  /// To group across all sources provide a `-` as the source id. Example:
  /// /v1/organizations/{organization_id}/sources/-/findings,
  /// /v1/folders/{folder_id}/sources/-/findings,
  /// /v1/projects/{project_id}/sources/-/findings
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the source to groupBy. Its format is
  /// `organizations/[organization_id]/sources/[source_id]`,
  /// `folders/[folder_id]/sources/[source_id]`, or
  /// `projects/[project_id]/sources/[source_id]`. To groupBy across all sources
  /// provide a source_id of `-`. For example:
  /// `organizations/{organization_id}/sources/-,
  /// folders/{folder_id}/sources/-`, or `projects/{project_id}/sources/-`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists an organization or source's findings.
  ///
  /// To list across all sources provide a `-` as the source id. Example:
  /// /v1/organizations/{organization_id}/sources/-/findings
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the source the findings belong to. Its format
  /// is `organizations/[organization_id]/sources/[source_id]`,
  /// `folders/[folder_id]/sources/[source_id]`, or
  /// `projects/[project_id]/sources/[source_id]`. To list across all sources
  /// provide a source_id of `-`. For example:
  /// `organizations/{organization_id}/sources/-`,
  /// `folders/{folder_id}/sources/-` or `projects/{projects_id}/sources/-`
  /// Value must have pattern `^folders/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [compareDuration] - When compare_duration is set, the ListFindingsResult's
  /// "state_change" attribute is updated to indicate whether the finding had
  /// its state changed, the finding's state remained unchanged, or if the
  /// finding was added in any state during the compare_duration period of time
  /// that precedes the read_time. This is the time between (read_time -
  /// compare_duration) and read_time. The state_change value is derived based
  /// on the presence and state of the finding at the two points in time.
  /// Intermediate state changes between the two times don't affect the result.
  /// For example, the results aren't affected if the finding is made inactive
  /// and then active again. Possible "state_change" values when
  /// compare_duration is specified: * "CHANGED": indicates that the finding was
  /// present and matched the given filter at the start of compare_duration, but
  /// changed its state at read_time. * "UNCHANGED": indicates that the finding
  /// was present and matched the given filter at the start of compare_duration
  /// and did not change state at read_time. * "ADDED": indicates that the
  /// finding did not match the given filter or was not present at the start of
  /// compare_duration, but was present at read_time. * "REMOVED": indicates
  /// that the finding was present and matched the filter at the start of
  /// compare_duration, but did not match the filter at read_time. If
  /// compare_duration is not specified, then the only possible state_change is
  /// "UNUSED", which will be the state_change set for all findings present at
  /// read_time.
  ///
  /// [fieldMask] - A field mask to specify the Finding fields to be listed in
  /// the response. An empty field mask will list all fields.
  ///
  /// [filter] - Expression that defines the filter to apply across findings.
  /// The expression is a list of one or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. Examples include: * name
  /// * source_properties.a_property * security_marks.marks.marka The supported
  /// operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for
  /// integer values. * `:`, meaning substring matching, for strings. The
  /// supported value types are: * string literals in quotes. * integer literals
  /// without quotes. * boolean literals `true` and `false` without quotes. The
  /// following field and operator combinations are supported: * name: `=` *
  /// parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category:
  /// `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=`
  /// Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
  /// 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
  /// security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`,
  /// `>=`, `<=` For example, `source_properties.size = 100` is a valid filter
  /// string. Use a partial match on the empty string to filter based on a
  /// property existing: `source_properties.my_property : ""` Use a negated
  /// partial match on the empty string to filter based on a property not
  /// existing: `-source_properties.my_property : ""` * resource: *
  /// resource.name: `=`, `:` * resource.parent_name: `=`, `:` *
  /// resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` *
  /// resource.project_display_name: `=`, `:` * resource.type: `=`, `:` *
  /// resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`,
  /// `:`
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The string value should follow SQL syntax: comma separated list
  /// of fields. For example: "name,resource_properties.a_property". The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix " desc" should be appended to the field name. For example: "name
  /// desc,source_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,source_properties.a_property" and "
  /// name desc , source_properties.a_property " are equivalent. The following
  /// fields are supported: name parent state category resource_name event_time
  /// source_properties security_marks.marks
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListFindingsResponse`;
  /// indicates that this is a continuation of a prior `ListFindings` call, and
  /// that the system should return the next page of data.
  ///
  /// [readTime] - Time used as a reference point when filtering findings. The
  /// filter is limited to findings existing at the supplied time and their
  /// values are those at that specific time. Absence of this field will default
  /// to the API's version of NOW.
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
      if (compareDuration != null) 'compareDuration': [compareDuration],
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates or updates a finding.
  ///
  /// The corresponding source must exist for a finding creation to succeed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}",
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}",
  /// "projects/{project_id}/sources/{source_id}/findings/{finding_id}".
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the finding resource.
  /// This field should not be specified when creating a finding. When updating
  /// a finding, an empty mask is treated as updating all mutable fields and
  /// replacing source_properties. Individual source_properties can be
  /// added/updated by using "source_properties." in the field mask.
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
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the mute state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`,
  /// `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`,
  /// `projects/{project_id}/sources/{source_id}/findings/{finding_id}`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates the state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`,
  /// `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`,
  /// `projects/{project_id}/sources/{source_id}/findings/{finding_id}`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect. If
  /// not set uses current server time. Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time. Must be
  /// earlier or equal to the server time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource. The field mask must not contain duplicate fields. If empty or
  /// set to "marks", all marks will be replaced. Individual marks can be
  /// updated using "marks.".
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
      if (startTime != null) 'startTime': [startTime],
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
    return SecurityMarks.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersSourcesFindingsExternalSystemsResource {
  final commons.ApiRequester _requester;

  FoldersSourcesFindingsExternalSystemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Updates external system.
  ///
  /// This is for a given finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Full resource name of the external system, for example:
  /// "organizations/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "folders/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "projects/1234/sources/5678/findings/123456/externalSystems/jira"
  /// Value must have pattern
  /// `^folders/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/externalSystems/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the external system
  /// resource. If empty all mutable fields will be updated.
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
    return GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsAssetsResource get assets =>
      OrganizationsAssetsResource(_requester);
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

  /// Gets the settings for an organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the organization to get organization settings
  /// for. Its format is `organizations/[organization_id]/organizationSettings`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrganizationSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an organization's settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the settings. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example: "organizations/{organization_id}/organizationSettings".
  /// Value must have pattern `^organizations/\[^/\]+/organizationSettings$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the settings resource.
  /// If empty all mutable fields will be updated.
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
  async.Future<OrganizationSettings> updateOrganizationSettings(
    OrganizationSettings request,
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
    return OrganizationSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsAssetsResource {
  final commons.ApiRequester _requester;

  OrganizationsAssetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Filters an organization's assets and groups them by their specified
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent to group the assets by. Its
  /// format is `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists an organization's assets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource that contains the
  /// assets. The value that you can specify on parent depends on the method in
  /// which you specify parent. You can specify one of the following values:
  /// `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [compareDuration] - When compare_duration is set, the ListAssetsResult's
  /// "state_change" attribute is updated to indicate whether the asset was
  /// added, removed, or remained present during the compare_duration period of
  /// time that precedes the read_time. This is the time between (read_time -
  /// compare_duration) and read_time. The state_change value is derived based
  /// on the presence of the asset at the two points in time. Intermediate state
  /// changes between the two times don't affect the result. For example, the
  /// results aren't affected if the asset is removed and re-created again.
  /// Possible "state_change" values when compare_duration is specified: *
  /// "ADDED": indicates that the asset was not present at the start of
  /// compare_duration, but present at read_time. * "REMOVED": indicates that
  /// the asset was present at the start of compare_duration, but not present at
  /// read_time. * "ACTIVE": indicates that the asset was present at both the
  /// start and the end of the time period defined by compare_duration and
  /// read_time. If compare_duration is not specified, then the only possible
  /// state_change is "UNUSED", which will be the state_change set for all
  /// assets present at read_time.
  ///
  /// [fieldMask] - A field mask to specify the ListAssetsResult fields to be
  /// listed in the response. An empty field mask will list all fields.
  ///
  /// [filter] - Expression that defines the filter to apply across assets. The
  /// expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the Asset resource. Examples include: * name *
  /// security_center_properties.resource_name * resource_properties.a_property
  /// * security_marks.marks.marka The supported operators are: * `=` for all
  /// value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning
  /// substring matching, for strings. The supported value types are: * string
  /// literals in quotes. * integer literals without quotes. * boolean literals
  /// `true` and `false` without quotes. The following are the allowed field and
  /// operator combinations: * name: `=` * update_time: `=`, `>`, `<`, `>=`,
  /// `<=` Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
  /// 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should
  /// be milliseconds since epoch or an RFC3339 string. Examples: `create_time =
  /// "2019-06-10T16:07:18-07:00"` `create_time = 1560208038000` *
  /// iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`,
  /// `<`, `>=`, `<=` * security_marks.marks: `=`, `:` *
  /// security_center_properties.resource_name: `=`, `:` *
  /// security_center_properties.resource_display_name: `=`, `:` *
  /// security_center_properties.resource_type: `=`, `:` *
  /// security_center_properties.resource_parent: `=`, `:` *
  /// security_center_properties.resource_parent_display_name: `=`, `:` *
  /// security_center_properties.resource_project: `=`, `:` *
  /// security_center_properties.resource_project_display_name: `=`, `:` *
  /// security_center_properties.resource_owners: `=`, `:` For example,
  /// `resource_properties.size = 100` is a valid filter string. Use a partial
  /// match on the empty string to filter based on a property existing:
  /// `resource_properties.my_property : ""` Use a negated partial match on the
  /// empty string to filter based on a property not existing:
  /// `-resource_properties.my_property : ""`
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The string value should follow SQL syntax: comma separated list
  /// of fields. For example: "name,resource_properties.a_property". The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix " desc" should be appended to the field name. For example: "name
  /// desc,resource_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,resource_properties.a_property" and "
  /// name desc , resource_properties.a_property " are equivalent. The following
  /// fields are supported: name update_time resource_properties
  /// security_marks.marks security_center_properties.resource_name
  /// security_center_properties.resource_display_name
  /// security_center_properties.resource_parent
  /// security_center_properties.resource_parent_display_name
  /// security_center_properties.resource_project
  /// security_center_properties.resource_project_display_name
  /// security_center_properties.resource_type
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListAssetsResponse`;
  /// indicates that this is a continuation of a prior `ListAssets` call, and
  /// that the system should return the next page of data.
  ///
  /// [readTime] - Time used as a reference point when filtering assets. The
  /// filter is limited to assets existing at the supplied time and their values
  /// are those at that specific time. Absence of this field will default to the
  /// API's version of NOW.
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
      if (compareDuration != null) 'compareDuration': [compareDuration],
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs asset discovery.
  ///
  /// The discovery is tracked with a long-running operation. This API can only
  /// be called with limited frequency for an organization. If it is called too
  /// frequently the caller will receive a TOO_MANY_REQUESTS error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the organization to run asset discovery for.
  /// Its format is `organizations/[organization_id]`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  /// Value must have pattern
  /// `^organizations/\[^/\]+/assets/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect. If
  /// not set uses current server time. Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time. Must be
  /// earlier or equal to the server time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource. The field mask must not contain duplicate fields. If empty or
  /// set to "marks", all marks will be replaced. Individual marks can be
  /// updated using "marks.".
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
      if (startTime != null) 'startTime': [startTime],
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
    return SecurityMarks.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsBigQueryExportsResource {
  final commons.ApiRequester _requester;

  OrganizationsBigQueryExportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a BigQuery export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource of the new BigQuery
  /// export. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, or `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [bigQueryExportId] - Required. Unique identifier provided by the client
  /// within the parent scope. It must consist of only lowercase letters,
  /// numbers, and hyphens, must start with a letter, must end with either a
  /// letter or a number, and must be 63 characters or less.
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
      if (bigQueryExportId != null) 'bigQueryExportId': [bigQueryExportId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing BigQuery export.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the BigQuery export to delete. Its format
  /// is `organizations/{organization}/bigQueryExports/{export_id}`,
  /// `folders/{folder}/bigQueryExports/{export_id}`, or
  /// `projects/{project}/bigQueryExports/{export_id}`
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

  /// Gets a BigQuery export.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the BigQuery export to retrieve. Its format is
  /// `organizations/{organization}/bigQueryExports/{export_id}`,
  /// `folders/{folder}/bigQueryExports/{export_id}`, or
  /// `projects/{project}/bigQueryExports/{export_id}`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists BigQuery exports.
  ///
  /// Note that when requesting BigQuery exports at a given level all exports
  /// under that level are also returned e.g. if requesting BigQuery exports
  /// under a folder, then all BigQuery exports immediately under the folder
  /// plus the ones created under the projects within the folder are returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of BigQuery
  /// exports. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListBigQueryExports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListBigQueryExports` must match the call
  /// that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBigQueryExportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a BigQuery export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this export. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name.
  /// Example format:
  /// "organizations/{organization_id}/bigQueryExports/{export_id}" Example
  /// format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format:
  /// "projects/{project_id}/bigQueryExports/{export_id}" This field is provided
  /// in responses, and is ignored when provided in create requests.
  /// Value must have pattern `^organizations/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsCustomModulesResource
      get customModules =>
          OrganizationsEventThreatDetectionSettingsCustomModulesResource(
              _requester);
  OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource
      get effectiveCustomModules =>
          OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource(
              _requester);

  OrganizationsEventThreatDetectionSettingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Validates the given Event Threat Detection custom module.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent to validate the Custom
  /// Module under. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings`. *
  /// `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsEventThreatDetectionSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a resident Event Threat Detection custom module at the scope of
  /// the given Resource Manager parent, and also creates inherited custom
  /// modules for all descendants of the given parent.
  ///
  /// These modules are enabled by default.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The new custom module's parent. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings`. *
  /// `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Event Threat Detection custom module and all of its
  /// descendants in the Resource Manager hierarchy.
  ///
  /// This method is only supported for resident custom modules.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to delete. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
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

  /// Gets an Event Threat Detection custom module.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to get. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Event Threat Detection custom modules for the given Resource
  /// Manager parent.
  ///
  /// This includes resident modules defined at the scope of the parent along
  /// with modules inherited from ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules under. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEventThreatDetectionCustomModules` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListEventThreatDetectionCustomModules` must match the call that provided
  /// the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all resident Event Threat Detection custom modules under the given
  /// Resource Manager parent and its descendants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules under. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDescendantEventThreatDetectionCustomModules` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListDescendantEventThreatDetectionCustomModules` must match
  /// the call that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Event Threat Detection custom module with the given name based
  /// on the given update mask.
  ///
  /// Updating the enablement state is supported for both resident and inherited
  /// modules (though resident modules cannot have an enablement state of
  /// "inherited"). Updating the display name or configuration of a module is
  /// supported for resident modules only. The type of a module cannot be
  /// changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the Event Threat Detection custom
  /// module. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsEffectiveCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets an effective Event Threat Detection custom module at the given level.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the effective Event Threat
  /// Detection custom module. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `folders/{folder}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EffectiveEventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all effective Event Threat Detection custom modules for the given
  /// parent.
  ///
  /// This includes resident modules defined at the scope of the parent along
  /// with modules inherited from its ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules for. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEffectiveEventThreatDetectionCustomModules` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListEffectiveEventThreatDetectionCustomModules` must match
  /// the call that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsFindingsResource {
  final commons.ApiRequester _requester;

  OrganizationsFindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Kicks off an LRO to bulk mute findings for a parent based on a filter.
  ///
  /// The parent can be either an organization, folder or project. The findings
  /// matched by the filter will be muted after the LRO is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, at which bulk action needs to be applied.
  /// Its format is `organizations/[organization_id]`, `folders/[folder_id]`,
  /// `projects/[project_id]`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Deletes an existing mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to delete. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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

  /// Gets a mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to retrieve. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - This field will be ignored if provided on config creation. Format
  /// `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsMuteConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsMuteConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new mute configs's parent. Its
  /// format is `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [muteConfigId] - Required. Unique identifier provided by the client within
  /// the parent scope. It must consist of only lowercase letters, numbers, and
  /// hyphens, must start with a letter, must end with either a letter or a
  /// number, and must be 63 characters or less.
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
      if (muteConfigId != null) 'muteConfigId': [muteConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to delete. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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

  /// Gets a mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to retrieve. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists mute configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of mute
  /// configs. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListMuteConfigs`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListMuteConfigs` must match the call that
  /// provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMuteConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - This field will be ignored if provided on config creation. Format
  /// `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  /// Value must have pattern `^organizations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsNotificationConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsNotificationConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a notification config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new notification config's
  /// parent. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, or `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [configId] - Required. Unique identifier provided by the client within the
  /// parent scope. It must be between 1 and 128 characters and contain
  /// alphanumeric characters, underscores, or hyphens only.
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
      if (configId != null) 'configId': [configId],
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the notification config to delete. Its format
  /// is `organizations/[organization_id]/notificationConfigs/[config_id]`,
  /// `folders/[folder_id]/notificationConfigs/[config_id]`, or
  /// `projects/[project_id]/notificationConfigs/[config_id]`.
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

  /// Gets a notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the notification config to get. Its format is
  /// `organizations/[organization_id]/notificationConfigs/[config_id]`,
  /// `folders/[folder_id]/notificationConfigs/[config_id]`, or
  /// `projects/[project_id]/notificationConfigs/[config_id]`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notification configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent in which to list the
  /// notification configurations. Its format is
  /// "organizations/\[organization_id\]", "folders/\[folder_id\]", or
  /// "projects/\[project_id\]".
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListNotificationConfigsResponse`; indicates that this is a continuation
  /// of a prior `ListNotificationConfigs` call, and that the system should
  /// return the next page of data.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  ///  Updates a notification config.
  ///
  /// The following update fields are allowed: description, pubsub_topic,
  /// streaming_config.filter
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this notification config. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/{organization_id}/notificationConfigs/notify_public_bucket",
  /// "folders/{folder_id}/notificationConfigs/notify_public_bucket", or
  /// "projects/{project_id}/notificationConfigs/notify_public_bucket".
  /// Value must have pattern
  /// `^organizations/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the notification config.
  /// If empty all mutable fields will be updated.
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
    return NotificationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsOperationsResource(commons.ApiRequester client)
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
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
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
  async.Future<Empty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
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
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^organizations/\[^/\]+/operations$`.
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

class OrganizationsResourceValueConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsResourceValueConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ResourceValueConfig for an organization.
  ///
  /// Maps user's tags to difference resource values for use by the attack path
  /// simulation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new ResourceValueConfig's
  /// parent. The parent field in the CreateResourceValueConfigRequest messages
  /// must either be empty or match this field.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/resourceValueConfigs:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateResourceValueConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a ResourceValueConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ResourceValueConfig to delete
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

  /// Gets a ResourceValueConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource value config to retrieve. Its
  /// format is `organizations/{organization}/resourceValueConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all ResourceValueConfigs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of resource
  /// value configs. Its format is `organizations/[organization_id]`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - The number of results to return. The service may return fewer
  /// than this value. If unspecified, at most 10 configs will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListResourceValueConfigs` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListResourceValueConfigs` must match the call that provided the page
  /// token. page_size can be specified, and the new page_size will be used.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/resourceValueConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResourceValueConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing ResourceValueConfigs with new rules.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name for the resource value configuration
  /// Value must have pattern
  /// `^organizations/\[^/\]+/resourceValueConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource
      get customModules =>
          OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource(
              _requester);
  OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource
      get effectiveCustomModules =>
          OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
              _requester);

  OrganizationsSecurityHealthAnalyticsSettingsResource(
      commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the
  /// given CRM parent, and also creates inherited
  /// SecurityHealthAnalyticsCustomModules for all CRM descendants of the given
  /// parent.
  ///
  /// These modules are enabled by default.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new custom module's parent. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified SecurityHealthAnalyticsCustomModule and all of its
  /// descendants in the CRM hierarchy.
  ///
  /// This method is only supported for resident custom modules.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to delete. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}`
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

  /// Retrieves a SecurityHealthAnalyticsCustomModule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to get. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}`
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
      get(
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
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all SecurityHealthAnalyticsCustomModules for the given
  /// parent.
  ///
  /// This includes resident modules defined at the scope of the parent, and
  /// inherited modules, inherited from CRM ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list custom modules. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all resident SecurityHealthAnalyticsCustomModules under
  /// the given CRM parent and all of the parent’s CRM descendants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list descendant custom modules. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the SecurityHealthAnalyticsCustomModule under the given name based
  /// on the given update mask.
  ///
  /// Updating the enablement state is supported on both resident and inherited
  /// modules (though resident modules cannot have an enablement state of
  /// "inherited"). Updating the display name and custom config of a module is
  /// supported on resident modules only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the custom module. Its format is
  /// "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}"
  /// The id {customModule} is server-generated and is not user settable. It
  /// will be a numeric id containing 1-20 digits.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. The only fields that can
  /// be updated are `enablement_state` and `custom_config`. If empty or set to
  /// the wildcard value `*`, both `enablement_state` and `custom_config` are
  /// updated.
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
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Simulates a given SecurityHealthAnalyticsCustomModule and Resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the organization,
  /// project, or folder. For more information about relative resource names,
  /// see
  /// [Relative Resource Name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// Example: `organizations/{organization_id}`
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieves an EffectiveSecurityHealthAnalyticsCustomModule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the effective custom module to get. Its format
  /// is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`
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
          GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule>
      get(
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
    return GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for
  /// the given parent.
  ///
  /// This includes resident modules defined at the scope of the parent, and
  /// inherited modules, inherited from CRM ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list effective custom modules. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  /// Get the simulation by name or the latest simulation for the given
  /// organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The organization name or simulation name of this
  /// simulation Valid format: `organizations/{organization}/simulations/latest`
  /// `organizations/{organization}/simulations/{simulation}`
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
  async.Future<Simulation> get(
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
    return Simulation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSimulationsAttackExposureResultsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsAttackPathsResource
      get attackPaths =>
          OrganizationsSimulationsAttackExposureResultsAttackPathsResource(
              _requester);
  OrganizationsSimulationsAttackExposureResultsValuedResourcesResource
      get valuedResources =>
          OrganizationsSimulationsAttackExposureResultsValuedResourcesResource(
              _requester);

  OrganizationsSimulationsAttackExposureResultsResource(
      commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsSimulationsAttackExposureResultsAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsAttackPathsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists the attack paths for a set of simulation results or valued resources
  /// and filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list attack paths. Valid formats:
  /// `organizations/{organization}`,
  /// `organizations/{organization}/simulations/{simulation}`
  /// `organizations/{organization}/simulations/{simulation}/attackExposureResults/{attack_exposure_result_v2}`
  /// `organizations/{organization}/simulations/{simulation}/valuedResources/{valued_resource}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/attackExposureResults/\[^/\]+$`.
  ///
  /// [filter] - The filter expression that filters the attack path in the
  /// response. Supported fields: * `valued_resources` supports =
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListAttackPathsResponse`;
  /// indicates that this is a continuation of a prior `ListAttackPaths` call,
  /// and that the system should return the next page of data.
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSimulationsAttackExposureResultsValuedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackExposureResultsValuedResourcesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists the valued resources for a set of simulation results and filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list valued resources. Valid
  /// formats: `organizations/{organization}`,
  /// `organizations/{organization}/simulations/{simulation}`
  /// `organizations/{organization}/simulations/{simulation}/attackExposureResults/{attack_exposure_result_v2}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/attackExposureResults/\[^/\]+$`.
  ///
  /// [filter] - The filter expression that filters the valued resources in the
  /// response. Supported fields: * `resource_value` supports = *
  /// `resource_type` supports =
  ///
  /// [orderBy] - Optional. The fields by which to order the valued resources
  /// response. Supported fields: * `exposed_score` * `resource_value` *
  /// `resource_type` * `resource` * `display_name` Values should be a comma
  /// separated list of fields. For example: `exposed_score,resource_value`. The
  /// default sorting order is descending. To specify ascending or descending
  /// order for a field, append a ` ASC` or a ` DESC` suffix, respectively; for
  /// example: `exposed_score DESC`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListValuedResourcesResponse`; indicates that this is a continuation of a
  /// prior `ListValuedResources` call, and that the system should return the
  /// next page of data.
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/valuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListValuedResourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSimulationsAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsAttackPathsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the attack paths for a set of simulation results or valued resources
  /// and filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list attack paths. Valid formats:
  /// `organizations/{organization}`,
  /// `organizations/{organization}/simulations/{simulation}`
  /// `organizations/{organization}/simulations/{simulation}/attackExposureResults/{attack_exposure_result_v2}`
  /// `organizations/{organization}/simulations/{simulation}/valuedResources/{valued_resource}`
  /// Value must have pattern `^organizations/\[^/\]+/simulations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression that filters the attack path in the
  /// response. Supported fields: * `valued_resources` supports =
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListAttackPathsResponse`;
  /// indicates that this is a continuation of a prior `ListAttackPaths` call,
  /// and that the system should return the next page of data.
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSimulationsValuedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsValuedResourcesAttackPathsResource get attackPaths =>
      OrganizationsSimulationsValuedResourcesAttackPathsResource(_requester);

  OrganizationsSimulationsValuedResourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the valued resource by name
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of this valued resource Valid format:
  /// `organizations/{organization}/simulations/{simulation}/valuedResources/{valued_resource}`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ValuedResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the valued resources for a set of simulation results and filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list valued resources. Valid
  /// formats: `organizations/{organization}`,
  /// `organizations/{organization}/simulations/{simulation}`
  /// `organizations/{organization}/simulations/{simulation}/attackExposureResults/{attack_exposure_result_v2}`
  /// Value must have pattern `^organizations/\[^/\]+/simulations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression that filters the valued resources in the
  /// response. Supported fields: * `resource_value` supports = *
  /// `resource_type` supports =
  ///
  /// [orderBy] - Optional. The fields by which to order the valued resources
  /// response. Supported fields: * `exposed_score` * `resource_value` *
  /// `resource_type` * `resource` * `display_name` Values should be a comma
  /// separated list of fields. For example: `exposed_score,resource_value`. The
  /// default sorting order is descending. To specify ascending or descending
  /// order for a field, append a ` ASC` or a ` DESC` suffix, respectively; for
  /// example: `exposed_score DESC`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListValuedResourcesResponse`; indicates that this is a continuation of a
  /// prior `ListValuedResources` call, and that the system should return the
  /// next page of data.
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/valuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListValuedResourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSimulationsValuedResourcesAttackPathsResource {
  final commons.ApiRequester _requester;

  OrganizationsSimulationsValuedResourcesAttackPathsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists the attack paths for a set of simulation results or valued resources
  /// and filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list attack paths. Valid formats:
  /// `organizations/{organization}`,
  /// `organizations/{organization}/simulations/{simulation}`
  /// `organizations/{organization}/simulations/{simulation}/attackExposureResults/{attack_exposure_result_v2}`
  /// `organizations/{organization}/simulations/{simulation}/valuedResources/{valued_resource}`
  /// Value must have pattern
  /// `^organizations/\[^/\]+/simulations/\[^/\]+/valuedResources/\[^/\]+$`.
  ///
  /// [filter] - The filter expression that filters the attack path in the
  /// response. Supported fields: * `valued_resources` supports =
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListAttackPathsResponse`;
  /// indicates that this is a continuation of a prior `ListAttackPaths` call,
  /// and that the system should return the next page of data.
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/attackPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttackPathsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsResource get findings =>
      OrganizationsSourcesFindingsResource(_requester);

  OrganizationsSourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new source's parent. Its format
  /// should be `organizations/[organization_id]`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Gets a source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Relative resource name of the source. Its format is
  /// `organizations/[organization_id]/source/[source_id]`.
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
  async.Future<Source> get(
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
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy on the specified Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Lists all sources belonging to an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent of sources to list. Its
  /// format should be `organizations/[organization_id]`, `folders/[folder_id]`,
  /// or `projects/[project_id]`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListSourcesResponse`;
  /// indicates that this is a continuation of a prior `ListSources` call, and
  /// that the system should return the next page of data.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this source. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example: "organizations/{organization_id}/sources/{source_id}"
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the source resource. If
  /// empty all mutable fields will be updated.
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
    return Source.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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

  /// Returns the permissions that a caller has on the specified source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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

class OrganizationsSourcesFindingsResource {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsExternalSystemsResource get externalSystems =>
      OrganizationsSourcesFindingsExternalSystemsResource(_requester);

  OrganizationsSourcesFindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a finding.
  ///
  /// The corresponding source must exist for finding creation to succeed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new finding's parent. Its format
  /// should be `organizations/[organization_id]/sources/[source_id]`.
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [findingId] - Required. Unique identifier provided by the client within
  /// the parent scope. It must be alphanumeric and less than or equal to 32
  /// characters and greater than 0 characters in length.
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
      if (findingId != null) 'findingId': [findingId],
      if ($fields != null) 'fields': [$fields],
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

  /// Filters an organization or source's findings and groups them by their
  /// specified properties.
  ///
  /// To group across all sources provide a `-` as the source id. Example:
  /// /v1/organizations/{organization_id}/sources/-/findings,
  /// /v1/folders/{folder_id}/sources/-/findings,
  /// /v1/projects/{project_id}/sources/-/findings
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the source to groupBy. Its format is
  /// `organizations/[organization_id]/sources/[source_id]`,
  /// `folders/[folder_id]/sources/[source_id]`, or
  /// `projects/[project_id]/sources/[source_id]`. To groupBy across all sources
  /// provide a source_id of `-`. For example:
  /// `organizations/{organization_id}/sources/-,
  /// folders/{folder_id}/sources/-`, or `projects/{project_id}/sources/-`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists an organization or source's findings.
  ///
  /// To list across all sources provide a `-` as the source id. Example:
  /// /v1/organizations/{organization_id}/sources/-/findings
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the source the findings belong to. Its format
  /// is `organizations/[organization_id]/sources/[source_id]`,
  /// `folders/[folder_id]/sources/[source_id]`, or
  /// `projects/[project_id]/sources/[source_id]`. To list across all sources
  /// provide a source_id of `-`. For example:
  /// `organizations/{organization_id}/sources/-`,
  /// `folders/{folder_id}/sources/-` or `projects/{projects_id}/sources/-`
  /// Value must have pattern `^organizations/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [compareDuration] - When compare_duration is set, the ListFindingsResult's
  /// "state_change" attribute is updated to indicate whether the finding had
  /// its state changed, the finding's state remained unchanged, or if the
  /// finding was added in any state during the compare_duration period of time
  /// that precedes the read_time. This is the time between (read_time -
  /// compare_duration) and read_time. The state_change value is derived based
  /// on the presence and state of the finding at the two points in time.
  /// Intermediate state changes between the two times don't affect the result.
  /// For example, the results aren't affected if the finding is made inactive
  /// and then active again. Possible "state_change" values when
  /// compare_duration is specified: * "CHANGED": indicates that the finding was
  /// present and matched the given filter at the start of compare_duration, but
  /// changed its state at read_time. * "UNCHANGED": indicates that the finding
  /// was present and matched the given filter at the start of compare_duration
  /// and did not change state at read_time. * "ADDED": indicates that the
  /// finding did not match the given filter or was not present at the start of
  /// compare_duration, but was present at read_time. * "REMOVED": indicates
  /// that the finding was present and matched the filter at the start of
  /// compare_duration, but did not match the filter at read_time. If
  /// compare_duration is not specified, then the only possible state_change is
  /// "UNUSED", which will be the state_change set for all findings present at
  /// read_time.
  ///
  /// [fieldMask] - A field mask to specify the Finding fields to be listed in
  /// the response. An empty field mask will list all fields.
  ///
  /// [filter] - Expression that defines the filter to apply across findings.
  /// The expression is a list of one or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. Examples include: * name
  /// * source_properties.a_property * security_marks.marks.marka The supported
  /// operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for
  /// integer values. * `:`, meaning substring matching, for strings. The
  /// supported value types are: * string literals in quotes. * integer literals
  /// without quotes. * boolean literals `true` and `false` without quotes. The
  /// following field and operator combinations are supported: * name: `=` *
  /// parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category:
  /// `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=`
  /// Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
  /// 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
  /// security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`,
  /// `>=`, `<=` For example, `source_properties.size = 100` is a valid filter
  /// string. Use a partial match on the empty string to filter based on a
  /// property existing: `source_properties.my_property : ""` Use a negated
  /// partial match on the empty string to filter based on a property not
  /// existing: `-source_properties.my_property : ""` * resource: *
  /// resource.name: `=`, `:` * resource.parent_name: `=`, `:` *
  /// resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` *
  /// resource.project_display_name: `=`, `:` * resource.type: `=`, `:` *
  /// resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`,
  /// `:`
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The string value should follow SQL syntax: comma separated list
  /// of fields. For example: "name,resource_properties.a_property". The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix " desc" should be appended to the field name. For example: "name
  /// desc,source_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,source_properties.a_property" and "
  /// name desc , source_properties.a_property " are equivalent. The following
  /// fields are supported: name parent state category resource_name event_time
  /// source_properties security_marks.marks
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListFindingsResponse`;
  /// indicates that this is a continuation of a prior `ListFindings` call, and
  /// that the system should return the next page of data.
  ///
  /// [readTime] - Time used as a reference point when filtering findings. The
  /// filter is limited to findings existing at the supplied time and their
  /// values are those at that specific time. Absence of this field will default
  /// to the API's version of NOW.
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
      if (compareDuration != null) 'compareDuration': [compareDuration],
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates or updates a finding.
  ///
  /// The corresponding source must exist for a finding creation to succeed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}",
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}",
  /// "projects/{project_id}/sources/{source_id}/findings/{finding_id}".
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the finding resource.
  /// This field should not be specified when creating a finding. When updating
  /// a finding, an empty mask is treated as updating all mutable fields and
  /// replacing source_properties. Individual source_properties can be
  /// added/updated by using "source_properties." in the field mask.
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
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the mute state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`,
  /// `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`,
  /// `projects/{project_id}/sources/{source_id}/findings/{finding_id}`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates the state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`,
  /// `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`,
  /// `projects/{project_id}/sources/{source_id}/findings/{finding_id}`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect. If
  /// not set uses current server time. Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time. Must be
  /// earlier or equal to the server time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource. The field mask must not contain duplicate fields. If empty or
  /// set to "marks", all marks will be replaced. Individual marks can be
  /// updated using "marks.".
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
      if (startTime != null) 'startTime': [startTime],
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
    return SecurityMarks.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsSourcesFindingsExternalSystemsResource {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsExternalSystemsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Updates external system.
  ///
  /// This is for a given finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Full resource name of the external system, for example:
  /// "organizations/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "folders/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "projects/1234/sources/5678/findings/123456/externalSystems/jira"
  /// Value must have pattern
  /// `^organizations/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/externalSystems/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the external system
  /// resource. If empty all mutable fields will be updated.
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
    return GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsValuedResourcesResource {
  final commons.ApiRequester _requester;

  OrganizationsValuedResourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the valued resources for a set of simulation results and filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list valued resources. Valid
  /// formats: `organizations/{organization}`,
  /// `organizations/{organization}/simulations/{simulation}`
  /// `organizations/{organization}/simulations/{simulation}/attackExposureResults/{attack_exposure_result_v2}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression that filters the valued resources in the
  /// response. Supported fields: * `resource_value` supports = *
  /// `resource_type` supports =
  ///
  /// [orderBy] - Optional. The fields by which to order the valued resources
  /// response. Supported fields: * `exposed_score` * `resource_value` *
  /// `resource_type` * `resource` * `display_name` Values should be a comma
  /// separated list of fields. For example: `exposed_score,resource_value`. The
  /// default sorting order is descending. To specify ascending or descending
  /// order for a field, append a ` ASC` or a ` DESC` suffix, respectively; for
  /// example: `exposed_score DESC`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListValuedResourcesResponse`; indicates that this is a continuation of a
  /// prior `ListValuedResources` call, and that the system should return the
  /// next page of data.
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/valuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListValuedResourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  /// Filters an organization's assets and groups them by their specified
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent to group the assets by. Its
  /// format is `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists an organization's assets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource that contains the
  /// assets. The value that you can specify on parent depends on the method in
  /// which you specify parent. You can specify one of the following values:
  /// `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [compareDuration] - When compare_duration is set, the ListAssetsResult's
  /// "state_change" attribute is updated to indicate whether the asset was
  /// added, removed, or remained present during the compare_duration period of
  /// time that precedes the read_time. This is the time between (read_time -
  /// compare_duration) and read_time. The state_change value is derived based
  /// on the presence of the asset at the two points in time. Intermediate state
  /// changes between the two times don't affect the result. For example, the
  /// results aren't affected if the asset is removed and re-created again.
  /// Possible "state_change" values when compare_duration is specified: *
  /// "ADDED": indicates that the asset was not present at the start of
  /// compare_duration, but present at read_time. * "REMOVED": indicates that
  /// the asset was present at the start of compare_duration, but not present at
  /// read_time. * "ACTIVE": indicates that the asset was present at both the
  /// start and the end of the time period defined by compare_duration and
  /// read_time. If compare_duration is not specified, then the only possible
  /// state_change is "UNUSED", which will be the state_change set for all
  /// assets present at read_time.
  ///
  /// [fieldMask] - A field mask to specify the ListAssetsResult fields to be
  /// listed in the response. An empty field mask will list all fields.
  ///
  /// [filter] - Expression that defines the filter to apply across assets. The
  /// expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the Asset resource. Examples include: * name *
  /// security_center_properties.resource_name * resource_properties.a_property
  /// * security_marks.marks.marka The supported operators are: * `=` for all
  /// value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning
  /// substring matching, for strings. The supported value types are: * string
  /// literals in quotes. * integer literals without quotes. * boolean literals
  /// `true` and `false` without quotes. The following are the allowed field and
  /// operator combinations: * name: `=` * update_time: `=`, `>`, `<`, `>=`,
  /// `<=` Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
  /// 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should
  /// be milliseconds since epoch or an RFC3339 string. Examples: `create_time =
  /// "2019-06-10T16:07:18-07:00"` `create_time = 1560208038000` *
  /// iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`,
  /// `<`, `>=`, `<=` * security_marks.marks: `=`, `:` *
  /// security_center_properties.resource_name: `=`, `:` *
  /// security_center_properties.resource_display_name: `=`, `:` *
  /// security_center_properties.resource_type: `=`, `:` *
  /// security_center_properties.resource_parent: `=`, `:` *
  /// security_center_properties.resource_parent_display_name: `=`, `:` *
  /// security_center_properties.resource_project: `=`, `:` *
  /// security_center_properties.resource_project_display_name: `=`, `:` *
  /// security_center_properties.resource_owners: `=`, `:` For example,
  /// `resource_properties.size = 100` is a valid filter string. Use a partial
  /// match on the empty string to filter based on a property existing:
  /// `resource_properties.my_property : ""` Use a negated partial match on the
  /// empty string to filter based on a property not existing:
  /// `-resource_properties.my_property : ""`
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The string value should follow SQL syntax: comma separated list
  /// of fields. For example: "name,resource_properties.a_property". The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix " desc" should be appended to the field name. For example: "name
  /// desc,resource_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,resource_properties.a_property" and "
  /// name desc , resource_properties.a_property " are equivalent. The following
  /// fields are supported: name update_time resource_properties
  /// security_marks.marks security_center_properties.resource_name
  /// security_center_properties.resource_display_name
  /// security_center_properties.resource_parent
  /// security_center_properties.resource_parent_display_name
  /// security_center_properties.resource_project
  /// security_center_properties.resource_project_display_name
  /// security_center_properties.resource_type
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListAssetsResponse`;
  /// indicates that this is a continuation of a prior `ListAssets` call, and
  /// that the system should return the next page of data.
  ///
  /// [readTime] - Time used as a reference point when filtering assets. The
  /// filter is limited to assets existing at the supplied time and their values
  /// are those at that specific time. Absence of this field will default to the
  /// API's version of NOW.
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
      if (compareDuration != null) 'compareDuration': [compareDuration],
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  /// Value must have pattern `^projects/\[^/\]+/assets/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect. If
  /// not set uses current server time. Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time. Must be
  /// earlier or equal to the server time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource. The field mask must not contain duplicate fields. If empty or
  /// set to "marks", all marks will be replaced. Individual marks can be
  /// updated using "marks.".
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
      if (startTime != null) 'startTime': [startTime],
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
    return SecurityMarks.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsBigQueryExportsResource {
  final commons.ApiRequester _requester;

  ProjectsBigQueryExportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a BigQuery export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource of the new BigQuery
  /// export. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, or `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [bigQueryExportId] - Required. Unique identifier provided by the client
  /// within the parent scope. It must consist of only lowercase letters,
  /// numbers, and hyphens, must start with a letter, must end with either a
  /// letter or a number, and must be 63 characters or less.
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
      if (bigQueryExportId != null) 'bigQueryExportId': [bigQueryExportId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing BigQuery export.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the BigQuery export to delete. Its format
  /// is `organizations/{organization}/bigQueryExports/{export_id}`,
  /// `folders/{folder}/bigQueryExports/{export_id}`, or
  /// `projects/{project}/bigQueryExports/{export_id}`
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

  /// Gets a BigQuery export.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the BigQuery export to retrieve. Its format is
  /// `organizations/{organization}/bigQueryExports/{export_id}`,
  /// `folders/{folder}/bigQueryExports/{export_id}`, or
  /// `projects/{project}/bigQueryExports/{export_id}`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists BigQuery exports.
  ///
  /// Note that when requesting BigQuery exports at a given level all exports
  /// under that level are also returned e.g. if requesting BigQuery exports
  /// under a folder, then all BigQuery exports immediately under the folder
  /// plus the ones created under the projects within the folder are returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of BigQuery
  /// exports. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListBigQueryExports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListBigQueryExports` must match the call
  /// that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/bigQueryExports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBigQueryExportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a BigQuery export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this export. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name.
  /// Example format:
  /// "organizations/{organization_id}/bigQueryExports/{export_id}" Example
  /// format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format:
  /// "projects/{project_id}/bigQueryExports/{export_id}" This field is provided
  /// in responses, and is ignored when provided in create requests.
  /// Value must have pattern `^projects/\[^/\]+/bigQueryExports/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsCustomModulesResource get customModules =>
      ProjectsEventThreatDetectionSettingsCustomModulesResource(_requester);
  ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource
      get effectiveCustomModules =>
          ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource(
              _requester);

  ProjectsEventThreatDetectionSettingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Validates the given Event Threat Detection custom module.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent to validate the Custom
  /// Module under. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings`. *
  /// `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsEventThreatDetectionSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a resident Event Threat Detection custom module at the scope of
  /// the given Resource Manager parent, and also creates inherited custom
  /// modules for all descendants of the given parent.
  ///
  /// These modules are enabled by default.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The new custom module's parent. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings`. *
  /// `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Event Threat Detection custom module and all of its
  /// descendants in the Resource Manager hierarchy.
  ///
  /// This method is only supported for resident custom modules.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to delete. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
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

  /// Gets an Event Threat Detection custom module.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to get. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Event Threat Detection custom modules for the given Resource
  /// Manager parent.
  ///
  /// This includes resident modules defined at the scope of the parent along
  /// with modules inherited from ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules under. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEventThreatDetectionCustomModules` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListEventThreatDetectionCustomModules` must match the call that provided
  /// the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all resident Event Threat Detection custom modules under the given
  /// Resource Manager parent and its descendants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules under. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDescendantEventThreatDetectionCustomModules` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListDescendantEventThreatDetectionCustomModules` must match
  /// the call that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Event Threat Detection custom module with the given name based
  /// on the given update mask.
  ///
  /// Updating the enablement state is supported for both resident and inherited
  /// modules (though resident modules cannot have an enablement state of
  /// "inherited"). Updating the display name or configuration of a module is
  /// supported for resident modules only. The type of a module cannot be
  /// changed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the Event Threat Detection custom
  /// module. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/eventThreatDetectionSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return EventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsEffectiveCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets an effective Event Threat Detection custom module at the given level.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the effective Event Threat
  /// Detection custom module. Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `folders/{folder}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EffectiveEventThreatDetectionCustomModule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all effective Event Threat Detection custom modules for the given
  /// parent.
  ///
  /// This includes resident modules defined at the scope of the parent along
  /// with modules inherited from its ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent to list custom modules for. Its
  /// format is: * `organizations/{organization}/eventThreatDetectionSettings`.
  /// * `folders/{folder}/eventThreatDetectionSettings`. *
  /// `projects/{project}/eventThreatDetectionSettings`.
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [pageSize] - The maximum number of modules to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListEffectiveEventThreatDetectionCustomModules` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListEffectiveEventThreatDetectionCustomModules` must match
  /// the call that provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsFindingsResource {
  final commons.ApiRequester _requester;

  ProjectsFindingsResource(commons.ApiRequester client) : _requester = client;

  /// Kicks off an LRO to bulk mute findings for a parent based on a filter.
  ///
  /// The parent can be either an organization, folder or project. The findings
  /// matched by the filter will be muted after the LRO is done.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, at which bulk action needs to be applied.
  /// Its format is `organizations/[organization_id]`, `folders/[folder_id]`,
  /// `projects/[project_id]`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Deletes an existing mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to delete. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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

  /// Gets a mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to retrieve. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - This field will be ignored if provided on config creation. Format
  /// `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsMuteConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsMuteConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new mute configs's parent. Its
  /// format is `organizations/[organization_id]`, `folders/[folder_id]`, or
  /// `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [muteConfigId] - Required. Unique identifier provided by the client within
  /// the parent scope. It must consist of only lowercase letters, numbers, and
  /// hyphens, must start with a letter, must end with either a letter or a
  /// number, and must be 63 characters or less.
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
      if (muteConfigId != null) 'muteConfigId': [muteConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to delete. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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

  /// Gets a mute config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mute config to retrieve. Its format is
  /// `organizations/{organization}/muteConfigs/{config_id}`,
  /// `folders/{folder}/muteConfigs/{config_id}`,
  /// `projects/{project}/muteConfigs/{config_id}`,
  /// `organizations/{organization}/locations/global/muteConfigs/{config_id}`,
  /// `folders/{folder}/locations/global/muteConfigs/{config_id}`, or
  /// `projects/{project}/locations/global/muteConfigs/{config_id}`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists mute configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of mute
  /// configs. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of configs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 configs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListMuteConfigs`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListMuteConfigs` must match the call that
  /// provided the page token.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/muteConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMuteConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a mute config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - This field will be ignored if provided on config creation. Format
  /// `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  /// Value must have pattern `^projects/\[^/\]+/muteConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. If empty all mutable
  /// fields will be updated.
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
    return GoogleCloudSecuritycenterV1MuteConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsNotificationConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsNotificationConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a notification config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new notification config's
  /// parent. Its format is `organizations/[organization_id]`,
  /// `folders/[folder_id]`, or `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [configId] - Required. Unique identifier provided by the client within the
  /// parent scope. It must be between 1 and 128 characters and contain
  /// alphanumeric characters, underscores, or hyphens only.
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
      if (configId != null) 'configId': [configId],
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the notification config to delete. Its format
  /// is `organizations/[organization_id]/notificationConfigs/[config_id]`,
  /// `folders/[folder_id]/notificationConfigs/[config_id]`, or
  /// `projects/[project_id]/notificationConfigs/[config_id]`.
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

  /// Gets a notification config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the notification config to get. Its format is
  /// `organizations/[organization_id]/notificationConfigs/[config_id]`,
  /// `folders/[folder_id]/notificationConfigs/[config_id]`, or
  /// `projects/[project_id]/notificationConfigs/[config_id]`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NotificationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notification configs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent in which to list the
  /// notification configurations. Its format is
  /// "organizations/\[organization_id\]", "folders/\[folder_id\]", or
  /// "projects/\[project_id\]".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListNotificationConfigsResponse`; indicates that this is a continuation
  /// of a prior `ListNotificationConfigs` call, and that the system should
  /// return the next page of data.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/notificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNotificationConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  ///  Updates a notification config.
  ///
  /// The following update fields are allowed: description, pubsub_topic,
  /// streaming_config.filter
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this notification config. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/{organization_id}/notificationConfigs/notify_public_bucket",
  /// "folders/{folder_id}/notificationConfigs/notify_public_bucket", or
  /// "projects/{project_id}/notificationConfigs/notify_public_bucket".
  /// Value must have pattern `^projects/\[^/\]+/notificationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the notification config.
  /// If empty all mutable fields will be updated.
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
    return NotificationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource
      get customModules =>
          ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource(
              _requester);
  ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource
      get effectiveCustomModules =>
          ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
              _requester);

  ProjectsSecurityHealthAnalyticsSettingsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the
  /// given CRM parent, and also creates inherited
  /// SecurityHealthAnalyticsCustomModules for all CRM descendants of the given
  /// parent.
  ///
  /// These modules are enabled by default.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the new custom module's parent. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified SecurityHealthAnalyticsCustomModule and all of its
  /// descendants in the CRM hierarchy.
  ///
  /// This method is only supported for resident custom modules.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to delete. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}`
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

  /// Retrieves a SecurityHealthAnalyticsCustomModule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom module to get. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}`
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
      get(
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
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all SecurityHealthAnalyticsCustomModules for the given
  /// parent.
  ///
  /// This includes resident modules defined at the scope of the parent, and
  /// inherited modules, inherited from CRM ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list custom modules. Its format is
  /// `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all resident SecurityHealthAnalyticsCustomModules under
  /// the given CRM parent and all of the parent’s CRM descendants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list descendant custom modules. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customModules:listDescendant';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the SecurityHealthAnalyticsCustomModule under the given name based
  /// on the given update mask.
  ///
  /// Updating the enablement state is supported on both resident and inherited
  /// modules (though resident modules cannot have an enablement state of
  /// "inherited"). Updating the display name and custom config of a module is
  /// supported on resident modules only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of the custom module. Its format is
  /// "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}"
  /// The id {customModule} is server-generated and is not user settable. It
  /// will be a numeric id containing 1-20 digits.
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings/customModules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. The only fields that can
  /// be updated are `enablement_state` and `custom_config`. If empty or set to
  /// the wildcard value `*`, both `enablement_state` and `custom_config` are
  /// updated.
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
    return GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Simulates a given SecurityHealthAnalyticsCustomModule and Resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative resource name of the organization,
  /// project, or folder. For more information about relative resource names,
  /// see
  /// [Relative Resource Name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// Example: `organizations/{organization_id}`
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsEffectiveCustomModulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieves an EffectiveSecurityHealthAnalyticsCustomModule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the effective custom module to get. Its format
  /// is
  /// `organizations/{organization}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`,
  /// `folders/{folder}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`,
  /// or
  /// `projects/{project}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}`
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
          GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule>
      get(
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
    return GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for
  /// the given parent.
  ///
  /// This includes resident modules defined at the scope of the parent, and
  /// inherited modules, inherited from CRM ancestors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of parent to list effective custom modules. Its
  /// format is `organizations/{organization}/securityHealthAnalyticsSettings`,
  /// `folders/{folder}/securityHealthAnalyticsSettings`, or
  /// `projects/{project}/securityHealthAnalyticsSettings`
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last call indicating a
  /// continuation
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/effectiveCustomModules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesFindingsResource get findings =>
      ProjectsSourcesFindingsResource(_requester);

  ProjectsSourcesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all sources belonging to an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the parent of sources to list. Its
  /// format should be `organizations/[organization_id]`, `folders/[folder_id]`,
  /// or `projects/[project_id]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListSourcesResponse`;
  /// indicates that this is a continuation of a prior `ListSources` call, and
  /// that the system should return the next page of data.
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/sources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSourcesFindingsResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesFindingsExternalSystemsResource get externalSystems =>
      ProjectsSourcesFindingsExternalSystemsResource(_requester);

  ProjectsSourcesFindingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Filters an organization or source's findings and groups them by their
  /// specified properties.
  ///
  /// To group across all sources provide a `-` as the source id. Example:
  /// /v1/organizations/{organization_id}/sources/-/findings,
  /// /v1/folders/{folder_id}/sources/-/findings,
  /// /v1/projects/{project_id}/sources/-/findings
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the source to groupBy. Its format is
  /// `organizations/[organization_id]/sources/[source_id]`,
  /// `folders/[folder_id]/sources/[source_id]`, or
  /// `projects/[project_id]/sources/[source_id]`. To groupBy across all sources
  /// provide a source_id of `-`. For example:
  /// `organizations/{organization_id}/sources/-,
  /// folders/{folder_id}/sources/-`, or `projects/{project_id}/sources/-`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings:group';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GroupFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists an organization or source's findings.
  ///
  /// To list across all sources provide a `-` as the source id. Example:
  /// /v1/organizations/{organization_id}/sources/-/findings
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the source the findings belong to. Its format
  /// is `organizations/[organization_id]/sources/[source_id]`,
  /// `folders/[folder_id]/sources/[source_id]`, or
  /// `projects/[project_id]/sources/[source_id]`. To list across all sources
  /// provide a source_id of `-`. For example:
  /// `organizations/{organization_id}/sources/-`,
  /// `folders/{folder_id}/sources/-` or `projects/{projects_id}/sources/-`
  /// Value must have pattern `^projects/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [compareDuration] - When compare_duration is set, the ListFindingsResult's
  /// "state_change" attribute is updated to indicate whether the finding had
  /// its state changed, the finding's state remained unchanged, or if the
  /// finding was added in any state during the compare_duration period of time
  /// that precedes the read_time. This is the time between (read_time -
  /// compare_duration) and read_time. The state_change value is derived based
  /// on the presence and state of the finding at the two points in time.
  /// Intermediate state changes between the two times don't affect the result.
  /// For example, the results aren't affected if the finding is made inactive
  /// and then active again. Possible "state_change" values when
  /// compare_duration is specified: * "CHANGED": indicates that the finding was
  /// present and matched the given filter at the start of compare_duration, but
  /// changed its state at read_time. * "UNCHANGED": indicates that the finding
  /// was present and matched the given filter at the start of compare_duration
  /// and did not change state at read_time. * "ADDED": indicates that the
  /// finding did not match the given filter or was not present at the start of
  /// compare_duration, but was present at read_time. * "REMOVED": indicates
  /// that the finding was present and matched the filter at the start of
  /// compare_duration, but did not match the filter at read_time. If
  /// compare_duration is not specified, then the only possible state_change is
  /// "UNUSED", which will be the state_change set for all findings present at
  /// read_time.
  ///
  /// [fieldMask] - A field mask to specify the Finding fields to be listed in
  /// the response. An empty field mask will list all fields.
  ///
  /// [filter] - Expression that defines the filter to apply across findings.
  /// The expression is a list of one or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. Examples include: * name
  /// * source_properties.a_property * security_marks.marks.marka The supported
  /// operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for
  /// integer values. * `:`, meaning substring matching, for strings. The
  /// supported value types are: * string literals in quotes. * integer literals
  /// without quotes. * boolean literals `true` and `false` without quotes. The
  /// following field and operator combinations are supported: * name: `=` *
  /// parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category:
  /// `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=`
  /// Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
  /// 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
  /// security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`,
  /// `>=`, `<=` For example, `source_properties.size = 100` is a valid filter
  /// string. Use a partial match on the empty string to filter based on a
  /// property existing: `source_properties.my_property : ""` Use a negated
  /// partial match on the empty string to filter based on a property not
  /// existing: `-source_properties.my_property : ""` * resource: *
  /// resource.name: `=`, `:` * resource.parent_name: `=`, `:` *
  /// resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` *
  /// resource.project_display_name: `=`, `:` * resource.type: `=`, `:` *
  /// resource.folders.resource_folder: `=`, `:` * resource.display_name: `=`,
  /// `:`
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The string value should follow SQL syntax: comma separated list
  /// of fields. For example: "name,resource_properties.a_property". The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix " desc" should be appended to the field name. For example: "name
  /// desc,source_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,source_properties.a_property" and "
  /// name desc , source_properties.a_property " are equivalent. The following
  /// fields are supported: name parent state category resource_name event_time
  /// source_properties security_marks.marks
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is 10, minimum is 1, maximum is 1000.
  ///
  /// [pageToken] - The value returned by the last `ListFindingsResponse`;
  /// indicates that this is a continuation of a prior `ListFindings` call, and
  /// that the system should return the next page of data.
  ///
  /// [readTime] - Time used as a reference point when filtering findings. The
  /// filter is limited to findings existing at the supplied time and their
  /// values are those at that specific time. Absence of this field will default
  /// to the API's version of NOW.
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
      if (compareDuration != null) 'compareDuration': [compareDuration],
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/findings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates or updates a finding.
  ///
  /// The corresponding source must exist for a finding creation to succeed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}",
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}",
  /// "projects/{project_id}/sources/{source_id}/findings/{finding_id}".
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the finding resource.
  /// This field should not be specified when creating a finding. When updating
  /// a finding, an empty mask is treated as updating all mutable fields and
  /// replacing source_properties. Individual source_properties can be
  /// added/updated by using "source_properties." in the field mask.
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
    return Finding.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the mute state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`,
  /// `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`,
  /// `projects/{project_id}/sources/{source_id}/findings/{finding_id}`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates the state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding. Example:
  /// `organizations/{organization_id}/sources/{source_id}/findings/{finding_id}`,
  /// `folders/{folder_id}/sources/{source_id}/findings/{finding_id}`,
  /// `projects/{project_id}/sources/{source_id}/findings/{finding_id}`.
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
      if ($fields != null) 'fields': [$fields],
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

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/securityMarks$`.
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect. If
  /// not set uses current server time. Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time. Must be
  /// earlier or equal to the server time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource. The field mask must not contain duplicate fields. If empty or
  /// set to "marks", all marks will be replaced. Individual marks can be
  /// updated using "marks.".
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
      if (startTime != null) 'startTime': [startTime],
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
    return SecurityMarks.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSourcesFindingsExternalSystemsResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesFindingsExternalSystemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Updates external system.
  ///
  /// This is for a given finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Full resource name of the external system, for example:
  /// "organizations/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "folders/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "projects/1234/sources/5678/findings/123456/externalSystems/jira"
  /// Value must have pattern
  /// `^projects/\[^/\]+/sources/\[^/\]+/findings/\[^/\]+/externalSystems/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask to use when updating the external system
  /// resource. If empty all mutable fields will be updated.
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
    return GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an access event.
class Access {
  /// Caller's IP address, such as "1.1.1.1".
  core.String? callerIp;

  /// The caller IP's geolocation, which identifies where the call came from.
  Geolocation? callerIpGeo;

  /// The method that the service account called, e.g. "SetIamPolicy".
  core.String? methodName;

  /// Associated email, such as "foo@google.com".
  ///
  /// The email address of the authenticated user or a service account acting on
  /// behalf of a third party principal making the request. For third party
  /// identity callers, the `principal_subject` field is populated instead of
  /// this field. For privacy reasons, the principal email address is sometimes
  /// redacted. For more information, see
  /// [Caller identities in audit logs](https://cloud.google.com/logging/docs/audit#user-id).
  core.String? principalEmail;

  /// A string that represents the principal_subject that is associated with the
  /// identity.
  ///
  /// Unlike `principal_email`, `principal_subject` supports principals that
  /// aren't associated with email addresses, such as third party principals.
  /// For most identities, the format is
  /// `principal://iam.googleapis.com/{identity pool name}/subject/{subject}`.
  /// Some GKE identities, such as GKE_WORKLOAD, FREEFORM, and GKE_HUB_WORKLOAD,
  /// still use the legacy format `serviceAccount:{identity pool
  /// name}[{subject}]`.
  core.String? principalSubject;

  /// The identity delegation history of an authenticated service account that
  /// made the request.
  ///
  /// The `serviceAccountDelegationInfo[]` object contains information about the
  /// real authorities that try to access Google Cloud resources by delegating
  /// on a service account. When multiple authorities are present, they are
  /// guaranteed to be sorted based on the original ordering of the identity
  /// delegation events.
  core.List<ServiceAccountDelegationInfo>? serviceAccountDelegationInfo;

  /// The name of the service account key that was used to create or exchange
  /// credentials when authenticating the service account that made the request.
  ///
  /// This is a scheme-less URI full resource name. For example:
  /// "//iam.googleapis.com/projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}".
  core.String? serviceAccountKeyName;

  /// This is the API service that the service account made a call to, e.g.
  /// "iam.googleapis.com"
  core.String? serviceName;

  /// The caller's user agent string associated with the finding.
  core.String? userAgent;

  /// Type of user agent associated with the finding.
  ///
  /// For example, an operating system shell or an embedded or standalone
  /// application.
  core.String? userAgentFamily;

  /// A string that represents a username.
  ///
  /// The username provided depends on the type of the finding and is likely not
  /// an IAM principal. For example, this can be a system username if the
  /// finding is related to a virtual machine, or it can be an application login
  /// username.
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
                  json_['callerIpGeo'] as core.Map<core.String, core.dynamic>)
              : null,
          methodName: json_['methodName'] as core.String?,
          principalEmail: json_['principalEmail'] as core.String?,
          principalSubject: json_['principalSubject'] as core.String?,
          serviceAccountDelegationInfo:
              (json_['serviceAccountDelegationInfo'] as core.List?)
                  ?.map((value) => ServiceAccountDelegationInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          serviceAccountKeyName: json_['serviceAccountKeyName'] as core.String?,
          serviceName: json_['serviceName'] as core.String?,
          userAgent: json_['userAgent'] as core.String?,
          userAgentFamily: json_['userAgentFamily'] as core.String?,
          userName: json_['userName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callerIp != null) 'callerIp': callerIp!,
        if (callerIpGeo != null) 'callerIpGeo': callerIpGeo!,
        if (methodName != null) 'methodName': methodName!,
        if (principalEmail != null) 'principalEmail': principalEmail!,
        if (principalSubject != null) 'principalSubject': principalSubject!,
        if (serviceAccountDelegationInfo != null)
          'serviceAccountDelegationInfo': serviceAccountDelegationInfo!,
        if (serviceAccountKeyName != null)
          'serviceAccountKeyName': serviceAccountKeyName!,
        if (serviceName != null) 'serviceName': serviceName!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (userAgentFamily != null) 'userAgentFamily': userAgentFamily!,
        if (userName != null) 'userName': userName!,
      };
}

/// Conveys information about a Kubernetes access review (such as one returned
/// by a \[`kubectl auth
/// can-i`\](https://kubernetes.io/docs/reference/access-authn-authz/authorization/#checking-api-access)
/// command) that was involved in a finding.
class AccessReview {
  /// The API group of the resource.
  ///
  /// "*" means all.
  core.String? group;

  /// The name of the resource being requested.
  ///
  /// Empty means all.
  core.String? name;

  /// Namespace of the action being requested.
  ///
  /// Currently, there is no distinction between no namespace and all
  /// namespaces. Both are represented by "" (empty).
  core.String? ns;

  /// The optional resource type requested.
  ///
  /// "*" means all.
  core.String? resource;

  /// The optional subresource type.
  core.String? subresource;

  /// A Kubernetes resource API verb, like get, list, watch, create, update,
  /// delete, proxy.
  ///
  /// "*" means all.
  core.String? verb;

  /// The API version of the resource.
  ///
  /// "*" means all.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (group != null) 'group': group!,
        if (name != null) 'name': name!,
        if (ns != null) 'ns': ns!,
        if (resource != null) 'resource': resource!,
        if (subresource != null) 'subresource': subresource!,
        if (verb != null) 'verb': verb!,
        if (version != null) 'version': version!,
      };
}

/// Information about
/// [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/cloud-armor-overview#google-cloud-armor-adaptive-protection).
class AdaptiveProtection {
  /// A score of 0 means that there is low confidence that the detected event is
  /// an actual attack.
  ///
  /// A score of 1 means that there is high confidence that the detected event
  /// is an attack. See the
  /// [Adaptive Protection documentation](https://cloud.google.com/armor/docs/adaptive-protection-overview#configure-alert-tuning)
  /// for further explanation.
  core.double? confidence;

  AdaptiveProtection({
    this.confidence,
  });

  AdaptiveProtection.fromJson(core.Map json_)
      : this(
          confidence: (json_['confidence'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
      };
}

/// Represents an application associated with a finding.
class Application {
  /// The base URI that identifies the network location of the application in
  /// which the vulnerability was detected.
  ///
  /// For example, `http://example.com`.
  core.String? baseUri;

  /// The full URI with payload that can be used to reproduce the vulnerability.
  ///
  /// For example, `http://example.com?p=aMmYgI6H`.
  core.String? fullUri;

  Application({
    this.baseUri,
    this.fullUri,
  });

  Application.fromJson(core.Map json_)
      : this(
          baseUri: json_['baseUri'] as core.String?,
          fullUri: json_['fullUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUri != null) 'baseUri': baseUri!,
        if (fullUri != null) 'fullUri': fullUri!,
      };
}

/// Security Command Center representation of a Google Cloud resource.
///
/// The Asset is a Security Command Center resource that captures information
/// about a single Google Cloud resource. All modifications to an Asset are only
/// within the context of Security Command Center and don't affect the
/// referenced Google Cloud resource.
class Asset {
  /// The canonical name of the resource.
  ///
  /// It's either "organizations/{organization_id}/assets/{asset_id}",
  /// "folders/{folder_id}/assets/{asset_id}" or
  /// "projects/{project_number}/assets/{asset_id}", depending on the closest
  /// CRM ancestor of the resource.
  core.String? canonicalName;

  /// The time at which the asset was created in Security Command Center.
  core.String? createTime;

  /// Cloud IAM Policy information associated with the Google Cloud resource
  /// described by the Security Command Center asset.
  ///
  /// This information is managed and defined by the Google Cloud resource and
  /// cannot be modified by the user.
  IamPolicy? iamPolicy;

  /// The relative resource name of this asset.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example: "organizations/{organization_id}/assets/{asset_id}".
  core.String? name;

  /// Resource managed properties.
  ///
  /// These properties are managed and defined by the Google Cloud resource and
  /// cannot be modified by the user.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resourceProperties;

  /// Security Command Center managed properties.
  ///
  /// These properties are managed by Security Command Center and cannot be
  /// modified by the user.
  SecurityCenterProperties? securityCenterProperties;

  /// User specified security marks.
  ///
  /// These marks are entirely managed by the user and come from the
  /// SecurityMarks resource that belongs to the asset.
  SecurityMarks? securityMarks;

  /// The time at which the asset was last updated or added in Cloud SCC.
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
                  json_['iamPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          resourceProperties: json_.containsKey('resourceProperties')
              ? json_['resourceProperties']
                  as core.Map<core.String, core.dynamic>
              : null,
          securityCenterProperties:
              json_.containsKey('securityCenterProperties')
                  ? SecurityCenterProperties.fromJson(
                      json_['securityCenterProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          securityMarks: json_.containsKey('securityMarks')
              ? SecurityMarks.fromJson(
                  json_['securityMarks'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalName != null) 'canonicalName': canonicalName!,
        if (createTime != null) 'createTime': createTime!,
        if (iamPolicy != null) 'iamPolicy': iamPolicy!,
        if (name != null) 'name': name!,
        if (resourceProperties != null)
          'resourceProperties': resourceProperties!,
        if (securityCenterProperties != null)
          'securityCenterProperties': securityCenterProperties!,
        if (securityMarks != null) 'securityMarks': securityMarks!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The configuration used for Asset Discovery runs.
class AssetDiscoveryConfig {
  /// The folder ids to use for filtering asset discovery.
  ///
  /// It consists of only digits, e.g., 756619654966.
  core.List<core.String>? folderIds;

  /// The mode to use for filtering asset discovery.
  /// Possible string values are:
  /// - "INCLUSION_MODE_UNSPECIFIED" : Unspecified. Setting the mode with this
  /// value will disable inclusion/exclusion filtering for Asset Discovery.
  /// - "INCLUDE_ONLY" : Asset Discovery will capture only the resources within
  /// the projects specified. All other resources will be ignored.
  /// - "EXCLUDE" : Asset Discovery will ignore all resources under the projects
  /// specified. All other resources will be retrieved.
  core.String? inclusionMode;

  /// The project ids to use for filtering asset discovery.
  core.List<core.String>? projectIds;

  AssetDiscoveryConfig({
    this.folderIds,
    this.inclusionMode,
    this.projectIds,
  });

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

  core.Map<core.String, core.dynamic> toJson() => {
        if (folderIds != null) 'folderIds': folderIds!,
        if (inclusionMode != null) 'inclusionMode': inclusionMode!,
        if (projectIds != null) 'projectIds': projectIds!,
      };
}

/// Information about DDoS attack volume and classification.
class Attack {
  /// Type of attack, for example, 'SYN-flood', 'NTP-udp', or 'CHARGEN-udp'.
  core.String? classification;

  /// Total BPS (bytes per second) volume of attack.
  core.int? volumeBps;

  /// Total PPS (packets per second) volume of attack.
  core.int? volumePps;

  Attack({
    this.classification,
    this.volumeBps,
    this.volumePps,
  });

  Attack.fromJson(core.Map json_)
      : this(
          classification: json_['classification'] as core.String?,
          volumeBps: json_['volumeBps'] as core.int?,
          volumePps: json_['volumePps'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classification != null) 'classification': classification!,
        if (volumeBps != null) 'volumeBps': volumeBps!,
        if (volumePps != null) 'volumePps': volumePps!,
      };
}

/// An attack exposure contains the results of an attack path simulation run.
class AttackExposure {
  /// The resource name of the attack path simulation result that contains the
  /// details regarding this attack exposure score.
  ///
  /// Example: `organizations/123/simulations/456/attackExposureResults/789`
  core.String? attackExposureResult;

  /// The number of high value resources that are exposed as a result of this
  /// finding.
  core.int? exposedHighValueResourcesCount;

  /// The number of high value resources that are exposed as a result of this
  /// finding.
  core.int? exposedLowValueResourcesCount;

  /// The number of medium value resources that are exposed as a result of this
  /// finding.
  core.int? exposedMediumValueResourcesCount;

  /// The most recent time the attack exposure was updated on this finding.
  core.String? latestCalculationTime;

  /// A number between 0 (inclusive) and infinity that represents how important
  /// this finding is to remediate.
  ///
  /// The higher the score, the more important it is to remediate.
  core.double? score;

  /// What state this AttackExposure is in.
  ///
  /// This captures whether or not an attack exposure has been calculated or
  /// not.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is not specified.
  /// - "CALCULATED" : The attack exposure has been calculated.
  /// - "NOT_CALCULATED" : The attack exposure has not been calculated.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackExposureResult != null)
          'attackExposureResult': attackExposureResult!,
        if (exposedHighValueResourcesCount != null)
          'exposedHighValueResourcesCount': exposedHighValueResourcesCount!,
        if (exposedLowValueResourcesCount != null)
          'exposedLowValueResourcesCount': exposedLowValueResourcesCount!,
        if (exposedMediumValueResourcesCount != null)
          'exposedMediumValueResourcesCount': exposedMediumValueResourcesCount!,
        if (latestCalculationTime != null)
          'latestCalculationTime': latestCalculationTime!,
        if (score != null) 'score': score!,
        if (state != null) 'state': state!,
      };
}

/// A path that an attacker could take to reach an exposed resource.
class AttackPath {
  /// A list of the edges between nodes in this attack path.
  core.List<AttackPathEdge>? edges;

  /// The attack path name, for example,
  /// `organizations/12/simulation/34/valuedResources/56/attackPaths/78`
  core.String? name;

  /// A list of nodes that exist in this attack path.
  core.List<AttackPathNode>? pathNodes;

  AttackPath({
    this.edges,
    this.name,
    this.pathNodes,
  });

  AttackPath.fromJson(core.Map json_)
      : this(
          edges: (json_['edges'] as core.List?)
              ?.map((value) => AttackPathEdge.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          pathNodes: (json_['pathNodes'] as core.List?)
              ?.map((value) => AttackPathNode.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (edges != null) 'edges': edges!,
        if (name != null) 'name': name!,
        if (pathNodes != null) 'pathNodes': pathNodes!,
      };
}

/// Represents a connection between a source node and a destination node in this
/// attack path.
class AttackPathEdge {
  /// The attack node uuid of the destination node.
  core.String? destination;

  /// The attack node uuid of the source node.
  core.String? source;

  AttackPathEdge({
    this.destination,
    this.source,
  });

  AttackPathEdge.fromJson(core.Map json_)
      : this(
          destination: json_['destination'] as core.String?,
          source: json_['source'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destination != null) 'destination': destination!,
        if (source != null) 'source': source!,
      };
}

/// Represents one point that an attacker passes through in this attack path.
class AttackPathNode {
  /// The findings associated with this node in the attack path.
  core.List<PathNodeAssociatedFinding>? associatedFindings;

  /// A list of attack step nodes that exist in this attack path node.
  core.List<AttackStepNode>? attackSteps;

  /// Human-readable name of this resource.
  core.String? displayName;

  /// The name of the resource at this point in the attack path.
  ///
  /// The format of the name follows the Cloud Asset Inventory
  /// [resource name format](https://cloud.google.com/asset-inventory/docs/resource-name-format)
  core.String? resource;

  /// The
  /// [supported resource type](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  core.String? resourceType;

  /// Unique id of the attack path node.
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
              ?.map((value) => PathNodeAssociatedFinding.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          attackSteps: (json_['attackSteps'] as core.List?)
              ?.map((value) => AttackStepNode.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          displayName: json_['displayName'] as core.String?,
          resource: json_['resource'] as core.String?,
          resourceType: json_['resourceType'] as core.String?,
          uuid: json_['uuid'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (associatedFindings != null)
          'associatedFindings': associatedFindings!,
        if (attackSteps != null) 'attackSteps': attackSteps!,
        if (displayName != null) 'displayName': displayName!,
        if (resource != null) 'resource': resource!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (uuid != null) 'uuid': uuid!,
      };
}

/// Detailed steps the attack can take between path nodes.
class AttackStepNode {
  /// Attack step description
  core.String? description;

  /// User friendly name of the attack step
  core.String? displayName;

  /// Attack step labels for metadata
  core.Map<core.String, core.String>? labels;

  /// Attack step type.
  ///
  /// Can be either AND, OR or DEFENSE
  /// Possible string values are:
  /// - "NODE_TYPE_UNSPECIFIED" : Type not specified
  /// - "NODE_TYPE_AND" : Incoming edge joined with AND
  /// - "NODE_TYPE_OR" : Incoming edge joined with OR
  /// - "NODE_TYPE_DEFENSE" : Incoming edge is defense
  /// - "NODE_TYPE_ATTACKER" : Incoming edge is attacker
  core.String? type;

  /// Unique ID for one Node
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
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          type: json_['type'] as core.String?,
          uuid: json_['uuid'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (type != null) 'type': type!,
        if (uuid != null) 'uuid': uuid!,
      };
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
          auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
              ?.map((value) => AuditLogConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          service: json_['service'] as core.String?,
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

/// An AWS account that is a member of an organization.
class AwsAccount {
  /// The unique identifier (ID) of the account, containing exactly 12 digits.
  core.String? id;

  /// The friendly name of this account.
  core.String? name;

  AwsAccount({
    this.id,
    this.name,
  });

  AwsAccount.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// AWS metadata associated with the resource, only applicable if the finding's
/// cloud provider is Amazon Web Services.
class AwsMetadata {
  /// The AWS account associated with the resource.
  AwsAccount? account;

  /// The AWS organization associated with the resource.
  AwsOrganization? organization;

  /// A list of AWS organizational units associated with the resource, ordered
  /// from lowest level (closest to the account) to highest level.
  core.List<AwsOrganizationalUnit>? organizationalUnits;

  AwsMetadata({
    this.account,
    this.organization,
    this.organizationalUnits,
  });

  AwsMetadata.fromJson(core.Map json_)
      : this(
          account: json_.containsKey('account')
              ? AwsAccount.fromJson(
                  json_['account'] as core.Map<core.String, core.dynamic>)
              : null,
          organization: json_.containsKey('organization')
              ? AwsOrganization.fromJson(
                  json_['organization'] as core.Map<core.String, core.dynamic>)
              : null,
          organizationalUnits: (json_['organizationalUnits'] as core.List?)
              ?.map((value) => AwsOrganizationalUnit.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (organization != null) 'organization': organization!,
        if (organizationalUnits != null)
          'organizationalUnits': organizationalUnits!,
      };
}

/// An organization is a collection of accounts that are centrally managed
/// together using consolidated billing, organized hierarchically with
/// organizational units (OUs), and controlled with policies.
class AwsOrganization {
  /// The unique identifier (ID) for the organization.
  ///
  /// The regex pattern for an organization ID string requires "o-" followed by
  /// from 10 to 32 lowercase letters or digits.
  core.String? id;

  AwsOrganization({
    this.id,
  });

  AwsOrganization.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// An Organizational Unit (OU) is a container of AWS accounts within a root of
/// an organization.
///
/// Policies that are attached to an OU apply to all accounts contained in that
/// OU and in any child OUs.
class AwsOrganizationalUnit {
  /// The unique identifier (ID) associated with this OU.
  ///
  /// The regex pattern for an organizational unit ID string requires "ou-"
  /// followed by from 4 to 32 lowercase letters or digits (the ID of the root
  /// that contains the OU). This string is followed by a second "-" dash and
  /// from 8 to 32 additional lowercase letters or digits. For example,
  /// "ou-ab12-cd34ef56".
  core.String? id;

  /// The friendly name of the OU.
  core.String? name;

  AwsOrganizationalUnit({
    this.id,
    this.name,
  });

  AwsOrganizationalUnit.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Represents an Azure management group.
class AzureManagementGroup {
  /// The display name of the Azure management group.
  core.String? displayName;

  /// The UUID of the Azure management group, for example,
  /// `20000000-0001-0000-0000-000000000000`.
  core.String? id;

  AzureManagementGroup({
    this.displayName,
    this.id,
  });

  AzureManagementGroup.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          id: json_['id'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// Azure metadata associated with the resource, only applicable if the
/// finding's cloud provider is Microsoft Azure.
class AzureMetadata {
  /// A list of Azure management groups associated with the resource, ordered
  /// from lowest level (closest to the subscription) to highest level.
  core.List<AzureManagementGroup>? managementGroups;

  /// The Azure resource group associated with the resource.
  AzureResourceGroup? resourceGroup;

  /// The Azure subscription associated with the resource.
  AzureSubscription? subscription;

  /// The Azure Entra tenant associated with the resource.
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
              ?.map((value) => AzureManagementGroup.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          resourceGroup: json_.containsKey('resourceGroup')
              ? AzureResourceGroup.fromJson(
                  json_['resourceGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          subscription: json_.containsKey('subscription')
              ? AzureSubscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>)
              : null,
          tenant: json_.containsKey('tenant')
              ? AzureTenant.fromJson(
                  json_['tenant'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (managementGroups != null) 'managementGroups': managementGroups!,
        if (resourceGroup != null) 'resourceGroup': resourceGroup!,
        if (subscription != null) 'subscription': subscription!,
        if (tenant != null) 'tenant': tenant!,
      };
}

/// Represents an Azure resource group.
class AzureResourceGroup {
  /// The ID of the Azure resource group.
  core.String? id;

  /// The name of the Azure resource group.
  ///
  /// This is not a UUID.
  core.String? name;

  AzureResourceGroup({
    this.id,
    this.name,
  });

  AzureResourceGroup.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Represents an Azure subscription.
class AzureSubscription {
  /// The display name of the Azure subscription.
  core.String? displayName;

  /// The UUID of the Azure subscription, for example,
  /// `291bba3f-e0a5-47bc-a099-3bdcb2a50a05`.
  core.String? id;

  AzureSubscription({
    this.displayName,
    this.id,
  });

  AzureSubscription.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          id: json_['id'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// Represents a Microsoft Entra tenant.
class AzureTenant {
  /// The display name of the Azure tenant.
  core.String? displayName;

  /// The ID of the Microsoft Entra tenant, for example,
  /// "a11aaa11-aa11-1aa1-11aa-1aaa11a".
  core.String? id;

  AzureTenant({
    this.displayName,
    this.id,
  });

  AzureTenant.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          id: json_['id'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
      };
}

/// Information related to Google Cloud Backup and DR Service findings.
class BackupDisasterRecovery {
  /// The name of the Backup and DR appliance that captures, moves, and manages
  /// the lifecycle of backup data.
  ///
  /// For example, `backup-server-57137`.
  core.String? appliance;

  /// The names of Backup and DR applications.
  ///
  /// An application is a VM, database, or file system on a managed host
  /// monitored by a backup and recovery appliance. For example,
  /// `centos7-01-vol00`, `centos7-01-vol01`, `centos7-01-vol02`.
  core.List<core.String>? applications;

  /// The timestamp at which the Backup and DR backup was created.
  core.String? backupCreateTime;

  /// The name of a Backup and DR template which comprises one or more backup
  /// policies.
  ///
  /// See the
  /// [Backup and DR documentation](https://cloud.google.com/backup-disaster-recovery/docs/concepts/backup-plan#temp)
  /// for more information. For example, `snap-ov`.
  core.String? backupTemplate;

  /// The backup type of the Backup and DR image.
  ///
  /// For example, `Snapshot`, `Remote Snapshot`, `OnVault`.
  core.String? backupType;

  /// The name of a Backup and DR host, which is managed by the backup and
  /// recovery appliance and known to the management console.
  ///
  /// The host can be of type Generic (for example, Compute Engine, SQL Server,
  /// Oracle DB, SMB file system, etc.), vCenter, or an ESX server. See the
  /// [Backup and DR documentation on hosts](https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-hosts-and-their-applications)
  /// for more information. For example, `centos7-01`.
  core.String? host;

  /// The names of Backup and DR policies that are associated with a template
  /// and that define when to run a backup, how frequently to run a backup, and
  /// how long to retain the backup image.
  ///
  /// For example, `onvaults`.
  core.List<core.String>? policies;

  /// The names of Backup and DR advanced policy options of a policy applying to
  /// an application.
  ///
  /// See the
  /// [Backup and DR documentation on policy options](https://cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings).
  /// For example, `skipofflineappsincongrp, nounmap`.
  core.List<core.String>? policyOptions;

  /// The name of the Backup and DR resource profile that specifies the storage
  /// media for backups of application and VM data.
  ///
  /// See the
  /// [Backup and DR documentation on profiles](https://cloud.google.com/backup-disaster-recovery/docs/concepts/backup-plan#profile).
  /// For example, `GCP`.
  core.String? profile;

  /// The name of the Backup and DR storage pool that the backup and recovery
  /// appliance is storing data in.
  ///
  /// The storage pool could be of type Cloud, Primary, Snapshot, or OnVault.
  /// See the
  /// [Backup and DR documentation on storage pools](https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools).
  /// For example, `DiskPoolOne`.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (appliance != null) 'appliance': appliance!,
        if (applications != null) 'applications': applications!,
        if (backupCreateTime != null) 'backupCreateTime': backupCreateTime!,
        if (backupTemplate != null) 'backupTemplate': backupTemplate!,
        if (backupType != null) 'backupType': backupType!,
        if (host != null) 'host': host!,
        if (policies != null) 'policies': policies!,
        if (policyOptions != null) 'policyOptions': policyOptions!,
        if (profile != null) 'profile': profile!,
        if (storagePool != null) 'storagePool': storagePool!,
      };
}

/// Request message to create multiple resource value configs
class BatchCreateResourceValueConfigsRequest {
  /// The resource value configs to be created.
  ///
  /// Required.
  core.List<CreateResourceValueConfigRequest>? requests;

  BatchCreateResourceValueConfigsRequest({
    this.requests,
  });

  BatchCreateResourceValueConfigsRequest.fromJson(core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) => CreateResourceValueConfigRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for BatchCreateResourceValueConfigs
class BatchCreateResourceValueConfigsResponse {
  /// The resource value configs created
  core.List<GoogleCloudSecuritycenterV1ResourceValueConfig>?
      resourceValueConfigs;

  BatchCreateResourceValueConfigsResponse({
    this.resourceValueConfigs,
  });

  BatchCreateResourceValueConfigsResponse.fromJson(core.Map json_)
      : this(
          resourceValueConfigs: (json_['resourceValueConfigs'] as core.List?)
              ?.map((value) =>
                  GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceValueConfigs != null)
          'resourceValueConfigs': resourceValueConfigs!,
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
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
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
          members: (json_['members'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          role: json_['role'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Request message for bulk findings update.
///
/// Note: 1. If multiple bulk update requests match the same resource, the order
/// in which they get executed is not defined. 2. Once a bulk operation is
/// started, there is no way to stop it.
class BulkMuteFindingsRequest {
  /// Expression that identifies findings that should be updated.
  ///
  /// The expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the corresponding resource. The supported operators are: * `=`
  /// for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`,
  /// meaning substring matching, for strings. The supported value types are: *
  /// string literals in quotes. * integer literals without quotes. * boolean
  /// literals `true` and `false` without quotes.
  core.String? filter;

  /// This can be a mute configuration name or any identifier for mute/unmute of
  /// findings based on the filter.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? muteAnnotation;

  /// All findings matching the given filter will have their mute state set to
  /// this value.
  ///
  /// The default value is `MUTED`. Setting this to `UNDEFINED` will clear the
  /// mute state on all matching findings.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MUTE_STATE_UNSPECIFIED" : Unused.
  /// - "MUTED" : Matching findings will be muted (default).
  /// - "UNDEFINED" : Matching findings will have their mute state cleared.
  core.String? muteState;

  BulkMuteFindingsRequest({
    this.filter,
    this.muteAnnotation,
    this.muteState,
  });

  BulkMuteFindingsRequest.fromJson(core.Map json_)
      : this(
          filter: json_['filter'] as core.String?,
          muteAnnotation: json_['muteAnnotation'] as core.String?,
          muteState: json_['muteState'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (muteAnnotation != null) 'muteAnnotation': muteAnnotation!,
        if (muteState != null) 'muteState': muteState!,
      };
}

/// Fields related to Google Cloud Armor findings.
class CloudArmor {
  /// Information about potential Layer 7 DDoS attacks identified by
  /// [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview).
  AdaptiveProtection? adaptiveProtection;

  /// Information about DDoS attack volume and classification.
  Attack? attack;

  /// Duration of attack from the start until the current moment (updated every
  /// 5 minutes).
  core.String? duration;

  /// Information about incoming requests evaluated by
  /// [Google Cloud Armor security policies](https://cloud.google.com/armor/docs/security-policy-overview).
  Requests? requests;

  /// Information about the
  /// [Google Cloud Armor security policy](https://cloud.google.com/armor/docs/security-policy-overview)
  /// relevant to the finding.
  SecurityPolicy? securityPolicy;

  /// Distinguish between volumetric & protocol DDoS attack and application
  /// layer attacks.
  ///
  /// For example, "L3_4" for Layer 3 and Layer 4 DDoS attacks, or "L_7" for
  /// Layer 7 DDoS attacks.
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
              ? AdaptiveProtection.fromJson(json_['adaptiveProtection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          attack: json_.containsKey('attack')
              ? Attack.fromJson(
                  json_['attack'] as core.Map<core.String, core.dynamic>)
              : null,
          duration: json_['duration'] as core.String?,
          requests: json_.containsKey('requests')
              ? Requests.fromJson(
                  json_['requests'] as core.Map<core.String, core.dynamic>)
              : null,
          securityPolicy: json_.containsKey('securityPolicy')
              ? SecurityPolicy.fromJson(json_['securityPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          threatVector: json_['threatVector'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adaptiveProtection != null)
          'adaptiveProtection': adaptiveProtection!,
        if (attack != null) 'attack': attack!,
        if (duration != null) 'duration': duration!,
        if (requests != null) 'requests': requests!,
        if (securityPolicy != null) 'securityPolicy': securityPolicy!,
        if (threatVector != null) 'threatVector': threatVector!,
      };
}

/// The [data profile](https://cloud.google.com/dlp/docs/data-profiles)
/// associated with the finding.
class CloudDlpDataProfile {
  /// Name of the data profile, for example,
  /// `projects/123/locations/europe/tableProfiles/8383929`.
  core.String? dataProfile;

  /// The resource hierarchy level at which the data profile was generated.
  /// Possible string values are:
  /// - "PARENT_TYPE_UNSPECIFIED" : Unspecified parent type.
  /// - "ORGANIZATION" : Organization-level configurations.
  /// - "PROJECT" : Project-level configurations.
  core.String? parentType;

  CloudDlpDataProfile({
    this.dataProfile,
    this.parentType,
  });

  CloudDlpDataProfile.fromJson(core.Map json_)
      : this(
          dataProfile: json_['dataProfile'] as core.String?,
          parentType: json_['parentType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataProfile != null) 'dataProfile': dataProfile!,
        if (parentType != null) 'parentType': parentType!,
      };
}

/// Details about the Cloud Data Loss Prevention (Cloud DLP)
/// [inspection job](https://cloud.google.com/dlp/docs/concepts-job-triggers)
/// that produced the finding.
class CloudDlpInspection {
  /// Whether Cloud DLP scanned the complete resource or a sampled subset.
  core.bool? fullScan;

  /// The type of information (or
  /// *[infoType](https://cloud.google.com/dlp/docs/infotypes-reference)*)
  /// found, for example, `EMAIL_ADDRESS` or `STREET_ADDRESS`.
  core.String? infoType;

  /// The number of times Cloud DLP found this infoType within this job and
  /// resource.
  core.String? infoTypeCount;

  /// Name of the inspection job, for example,
  /// `projects/123/locations/europe/dlpJobs/i-8383929`.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullScan != null) 'fullScan': fullScan!,
        if (infoType != null) 'infoType': infoType!,
        if (infoTypeCount != null) 'infoTypeCount': infoTypeCount!,
        if (inspectJob != null) 'inspectJob': inspectJob!,
      };
}

/// Metadata taken from a
/// [Cloud Logging LogEntry](https://cloud.google.com/logging/docs/reference/v2/rest/v2/LogEntry)
class CloudLoggingEntry {
  /// A unique identifier for the log entry.
  core.String? insertId;

  /// The type of the log (part of `log_name`.
  ///
  /// `log_name` is the resource name of the log to which this log entry
  /// belongs). For example: `cloudresourcemanager.googleapis.com/activity`.
  /// Note that this field is not URL-encoded, unlike the `LOG_ID` field in
  /// `LogEntry`.
  core.String? logId;

  /// The organization, folder, or project of the monitored resource that
  /// produced this log entry.
  core.String? resourceContainer;

  /// The time the event described by the log entry occurred.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertId != null) 'insertId': insertId!,
        if (logId != null) 'logId': logId!,
        if (resourceContainer != null) 'resourceContainer': resourceContainer!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// Contains compliance information about a security standard indicating unmet
/// recommendations.
class Compliance {
  /// Policies within the standard or benchmark, for example, A.12.4.1
  core.List<core.String>? ids;

  /// Industry-wide compliance standards or benchmarks, such as CIS, PCI, and
  /// OWASP.
  core.String? standard;

  /// Version of the standard or benchmark, for example, 1.1
  core.String? version;

  Compliance({
    this.ids,
    this.standard,
    this.version,
  });

  Compliance.fromJson(core.Map json_)
      : this(
          ids: (json_['ids'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          standard: json_['standard'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ids != null) 'ids': ids!,
        if (standard != null) 'standard': standard!,
        if (version != null) 'version': version!,
      };
}

/// Contains information about the IP connection associated with the finding.
class Connection {
  /// Destination IP address.
  ///
  /// Not present for sockets that are listening and not connected.
  core.String? destinationIp;

  /// Destination port.
  ///
  /// Not present for sockets that are listening and not connected.
  core.int? destinationPort;

  /// IANA Internet Protocol Number such as TCP(6) and UDP(17).
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Unspecified protocol (not HOPOPT).
  /// - "ICMP" : Internet Control Message Protocol.
  /// - "TCP" : Transmission Control Protocol.
  /// - "UDP" : User Datagram Protocol.
  /// - "GRE" : Generic Routing Encapsulation.
  /// - "ESP" : Encap Security Payload.
  core.String? protocol;

  /// Source IP address.
  core.String? sourceIp;

  /// Source port.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationIp != null) 'destinationIp': destinationIp!,
        if (destinationPort != null) 'destinationPort': destinationPort!,
        if (protocol != null) 'protocol': protocol!,
        if (sourceIp != null) 'sourceIp': sourceIp!,
        if (sourcePort != null) 'sourcePort': sourcePort!,
      };
}

/// The email address of a contact.
class Contact {
  /// An email address.
  ///
  /// For example, "`person123@company.com`".
  core.String? email;

  Contact({
    this.email,
  });

  Contact.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}

/// Details about specific contacts
class ContactDetails {
  /// A list of contacts
  core.List<Contact>? contacts;

  ContactDetails({
    this.contacts,
  });

  ContactDetails.fromJson(core.Map json_)
      : this(
          contacts: (json_['contacts'] as core.List?)
              ?.map((value) => Contact.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null) 'contacts': contacts!,
      };
}

/// Container associated with the finding.
class Container {
  /// The time that the container was created.
  core.String? createTime;

  /// Optional container image ID, if provided by the container runtime.
  ///
  /// Uniquely identifies the container image launched using a container image
  /// digest.
  core.String? imageId;

  /// Container labels, as provided by the container runtime.
  core.List<Label>? labels;

  /// Name of the container.
  core.String? name;

  /// Container image URI provided when configuring a pod or container.
  ///
  /// This string can identify a container image version using mutable tags.
  core.String? uri;

  Container({
    this.createTime,
    this.imageId,
    this.labels,
    this.name,
    this.uri,
  });

  Container.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          imageId: json_['imageId'] as core.String?,
          labels: (json_['labels'] as core.List?)
              ?.map((value) =>
                  Label.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (imageId != null) 'imageId': imageId!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (uri != null) 'uri': uri!,
      };
}

/// Request message to create single resource value config
class CreateResourceValueConfigRequest {
  /// Resource name of the new ResourceValueConfig's parent.
  ///
  /// Required.
  core.String? parent;

  /// The resource value config being created.
  ///
  /// Required.
  GoogleCloudSecuritycenterV1ResourceValueConfig? resourceValueConfig;

  CreateResourceValueConfigRequest({
    this.parent,
    this.resourceValueConfig,
  });

  CreateResourceValueConfigRequest.fromJson(core.Map json_)
      : this(
          parent: json_['parent'] as core.String?,
          resourceValueConfig: json_.containsKey('resourceValueConfig')
              ? GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
                  json_['resourceValueConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (resourceValueConfig != null)
          'resourceValueConfig': resourceValueConfig!,
      };
}

/// An error encountered while validating the uploaded configuration of an Event
/// Threat Detection Custom Module.
class CustomModuleValidationError {
  /// A description of the error, suitable for human consumption.
  ///
  /// Required.
  core.String? description;

  /// The end position of the error in the uploaded text version of the module.
  ///
  /// This field may be omitted if no specific position applies, or if one could
  /// not be computed..
  Position? end;

  /// The path, in RFC 8901 JSON Pointer format, to the field that failed
  /// validation.
  ///
  /// This may be left empty if no specific field is affected.
  core.String? fieldPath;

  /// The initial position of the error in the uploaded text version of the
  /// module.
  ///
  /// This field may be omitted if no specific position applies, or if one could
  /// not be computed.
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
                  json_['end'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldPath: json_['fieldPath'] as core.String?,
          start: json_.containsKey('start')
              ? Position.fromJson(
                  json_['start'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (end != null) 'end': end!,
        if (fieldPath != null) 'fieldPath': fieldPath!,
        if (start != null) 'start': start!,
      };
}

/// A list of zero or more errors encountered while validating the uploaded
/// configuration of an Event Threat Detection Custom Module.
class CustomModuleValidationErrors {
  core.List<CustomModuleValidationError>? errors;

  CustomModuleValidationErrors({
    this.errors,
  });

  CustomModuleValidationErrors.fromJson(core.Map json_)
      : this(
          errors: (json_['errors'] as core.List?)
              ?.map((value) => CustomModuleValidationError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

/// CVE stands for Common Vulnerabilities and Exposures.
///
/// Information from the
/// [CVE record](https://www.cve.org/ResourcesSupport/Glossary) that describes
/// this vulnerability.
class Cve {
  /// Describe Common Vulnerability Scoring System specified at
  /// https://www.first.org/cvss/v3.1/specification-document
  Cvssv3? cvssv3;

  /// Date the first publicly available exploit or PoC was released.
  core.String? exploitReleaseDate;

  /// The exploitation activity of the vulnerability in the wild.
  /// Possible string values are:
  /// - "EXPLOITATION_ACTIVITY_UNSPECIFIED" : Invalid or empty value.
  /// - "WIDE" : Exploitation has been reported or confirmed to widely occur.
  /// - "CONFIRMED" : Limited reported or confirmed exploitation activities.
  /// - "AVAILABLE" : Exploit is publicly available.
  /// - "ANTICIPATED" : No known exploitation activity, but has a high potential
  /// for exploitation.
  /// - "NO_KNOWN" : No known exploitation activity.
  core.String? exploitationActivity;

  /// Date of the earliest known exploitation.
  core.String? firstExploitationDate;

  /// The unique identifier for the vulnerability.
  ///
  /// e.g. CVE-2021-34527
  core.String? id;

  /// The potential impact of the vulnerability if it was to be exploited.
  /// Possible string values are:
  /// - "RISK_RATING_UNSPECIFIED" : Invalid or empty value.
  /// - "LOW" : Exploitation would have little to no security impact.
  /// - "MEDIUM" : Exploitation would enable attackers to perform activities, or
  /// could allow attackers to have a direct impact, but would require
  /// additional steps.
  /// - "HIGH" : Exploitation would enable attackers to have a notable direct
  /// impact without needing to overcome any major mitigating factors.
  /// - "CRITICAL" : Exploitation would fundamentally undermine the security of
  /// affected systems, enable actors to perform significant attacks with
  /// minimal effort, with little to no mitigating factors to overcome.
  core.String? impact;

  /// Whether or not the vulnerability has been observed in the wild.
  core.bool? observedInTheWild;

  /// Additional information about the CVE.
  ///
  /// e.g. https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-34527
  core.List<Reference>? references;

  /// Whether upstream fix is available for the CVE.
  core.bool? upstreamFixAvailable;

  /// Whether or not the vulnerability was zero day when the finding was
  /// published.
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
                  json_['cvssv3'] as core.Map<core.String, core.dynamic>)
              : null,
          exploitReleaseDate: json_['exploitReleaseDate'] as core.String?,
          exploitationActivity: json_['exploitationActivity'] as core.String?,
          firstExploitationDate: json_['firstExploitationDate'] as core.String?,
          id: json_['id'] as core.String?,
          impact: json_['impact'] as core.String?,
          observedInTheWild: json_['observedInTheWild'] as core.bool?,
          references: (json_['references'] as core.List?)
              ?.map((value) => Reference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          upstreamFixAvailable: json_['upstreamFixAvailable'] as core.bool?,
          zeroDay: json_['zeroDay'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cvssv3 != null) 'cvssv3': cvssv3!,
        if (exploitReleaseDate != null)
          'exploitReleaseDate': exploitReleaseDate!,
        if (exploitationActivity != null)
          'exploitationActivity': exploitationActivity!,
        if (firstExploitationDate != null)
          'firstExploitationDate': firstExploitationDate!,
        if (id != null) 'id': id!,
        if (impact != null) 'impact': impact!,
        if (observedInTheWild != null) 'observedInTheWild': observedInTheWild!,
        if (references != null) 'references': references!,
        if (upstreamFixAvailable != null)
          'upstreamFixAvailable': upstreamFixAvailable!,
        if (zeroDay != null) 'zeroDay': zeroDay!,
      };
}

/// Common Vulnerability Scoring System version 3.
class Cvssv3 {
  /// This metric describes the conditions beyond the attacker's control that
  /// must exist in order to exploit the vulnerability.
  /// Possible string values are:
  /// - "ATTACK_COMPLEXITY_UNSPECIFIED" : Invalid value.
  /// - "ATTACK_COMPLEXITY_LOW" : Specialized access conditions or extenuating
  /// circumstances do not exist. An attacker can expect repeatable success when
  /// attacking the vulnerable component.
  /// - "ATTACK_COMPLEXITY_HIGH" : A successful attack depends on conditions
  /// beyond the attacker's control. That is, a successful attack cannot be
  /// accomplished at will, but requires the attacker to invest in some
  /// measurable amount of effort in preparation or execution against the
  /// vulnerable component before a successful attack can be expected.
  core.String? attackComplexity;

  /// Base Metrics Represents the intrinsic characteristics of a vulnerability
  /// that are constant over time and across user environments.
  ///
  /// This metric reflects the context by which vulnerability exploitation is
  /// possible.
  /// Possible string values are:
  /// - "ATTACK_VECTOR_UNSPECIFIED" : Invalid value.
  /// - "ATTACK_VECTOR_NETWORK" : The vulnerable component is bound to the
  /// network stack and the set of possible attackers extends beyond the other
  /// options listed below, up to and including the entire Internet.
  /// - "ATTACK_VECTOR_ADJACENT" : The vulnerable component is bound to the
  /// network stack, but the attack is limited at the protocol level to a
  /// logically adjacent topology.
  /// - "ATTACK_VECTOR_LOCAL" : The vulnerable component is not bound to the
  /// network stack and the attacker's path is via read/write/execute
  /// capabilities.
  /// - "ATTACK_VECTOR_PHYSICAL" : The attack requires the attacker to
  /// physically touch or manipulate the vulnerable component.
  core.String? attackVector;

  /// This metric measures the impact to the availability of the impacted
  /// component resulting from a successfully exploited vulnerability.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Invalid value.
  /// - "IMPACT_HIGH" : High impact.
  /// - "IMPACT_LOW" : Low impact.
  /// - "IMPACT_NONE" : No impact.
  core.String? availabilityImpact;

  /// The base score is a function of the base metric scores.
  core.double? baseScore;

  /// This metric measures the impact to the confidentiality of the information
  /// resources managed by a software component due to a successfully exploited
  /// vulnerability.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Invalid value.
  /// - "IMPACT_HIGH" : High impact.
  /// - "IMPACT_LOW" : Low impact.
  /// - "IMPACT_NONE" : No impact.
  core.String? confidentialityImpact;

  /// This metric measures the impact to integrity of a successfully exploited
  /// vulnerability.
  /// Possible string values are:
  /// - "IMPACT_UNSPECIFIED" : Invalid value.
  /// - "IMPACT_HIGH" : High impact.
  /// - "IMPACT_LOW" : Low impact.
  /// - "IMPACT_NONE" : No impact.
  core.String? integrityImpact;

  /// This metric describes the level of privileges an attacker must possess
  /// before successfully exploiting the vulnerability.
  /// Possible string values are:
  /// - "PRIVILEGES_REQUIRED_UNSPECIFIED" : Invalid value.
  /// - "PRIVILEGES_REQUIRED_NONE" : The attacker is unauthorized prior to
  /// attack, and therefore does not require any access to settings or files of
  /// the vulnerable system to carry out an attack.
  /// - "PRIVILEGES_REQUIRED_LOW" : The attacker requires privileges that
  /// provide basic user capabilities that could normally affect only settings
  /// and files owned by a user. Alternatively, an attacker with Low privileges
  /// has the ability to access only non-sensitive resources.
  /// - "PRIVILEGES_REQUIRED_HIGH" : The attacker requires privileges that
  /// provide significant (e.g., administrative) control over the vulnerable
  /// component allowing access to component-wide settings and files.
  core.String? privilegesRequired;

  /// The Scope metric captures whether a vulnerability in one vulnerable
  /// component impacts resources in components beyond its security scope.
  /// Possible string values are:
  /// - "SCOPE_UNSPECIFIED" : Invalid value.
  /// - "SCOPE_UNCHANGED" : An exploited vulnerability can only affect resources
  /// managed by the same security authority.
  /// - "SCOPE_CHANGED" : An exploited vulnerability can affect resources beyond
  /// the security scope managed by the security authority of the vulnerable
  /// component.
  core.String? scope;

  /// This metric captures the requirement for a human user, other than the
  /// attacker, to participate in the successful compromise of the vulnerable
  /// component.
  /// Possible string values are:
  /// - "USER_INTERACTION_UNSPECIFIED" : Invalid value.
  /// - "USER_INTERACTION_NONE" : The vulnerable system can be exploited without
  /// interaction from any user.
  /// - "USER_INTERACTION_REQUIRED" : Successful exploitation of this
  /// vulnerability requires a user to take some action before the vulnerability
  /// can be exploited.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackComplexity != null) 'attackComplexity': attackComplexity!,
        if (attackVector != null) 'attackVector': attackVector!,
        if (availabilityImpact != null)
          'availabilityImpact': availabilityImpact!,
        if (baseScore != null) 'baseScore': baseScore!,
        if (confidentialityImpact != null)
          'confidentialityImpact': confidentialityImpact!,
        if (integrityImpact != null) 'integrityImpact': integrityImpact!,
        if (privilegesRequired != null)
          'privilegesRequired': privilegesRequired!,
        if (scope != null) 'scope': scope!,
        if (userInteraction != null) 'userInteraction': userInteraction!,
      };
}

/// Details about a data access attempt made by a principal not authorized under
/// applicable data security policy.
class DataAccessEvent {
  /// Unique identifier for data access event.
  core.String? eventId;

  /// Timestamp of data access event.
  core.String? eventTime;

  /// The operation performed by the principal to access the data.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : The operation is unspecified.
  /// - "READ" : Represents a read operation.
  /// - "MOVE" : Represents a move operation.
  /// - "COPY" : Represents a copy operation.
  core.String? operation;

  /// The email address of the principal that accessed the data.
  ///
  /// The principal could be a user account, service account, Google group, or
  /// other.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventId != null) 'eventId': eventId!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (operation != null) 'operation': operation!,
        if (principalEmail != null) 'principalEmail': principalEmail!,
      };
}

/// Details about a data flow event, in which either the data is moved to or is
/// accessed from a non-compliant geo-location, as defined in the applicable
/// data security policy.
class DataFlowEvent {
  /// Unique identifier for data flow event.
  core.String? eventId;

  /// Timestamp of data flow event.
  core.String? eventTime;

  /// The operation performed by the principal for the data flow event.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : The operation is unspecified.
  /// - "READ" : Represents a read operation.
  /// - "MOVE" : Represents a move operation.
  /// - "COPY" : Represents a copy operation.
  core.String? operation;

  /// The email address of the principal that initiated the data flow event.
  ///
  /// The principal could be a user account, service account, Google group, or
  /// other.
  core.String? principalEmail;

  /// Non-compliant location of the principal or the data destination.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventId != null) 'eventId': eventId!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (operation != null) 'operation': operation!,
        if (principalEmail != null) 'principalEmail': principalEmail!,
        if (violatedLocation != null) 'violatedLocation': violatedLocation!,
      };
}

/// Represents database access information, such as queries.
///
/// A database may be a sub-resource of an instance (as in the case of Cloud SQL
/// instances or Cloud Spanner instances), or the database instance itself. Some
/// database resources might not have the
/// [full resource name](https://google.aip.dev/122#full-resource-names)
/// populated because these resource types, such as Cloud SQL databases, are not
/// yet supported by Cloud Asset Inventory. In these cases only the display name
/// is provided.
class Database {
  /// The human-readable name of the database that the user connected to.
  core.String? displayName;

  /// The target usernames, roles, or groups of an SQL privilege grant, which is
  /// not an IAM policy change.
  core.List<core.String>? grantees;

  /// Some database resources may not have the
  /// [full resource name](https://google.aip.dev/122#full-resource-names)
  /// populated because these resource types are not yet supported by Cloud
  /// Asset Inventory (e.g. Cloud SQL databases).
  ///
  /// In these cases only the display name will be provided. The
  /// [full resource name](https://google.aip.dev/122#full-resource-names) of
  /// the database that the user connected to, if it is supported by Cloud Asset
  /// Inventory.
  core.String? name;

  /// The SQL statement that is associated with the database access.
  core.String? query;

  /// The username used to connect to the database.
  ///
  /// The username might not be an IAM principal and does not have a set format.
  core.String? userName;

  /// The version of the database, for example, POSTGRES_14.
  ///
  /// See
  /// [the complete list](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion).
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (grantees != null) 'grantees': grantees!,
        if (name != null) 'name': name!,
        if (query != null) 'query': query!,
        if (userName != null) 'userName': userName!,
        if (version != null) 'version': version!,
      };
}

/// Memory hash detection contributing to the binary family match.
class Detection {
  /// The name of the binary associated with the memory hash signature
  /// detection.
  core.String? binary;

  /// The percentage of memory page hashes in the signature that were matched.
  core.double? percentPagesMatched;

  Detection({
    this.binary,
    this.percentPagesMatched,
  });

  Detection.fromJson(core.Map json_)
      : this(
          binary: json_['binary'] as core.String?,
          percentPagesMatched:
              (json_['percentPagesMatched'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binary != null) 'binary': binary!,
        if (percentPagesMatched != null)
          'percentPagesMatched': percentPagesMatched!,
      };
}

/// Path of the file in terms of underlying disk/partition identifiers.
class DiskPath {
  /// UUID of the partition (format
  /// https://wiki.archlinux.org/title/persistent_block_device_naming#by-uuid)
  core.String? partitionUuid;

  /// Relative path of the file in the partition as a JSON encoded string.
  ///
  /// Example: /home/user1/executable_file.sh
  core.String? relativePath;

  DiskPath({
    this.partitionUuid,
    this.relativePath,
  });

  DiskPath.fromJson(core.Map json_)
      : this(
          partitionUuid: json_['partitionUuid'] as core.String?,
          relativePath: json_['relativePath'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionUuid != null) 'partitionUuid': partitionUuid!,
        if (relativePath != null) 'relativePath': relativePath!,
      };
}

/// The record of a dynamic mute rule that matches the finding.
class DynamicMuteRecord {
  /// When the dynamic mute rule first matched the finding.
  core.String? matchTime;

  /// The relative resource name of the mute rule, represented by a mute config,
  /// that created this record, for example
  /// `organizations/123/muteConfigs/mymuteconfig` or
  /// `organizations/123/locations/global/muteConfigs/mymuteconfig`.
  core.String? muteConfig;

  DynamicMuteRecord({
    this.matchTime,
    this.muteConfig,
  });

  DynamicMuteRecord.fromJson(core.Map json_)
      : this(
          matchTime: json_['matchTime'] as core.String?,
          muteConfig: json_['muteConfig'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchTime != null) 'matchTime': matchTime!,
        if (muteConfig != null) 'muteConfig': muteConfig!,
      };
}

/// An EffectiveEventThreatDetectionCustomModule is the representation of an
/// Event Threat Detection custom module at a specified level of the resource
/// hierarchy: organization, folder, or project.
///
/// If a custom module is inherited from a parent organization or folder, the
/// value of the `enablement_state` property in
/// EffectiveEventThreatDetectionCustomModule is set to the value that is
/// effective in the parent, instead of `INHERITED`. For example, if the module
/// is enabled in a parent organization or folder, the effective
/// `enablement_state` for the module in all child folders or projects is also
/// `enabled`. EffectiveEventThreatDetectionCustomModule is read-only.
class EffectiveEventThreatDetectionCustomModule {
  /// Config for the effective module.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? config;

  /// The description for the module.
  ///
  /// Output only.
  core.String? description;

  /// The human readable name to be displayed for the module.
  ///
  /// Output only.
  core.String? displayName;

  /// The effective state of enablement for the module at the given level of the
  /// hierarchy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Unspecified enablement state.
  /// - "ENABLED" : The module is enabled at the given level.
  /// - "DISABLED" : The module is disabled at the given level.
  core.String? enablementState;

  /// The resource name of the effective ETD custom module.
  ///
  /// Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `folders/{folder}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/effectiveCustomModules/{module}`.
  ///
  /// Output only.
  core.String? name;

  /// Type for the module.
  ///
  /// e.g. CONFIGURABLE_BAD_IP.
  ///
  /// Output only.
  core.String? type;

  EffectiveEventThreatDetectionCustomModule({
    this.config,
    this.description,
    this.displayName,
    this.enablementState,
    this.name,
    this.type,
  });

  EffectiveEventThreatDetectionCustomModule.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? json_['config'] as core.Map<core.String, core.dynamic>
              : null,
          description: json_['description'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          enablementState: json_['enablementState'] as core.String?,
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (enablementState != null) 'enablementState': enablementState!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A name-value pair representing an environment variable used in an operating
/// system process.
class EnvironmentVariable {
  /// Environment variable name as a JSON encoded string.
  core.String? name;

  /// Environment variable value as a JSON encoded string.
  core.String? val;

  EnvironmentVariable({
    this.name,
    this.val,
  });

  EnvironmentVariable.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          val: json_['val'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (val != null) 'val': val!,
      };
}

/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, and last updated time.
///
/// You can create a custom module at the organization, folder, or project
/// level. Custom modules that you create at the organization or folder level
/// are inherited by child folders and projects.
class EventThreatDetectionCustomModule {
  /// The closest ancestor module that this module inherits the enablement state
  /// from.
  ///
  /// The format is the same as the EventThreatDetectionCustomModule resource
  /// name.
  ///
  /// Output only.
  core.String? ancestorModule;

  /// Config for the module.
  ///
  /// For the resident module, its config value is defined at this level. For
  /// the inherited module, its config value is inherited from the ancestor
  /// module.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? config;

  /// The description for the module.
  core.String? description;

  /// The human readable name to be displayed for the module.
  core.String? displayName;

  /// The state of enablement for the module at the given level of the
  /// hierarchy.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Unspecified enablement state.
  /// - "ENABLED" : The module is enabled at the given level.
  /// - "DISABLED" : The module is disabled at the given level.
  /// - "INHERITED" : When the enablement state is inherited.
  core.String? enablementState;

  /// The editor the module was last updated by.
  ///
  /// Output only.
  core.String? lastEditor;

  /// The resource name of the Event Threat Detection custom module.
  ///
  /// Its format is: *
  /// `organizations/{organization}/eventThreatDetectionSettings/customModules/{module}`.
  /// * `folders/{folder}/eventThreatDetectionSettings/customModules/{module}`.
  /// *
  /// `projects/{project}/eventThreatDetectionSettings/customModules/{module}`.
  ///
  /// Immutable.
  core.String? name;

  /// Type for the module.
  ///
  /// e.g. CONFIGURABLE_BAD_IP.
  core.String? type;

  /// The time the module was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  EventThreatDetectionCustomModule({
    this.ancestorModule,
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestorModule != null) 'ancestorModule': ancestorModule!,
        if (config != null) 'config': config!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (enablementState != null) 'enablementState': enablementState!,
        if (lastEditor != null) 'lastEditor': lastEditor!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Resource where data was exfiltrated from or exfiltrated to.
class ExfilResource {
  /// Subcomponents of the asset that was exfiltrated, like URIs used during
  /// exfiltration, table names, databases, and filenames.
  ///
  /// For example, multiple tables might have been exfiltrated from the same
  /// Cloud SQL instance, or multiple files might have been exfiltrated from the
  /// same Cloud Storage bucket.
  core.List<core.String>? components;

  /// The resource's
  /// [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name).
  core.String? name;

  ExfilResource({
    this.components,
    this.name,
  });

  ExfilResource.fromJson(core.Map json_)
      : this(
          components: (json_['components'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (components != null) 'components': components!,
        if (name != null) 'name': name!,
      };
}

/// Exfiltration represents a data exfiltration attempt from one or more sources
/// to one or more targets.
///
/// The `sources` attribute lists the sources of the exfiltrated data. The
/// `targets` attribute lists the destinations the data was copied to.
class Exfiltration {
  /// If there are multiple sources, then the data is considered "joined"
  /// between them.
  ///
  /// For instance, BigQuery can join multiple tables, and each table would be
  /// considered a source.
  core.List<ExfilResource>? sources;

  /// If there are multiple targets, each target would get a complete copy of
  /// the "joined" source data.
  core.List<ExfilResource>? targets;

  /// Total exfiltrated bytes processed for the entire job.
  core.String? totalExfiltratedBytes;

  Exfiltration({
    this.sources,
    this.targets,
    this.totalExfiltratedBytes,
  });

  Exfiltration.fromJson(core.Map json_)
      : this(
          sources: (json_['sources'] as core.List?)
              ?.map((value) => ExfilResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          targets: (json_['targets'] as core.List?)
              ?.map((value) => ExfilResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          totalExfiltratedBytes: json_['totalExfiltratedBytes'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sources != null) 'sources': sources!,
        if (targets != null) 'targets': targets!,
        if (totalExfiltratedBytes != null)
          'totalExfiltratedBytes': totalExfiltratedBytes!,
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

/// File information about the related binary/library used by an executable, or
/// the script used by a script interpreter
class File {
  /// Prefix of the file contents as a JSON-encoded string.
  core.String? contents;

  /// Path of the file in terms of underlying disk/partition identifiers.
  DiskPath? diskPath;

  /// The length in bytes of the file prefix that was hashed.
  ///
  /// If hashed_size == size, any hashes reported represent the entire file.
  core.String? hashedSize;

  /// True when the hash covers only a prefix of the file.
  core.bool? partiallyHashed;

  /// Absolute path of the file as a JSON encoded string.
  core.String? path;

  /// SHA256 hash of the first hashed_size bytes of the file encoded as a hex
  /// string.
  ///
  /// If hashed_size == size, sha256 represents the SHA256 hash of the entire
  /// file.
  core.String? sha256;

  /// Size of the file in bytes.
  core.String? size;

  File({
    this.contents,
    this.diskPath,
    this.hashedSize,
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
                  json_['diskPath'] as core.Map<core.String, core.dynamic>)
              : null,
          hashedSize: json_['hashedSize'] as core.String?,
          partiallyHashed: json_['partiallyHashed'] as core.bool?,
          path: json_['path'] as core.String?,
          sha256: json_['sha256'] as core.String?,
          size: json_['size'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contents != null) 'contents': contents!,
        if (diskPath != null) 'diskPath': diskPath!,
        if (hashedSize != null) 'hashedSize': hashedSize!,
        if (partiallyHashed != null) 'partiallyHashed': partiallyHashed!,
        if (path != null) 'path': path!,
        if (sha256 != null) 'sha256': sha256!,
        if (size != null) 'size': size!,
      };
}

/// Security Command Center finding.
///
/// A finding is a record of assessment data like security, risk, health, or
/// privacy, that is ingested into Security Command Center for presentation,
/// notification, analysis, policy testing, and enforcement. For example, a
/// cross-site scripting (XSS) vulnerability in an App Engine application is a
/// finding.
class Finding {
  /// Access details associated with the finding, such as more information on
  /// the caller, which method was accessed, and from where.
  Access? access;

  /// Represents an application associated with the finding.
  Application? application;

  /// The results of an attack path simulation relevant to this finding.
  AttackExposure? attackExposure;

  /// Fields related to Backup and DR findings.
  BackupDisasterRecovery? backupDisasterRecovery;

  /// The canonical name of the finding.
  ///
  /// It's either
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}",
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}" or
  /// "projects/{project_number}/sources/{source_id}/findings/{finding_id}",
  /// depending on the closest CRM ancestor of the resource associated with the
  /// finding.
  core.String? canonicalName;

  /// The additional taxonomy group within findings from a given source.
  ///
  /// This field is immutable after creation time. Example:
  /// "XSS_FLASH_INJECTION"
  core.String? category;

  /// Fields related to Cloud Armor findings.
  CloudArmor? cloudArmor;

  /// Cloud DLP data profile that is associated with the finding.
  CloudDlpDataProfile? cloudDlpDataProfile;

  /// Cloud Data Loss Prevention (Cloud DLP) inspection results that are
  /// associated with the finding.
  CloudDlpInspection? cloudDlpInspection;

  /// Contains compliance information for security standards associated to the
  /// finding.
  core.List<Compliance>? compliances;

  /// Contains information about the IP connection associated with the finding.
  core.List<Connection>? connections;

  /// Map containing the points of contact for the given finding.
  ///
  /// The key represents the type of contact, while the value contains a list of
  /// all the contacts that pertain. Please refer to:
  /// https://cloud.google.com/resource-manager/docs/managing-notification-contacts#notification-categories
  /// { "security": { "contacts": \[ { "email": "person1@company.com" }, {
  /// "email": "person2@company.com" } \] } }
  ///
  /// Output only.
  core.Map<core.String, ContactDetails>? contacts;

  /// Containers associated with the finding.
  ///
  /// This field provides information for both Kubernetes and non-Kubernetes
  /// containers.
  core.List<Container>? containers;

  /// The time at which the finding was created in Security Command Center.
  core.String? createTime;

  /// Data access events associated with the finding.
  core.List<DataAccessEvent>? dataAccessEvents;

  /// Data flow events associated with the finding.
  core.List<DataFlowEvent>? dataFlowEvents;

  /// Database associated with the finding.
  Database? database;

  /// Contains more details about the finding.
  core.String? description;

  /// The time the finding was first detected.
  ///
  /// If an existing finding is updated, then this is the time the update
  /// occurred. For example, if the finding represents an open firewall, this
  /// property captures the time the detector believes the firewall became open.
  /// The accuracy is determined by the detector. If the finding is later
  /// resolved, then this time reflects when the finding was resolved. This must
  /// not be set to a value greater than the current timestamp.
  core.String? eventTime;

  /// Represents exfiltrations associated with the finding.
  Exfiltration? exfiltration;

  /// Third party SIEM/SOAR fields within SCC, contains external system
  /// information and external system finding fields.
  ///
  /// Output only.
  core.Map<core.String, GoogleCloudSecuritycenterV1ExternalSystem>?
      externalSystems;

  /// The URI that, if available, points to a web page outside of Security
  /// Command Center where additional information about the finding can be
  /// found.
  ///
  /// This field is guaranteed to be either empty or a well formed URL.
  core.String? externalUri;

  /// File associated with the finding.
  core.List<File>? files;

  /// The class of the finding.
  /// Possible string values are:
  /// - "FINDING_CLASS_UNSPECIFIED" : Unspecified finding class.
  /// - "THREAT" : Describes unwanted or malicious activity.
  /// - "VULNERABILITY" : Describes a potential weakness in software that
  /// increases risk to Confidentiality & Integrity & Availability.
  /// - "MISCONFIGURATION" : Describes a potential weakness in cloud
  /// resource/asset configuration that increases risk.
  /// - "OBSERVATION" : Describes a security observation that is for
  /// informational purposes.
  /// - "SCC_ERROR" : Describes an error that prevents some SCC functionality.
  /// - "POSTURE_VIOLATION" : Describes a potential security risk due to a
  /// change in the security posture.
  /// - "TOXIC_COMBINATION" : Describes a group of security issues that, when
  /// the issues occur together, represent a greater risk than when the issues
  /// occur independently. A group of such issues is referred to as a toxic
  /// combination.
  /// - "SENSITIVE_DATA_RISK" : Describes a potential security risk to data
  /// assets that contain sensitive data.
  core.String? findingClass;

  /// Contains details about groups of which this finding is a member.
  ///
  /// A group is a collection of findings that are related in some way. This
  /// field cannot be updated. Its value is ignored in all update requests.
  core.List<GroupMembership>? groupMemberships;

  /// Represents IAM bindings associated with the finding.
  core.List<IamBinding>? iamBindings;

  /// Represents what's commonly known as an *indicator of compromise* (IoC) in
  /// computer forensics.
  ///
  /// This is an artifact observed on a network or in an operating system that,
  /// with high confidence, indicates a computer intrusion. For more
  /// information, see
  /// [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).
  Indicator? indicator;

  /// Signature of the kernel rootkit.
  KernelRootkit? kernelRootkit;

  /// Kubernetes resources associated with the finding.
  Kubernetes? kubernetes;

  /// The load balancers associated with the finding.
  core.List<LoadBalancer>? loadBalancers;

  /// Log entries that are relevant to the finding.
  core.List<LogEntry>? logEntries;

  /// MITRE ATT&CK tactics and techniques related to this finding.
  ///
  /// See: https://attack.mitre.org
  MitreAttack? mitreAttack;

  /// Unique identifier of the module which generated the finding.
  ///
  /// Example:
  /// folders/598186756061/securityHealthAnalyticsSettings/customModules/56799441161885
  core.String? moduleName;

  /// Indicates the mute state of a finding (either muted, unmuted or
  /// undefined).
  ///
  /// Unlike other attributes of a finding, a finding provider shouldn't set the
  /// value of mute.
  /// Possible string values are:
  /// - "MUTE_UNSPECIFIED" : Unspecified.
  /// - "MUTED" : Finding has been muted.
  /// - "UNMUTED" : Finding has been unmuted.
  /// - "UNDEFINED" : Finding has never been muted/unmuted.
  core.String? mute;

  /// The mute information regarding this finding.
  ///
  /// Output only.
  MuteInfo? muteInfo;

  /// Records additional information about the mute operation, for example, the
  /// \[mute configuration\](/security-command-center/docs/how-to-mute-findings)
  /// that muted the finding and the user who muted the finding.
  core.String? muteInitiator;

  /// The most recent time this finding was muted or unmuted.
  ///
  /// Output only.
  core.String? muteUpdateTime;

  /// The
  /// [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name)
  /// of the finding.
  ///
  /// Example:
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}",
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}",
  /// "projects/{project_id}/sources/{source_id}/findings/{finding_id}".
  core.String? name;

  /// Steps to address the finding.
  core.String? nextSteps;

  /// Notebook associated with the finding.
  Notebook? notebook;

  /// Contains information about the org policies associated with the finding.
  core.List<OrgPolicy>? orgPolicies;

  /// The relative resource name of the source the finding belongs to.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// This field is immutable after creation time. For example:
  /// "organizations/{organization_id}/sources/{source_id}"
  core.String? parent;

  /// The human readable display name of the finding source such as "Event
  /// Threat Detection" or "Security Health Analytics".
  ///
  /// Output only.
  core.String? parentDisplayName;

  /// Represents operating system processes associated with the Finding.
  core.List<Process>? processes;

  /// For findings on Google Cloud resources, the full resource name of the
  /// Google Cloud resource this finding is for.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  /// When the finding is for a non-Google Cloud resource, the resourceName can
  /// be a customer or partner defined string. This field is immutable after
  /// creation time.
  core.String? resourceName;

  /// User specified security marks.
  ///
  /// These marks are entirely managed by the user and come from the
  /// SecurityMarks resource that belongs to the finding.
  ///
  /// Output only.
  SecurityMarks? securityMarks;

  /// The security posture associated with the finding.
  SecurityPosture? securityPosture;

  /// The severity of the finding.
  ///
  /// This field is managed by the source that writes the finding.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : This value is used for findings when a source
  /// doesn't write a severity value.
  /// - "CRITICAL" : Vulnerability: A critical vulnerability is easily
  /// discoverable by an external actor, exploitable, and results in the direct
  /// ability to execute arbitrary code, exfiltrate data, and otherwise gain
  /// additional access and privileges to cloud resources and workloads.
  /// Examples include publicly accessible unprotected user data and public SSH
  /// access with weak or no passwords. Threat: Indicates a threat that is able
  /// to access, modify, or delete data or execute unauthorized code within
  /// existing resources.
  /// - "HIGH" : Vulnerability: A high risk vulnerability can be easily
  /// discovered and exploited in combination with other vulnerabilities in
  /// order to gain direct access and the ability to execute arbitrary code,
  /// exfiltrate data, and otherwise gain additional access and privileges to
  /// cloud resources and workloads. An example is a database with weak or no
  /// passwords that is only accessible internally. This database could easily
  /// be compromised by an actor that had access to the internal network.
  /// Threat: Indicates a threat that is able to create new computational
  /// resources in an environment but not able to access data or execute code in
  /// existing resources.
  /// - "MEDIUM" : Vulnerability: A medium risk vulnerability could be used by
  /// an actor to gain access to resources or privileges that enable them to
  /// eventually (through multiple steps or a complex exploit) gain access and
  /// the ability to execute arbitrary code or exfiltrate data. An example is a
  /// service account with access to more projects than it should have. If an
  /// actor gains access to the service account, they could potentially use that
  /// access to manipulate a project the service account was not intended to.
  /// Threat: Indicates a threat that is able to cause operational impact but
  /// may not access data or execute unauthorized code.
  /// - "LOW" : Vulnerability: A low risk vulnerability hampers a security
  /// organization's ability to detect vulnerabilities or active threats in
  /// their deployment, or prevents the root cause investigation of security
  /// issues. An example is monitoring and logs being disabled for resource
  /// configurations and access. Threat: Indicates a threat that has obtained
  /// minimal access to an environment but is not able to access data, execute
  /// code, or create resources.
  core.String? severity;

  /// Source specific properties.
  ///
  /// These properties are managed by the source that writes the finding. The
  /// key names in the source_properties map must be between 1 and 255
  /// characters, and must start with a letter and contain alphanumeric
  /// characters or underscores only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? sourceProperties;

  /// The state of the finding.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : The finding requires attention and has not been addressed
  /// yet.
  /// - "INACTIVE" : The finding has been fixed, triaged as a non-issue or
  /// otherwise addressed and is no longer active.
  core.String? state;

  /// Contains details about a group of security issues that, when the issues
  /// occur together, represent a greater risk than when the issues occur
  /// independently.
  ///
  /// A group of such issues is referred to as a toxic combination. This field
  /// cannot be updated. Its value is ignored in all update requests.
  ToxicCombination? toxicCombination;

  /// Represents vulnerability-specific fields like CVE and CVSS scores.
  ///
  /// CVE stands for Common Vulnerabilities and Exposures
  /// (https://cve.mitre.org/about/)
  Vulnerability? vulnerability;

  Finding({
    this.access,
    this.application,
    this.attackExposure,
    this.backupDisasterRecovery,
    this.canonicalName,
    this.category,
    this.cloudArmor,
    this.cloudDlpDataProfile,
    this.cloudDlpInspection,
    this.compliances,
    this.connections,
    this.contacts,
    this.containers,
    this.createTime,
    this.dataAccessEvents,
    this.dataFlowEvents,
    this.database,
    this.description,
    this.eventTime,
    this.exfiltration,
    this.externalSystems,
    this.externalUri,
    this.files,
    this.findingClass,
    this.groupMemberships,
    this.iamBindings,
    this.indicator,
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
    this.nextSteps,
    this.notebook,
    this.orgPolicies,
    this.parent,
    this.parentDisplayName,
    this.processes,
    this.resourceName,
    this.securityMarks,
    this.securityPosture,
    this.severity,
    this.sourceProperties,
    this.state,
    this.toxicCombination,
    this.vulnerability,
  });

  Finding.fromJson(core.Map json_)
      : this(
          access: json_.containsKey('access')
              ? Access.fromJson(
                  json_['access'] as core.Map<core.String, core.dynamic>)
              : null,
          application: json_.containsKey('application')
              ? Application.fromJson(
                  json_['application'] as core.Map<core.String, core.dynamic>)
              : null,
          attackExposure: json_.containsKey('attackExposure')
              ? AttackExposure.fromJson(json_['attackExposure']
                  as core.Map<core.String, core.dynamic>)
              : null,
          backupDisasterRecovery: json_.containsKey('backupDisasterRecovery')
              ? BackupDisasterRecovery.fromJson(json_['backupDisasterRecovery']
                  as core.Map<core.String, core.dynamic>)
              : null,
          canonicalName: json_['canonicalName'] as core.String?,
          category: json_['category'] as core.String?,
          cloudArmor: json_.containsKey('cloudArmor')
              ? CloudArmor.fromJson(
                  json_['cloudArmor'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudDlpDataProfile: json_.containsKey('cloudDlpDataProfile')
              ? CloudDlpDataProfile.fromJson(json_['cloudDlpDataProfile']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cloudDlpInspection: json_.containsKey('cloudDlpInspection')
              ? CloudDlpInspection.fromJson(json_['cloudDlpInspection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compliances: (json_['compliances'] as core.List?)
              ?.map((value) => Compliance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          connections: (json_['connections'] as core.List?)
              ?.map((value) => Connection.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          contacts:
              (json_['contacts'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              ContactDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          containers: (json_['containers'] as core.List?)
              ?.map((value) => Container.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          createTime: json_['createTime'] as core.String?,
          dataAccessEvents: (json_['dataAccessEvents'] as core.List?)
              ?.map((value) => DataAccessEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dataFlowEvents: (json_['dataFlowEvents'] as core.List?)
              ?.map((value) => DataFlowEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          database: json_.containsKey('database')
              ? Database.fromJson(
                  json_['database'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_['description'] as core.String?,
          eventTime: json_['eventTime'] as core.String?,
          exfiltration: json_.containsKey('exfiltration')
              ? Exfiltration.fromJson(
                  json_['exfiltration'] as core.Map<core.String, core.dynamic>)
              : null,
          externalSystems:
              (json_['externalSystems'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              GoogleCloudSecuritycenterV1ExternalSystem.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          externalUri: json_['externalUri'] as core.String?,
          files: (json_['files'] as core.List?)
              ?.map((value) =>
                  File.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          findingClass: json_['findingClass'] as core.String?,
          groupMemberships: (json_['groupMemberships'] as core.List?)
              ?.map((value) => GroupMembership.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          iamBindings: (json_['iamBindings'] as core.List?)
              ?.map((value) => IamBinding.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          indicator: json_.containsKey('indicator')
              ? Indicator.fromJson(
                  json_['indicator'] as core.Map<core.String, core.dynamic>)
              : null,
          kernelRootkit: json_.containsKey('kernelRootkit')
              ? KernelRootkit.fromJson(
                  json_['kernelRootkit'] as core.Map<core.String, core.dynamic>)
              : null,
          kubernetes: json_.containsKey('kubernetes')
              ? Kubernetes.fromJson(
                  json_['kubernetes'] as core.Map<core.String, core.dynamic>)
              : null,
          loadBalancers: (json_['loadBalancers'] as core.List?)
              ?.map((value) => LoadBalancer.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          logEntries: (json_['logEntries'] as core.List?)
              ?.map((value) => LogEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          mitreAttack: json_.containsKey('mitreAttack')
              ? MitreAttack.fromJson(
                  json_['mitreAttack'] as core.Map<core.String, core.dynamic>)
              : null,
          moduleName: json_['moduleName'] as core.String?,
          mute: json_['mute'] as core.String?,
          muteInfo: json_.containsKey('muteInfo')
              ? MuteInfo.fromJson(
                  json_['muteInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          muteInitiator: json_['muteInitiator'] as core.String?,
          muteUpdateTime: json_['muteUpdateTime'] as core.String?,
          name: json_['name'] as core.String?,
          nextSteps: json_['nextSteps'] as core.String?,
          notebook: json_.containsKey('notebook')
              ? Notebook.fromJson(
                  json_['notebook'] as core.Map<core.String, core.dynamic>)
              : null,
          orgPolicies: (json_['orgPolicies'] as core.List?)
              ?.map((value) => OrgPolicy.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          parent: json_['parent'] as core.String?,
          parentDisplayName: json_['parentDisplayName'] as core.String?,
          processes: (json_['processes'] as core.List?)
              ?.map((value) => Process.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          resourceName: json_['resourceName'] as core.String?,
          securityMarks: json_.containsKey('securityMarks')
              ? SecurityMarks.fromJson(
                  json_['securityMarks'] as core.Map<core.String, core.dynamic>)
              : null,
          securityPosture: json_.containsKey('securityPosture')
              ? SecurityPosture.fromJson(json_['securityPosture']
                  as core.Map<core.String, core.dynamic>)
              : null,
          severity: json_['severity'] as core.String?,
          sourceProperties: json_.containsKey('sourceProperties')
              ? json_['sourceProperties'] as core.Map<core.String, core.dynamic>
              : null,
          state: json_['state'] as core.String?,
          toxicCombination: json_.containsKey('toxicCombination')
              ? ToxicCombination.fromJson(json_['toxicCombination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vulnerability: json_.containsKey('vulnerability')
              ? Vulnerability.fromJson(
                  json_['vulnerability'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (access != null) 'access': access!,
        if (application != null) 'application': application!,
        if (attackExposure != null) 'attackExposure': attackExposure!,
        if (backupDisasterRecovery != null)
          'backupDisasterRecovery': backupDisasterRecovery!,
        if (canonicalName != null) 'canonicalName': canonicalName!,
        if (category != null) 'category': category!,
        if (cloudArmor != null) 'cloudArmor': cloudArmor!,
        if (cloudDlpDataProfile != null)
          'cloudDlpDataProfile': cloudDlpDataProfile!,
        if (cloudDlpInspection != null)
          'cloudDlpInspection': cloudDlpInspection!,
        if (compliances != null) 'compliances': compliances!,
        if (connections != null) 'connections': connections!,
        if (contacts != null) 'contacts': contacts!,
        if (containers != null) 'containers': containers!,
        if (createTime != null) 'createTime': createTime!,
        if (dataAccessEvents != null) 'dataAccessEvents': dataAccessEvents!,
        if (dataFlowEvents != null) 'dataFlowEvents': dataFlowEvents!,
        if (database != null) 'database': database!,
        if (description != null) 'description': description!,
        if (eventTime != null) 'eventTime': eventTime!,
        if (exfiltration != null) 'exfiltration': exfiltration!,
        if (externalSystems != null) 'externalSystems': externalSystems!,
        if (externalUri != null) 'externalUri': externalUri!,
        if (files != null) 'files': files!,
        if (findingClass != null) 'findingClass': findingClass!,
        if (groupMemberships != null) 'groupMemberships': groupMemberships!,
        if (iamBindings != null) 'iamBindings': iamBindings!,
        if (indicator != null) 'indicator': indicator!,
        if (kernelRootkit != null) 'kernelRootkit': kernelRootkit!,
        if (kubernetes != null) 'kubernetes': kubernetes!,
        if (loadBalancers != null) 'loadBalancers': loadBalancers!,
        if (logEntries != null) 'logEntries': logEntries!,
        if (mitreAttack != null) 'mitreAttack': mitreAttack!,
        if (moduleName != null) 'moduleName': moduleName!,
        if (mute != null) 'mute': mute!,
        if (muteInfo != null) 'muteInfo': muteInfo!,
        if (muteInitiator != null) 'muteInitiator': muteInitiator!,
        if (muteUpdateTime != null) 'muteUpdateTime': muteUpdateTime!,
        if (name != null) 'name': name!,
        if (nextSteps != null) 'nextSteps': nextSteps!,
        if (notebook != null) 'notebook': notebook!,
        if (orgPolicies != null) 'orgPolicies': orgPolicies!,
        if (parent != null) 'parent': parent!,
        if (parentDisplayName != null) 'parentDisplayName': parentDisplayName!,
        if (processes != null) 'processes': processes!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (securityMarks != null) 'securityMarks': securityMarks!,
        if (securityPosture != null) 'securityPosture': securityPosture!,
        if (severity != null) 'severity': severity!,
        if (sourceProperties != null) 'sourceProperties': sourceProperties!,
        if (state != null) 'state': state!,
        if (toxicCombination != null) 'toxicCombination': toxicCombination!,
        if (vulnerability != null) 'vulnerability': vulnerability!,
      };
}

/// Message that contains the resource name and display name of a folder
/// resource.
class Folder {
  /// Full resource name of this folder.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? resourceFolder;

  /// The user defined display name for this folder.
  core.String? resourceFolderDisplayName;

  Folder({
    this.resourceFolder,
    this.resourceFolderDisplayName,
  });

  Folder.fromJson(core.Map json_)
      : this(
          resourceFolder: json_['resourceFolder'] as core.String?,
          resourceFolderDisplayName:
              json_['resourceFolderDisplayName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceFolder != null) 'resourceFolder': resourceFolder!,
        if (resourceFolderDisplayName != null)
          'resourceFolderDisplayName': resourceFolderDisplayName!,
      };
}

/// Represents a geographical location for a given access.
class Geolocation {
  /// A CLDR.
  core.String? regionCode;

  Geolocation({
    this.regionCode,
  });

  Geolocation.fromJson(core.Map json_)
      : this(
          regionCode: json_['regionCode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions00;

/// Configures how to deliver Findings to BigQuery Instance.
class GoogleCloudSecuritycenterV1BigQueryExport {
  /// The time at which the BigQuery export was created.
  ///
  /// This field is set by the server and will be ignored if provided on export
  /// on creation.
  ///
  /// Output only.
  core.String? createTime;

  /// The dataset to write findings' updates to.
  ///
  /// Its format is "projects/\[project_id\]/datasets/\[bigquery_dataset_id\]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers
  /// (0-9), or underscores (_).
  core.String? dataset;

  /// The description of the export (max of 1024 characters).
  core.String? description;

  /// Expression that defines the filter to apply across create/update events of
  /// findings.
  ///
  /// The expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the corresponding resource. The supported operators are: * `=`
  /// for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`,
  /// meaning substring matching, for strings. The supported value types are: *
  /// string literals in quotes. * integer literals without quotes. * boolean
  /// literals `true` and `false` without quotes.
  core.String? filter;

  /// Email address of the user who last edited the BigQuery export.
  ///
  /// This field is set by the server and will be ignored if provided on export
  /// creation or update.
  ///
  /// Output only.
  core.String? mostRecentEditor;

  /// The relative resource name of this export.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name.
  /// Example format:
  /// "organizations/{organization_id}/bigQueryExports/{export_id}" Example
  /// format: "folders/{folder_id}/bigQueryExports/{export_id}" Example format:
  /// "projects/{project_id}/bigQueryExports/{export_id}" This field is provided
  /// in responses, and is ignored when provided in create requests.
  core.String? name;

  /// The service account that needs permission to create table and upload data
  /// to the BigQuery dataset.
  ///
  /// Output only.
  core.String? principal;

  /// The most recent time at which the BigQuery export was updated.
  ///
  /// This field is set by the server and will be ignored if provided on export
  /// creation or update.
  ///
  /// Output only.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataset != null) 'dataset': dataset!,
        if (description != null) 'description': description!,
        if (filter != null) 'filter': filter!,
        if (mostRecentEditor != null) 'mostRecentEditor': mostRecentEditor!,
        if (name != null) 'name': name!,
        if (principal != null) 'principal': principal!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Represents a Kubernetes RoleBinding or ClusterRoleBinding.
class GoogleCloudSecuritycenterV1Binding {
  /// Name for the binding.
  core.String? name;

  /// Namespace for the binding.
  core.String? ns;

  /// The Role or ClusterRole referenced by the binding.
  Role? role;

  /// Represents one or more subjects that are bound to the role.
  ///
  /// Not always available for PATCH requests.
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
                  json_['role'] as core.Map<core.String, core.dynamic>)
              : null,
          subjects: (json_['subjects'] as core.List?)
              ?.map((value) => Subject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (ns != null) 'ns': ns!,
        if (role != null) 'role': role!,
        if (subjects != null) 'subjects': subjects!,
      };
}

/// Defines the properties in a custom module configuration for Security Health
/// Analytics.
///
/// Use the custom module configuration to create custom detectors that generate
/// custom findings for resources that you specify.
class GoogleCloudSecuritycenterV1CustomConfig {
  /// Custom output properties.
  GoogleCloudSecuritycenterV1CustomOutputSpec? customOutput;

  /// Text that describes the vulnerability or misconfiguration that the custom
  /// module detects.
  ///
  /// This explanation is returned with each finding instance to help
  /// investigators understand the detected issue. The text must be enclosed in
  /// quotation marks.
  core.String? description;

  /// The CEL expression to evaluate to produce findings.
  ///
  /// When the expression evaluates to true against a resource, a finding is
  /// generated.
  Expr? predicate;

  /// An explanation of the recommended steps that security teams can take to
  /// resolve the detected issue.
  ///
  /// This explanation is returned with each finding generated by this module in
  /// the `nextSteps` property of the finding JSON.
  core.String? recommendation;

  /// The resource types that the custom module operates on.
  ///
  /// Each custom module can specify up to 5 resource types.
  GoogleCloudSecuritycenterV1ResourceSelector? resourceSelector;

  /// The severity to assign to findings generated by the module.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity.
  /// - "CRITICAL" : Critical severity.
  /// - "HIGH" : High severity.
  /// - "MEDIUM" : Medium severity.
  /// - "LOW" : Low severity.
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
                  json_['customOutput'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_['description'] as core.String?,
          predicate: json_.containsKey('predicate')
              ? Expr.fromJson(
                  json_['predicate'] as core.Map<core.String, core.dynamic>)
              : null,
          recommendation: json_['recommendation'] as core.String?,
          resourceSelector: json_.containsKey('resourceSelector')
              ? GoogleCloudSecuritycenterV1ResourceSelector.fromJson(
                  json_['resourceSelector']
                      as core.Map<core.String, core.dynamic>)
              : null,
          severity: json_['severity'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customOutput != null) 'customOutput': customOutput!,
        if (description != null) 'description': description!,
        if (predicate != null) 'predicate': predicate!,
        if (recommendation != null) 'recommendation': recommendation!,
        if (resourceSelector != null) 'resourceSelector': resourceSelector!,
        if (severity != null) 'severity': severity!,
      };
}

/// A set of optional name-value pairs that define custom source properties to
/// return with each finding that is generated by the custom module.
///
/// The custom source properties that are defined here are included in the
/// finding JSON under `sourceProperties`.
class GoogleCloudSecuritycenterV1CustomOutputSpec {
  /// A list of custom output properties to add to the finding.
  core.List<GoogleCloudSecuritycenterV1Property>? properties;

  GoogleCloudSecuritycenterV1CustomOutputSpec({
    this.properties,
  });

  GoogleCloudSecuritycenterV1CustomOutputSpec.fromJson(core.Map json_)
      : this(
          properties: (json_['properties'] as core.List?)
              ?.map((value) => GoogleCloudSecuritycenterV1Property.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
}

/// An EffectiveSecurityHealthAnalyticsCustomModule is the representation of a
/// Security Health Analytics custom module at a specified level of the resource
/// hierarchy: organization, folder, or project.
///
/// If a custom module is inherited from a parent organization or folder, the
/// value of the `enablementState` property in
/// EffectiveSecurityHealthAnalyticsCustomModule is set to the value that is
/// effective in the parent, instead of `INHERITED`. For example, if the module
/// is enabled in a parent organization or folder, the effective
/// enablement_state for the module in all child folders or projects is also
/// `enabled`. EffectiveSecurityHealthAnalyticsCustomModule is read-only.
class GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule {
  /// The user-specified configuration for the module.
  ///
  /// Output only.
  GoogleCloudSecuritycenterV1CustomConfig? customConfig;

  /// The display name for the custom module.
  ///
  /// The name must be between 1 and 128 characters, start with a lowercase
  /// letter, and contain alphanumeric characters or underscores only.
  ///
  /// Output only.
  core.String? displayName;

  /// The effective state of enablement for the module at the given level of the
  /// hierarchy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Unspecified enablement state.
  /// - "ENABLED" : The module is enabled at the given level.
  /// - "DISABLED" : The module is disabled at the given level.
  core.String? enablementState;

  /// The resource name of the custom module.
  ///
  /// Its format is
  /// "organizations/{organization}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}",
  /// or
  /// "folders/{folder}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}",
  /// or
  /// "projects/{project}/securityHealthAnalyticsSettings/effectiveCustomModules/{customModule}"
  ///
  /// Output only.
  core.String? name;

  GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule({
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.name,
  });

  GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule.fromJson(
      core.Map json_)
      : this(
          customConfig: json_.containsKey('customConfig')
              ? GoogleCloudSecuritycenterV1CustomConfig.fromJson(
                  json_['customConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_['displayName'] as core.String?,
          enablementState: json_['enablementState'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customConfig != null) 'customConfig': customConfig!,
        if (displayName != null) 'displayName': displayName!,
        if (enablementState != null) 'enablementState': enablementState!,
        if (name != null) 'name': name!,
      };
}

/// Representation of third party SIEM/SOAR fields within SCC.
class GoogleCloudSecuritycenterV1ExternalSystem {
  /// References primary/secondary etc assignees in the external system.
  core.List<core.String>? assignees;

  /// The time when the case was closed, as reported by the external system.
  core.String? caseCloseTime;

  /// The time when the case was created, as reported by the external system.
  core.String? caseCreateTime;

  /// The priority of the finding's corresponding case in the external system.
  core.String? casePriority;

  /// The SLA of the finding's corresponding case in the external system.
  core.String? caseSla;

  /// The link to the finding's corresponding case in the external system.
  core.String? caseUri;

  /// The time when the case was last updated, as reported by the external
  /// system.
  core.String? externalSystemUpdateTime;

  /// The identifier that's used to track the finding's corresponding case in
  /// the external system.
  core.String? externalUid;

  /// Full resource name of the external system, for example:
  /// "organizations/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "folders/1234/sources/5678/findings/123456/externalSystems/jira",
  /// "projects/1234/sources/5678/findings/123456/externalSystems/jira"
  core.String? name;

  /// The most recent status of the finding's corresponding case, as reported by
  /// the external system.
  core.String? status;

  /// Information about the ticket, if any, that is being used to track the
  /// resolution of the issue that is identified by this finding.
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
                  json_['ticketInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignees != null) 'assignees': assignees!,
        if (caseCloseTime != null) 'caseCloseTime': caseCloseTime!,
        if (caseCreateTime != null) 'caseCreateTime': caseCreateTime!,
        if (casePriority != null) 'casePriority': casePriority!,
        if (caseSla != null) 'caseSla': caseSla!,
        if (caseUri != null) 'caseUri': caseUri!,
        if (externalSystemUpdateTime != null)
          'externalSystemUpdateTime': externalSystemUpdateTime!,
        if (externalUid != null) 'externalUid': externalUid!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (ticketInfo != null) 'ticketInfo': ticketInfo!,
      };
}

/// A mute config is a Cloud SCC resource that contains the configuration to
/// mute create/update events of findings.
class GoogleCloudSecuritycenterV1MuteConfig {
  /// The time at which the mute config was created.
  ///
  /// This field is set by the server and will be ignored if provided on config
  /// creation.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the mute config.
  core.String? description;

  /// The human readable name to be displayed for the mute config.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? displayName;

  /// The expiry of the mute config.
  ///
  /// Only applicable for dynamic configs. If the expiry is set, when the config
  /// expires, it is removed from all findings.
  ///
  /// Optional.
  core.String? expiryTime;

  /// An expression that defines the filter to apply across create/update events
  /// of findings.
  ///
  /// While creating a filter string, be mindful of the scope in which the mute
  /// configuration is being created. E.g., If a filter contains project = X but
  /// is created under the project = Y scope, it might not match any findings.
  /// The following field and operator combinations are supported: * severity:
  /// `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` *
  /// resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:`
  /// * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`,
  /// `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` *
  /// finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` *
  /// indicator.domains: `=`, `:`
  ///
  /// Required.
  core.String? filter;

  /// Email address of the user who last edited the mute config.
  ///
  /// This field is set by the server and will be ignored if provided on config
  /// creation or update.
  ///
  /// Output only.
  core.String? mostRecentEditor;

  /// This field will be ignored if provided on config creation.
  ///
  /// Format `organizations/{organization}/muteConfigs/{mute_config}`
  /// `folders/{folder}/muteConfigs/{mute_config}`
  /// `projects/{project}/muteConfigs/{mute_config}`
  /// `organizations/{organization}/locations/global/muteConfigs/{mute_config}`
  /// `folders/{folder}/locations/global/muteConfigs/{mute_config}`
  /// `projects/{project}/locations/global/muteConfigs/{mute_config}`
  core.String? name;

  /// The type of the mute config, which determines what type of mute state the
  /// config affects.
  ///
  /// The static mute state takes precedence over the dynamic mute state.
  /// Immutable after creation. STATIC by default if not set during creation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MUTE_CONFIG_TYPE_UNSPECIFIED" : Unused.
  /// - "STATIC" : A static mute config, which sets the static mute state of
  /// future matching findings to muted. Once the static mute state has been
  /// set, finding or config modifications will not affect the state.
  /// - "DYNAMIC" : A dynamic mute config, which is applied to existing and
  /// future matching findings, setting their dynamic mute state to "muted". If
  /// the config is updated or deleted, or a matching finding is updated, such
  /// that the finding doesn't match the config, the config will be removed from
  /// the finding, and the finding's dynamic mute state may become "unmuted"
  /// (unless other configs still match).
  core.String? type;

  /// The most recent time at which the mute config was updated.
  ///
  /// This field is set by the server and will be ignored if provided on config
  /// creation or update.
  ///
  /// Output only.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (expiryTime != null) 'expiryTime': expiryTime!,
        if (filter != null) 'filter': filter!,
        if (mostRecentEditor != null) 'mostRecentEditor': mostRecentEditor!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// An individual name-value pair that defines a custom source property.
class GoogleCloudSecuritycenterV1Property {
  /// Name of the property for the custom output.
  core.String? name;

  /// The CEL expression for the custom output.
  ///
  /// A resource property can be specified to return the value of the property
  /// or a text string enclosed in quotation marks.
  Expr? valueExpression;

  GoogleCloudSecuritycenterV1Property({
    this.name,
    this.valueExpression,
  });

  GoogleCloudSecuritycenterV1Property.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          valueExpression: json_.containsKey('valueExpression')
              ? Expr.fromJson(json_['valueExpression']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (valueExpression != null) 'valueExpression': valueExpression!,
      };
}

/// Resource for selecting resource type.
class GoogleCloudSecuritycenterV1ResourceSelector {
  /// The resource types to run the detector on.
  core.List<core.String>? resourceTypes;

  GoogleCloudSecuritycenterV1ResourceSelector({
    this.resourceTypes,
  });

  GoogleCloudSecuritycenterV1ResourceSelector.fromJson(core.Map json_)
      : this(
          resourceTypes: (json_['resourceTypes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceTypes != null) 'resourceTypes': resourceTypes!,
      };
}

/// A resource value configuration (RVC) is a mapping configuration of user's
/// resources to resource values.
///
/// Used in Attack path simulations.
class GoogleCloudSecuritycenterV1ResourceValueConfig {
  /// Cloud provider this configuration applies to
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED" : The cloud provider is unspecified.
  /// - "GOOGLE_CLOUD_PLATFORM" : The cloud provider is Google Cloud Platform.
  /// - "AMAZON_WEB_SERVICES" : The cloud provider is Amazon Web Services.
  /// - "MICROSOFT_AZURE" : The cloud provider is Microsoft Azure.
  core.String? cloudProvider;

  /// Timestamp this resource value configuration was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource value configuration.
  core.String? description;

  /// Name for the resource value configuration
  core.String? name;

  /// List of resource labels to search for, evaluated with `AND`.
  ///
  /// For example, `"resource_labels_selector": {"key": "value", "env": "prod"}`
  /// will match resources with labels "key": "value" `AND` "env": "prod"
  /// https://cloud.google.com/resource-manager/docs/creating-managing-labels
  core.Map<core.String, core.String>? resourceLabelsSelector;

  /// Apply resource_value only to resources that match resource_type.
  ///
  /// resource_type will be checked with `AND` of other resources. For example,
  /// "storage.googleapis.com/Bucket" with resource_value "HIGH" will apply
  /// "HIGH" value only to "storage.googleapis.com/Bucket" resources.
  core.String? resourceType;

  /// Resource value level this expression represents
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED" : Unspecific value
  /// - "HIGH" : High resource value
  /// - "MEDIUM" : Medium resource value
  /// - "LOW" : Low resource value
  /// - "NONE" : No resource value, e.g. ignore these resources
  core.String? resourceValue;

  /// Project or folder to scope this configuration to.
  ///
  /// For example, "project/456" would apply this configuration only to
  /// resources in "project/456" scope will be checked with `AND` of other
  /// resources.
  core.String? scope;

  /// A mapping of the sensitivity on Sensitive Data Protection finding to
  /// resource values.
  ///
  /// This mapping can only be used in combination with a resource_type that is
  /// related to BigQuery, e.g. "bigquery.googleapis.com/Dataset".
  GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping?
      sensitiveDataProtectionMapping;

  /// Tag values combined with `AND` to check against.
  ///
  /// Values in the form "tagValues/123" Example: `[ "tagValues/123",
  /// "tagValues/456", "tagValues/789" ]`
  /// https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
  ///
  /// Required.
  core.List<core.String>? tagValues;

  /// Timestamp this resource value configuration was last updated.
  ///
  /// Output only.
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
          resourceLabelsSelector: (json_['resourceLabelsSelector']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          resourceType: json_['resourceType'] as core.String?,
          resourceValue: json_['resourceValue'] as core.String?,
          scope: json_['scope'] as core.String?,
          sensitiveDataProtectionMapping:
              json_.containsKey('sensitiveDataProtectionMapping')
                  ? GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping
                      .fromJson(json_['sensitiveDataProtectionMapping']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          tagValues: (json_['tagValues'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudProvider != null) 'cloudProvider': cloudProvider!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (resourceLabelsSelector != null)
          'resourceLabelsSelector': resourceLabelsSelector!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (resourceValue != null) 'resourceValue': resourceValue!,
        if (scope != null) 'scope': scope!,
        if (sensitiveDataProtectionMapping != null)
          'sensitiveDataProtectionMapping': sensitiveDataProtectionMapping!,
        if (tagValues != null) 'tagValues': tagValues!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Represents an instance of a Security Health Analytics custom module,
/// including its full module name, display name, enablement state, and last
/// updated time.
///
/// You can create a custom module at the organization, folder, or project
/// level. Custom modules that you create at the organization or folder level
/// are inherited by the child folders and projects.
class GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule {
  /// If empty, indicates that the custom module was created in the
  /// organization, folder, or project in which you are viewing the custom
  /// module.
  ///
  /// Otherwise, `ancestor_module` specifies the organization or folder from
  /// which the custom module is inherited.
  ///
  /// Output only.
  core.String? ancestorModule;

  /// The user specified custom configuration for the module.
  GoogleCloudSecuritycenterV1CustomConfig? customConfig;

  /// The display name of the Security Health Analytics custom module.
  ///
  /// This display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and 128
  /// characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  core.String? displayName;

  /// The enablement state of the custom module.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Unspecified enablement state.
  /// - "ENABLED" : The module is enabled at the given CRM resource.
  /// - "DISABLED" : The module is disabled at the given CRM resource.
  /// - "INHERITED" : State is inherited from an ancestor module. The module
  /// will either be effectively ENABLED or DISABLED based on its closest
  /// non-inherited ancestor module in the CRM hierarchy.
  core.String? enablementState;

  /// The editor that last updated the custom module.
  ///
  /// Output only.
  core.String? lastEditor;

  /// The resource name of the custom module.
  ///
  /// Its format is
  /// "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}",
  /// or
  /// "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}"
  /// The id {customModule} is server-generated and is not user settable. It
  /// will be a numeric id containing 1-20 digits.
  ///
  /// Immutable.
  core.String? name;

  /// The time at which the custom module was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule({
    this.ancestorModule,
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.updateTime,
  });

  GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule.fromJson(
      core.Map json_)
      : this(
          ancestorModule: json_['ancestorModule'] as core.String?,
          customConfig: json_.containsKey('customConfig')
              ? GoogleCloudSecuritycenterV1CustomConfig.fromJson(
                  json_['customConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_['displayName'] as core.String?,
          enablementState: json_['enablementState'] as core.String?,
          lastEditor: json_['lastEditor'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestorModule != null) 'ancestorModule': ancestorModule!,
        if (customConfig != null) 'customConfig': customConfig!,
        if (displayName != null) 'displayName': displayName!,
        if (enablementState != null) 'enablementState': enablementState!,
        if (lastEditor != null) 'lastEditor': lastEditor!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Resource value mapping for Sensitive Data Protection findings.
///
/// If any of these mappings have a resource value that is not unspecified, the
/// resource_value field will be ignored when reading this configuration.
class GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping {
  /// Resource value mapping for high-sensitivity Sensitive Data Protection
  /// findings
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED" : Unspecific value
  /// - "HIGH" : High resource value
  /// - "MEDIUM" : Medium resource value
  /// - "LOW" : Low resource value
  /// - "NONE" : No resource value, e.g. ignore these resources
  core.String? highSensitivityMapping;

  /// Resource value mapping for medium-sensitivity Sensitive Data Protection
  /// findings
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED" : Unspecific value
  /// - "HIGH" : High resource value
  /// - "MEDIUM" : Medium resource value
  /// - "LOW" : Low resource value
  /// - "NONE" : No resource value, e.g. ignore these resources
  core.String? mediumSensitivityMapping;

  GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping({
    this.highSensitivityMapping,
    this.mediumSensitivityMapping,
  });

  GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping.fromJson(
      core.Map json_)
      : this(
          highSensitivityMapping:
              json_['highSensitivityMapping'] as core.String?,
          mediumSensitivityMapping:
              json_['mediumSensitivityMapping'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highSensitivityMapping != null)
          'highSensitivityMapping': highSensitivityMapping!,
        if (mediumSensitivityMapping != null)
          'mediumSensitivityMapping': mediumSensitivityMapping!,
      };
}

/// Request message for grouping by assets.
class GroupAssetsRequest {
  /// When compare_duration is set, the GroupResult's "state_change" property is
  /// updated to indicate whether the asset was added, removed, or remained
  /// present during the compare_duration period of time that precedes the
  /// read_time.
  ///
  /// This is the time between (read_time - compare_duration) and read_time. The
  /// state change value is derived based on the presence of the asset at the
  /// two points in time. Intermediate state changes between the two times don't
  /// affect the result. For example, the results aren't affected if the asset
  /// is removed and re-created again. Possible "state_change" values when
  /// compare_duration is specified: * "ADDED": indicates that the asset was not
  /// present at the start of compare_duration, but present at reference_time. *
  /// "REMOVED": indicates that the asset was present at the start of
  /// compare_duration, but not present at reference_time. * "ACTIVE": indicates
  /// that the asset was present at both the start and the end of the time
  /// period defined by compare_duration and reference_time. If compare_duration
  /// is not specified, then the only possible state_change is "UNUSED", which
  /// will be the state_change set for all assets present at read_time. If this
  /// field is set then `state_change` must be a specified field in `group_by`.
  core.String? compareDuration;

  /// Expression that defines the filter to apply across assets.
  ///
  /// The expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the Asset resource. Examples include: * name *
  /// security_center_properties.resource_name * resource_properties.a_property
  /// * security_marks.marks.marka The supported operators are: * `=` for all
  /// value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning
  /// substring matching, for strings. The supported value types are: * string
  /// literals in quotes. * integer literals without quotes. * boolean literals
  /// `true` and `false` without quotes. The following field and operator
  /// combinations are supported: * name: `=` * update_time: `=`, `>`, `<`,
  /// `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
  /// string. Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time
  /// = 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This
  /// should be milliseconds since epoch or an RFC3339 string. Examples:
  /// `create_time = "2019-06-10T16:07:18-07:00"` `create_time = 1560208038000`
  /// * iam_policy.policy_blob: `=`, `:` * resource_properties: `=`, `:`, `>`,
  /// `<`, `>=`, `<=` * security_marks.marks: `=`, `:` *
  /// security_center_properties.resource_name: `=`, `:` *
  /// security_center_properties.resource_display_name: `=`, `:` *
  /// security_center_properties.resource_type: `=`, `:` *
  /// security_center_properties.resource_parent: `=`, `:` *
  /// security_center_properties.resource_parent_display_name: `=`, `:` *
  /// security_center_properties.resource_project: `=`, `:` *
  /// security_center_properties.resource_project_display_name: `=`, `:` *
  /// security_center_properties.resource_owners: `=`, `:` For example,
  /// `resource_properties.size = 100` is a valid filter string. Use a partial
  /// match on the empty string to filter based on a property existing:
  /// `resource_properties.my_property : ""` Use a negated partial match on the
  /// empty string to filter based on a property not existing:
  /// `-resource_properties.my_property : ""`
  core.String? filter;

  /// Expression that defines what assets fields to use for grouping.
  ///
  /// The string value should follow SQL syntax: comma separated list of fields.
  /// For example:
  /// "security_center_properties.resource_project,security_center_properties.project".
  /// The following fields are supported when compare_duration is not set: *
  /// security_center_properties.resource_project *
  /// security_center_properties.resource_project_display_name *
  /// security_center_properties.resource_type *
  /// security_center_properties.resource_parent *
  /// security_center_properties.resource_parent_display_name The following
  /// fields are supported when compare_duration is set: *
  /// security_center_properties.resource_type *
  /// security_center_properties.resource_project_display_name *
  /// security_center_properties.resource_parent_display_name
  ///
  /// Required.
  core.String? groupBy;

  /// The maximum number of results to return in a single response.
  ///
  /// Default is 10, minimum is 1, maximum is 1000.
  core.int? pageSize;

  /// The value returned by the last `GroupAssetsResponse`; indicates that this
  /// is a continuation of a prior `GroupAssets` call, and that the system
  /// should return the next page of data.
  core.String? pageToken;

  /// Time used as a reference point when filtering assets.
  ///
  /// The filter is limited to assets existing at the supplied time and their
  /// values are those at that specific time. Absence of this field will default
  /// to the API's version of NOW.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (compareDuration != null) 'compareDuration': compareDuration!,
        if (filter != null) 'filter': filter!,
        if (groupBy != null) 'groupBy': groupBy!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (readTime != null) 'readTime': readTime!,
      };
}

/// Response message for grouping by assets.
class GroupAssetsResponse {
  /// Group results.
  ///
  /// There exists an element for each existing unique combination of
  /// property/values. The element contains a count for the number of times
  /// those specific property/values appear.
  core.List<GroupResult>? groupByResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// Time used for executing the groupBy request.
  core.String? readTime;

  /// The total number of results matching the query.
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
              ?.map((value) => GroupResult.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          readTime: json_['readTime'] as core.String?,
          totalSize: json_['totalSize'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupByResults != null) 'groupByResults': groupByResults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (readTime != null) 'readTime': readTime!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Request message for grouping by findings.
class GroupFindingsRequest {
  /// When compare_duration is set, the GroupResult's "state_change" attribute
  /// is updated to indicate whether the finding had its state changed, the
  /// finding's state remained unchanged, or if the finding was added during the
  /// compare_duration period of time that precedes the read_time.
  ///
  /// This is the time between (read_time - compare_duration) and read_time. The
  /// state_change value is derived based on the presence and state of the
  /// finding at the two points in time. Intermediate state changes between the
  /// two times don't affect the result. For example, the results aren't
  /// affected if the finding is made inactive and then active again. Possible
  /// "state_change" values when compare_duration is specified: * "CHANGED":
  /// indicates that the finding was present and matched the given filter at the
  /// start of compare_duration, but changed its state at read_time. *
  /// "UNCHANGED": indicates that the finding was present and matched the given
  /// filter at the start of compare_duration and did not change state at
  /// read_time. * "ADDED": indicates that the finding did not match the given
  /// filter or was not present at the start of compare_duration, but was
  /// present at read_time. * "REMOVED": indicates that the finding was present
  /// and matched the filter at the start of compare_duration, but did not match
  /// the filter at read_time. If compare_duration is not specified, then the
  /// only possible state_change is "UNUSED", which will be the state_change set
  /// for all findings present at read_time. If this field is set then
  /// `state_change` must be a specified field in `group_by`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? compareDuration;

  /// Expression that defines the filter to apply across findings.
  ///
  /// The expression is a list of one or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. Examples include: * name
  /// * source_properties.a_property * security_marks.marks.marka The supported
  /// operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for
  /// integer values. * `:`, meaning substring matching, for strings. The
  /// supported value types are: * string literals in quotes. * integer literals
  /// without quotes. * boolean literals `true` and `false` without quotes. The
  /// following field and operator combinations are supported: * name: `=` *
  /// parent: `=`, `:` * resource_name: `=`, `:` * state: `=`, `:` * category:
  /// `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<`, `>=`, `<=`
  /// Usage: This should be milliseconds since epoch or an RFC3339 string.
  /// Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
  /// 1560208038000` * severity: `=`, `:` * workflow_state: `=`, `:` *
  /// security_marks.marks: `=`, `:` * source_properties: `=`, `:`, `>`, `<`,
  /// `>=`, `<=` For example, `source_properties.size = 100` is a valid filter
  /// string. Use a partial match on the empty string to filter based on a
  /// property existing: `source_properties.my_property : ""` Use a negated
  /// partial match on the empty string to filter based on a property not
  /// existing: `-source_properties.my_property : ""` * resource: *
  /// resource.name: `=`, `:` * resource.parent_name: `=`, `:` *
  /// resource.parent_display_name: `=`, `:` * resource.project_name: `=`, `:` *
  /// resource.project_display_name: `=`, `:` * resource.type: `=`, `:`
  core.String? filter;

  /// Expression that defines what assets fields to use for grouping (including
  /// `state_change`).
  ///
  /// The string value should follow SQL syntax: comma separated list of fields.
  /// For example: "parent,resource_name". The following fields are supported
  /// when compare_duration is set: * state_change
  ///
  /// Required.
  core.String? groupBy;

  /// The maximum number of results to return in a single response.
  ///
  /// Default is 10, minimum is 1, maximum is 1000.
  core.int? pageSize;

  /// The value returned by the last `GroupFindingsResponse`; indicates that
  /// this is a continuation of a prior `GroupFindings` call, and that the
  /// system should return the next page of data.
  core.String? pageToken;

  /// Time used as a reference point when filtering findings.
  ///
  /// The filter is limited to findings existing at the supplied time and their
  /// values are those at that specific time. Absence of this field will default
  /// to the API's version of NOW.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (compareDuration != null) 'compareDuration': compareDuration!,
        if (filter != null) 'filter': filter!,
        if (groupBy != null) 'groupBy': groupBy!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (readTime != null) 'readTime': readTime!,
      };
}

/// Response message for group by findings.
class GroupFindingsResponse {
  /// Group results.
  ///
  /// There exists an element for each existing unique combination of
  /// property/values. The element contains a count for the number of times
  /// those specific property/values appear.
  core.List<GroupResult>? groupByResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// Time used for executing the groupBy request.
  core.String? readTime;

  /// The total number of results matching the query.
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
              ?.map((value) => GroupResult.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          readTime: json_['readTime'] as core.String?,
          totalSize: json_['totalSize'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupByResults != null) 'groupByResults': groupByResults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (readTime != null) 'readTime': readTime!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Contains details about groups of which this finding is a member.
///
/// A group is a collection of findings that are related in some way.
class GroupMembership {
  /// ID of the group.
  core.String? groupId;

  /// Type of group.
  /// Possible string values are:
  /// - "GROUP_TYPE_UNSPECIFIED" : Default value.
  /// - "GROUP_TYPE_TOXIC_COMBINATION" : Group represents a toxic combination.
  core.String? groupType;

  GroupMembership({
    this.groupId,
    this.groupType,
  });

  GroupMembership.fromJson(core.Map json_)
      : this(
          groupId: json_['groupId'] as core.String?,
          groupType: json_['groupType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupId != null) 'groupId': groupId!,
        if (groupType != null) 'groupType': groupType!,
      };
}

/// Result containing the properties and count of a groupBy request.
class GroupResult {
  /// Total count of resources for the given properties.
  core.String? count;

  /// Properties matching the groupBy fields in the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? properties;

  GroupResult({
    this.count,
    this.properties,
  });

  GroupResult.fromJson(core.Map json_)
      : this(
          count: json_['count'] as core.String?,
          properties: json_.containsKey('properties')
              ? json_['properties'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (properties != null) 'properties': properties!,
      };
}

/// Represents a particular IAM binding, which captures a member's role
/// addition, removal, or state.
class IamBinding {
  /// The action that was performed on a Binding.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Unspecified.
  /// - "ADD" : Addition of a Binding.
  /// - "REMOVE" : Removal of a Binding.
  core.String? action;

  /// A single identity requesting access for a Cloud Platform resource, for
  /// example, "foo@google.com".
  core.String? member;

  /// Role that is assigned to "members".
  ///
  /// For example, "roles/viewer", "roles/editor", or "roles/owner".
  core.String? role;

  IamBinding({
    this.action,
    this.member,
    this.role,
  });

  IamBinding.fromJson(core.Map json_)
      : this(
          action: json_['action'] as core.String?,
          member: json_['member'] as core.String?,
          role: json_['role'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (member != null) 'member': member!,
        if (role != null) 'role': role!,
      };
}

/// Cloud IAM Policy information associated with the Google Cloud resource
/// described by the Security Command Center asset.
///
/// This information is managed and defined by the Google Cloud resource and
/// cannot be modified by the user.
class IamPolicy {
  /// The JSON representation of the Policy associated with the asset.
  ///
  /// See https://cloud.google.com/iam/reference/rest/v1/Policy for format
  /// details.
  core.String? policyBlob;

  IamPolicy({
    this.policyBlob,
  });

  IamPolicy.fromJson(core.Map json_)
      : this(
          policyBlob: json_['policyBlob'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyBlob != null) 'policyBlob': policyBlob!,
      };
}

/// Represents what's commonly known as an _indicator of compromise_ (IoC) in
/// computer forensics.
///
/// This is an artifact observed on a network or in an operating system that,
/// with high confidence, indicates a computer intrusion. For more information,
/// see
/// [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).
class Indicator {
  /// List of domains associated to the Finding.
  core.List<core.String>? domains;

  /// The list of IP addresses that are associated with the finding.
  core.List<core.String>? ipAddresses;

  /// The list of matched signatures indicating that the given process is
  /// present in the environment.
  core.List<ProcessSignature>? signatures;

  /// The list of URIs associated to the Findings.
  core.List<core.String>? uris;

  Indicator({
    this.domains,
    this.ipAddresses,
    this.signatures,
    this.uris,
  });

  Indicator.fromJson(core.Map json_)
      : this(
          domains: (json_['domains'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          ipAddresses: (json_['ipAddresses'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          signatures: (json_['signatures'] as core.List?)
              ?.map((value) => ProcessSignature.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          uris: (json_['uris'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (signatures != null) 'signatures': signatures!,
        if (uris != null) 'uris': uris!,
      };
}

/// Kernel mode rootkit signatures.
class KernelRootkit {
  /// Rootkit name, when available.
  core.String? name;

  /// True if unexpected modifications of kernel code memory are present.
  core.bool? unexpectedCodeModification;

  /// True if `ftrace` points are present with callbacks pointing to regions
  /// that are not in the expected kernel or module code range.
  core.bool? unexpectedFtraceHandler;

  /// True if interrupt handlers that are are not in the expected kernel or
  /// module code regions are present.
  core.bool? unexpectedInterruptHandler;

  /// True if kernel code pages that are not in the expected kernel or module
  /// code regions are present.
  core.bool? unexpectedKernelCodePages;

  /// True if `kprobe` points are present with callbacks pointing to regions
  /// that are not in the expected kernel or module code range.
  core.bool? unexpectedKprobeHandler;

  /// True if unexpected processes in the scheduler run queue are present.
  ///
  /// Such processes are in the run queue, but not in the process task list.
  core.bool? unexpectedProcessesInRunqueue;

  /// True if unexpected modifications of kernel read-only data memory are
  /// present.
  core.bool? unexpectedReadOnlyDataModification;

  /// True if system call handlers that are are not in the expected kernel or
  /// module code regions are present.
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
          unexpectedFtraceHandler:
              json_['unexpectedFtraceHandler'] as core.bool?,
          unexpectedInterruptHandler:
              json_['unexpectedInterruptHandler'] as core.bool?,
          unexpectedKernelCodePages:
              json_['unexpectedKernelCodePages'] as core.bool?,
          unexpectedKprobeHandler:
              json_['unexpectedKprobeHandler'] as core.bool?,
          unexpectedProcessesInRunqueue:
              json_['unexpectedProcessesInRunqueue'] as core.bool?,
          unexpectedReadOnlyDataModification:
              json_['unexpectedReadOnlyDataModification'] as core.bool?,
          unexpectedSystemCallHandler:
              json_['unexpectedSystemCallHandler'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (unexpectedCodeModification != null)
          'unexpectedCodeModification': unexpectedCodeModification!,
        if (unexpectedFtraceHandler != null)
          'unexpectedFtraceHandler': unexpectedFtraceHandler!,
        if (unexpectedInterruptHandler != null)
          'unexpectedInterruptHandler': unexpectedInterruptHandler!,
        if (unexpectedKernelCodePages != null)
          'unexpectedKernelCodePages': unexpectedKernelCodePages!,
        if (unexpectedKprobeHandler != null)
          'unexpectedKprobeHandler': unexpectedKprobeHandler!,
        if (unexpectedProcessesInRunqueue != null)
          'unexpectedProcessesInRunqueue': unexpectedProcessesInRunqueue!,
        if (unexpectedReadOnlyDataModification != null)
          'unexpectedReadOnlyDataModification':
              unexpectedReadOnlyDataModification!,
        if (unexpectedSystemCallHandler != null)
          'unexpectedSystemCallHandler': unexpectedSystemCallHandler!,
      };
}

/// Kubernetes-related attributes.
class Kubernetes {
  /// Provides information on any Kubernetes access reviews (privilege checks)
  /// relevant to the finding.
  core.List<AccessReview>? accessReviews;

  /// Provides Kubernetes role binding information for findings that involve
  /// [RoleBindings or ClusterRoleBindings](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control).
  core.List<GoogleCloudSecuritycenterV1Binding>? bindings;

  /// GKE
  /// [node pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-pools)
  /// associated with the finding.
  ///
  /// This field contains node pool information for each node, when it is
  /// available.
  core.List<NodePool>? nodePools;

  /// Provides Kubernetes
  /// [node](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture#nodes)
  /// information.
  core.List<Node>? nodes;

  /// Kubernetes objects related to the finding.
  core.List<Object>? objects;

  /// Kubernetes
  /// [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod)
  /// associated with the finding.
  ///
  /// This field contains Pod records for each container that is owned by a Pod.
  core.List<Pod>? pods;

  /// Provides Kubernetes role information for findings that involve
  /// [Roles or ClusterRoles](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control).
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
              ?.map((value) => AccessReview.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          bindings: (json_['bindings'] as core.List?)
              ?.map((value) => GoogleCloudSecuritycenterV1Binding.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nodePools: (json_['nodePools'] as core.List?)
              ?.map((value) => NodePool.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nodes: (json_['nodes'] as core.List?)
              ?.map((value) =>
                  Node.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          objects: (json_['objects'] as core.List?)
              ?.map((value) =>
                  Object.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          pods: (json_['pods'] as core.List?)
              ?.map((value) =>
                  Pod.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          roles: (json_['roles'] as core.List?)
              ?.map((value) =>
                  Role.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessReviews != null) 'accessReviews': accessReviews!,
        if (bindings != null) 'bindings': bindings!,
        if (nodePools != null) 'nodePools': nodePools!,
        if (nodes != null) 'nodes': nodes!,
        if (objects != null) 'objects': objects!,
        if (pods != null) 'pods': pods!,
        if (roles != null) 'roles': roles!,
      };
}

/// Represents a generic name-value label.
///
/// A label has separate name and value fields to support filtering with the
/// `contains()` function. For more information, see \[Filtering on array-type
/// fields\](https://cloud.google.com/security-command-center/docs/how-to-api-list-findings#array-contains-filtering).
class Label {
  /// Name of the label.
  core.String? name;

  /// Value that corresponds to the label's name.
  core.String? value;

  Label({
    this.name,
    this.value,
  });

  Label.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Response message for listing assets.
class ListAssetsResponse {
  /// Assets matching the list request.
  core.List<ListAssetsResult>? listAssetsResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// Time used for executing the list request.
  core.String? readTime;

  /// The total number of assets matching the query.
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
              ?.map((value) => ListAssetsResult.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          readTime: json_['readTime'] as core.String?,
          totalSize: json_['totalSize'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listAssetsResults != null) 'listAssetsResults': listAssetsResults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (readTime != null) 'readTime': readTime!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Result containing the Asset and its State.
class ListAssetsResult {
  /// Asset matching the search request.
  Asset? asset;

  /// State change of the asset between the points in time.
  /// Possible string values are:
  /// - "UNUSED" : State change is unused, this is the canonical default for
  /// this enum.
  /// - "ADDED" : Asset was added between the points in time.
  /// - "REMOVED" : Asset was removed between the points in time.
  /// - "ACTIVE" : Asset was present at both point(s) in time.
  core.String? stateChange;

  ListAssetsResult({
    this.asset,
    this.stateChange,
  });

  ListAssetsResult.fromJson(core.Map json_)
      : this(
          asset: json_.containsKey('asset')
              ? Asset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>)
              : null,
          stateChange: json_['stateChange'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (stateChange != null) 'stateChange': stateChange!,
      };
}

/// Response message for listing the attack paths for a given simulation or
/// valued resource.
class ListAttackPathsResponse {
  /// The attack paths that the attack path simulation identified.
  core.List<AttackPath>? attackPaths;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  ListAttackPathsResponse({
    this.attackPaths,
    this.nextPageToken,
  });

  ListAttackPathsResponse.fromJson(core.Map json_)
      : this(
          attackPaths: (json_['attackPaths'] as core.List?)
              ?.map((value) => AttackPath.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackPaths != null) 'attackPaths': attackPaths!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing BigQuery exports.
class ListBigQueryExportsResponse {
  /// The BigQuery exports from the specified parent.
  core.List<GoogleCloudSecuritycenterV1BigQueryExport>? bigQueryExports;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListBigQueryExportsResponse({
    this.bigQueryExports,
    this.nextPageToken,
  });

  ListBigQueryExportsResponse.fromJson(core.Map json_)
      : this(
          bigQueryExports: (json_['bigQueryExports'] as core.List?)
              ?.map((value) =>
                  GoogleCloudSecuritycenterV1BigQueryExport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryExports != null) 'bigQueryExports': bigQueryExports!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for listing current and descendant resident Event Threat Detection
/// custom modules.
class ListDescendantEventThreatDetectionCustomModulesResponse {
  /// Custom modules belonging to the requested parent.
  core.List<EventThreatDetectionCustomModule>?
      eventThreatDetectionCustomModules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDescendantEventThreatDetectionCustomModulesResponse({
    this.eventThreatDetectionCustomModules,
    this.nextPageToken,
  });

  ListDescendantEventThreatDetectionCustomModulesResponse.fromJson(
      core.Map json_)
      : this(
          eventThreatDetectionCustomModules:
              (json_['eventThreatDetectionCustomModules'] as core.List?)
                  ?.map((value) => EventThreatDetectionCustomModule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventThreatDetectionCustomModules != null)
          'eventThreatDetectionCustomModules':
              eventThreatDetectionCustomModules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing descendant Security Health Analytics custom
/// modules.
class ListDescendantSecurityHealthAnalyticsCustomModulesResponse {
  /// If not empty, indicates that there may be more custom modules to be
  /// returned.
  core.String? nextPageToken;

  /// Custom modules belonging to the requested parent and its descendants.
  core.List<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>?
      securityHealthAnalyticsCustomModules;

  ListDescendantSecurityHealthAnalyticsCustomModulesResponse({
    this.nextPageToken,
    this.securityHealthAnalyticsCustomModules,
  });

  ListDescendantSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          securityHealthAnalyticsCustomModules: (json_[
                  'securityHealthAnalyticsCustomModules'] as core.List?)
              ?.map((value) =>
                  GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (securityHealthAnalyticsCustomModules != null)
          'securityHealthAnalyticsCustomModules':
              securityHealthAnalyticsCustomModules!,
      };
}

/// Response for listing EffectiveEventThreatDetectionCustomModules.
class ListEffectiveEventThreatDetectionCustomModulesResponse {
  /// Effective custom modules belonging to the requested parent.
  core.List<EffectiveEventThreatDetectionCustomModule>?
      effectiveEventThreatDetectionCustomModules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListEffectiveEventThreatDetectionCustomModulesResponse({
    this.effectiveEventThreatDetectionCustomModules,
    this.nextPageToken,
  });

  ListEffectiveEventThreatDetectionCustomModulesResponse.fromJson(
      core.Map json_)
      : this(
          effectiveEventThreatDetectionCustomModules:
              (json_['effectiveEventThreatDetectionCustomModules']
                      as core.List?)
                  ?.map((value) =>
                      EffectiveEventThreatDetectionCustomModule.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveEventThreatDetectionCustomModules != null)
          'effectiveEventThreatDetectionCustomModules':
              effectiveEventThreatDetectionCustomModules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing effective Security Health Analytics custom
/// modules.
class ListEffectiveSecurityHealthAnalyticsCustomModulesResponse {
  /// Effective custom modules belonging to the requested parent.
  core.List<
          GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule>?
      effectiveSecurityHealthAnalyticsCustomModules;

  /// If not empty, indicates that there may be more effective custom modules to
  /// be returned.
  core.String? nextPageToken;

  ListEffectiveSecurityHealthAnalyticsCustomModulesResponse({
    this.effectiveSecurityHealthAnalyticsCustomModules,
    this.nextPageToken,
  });

  ListEffectiveSecurityHealthAnalyticsCustomModulesResponse.fromJson(
      core.Map json_)
      : this(
          effectiveSecurityHealthAnalyticsCustomModules: (json_[
                      'effectiveSecurityHealthAnalyticsCustomModules']
                  as core.List?)
              ?.map((value) =>
                  GoogleCloudSecuritycenterV1EffectiveSecurityHealthAnalyticsCustomModule
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveSecurityHealthAnalyticsCustomModules != null)
          'effectiveSecurityHealthAnalyticsCustomModules':
              effectiveSecurityHealthAnalyticsCustomModules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for listing Event Threat Detection custom modules.
class ListEventThreatDetectionCustomModulesResponse {
  /// Custom modules belonging to the requested parent.
  core.List<EventThreatDetectionCustomModule>?
      eventThreatDetectionCustomModules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListEventThreatDetectionCustomModulesResponse({
    this.eventThreatDetectionCustomModules,
    this.nextPageToken,
  });

  ListEventThreatDetectionCustomModulesResponse.fromJson(core.Map json_)
      : this(
          eventThreatDetectionCustomModules:
              (json_['eventThreatDetectionCustomModules'] as core.List?)
                  ?.map((value) => EventThreatDetectionCustomModule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventThreatDetectionCustomModules != null)
          'eventThreatDetectionCustomModules':
              eventThreatDetectionCustomModules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing findings.
class ListFindingsResponse {
  /// Findings matching the list request.
  core.List<ListFindingsResult>? listFindingsResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// Time used for executing the list request.
  core.String? readTime;

  /// The total number of findings matching the query.
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
              ?.map((value) => ListFindingsResult.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          readTime: json_['readTime'] as core.String?,
          totalSize: json_['totalSize'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listFindingsResults != null)
          'listFindingsResults': listFindingsResults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (readTime != null) 'readTime': readTime!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Result containing the Finding and its StateChange.
class ListFindingsResult {
  /// Finding matching the search request.
  Finding? finding;

  /// Resource that is associated with this finding.
  ///
  /// Output only.
  Resource? resource;

  /// State change of the finding between the points in time.
  /// Possible string values are:
  /// - "UNUSED" : State change is unused, this is the canonical default for
  /// this enum.
  /// - "CHANGED" : The finding has changed state in some way between the points
  /// in time and existed at both points.
  /// - "UNCHANGED" : The finding has not changed state between the points in
  /// time and existed at both points.
  /// - "ADDED" : The finding was created between the points in time.
  /// - "REMOVED" : The finding at timestamp does not match the filter
  /// specified, but it did at timestamp - compare_duration.
  core.String? stateChange;

  ListFindingsResult({
    this.finding,
    this.resource,
    this.stateChange,
  });

  ListFindingsResult.fromJson(core.Map json_)
      : this(
          finding: json_.containsKey('finding')
              ? Finding.fromJson(
                  json_['finding'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: json_.containsKey('resource')
              ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          stateChange: json_['stateChange'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finding != null) 'finding': finding!,
        if (resource != null) 'resource': resource!,
        if (stateChange != null) 'stateChange': stateChange!,
      };
}

/// Response message for listing mute configs.
class ListMuteConfigsResponse {
  /// The mute configs from the specified parent.
  core.List<GoogleCloudSecuritycenterV1MuteConfig>? muteConfigs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListMuteConfigsResponse({
    this.muteConfigs,
    this.nextPageToken,
  });

  ListMuteConfigsResponse.fromJson(core.Map json_)
      : this(
          muteConfigs: (json_['muteConfigs'] as core.List?)
              ?.map((value) => GoogleCloudSecuritycenterV1MuteConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (muteConfigs != null) 'muteConfigs': muteConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing notification configs.
class ListNotificationConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// Notification configs belonging to the requested parent.
  core.List<NotificationConfig>? notificationConfigs;

  ListNotificationConfigsResponse({
    this.nextPageToken,
    this.notificationConfigs,
  });

  ListNotificationConfigsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          notificationConfigs: (json_['notificationConfigs'] as core.List?)
              ?.map((value) => NotificationConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (notificationConfigs != null)
          'notificationConfigs': notificationConfigs!,
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
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message to list resource value configs
class ListResourceValueConfigsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The resource value configs from the specified parent.
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
              ?.map((value) =>
                  GoogleCloudSecuritycenterV1ResourceValueConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resourceValueConfigs != null)
          'resourceValueConfigs': resourceValueConfigs!,
      };
}

/// Response message for listing Security Health Analytics custom modules.
class ListSecurityHealthAnalyticsCustomModulesResponse {
  /// If not empty, indicates that there may be more custom modules to be
  /// returned.
  core.String? nextPageToken;

  /// Custom modules belonging to the requested parent.
  core.List<GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule>?
      securityHealthAnalyticsCustomModules;

  ListSecurityHealthAnalyticsCustomModulesResponse({
    this.nextPageToken,
    this.securityHealthAnalyticsCustomModules,
  });

  ListSecurityHealthAnalyticsCustomModulesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          securityHealthAnalyticsCustomModules: (json_[
                  'securityHealthAnalyticsCustomModules'] as core.List?)
              ?.map((value) =>
                  GoogleCloudSecuritycenterV1SecurityHealthAnalyticsCustomModule
                      .fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (securityHealthAnalyticsCustomModules != null)
          'securityHealthAnalyticsCustomModules':
              securityHealthAnalyticsCustomModules!,
      };
}

/// Response message for listing sources.
class ListSourcesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// Sources belonging to the requested parent.
  core.List<Source>? sources;

  ListSourcesResponse({
    this.nextPageToken,
    this.sources,
  });

  ListSourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          sources: (json_['sources'] as core.List?)
              ?.map((value) =>
                  Source.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sources != null) 'sources': sources!,
      };
}

/// Response message for listing the valued resources for a given simulation.
class ListValuedResourcesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String? nextPageToken;

  /// The estimated total number of results matching the query.
  core.int? totalSize;

  /// The valued resources that the attack path simulation identified.
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
              ?.map((value) => ValuedResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
        if (valuedResources != null) 'valuedResources': valuedResources!,
      };
}

/// Contains information related to the load balancer associated with the
/// finding.
class LoadBalancer {
  /// The name of the load balancer associated with the finding.
  core.String? name;

  LoadBalancer({
    this.name,
  });

  LoadBalancer.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// An individual entry in a log.
class LogEntry {
  /// An individual entry in a log stored in Cloud Logging.
  CloudLoggingEntry? cloudLoggingEntry;

  LogEntry({
    this.cloudLoggingEntry,
  });

  LogEntry.fromJson(core.Map json_)
      : this(
          cloudLoggingEntry: json_.containsKey('cloudLoggingEntry')
              ? CloudLoggingEntry.fromJson(json_['cloudLoggingEntry']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudLoggingEntry != null) 'cloudLoggingEntry': cloudLoggingEntry!,
      };
}

/// A signature corresponding to memory page hashes.
class MemoryHashSignature {
  /// The binary family.
  core.String? binaryFamily;

  /// The list of memory hash detections contributing to the binary family
  /// match.
  core.List<Detection>? detections;

  MemoryHashSignature({
    this.binaryFamily,
    this.detections,
  });

  MemoryHashSignature.fromJson(core.Map json_)
      : this(
          binaryFamily: json_['binaryFamily'] as core.String?,
          detections: (json_['detections'] as core.List?)
              ?.map((value) => Detection.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binaryFamily != null) 'binaryFamily': binaryFamily!,
        if (detections != null) 'detections': detections!,
      };
}

/// MITRE ATT&CK tactics and techniques related to this finding.
///
/// See: https://attack.mitre.org
class MitreAttack {
  /// Additional MITRE ATT&CK tactics related to this finding, if any.
  core.List<core.String>? additionalTactics;

  /// Additional MITRE ATT&CK techniques related to this finding, if any, along
  /// with any of their respective parent techniques.
  core.List<core.String>? additionalTechniques;

  /// The MITRE ATT&CK tactic most closely represented by this finding, if any.
  /// Possible string values are:
  /// - "TACTIC_UNSPECIFIED" : Unspecified value.
  /// - "RECONNAISSANCE" : TA0043
  /// - "RESOURCE_DEVELOPMENT" : TA0042
  /// - "INITIAL_ACCESS" : TA0001
  /// - "EXECUTION" : TA0002
  /// - "PERSISTENCE" : TA0003
  /// - "PRIVILEGE_ESCALATION" : TA0004
  /// - "DEFENSE_EVASION" : TA0005
  /// - "CREDENTIAL_ACCESS" : TA0006
  /// - "DISCOVERY" : TA0007
  /// - "LATERAL_MOVEMENT" : TA0008
  /// - "COLLECTION" : TA0009
  /// - "COMMAND_AND_CONTROL" : TA0011
  /// - "EXFILTRATION" : TA0010
  /// - "IMPACT" : TA0040
  core.String? primaryTactic;

  /// The MITRE ATT&CK technique most closely represented by this finding, if
  /// any.
  ///
  /// primary_techniques is a repeated field because there are multiple levels
  /// of MITRE ATT&CK techniques. If the technique most closely represented by
  /// this finding is a sub-technique (e.g. `SCANNING_IP_BLOCKS`), both the
  /// sub-technique and its parent technique(s) will be listed (e.g.
  /// `SCANNING_IP_BLOCKS`, `ACTIVE_SCANNING`).
  core.List<core.String>? primaryTechniques;

  /// The MITRE ATT&CK version referenced by the above fields.
  ///
  /// E.g. "8".
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalTactics != null) 'additionalTactics': additionalTactics!,
        if (additionalTechniques != null)
          'additionalTechniques': additionalTechniques!,
        if (primaryTactic != null) 'primaryTactic': primaryTactic!,
        if (primaryTechniques != null) 'primaryTechniques': primaryTechniques!,
        if (version != null) 'version': version!,
      };
}

/// Mute information about the finding, including whether the finding has a
/// static mute or any matching dynamic mute rules.
class MuteInfo {
  /// The list of dynamic mute rules that currently match the finding.
  core.List<DynamicMuteRecord>? dynamicMuteRecords;

  /// If set, the static mute applied to this finding.
  ///
  /// Static mutes override dynamic mutes. If unset, there is no static mute.
  StaticMute? staticMute;

  MuteInfo({
    this.dynamicMuteRecords,
    this.staticMute,
  });

  MuteInfo.fromJson(core.Map json_)
      : this(
          dynamicMuteRecords: (json_['dynamicMuteRecords'] as core.List?)
              ?.map((value) => DynamicMuteRecord.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          staticMute: json_.containsKey('staticMute')
              ? StaticMute.fromJson(
                  json_['staticMute'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicMuteRecords != null)
          'dynamicMuteRecords': dynamicMuteRecords!,
        if (staticMute != null) 'staticMute': staticMute!,
      };
}

/// Kubernetes nodes associated with the finding.
class Node {
  /// [Full resource name](https://google.aip.dev/122#full-resource-names) of
  /// the Compute Engine VM running the cluster node.
  core.String? name;

  Node({
    this.name,
  });

  Node.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Provides GKE node pool information.
class NodePool {
  /// Kubernetes node pool name.
  core.String? name;

  /// Nodes associated with the finding.
  core.List<Node>? nodes;

  NodePool({
    this.name,
    this.nodes,
  });

  NodePool.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          nodes: (json_['nodes'] as core.List?)
              ?.map((value) =>
                  Node.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (nodes != null) 'nodes': nodes!,
      };
}

/// Represents a Jupyter notebook IPYNB file, such as a
/// [Colab Enterprise notebook](https://cloud.google.com/colab/docs/introduction)
/// file, that is associated with a finding.
class Notebook {
  /// The user ID of the latest author to modify the notebook.
  core.String? lastAuthor;

  /// The name of the notebook.
  core.String? name;

  /// The most recent time the notebook was updated.
  core.String? notebookUpdateTime;

  /// The source notebook service, for example, "Colab Enterprise".
  core.String? service;

  Notebook({
    this.lastAuthor,
    this.name,
    this.notebookUpdateTime,
    this.service,
  });

  Notebook.fromJson(core.Map json_)
      : this(
          lastAuthor: json_['lastAuthor'] as core.String?,
          name: json_['name'] as core.String?,
          notebookUpdateTime: json_['notebookUpdateTime'] as core.String?,
          service: json_['service'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastAuthor != null) 'lastAuthor': lastAuthor!,
        if (name != null) 'name': name!,
        if (notebookUpdateTime != null)
          'notebookUpdateTime': notebookUpdateTime!,
        if (service != null) 'service': service!,
      };
}

/// Cloud Security Command Center (Cloud SCC) notification configs.
///
/// A notification config is a Cloud SCC resource that contains the
/// configuration to send notifications for create/update events of findings,
/// assets and etc.
class NotificationConfig {
  /// The description of the notification config (max of 1024 characters).
  core.String? description;

  /// The relative resource name of this notification config.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/{organization_id}/notificationConfigs/notify_public_bucket",
  /// "folders/{folder_id}/notificationConfigs/notify_public_bucket", or
  /// "projects/{project_id}/notificationConfigs/notify_public_bucket".
  core.String? name;

  /// The Pub/Sub topic to send notifications to.
  ///
  /// Its format is "projects/\[project_id\]/topics/\[topic\]".
  core.String? pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// The config for triggering streaming-based notifications.
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
              ? StreamingConfig.fromJson(json_['streamingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (streamingConfig != null) 'streamingConfig': streamingConfig!,
      };
}

/// Kubernetes object related to the finding, uniquely identified by GKNN.
///
/// Used if the object Kind is not one of Pod, Node, NodePool, Binding, or
/// AccessReview.
class Object {
  /// Pod containers associated with this finding, if any.
  core.List<Container>? containers;

  /// Kubernetes object group, such as "policy.k8s.io/v1".
  core.String? group;

  /// Kubernetes object kind, such as "Namespace".
  core.String? kind;

  /// Kubernetes object name.
  ///
  /// For details see
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/names/.
  core.String? name;

  /// Kubernetes object namespace.
  ///
  /// Must be a valid DNS label. Named "ns" to avoid collision with C++
  /// namespace keyword. For details see
  /// https://kubernetes.io/docs/tasks/administer-cluster/namespaces/.
  core.String? ns;

  Object({
    this.containers,
    this.group,
    this.kind,
    this.name,
    this.ns,
  });

  Object.fromJson(core.Map json_)
      : this(
          containers: (json_['containers'] as core.List?)
              ?.map((value) => Container.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          group: json_['group'] as core.String?,
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
          ns: json_['ns'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null) 'containers': containers!,
        if (group != null) 'group': group!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (ns != null) 'ns': ns!,
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
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
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
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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

/// Contains information about the org policies associated with the finding.
class OrgPolicy {
  /// The resource name of the org policy.
  ///
  /// Example: "organizations/{organization_id}/policies/{constraint_name}"
  core.String? name;

  OrgPolicy({
    this.name,
  });

  OrgPolicy.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// User specified settings that are attached to the Security Command Center
/// organization.
class OrganizationSettings {
  /// The configuration used for Asset Discovery runs.
  AssetDiscoveryConfig? assetDiscoveryConfig;

  /// A flag that indicates if Asset Discovery should be enabled.
  ///
  /// If the flag is set to `true`, then discovery of assets will occur. If it
  /// is set to `false`, all historical assets will remain, but discovery of
  /// future assets will not occur.
  core.bool? enableAssetDiscovery;

  /// The relative resource name of the settings.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example: "organizations/{organization_id}/organizationSettings".
  core.String? name;

  OrganizationSettings({
    this.assetDiscoveryConfig,
    this.enableAssetDiscovery,
    this.name,
  });

  OrganizationSettings.fromJson(core.Map json_)
      : this(
          assetDiscoveryConfig: json_.containsKey('assetDiscoveryConfig')
              ? AssetDiscoveryConfig.fromJson(json_['assetDiscoveryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableAssetDiscovery: json_['enableAssetDiscovery'] as core.bool?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetDiscoveryConfig != null)
          'assetDiscoveryConfig': assetDiscoveryConfig!,
        if (enableAssetDiscovery != null)
          'enableAssetDiscovery': enableAssetDiscovery!,
        if (name != null) 'name': name!,
      };
}

/// Package is a generic definition of a package.
class Package {
  /// The CPE URI where the vulnerability was detected.
  core.String? cpeUri;

  /// The name of the package where the vulnerability was detected.
  core.String? packageName;

  /// Type of package, for example, os, maven, or go.
  core.String? packageType;

  /// The version of the package.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (packageName != null) 'packageName': packageName!,
        if (packageType != null) 'packageType': packageType!,
        if (packageVersion != null) 'packageVersion': packageVersion!,
      };
}

/// A finding that is associated with this node in the attack path.
class PathNodeAssociatedFinding {
  /// Canonical name of the associated findings.
  ///
  /// Example: `organizations/123/sources/456/findings/789`
  core.String? canonicalFinding;

  /// The additional taxonomy group within findings from a given source.
  core.String? findingCategory;

  /// Full resource name of the finding.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalFinding != null) 'canonicalFinding': canonicalFinding!,
        if (findingCategory != null) 'findingCategory': findingCategory!,
        if (name != null) 'name': name!,
      };
}

/// A Kubernetes Pod.
class Pod {
  /// Pod containers associated with this finding, if any.
  core.List<Container>? containers;

  /// Pod labels.
  ///
  /// For Kubernetes containers, these are applied to the container.
  core.List<Label>? labels;

  /// Kubernetes Pod name.
  core.String? name;

  /// Kubernetes Pod namespace.
  core.String? ns;

  Pod({
    this.containers,
    this.labels,
    this.name,
    this.ns,
  });

  Pod.fromJson(core.Map json_)
      : this(
          containers: (json_['containers'] as core.List?)
              ?.map((value) => Container.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          labels: (json_['labels'] as core.List?)
              ?.map((value) =>
                  Label.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          ns: json_['ns'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null) 'containers': containers!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (ns != null) 'ns': ns!,
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
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
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
          auditConfigs: (json_['auditConfigs'] as core.List?)
              ?.map((value) => AuditConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          bindings: (json_['bindings'] as core.List?)
              ?.map((value) => Binding.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          etag: json_['etag'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// The policy field that violates the deployed posture and its expected and
/// detected values.
class PolicyDriftDetails {
  /// The detected value that violates the deployed posture, for example,
  /// `false` or `allowed_values={"projects/22831892"}`.
  core.String? detectedValue;

  /// The value of this field that was configured in a posture, for example,
  /// `true` or `allowed_values={"projects/29831892"}`.
  core.String? expectedValue;

  /// The name of the updated field, for example
  /// constraint.implementation.policy_rules\[0\].enforce
  core.String? field;

  PolicyDriftDetails({
    this.detectedValue,
    this.expectedValue,
    this.field,
  });

  PolicyDriftDetails.fromJson(core.Map json_)
      : this(
          detectedValue: json_['detectedValue'] as core.String?,
          expectedValue: json_['expectedValue'] as core.String?,
          field: json_['field'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedValue != null) 'detectedValue': detectedValue!,
        if (expectedValue != null) 'expectedValue': expectedValue!,
        if (field != null) 'field': field!,
      };
}

/// A position in the uploaded text version of a module.
class Position {
  core.int? columnNumber;
  core.int? lineNumber;

  Position({
    this.columnNumber,
    this.lineNumber,
  });

  Position.fromJson(core.Map json_)
      : this(
          columnNumber: json_['columnNumber'] as core.int?,
          lineNumber: json_['lineNumber'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnNumber != null) 'columnNumber': columnNumber!,
        if (lineNumber != null) 'lineNumber': lineNumber!,
      };
}

/// Represents an operating system process.
class Process {
  /// Process arguments as JSON encoded strings.
  core.List<core.String>? args;

  /// True if `args` is incomplete.
  core.bool? argumentsTruncated;

  /// File information for the process executable.
  File? binary;

  /// Process environment variables.
  core.List<EnvironmentVariable>? envVariables;

  /// True if `env_variables` is incomplete.
  core.bool? envVariablesTruncated;

  /// File information for libraries loaded by the process.
  core.List<File>? libraries;

  /// The process name, as displayed in utilities like `top` and `ps`.
  ///
  /// This name can be accessed through `/proc/[pid]/comm` and changed with
  /// `prctl(PR_SET_NAME)`.
  core.String? name;

  /// The parent process ID.
  core.String? parentPid;

  /// The process ID.
  core.String? pid;

  /// When the process represents the invocation of a script, `binary` provides
  /// information about the interpreter, while `script` provides information
  /// about the script file provided to the interpreter.
  File? script;

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
  });

  Process.fromJson(core.Map json_)
      : this(
          args: (json_['args'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          argumentsTruncated: json_['argumentsTruncated'] as core.bool?,
          binary: json_.containsKey('binary')
              ? File.fromJson(
                  json_['binary'] as core.Map<core.String, core.dynamic>)
              : null,
          envVariables: (json_['envVariables'] as core.List?)
              ?.map((value) => EnvironmentVariable.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          envVariablesTruncated: json_['envVariablesTruncated'] as core.bool?,
          libraries: (json_['libraries'] as core.List?)
              ?.map((value) =>
                  File.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          parentPid: json_['parentPid'] as core.String?,
          pid: json_['pid'] as core.String?,
          script: json_.containsKey('script')
              ? File.fromJson(
                  json_['script'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (argumentsTruncated != null)
          'argumentsTruncated': argumentsTruncated!,
        if (binary != null) 'binary': binary!,
        if (envVariables != null) 'envVariables': envVariables!,
        if (envVariablesTruncated != null)
          'envVariablesTruncated': envVariablesTruncated!,
        if (libraries != null) 'libraries': libraries!,
        if (name != null) 'name': name!,
        if (parentPid != null) 'parentPid': parentPid!,
        if (pid != null) 'pid': pid!,
        if (script != null) 'script': script!,
      };
}

/// Indicates what signature matched this process.
class ProcessSignature {
  /// Signature indicating that a binary family was matched.
  MemoryHashSignature? memoryHashSignature;

  /// Describes the type of resource associated with the signature.
  /// Possible string values are:
  /// - "SIGNATURE_TYPE_UNSPECIFIED" : The default signature type.
  /// - "SIGNATURE_TYPE_PROCESS" : Used for signatures concerning processes.
  /// - "SIGNATURE_TYPE_FILE" : Used for signatures concerning disks.
  core.String? signatureType;

  /// Signature indicating that a YARA rule was matched.
  YaraRuleSignature? yaraRuleSignature;

  ProcessSignature({
    this.memoryHashSignature,
    this.signatureType,
    this.yaraRuleSignature,
  });

  ProcessSignature.fromJson(core.Map json_)
      : this(
          memoryHashSignature: json_.containsKey('memoryHashSignature')
              ? MemoryHashSignature.fromJson(json_['memoryHashSignature']
                  as core.Map<core.String, core.dynamic>)
              : null,
          signatureType: json_['signatureType'] as core.String?,
          yaraRuleSignature: json_.containsKey('yaraRuleSignature')
              ? YaraRuleSignature.fromJson(json_['yaraRuleSignature']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (memoryHashSignature != null)
          'memoryHashSignature': memoryHashSignature!,
        if (signatureType != null) 'signatureType': signatureType!,
        if (yaraRuleSignature != null) 'yaraRuleSignature': yaraRuleSignature!,
      };
}

/// Additional Links
class Reference {
  /// Source of the reference e.g. NVD
  core.String? source;

  /// Uri for the mentioned source e.g.
  /// https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-34527.
  core.String? uri;

  Reference({
    this.source,
    this.uri,
  });

  Reference.fromJson(core.Map json_)
      : this(
          source: json_['source'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
        if (uri != null) 'uri': uri!,
      };
}

/// Information about the requests relevant to the finding.
class Requests {
  /// Allowed RPS (requests per second) over the long term.
  core.int? longTermAllowed;

  /// Denied RPS (requests per second) over the long term.
  core.int? longTermDenied;

  /// For 'Increasing deny ratio', the ratio is the denied traffic divided by
  /// the allowed traffic.
  ///
  /// For 'Allowed traffic spike', the ratio is the allowed traffic in the short
  /// term divided by allowed traffic in the long term.
  core.double? ratio;

  /// Allowed RPS (requests per second) in the short term.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (longTermAllowed != null) 'longTermAllowed': longTermAllowed!,
        if (longTermDenied != null) 'longTermDenied': longTermDenied!,
        if (ratio != null) 'ratio': ratio!,
        if (shortTermAllowed != null) 'shortTermAllowed': shortTermAllowed!,
      };
}

/// Information related to the Google Cloud resource that is associated with
/// this finding.
class Resource {
  /// The AWS metadata associated with the finding.
  AwsMetadata? awsMetadata;

  /// The Azure metadata associated with the finding.
  AzureMetadata? azureMetadata;

  /// Indicates which cloud provider the finding is from.
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED" : The cloud provider is unspecified.
  /// - "GOOGLE_CLOUD_PLATFORM" : The cloud provider is Google Cloud Platform.
  /// - "AMAZON_WEB_SERVICES" : The cloud provider is Amazon Web Services.
  /// - "MICROSOFT_AZURE" : The cloud provider is Microsoft Azure.
  core.String? cloudProvider;

  /// The human readable name of the resource.
  core.String? displayName;

  /// Contains a Folder message for each folder in the assets ancestry.
  ///
  /// The first folder is the deepest nested folder, and the last folder is the
  /// folder directly under the Organization.
  core.List<Folder>? folders;

  /// The region or location of the service (if applicable).
  core.String? location;

  /// The full resource name of the resource.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? name;

  /// Indicates which organization / tenant the finding is for.
  core.String? organization;

  /// The human readable name of resource's parent.
  core.String? parentDisplayName;

  /// The full resource name of resource's parent.
  core.String? parentName;

  /// The project ID that the resource belongs to.
  core.String? projectDisplayName;

  /// The full resource name of project that the resource belongs to.
  core.String? projectName;

  /// Provides the path to the resource within the resource hierarchy.
  ResourcePath? resourcePath;

  /// A string representation of the resource path.
  ///
  /// For Google Cloud, it has the format of
  /// `org/{organization_id}/folder/{folder_id}/folder/{folder_id}/project/{project_id}`
  /// where there can be any number of folders. For AWS, it has the format of
  /// `org/{organization_id}/ou/{organizational_unit_id}/ou/{organizational_unit_id}/account/{account_id}`
  /// where there can be any number of organizational units. For Azure, it has
  /// the format of
  /// `mg/{management_group_id}/mg/{management_group_id}/subscription/{subscription_id}/rg/{resource_group_name}`
  /// where there can be any number of management groups.
  core.String? resourcePathString;

  /// The service or resource provider associated with the resource.
  core.String? service;

  /// The full resource type of the resource.
  core.String? type;

  Resource({
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
          awsMetadata: json_.containsKey('awsMetadata')
              ? AwsMetadata.fromJson(
                  json_['awsMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          azureMetadata: json_.containsKey('azureMetadata')
              ? AzureMetadata.fromJson(
                  json_['azureMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudProvider: json_['cloudProvider'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          folders: (json_['folders'] as core.List?)
              ?.map((value) =>
                  Folder.fromJson(value as core.Map<core.String, core.dynamic>))
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
                  json_['resourcePath'] as core.Map<core.String, core.dynamic>)
              : null,
          resourcePathString: json_['resourcePathString'] as core.String?,
          service: json_['service'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (awsMetadata != null) 'awsMetadata': awsMetadata!,
        if (azureMetadata != null) 'azureMetadata': azureMetadata!,
        if (cloudProvider != null) 'cloudProvider': cloudProvider!,
        if (displayName != null) 'displayName': displayName!,
        if (folders != null) 'folders': folders!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (organization != null) 'organization': organization!,
        if (parentDisplayName != null) 'parentDisplayName': parentDisplayName!,
        if (parentName != null) 'parentName': parentName!,
        if (projectDisplayName != null)
          'projectDisplayName': projectDisplayName!,
        if (projectName != null) 'projectName': projectName!,
        if (resourcePath != null) 'resourcePath': resourcePath!,
        if (resourcePathString != null)
          'resourcePathString': resourcePathString!,
        if (service != null) 'service': service!,
        if (type != null) 'type': type!,
      };
}

/// Represents the path of resources leading up to the resource this finding is
/// about.
class ResourcePath {
  /// The list of nodes that make the up resource path, ordered from lowest
  /// level to highest level.
  core.List<ResourcePathNode>? nodes;

  ResourcePath({
    this.nodes,
  });

  ResourcePath.fromJson(core.Map json_)
      : this(
          nodes: (json_['nodes'] as core.List?)
              ?.map((value) => ResourcePathNode.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodes != null) 'nodes': nodes!,
      };
}

/// A node within the resource path.
///
/// Each node represents a resource within the resource hierarchy.
class ResourcePathNode {
  /// The display name of the resource this node represents.
  core.String? displayName;

  /// The ID of the resource this node represents.
  core.String? id;

  /// The type of resource this node represents.
  /// Possible string values are:
  /// - "RESOURCE_PATH_NODE_TYPE_UNSPECIFIED" : Node type is unspecified.
  /// - "GCP_ORGANIZATION" : The node represents a Google Cloud organization.
  /// - "GCP_FOLDER" : The node represents a Google Cloud folder.
  /// - "GCP_PROJECT" : The node represents a Google Cloud project.
  /// - "AWS_ORGANIZATION" : The node represents an AWS organization.
  /// - "AWS_ORGANIZATIONAL_UNIT" : The node represents an AWS organizational
  /// unit.
  /// - "AWS_ACCOUNT" : The node represents an AWS account.
  /// - "AZURE_MANAGEMENT_GROUP" : The node represents an Azure management
  /// group.
  /// - "AZURE_SUBSCRIPTION" : The node represents an Azure subscription.
  /// - "AZURE_RESOURCE_GROUP" : The node represents an Azure resource group.
  core.String? nodeType;

  ResourcePathNode({
    this.displayName,
    this.id,
    this.nodeType,
  });

  ResourcePathNode.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          id: json_['id'] as core.String?,
          nodeType: json_['nodeType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
        if (nodeType != null) 'nodeType': nodeType!,
      };
}

/// Metadata about a ResourceValueConfig.
///
/// For example, id and name.
class ResourceValueConfigMetadata {
  /// Resource value config name
  core.String? name;

  ResourceValueConfigMetadata({
    this.name,
  });

  ResourceValueConfigMetadata.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Kubernetes Role or ClusterRole.
class Role {
  /// Role type.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Role type is not specified.
  /// - "ROLE" : Kubernetes Role.
  /// - "CLUSTER_ROLE" : Kubernetes ClusterRole.
  core.String? kind;

  /// Role name.
  core.String? name;

  /// Role namespace.
  core.String? ns;

  Role({
    this.kind,
    this.name,
    this.ns,
  });

  Role.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
          ns: json_['ns'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (ns != null) 'ns': ns!,
      };
}

/// Request message for running asset discovery for an organization.
typedef RunAssetDiscoveryRequest = $Empty;

/// SecurityBulletin are notifications of vulnerabilities of Google products.
class SecurityBulletin {
  /// ID of the bulletin corresponding to the vulnerability.
  core.String? bulletinId;

  /// Submission time of this Security Bulletin.
  core.String? submissionTime;

  /// This represents a version that the cluster receiving this notification
  /// should be upgraded to, based on its current version.
  ///
  /// For example, 1.15.0
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (bulletinId != null) 'bulletinId': bulletinId!,
        if (submissionTime != null) 'submissionTime': submissionTime!,
        if (suggestedUpgradeVersion != null)
          'suggestedUpgradeVersion': suggestedUpgradeVersion!,
      };
}

/// Security Command Center managed properties.
///
/// These properties are managed by Security Command Center and cannot be
/// modified by the user.
class SecurityCenterProperties {
  /// Contains a Folder message for each folder in the assets ancestry.
  ///
  /// The first folder is the deepest nested folder, and the last folder is the
  /// folder directly under the Organization.
  core.List<Folder>? folders;

  /// The user defined display name for this resource.
  core.String? resourceDisplayName;

  /// The full resource name of the Google Cloud resource this asset represents.
  ///
  /// This field is immutable after create time. See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? resourceName;

  /// Owners of the Google Cloud resource.
  core.List<core.String>? resourceOwners;

  /// The full resource name of the immediate parent of the resource.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? resourceParent;

  /// The user defined display name for the parent of this resource.
  core.String? resourceParentDisplayName;

  /// The full resource name of the project the resource belongs to.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? resourceProject;

  /// The user defined display name for the project of this resource.
  core.String? resourceProjectDisplayName;

  /// The type of the Google Cloud resource.
  ///
  /// Examples include: APPLICATION, PROJECT, and ORGANIZATION. This is a case
  /// insensitive field defined by Security Command Center and/or the producer
  /// of the resource and is immutable after create time.
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
              ?.map((value) =>
                  Folder.fromJson(value as core.Map<core.String, core.dynamic>))
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (folders != null) 'folders': folders!,
        if (resourceDisplayName != null)
          'resourceDisplayName': resourceDisplayName!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (resourceOwners != null) 'resourceOwners': resourceOwners!,
        if (resourceParent != null) 'resourceParent': resourceParent!,
        if (resourceParentDisplayName != null)
          'resourceParentDisplayName': resourceParentDisplayName!,
        if (resourceProject != null) 'resourceProject': resourceProject!,
        if (resourceProjectDisplayName != null)
          'resourceProjectDisplayName': resourceProjectDisplayName!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// User specified security marks that are attached to the parent Security
/// Command Center resource.
///
/// Security marks are scoped within a Security Command Center organization --
/// they can be modified and viewed by all users who have proper permissions on
/// the organization.
class SecurityMarks {
  /// The canonical name of the marks.
  ///
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "folders/{folder_id}/assets/{asset_id}/securityMarks"
  /// "projects/{project_number}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks"
  /// "folders/{folder_id}/sources/{source_id}/findings/{finding_id}/securityMarks"
  /// "projects/{project_number}/sources/{source_id}/findings/{finding_id}/securityMarks"
  core.String? canonicalName;

  /// Mutable user specified security marks belonging to the parent resource.
  ///
  /// Constraints are as follows: * Keys and values are treated as case
  /// insensitive * Keys must be between 1 - 256 characters (inclusive) * Keys
  /// must be letters, numbers, underscores, or dashes * Values have leading and
  /// trailing whitespace trimmed, remaining characters must be between 1 - 4096
  /// characters (inclusive)
  core.Map<core.String, core.String>? marks;

  /// The relative resource name of the SecurityMarks.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/{organization_id}/assets/{asset_id}/securityMarks"
  /// "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}/securityMarks".
  core.String? name;

  SecurityMarks({
    this.canonicalName,
    this.marks,
    this.name,
  });

  SecurityMarks.fromJson(core.Map json_)
      : this(
          canonicalName: json_['canonicalName'] as core.String?,
          marks: (json_['marks'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalName != null) 'canonicalName': canonicalName!,
        if (marks != null) 'marks': marks!,
        if (name != null) 'name': name!,
      };
}

/// Information about the
/// [Google Cloud Armor security policy](https://cloud.google.com/armor/docs/security-policy-overview)
/// relevant to the finding.
class SecurityPolicy {
  /// The name of the Google Cloud Armor security policy, for example,
  /// "my-security-policy".
  core.String? name;

  /// Whether or not the associated rule or policy is in preview mode.
  core.bool? preview;

  /// The type of Google Cloud Armor security policy for example, 'backend
  /// security policy', 'edge security policy', 'network edge security policy',
  /// or 'always-on DDoS protection'.
  core.String? type;

  SecurityPolicy({
    this.name,
    this.preview,
    this.type,
  });

  SecurityPolicy.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          preview: json_['preview'] as core.bool?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (preview != null) 'preview': preview!,
        if (type != null) 'type': type!,
      };
}

/// Represents a posture that is deployed on Google Cloud by the Security
/// Command Center Posture Management service.
///
/// A posture contains one or more policy sets. A policy set is a group of
/// policies that enforce a set of security rules on Google Cloud.
class SecurityPosture {
  /// The name of the updated policy, for example,
  /// `projects/{project_id}/policies/{constraint_name}`.
  core.String? changedPolicy;

  /// Name of the posture, for example, `CIS-Posture`.
  core.String? name;

  /// The ID of the updated policy, for example, `compute-policy-1`.
  core.String? policy;

  /// The details about a change in an updated policy that violates the deployed
  /// posture.
  core.List<PolicyDriftDetails>? policyDriftDetails;

  /// The name of the updated policyset, for example, `cis-policyset`.
  core.String? policySet;

  /// The name of the posture deployment, for example,
  /// `organizations/{org_id}/posturedeployments/{posture_deployment_id}`.
  core.String? postureDeployment;

  /// The project, folder, or organization on which the posture is deployed, for
  /// example, `projects/{project_number}`.
  core.String? postureDeploymentResource;

  /// The version of the posture, for example, `c7cfa2a8`.
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
              ?.map((value) => PolicyDriftDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          policySet: json_['policySet'] as core.String?,
          postureDeployment: json_['postureDeployment'] as core.String?,
          postureDeploymentResource:
              json_['postureDeploymentResource'] as core.String?,
          revisionId: json_['revisionId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedPolicy != null) 'changedPolicy': changedPolicy!,
        if (name != null) 'name': name!,
        if (policy != null) 'policy': policy!,
        if (policyDriftDetails != null)
          'policyDriftDetails': policyDriftDetails!,
        if (policySet != null) 'policySet': policySet!,
        if (postureDeployment != null) 'postureDeployment': postureDeployment!,
        if (postureDeploymentResource != null)
          'postureDeploymentResource': postureDeploymentResource!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Identity delegation history of an authenticated service account.
class ServiceAccountDelegationInfo {
  /// The email address of a Google account.
  core.String? principalEmail;

  /// A string representing the principal_subject associated with the identity.
  ///
  /// As compared to `principal_email`, supports principals that aren't
  /// associated with email addresses, such as third party principals. For most
  /// identities, the format will be `principal://iam.googleapis.com/{identity
  /// pool name}/subjects/{subject}` except for some GKE identities
  /// (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy
  /// format `serviceAccount:{identity pool name}[{subject}]`
  core.String? principalSubject;

  ServiceAccountDelegationInfo({
    this.principalEmail,
    this.principalSubject,
  });

  ServiceAccountDelegationInfo.fromJson(core.Map json_)
      : this(
          principalEmail: json_['principalEmail'] as core.String?,
          principalSubject: json_['principalSubject'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (principalEmail != null) 'principalEmail': principalEmail!,
        if (principalSubject != null) 'principalSubject': principalSubject!,
      };
}

/// Request message for updating a finding's state.
class SetFindingStateRequest {
  /// The time at which the updated state takes effect.
  ///
  /// If unset, defaults to the request time.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? startTime;

  /// The desired State of the finding.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : The finding requires attention and has not been addressed
  /// yet.
  /// - "INACTIVE" : The finding has been fixed, triaged as a non-issue or
  /// otherwise addressed and is no longer active.
  core.String? state;

  SetFindingStateRequest({
    this.startTime,
    this.state,
  });

  SetFindingStateRequest.fromJson(core.Map json_)
      : this(
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
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
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for updating a finding's mute status.
class SetMuteRequest {
  /// The desired state of the Mute.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MUTE_UNSPECIFIED" : Unspecified.
  /// - "MUTED" : Finding has been muted.
  /// - "UNMUTED" : Finding has been unmuted.
  /// - "UNDEFINED" : Finding has never been muted/unmuted.
  core.String? mute;

  SetMuteRequest({
    this.mute,
  });

  SetMuteRequest.fromJson(core.Map json_)
      : this(
          mute: json_['mute'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mute != null) 'mute': mute!,
      };
}

/// Request message to simulate a CustomConfig against a given test resource.
///
/// Maximum size of the request is 4 MB by default.
class SimulateSecurityHealthAnalyticsCustomModuleRequest {
  /// The custom configuration that you need to test.
  ///
  /// Required.
  GoogleCloudSecuritycenterV1CustomConfig? customConfig;

  /// Resource data to simulate custom module against.
  ///
  /// Required.
  SimulatedResource? resource;

  SimulateSecurityHealthAnalyticsCustomModuleRequest({
    this.customConfig,
    this.resource,
  });

  SimulateSecurityHealthAnalyticsCustomModuleRequest.fromJson(core.Map json_)
      : this(
          customConfig: json_.containsKey('customConfig')
              ? GoogleCloudSecuritycenterV1CustomConfig.fromJson(
                  json_['customConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: json_.containsKey('resource')
              ? SimulatedResource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customConfig != null) 'customConfig': customConfig!,
        if (resource != null) 'resource': resource!,
      };
}

/// Response message for simulating a `SecurityHealthAnalyticsCustomModule`
/// against a given resource.
class SimulateSecurityHealthAnalyticsCustomModuleResponse {
  /// Result for test case in the corresponding request.
  SimulatedResult? result;

  SimulateSecurityHealthAnalyticsCustomModuleResponse({
    this.result,
  });

  SimulateSecurityHealthAnalyticsCustomModuleResponse.fromJson(core.Map json_)
      : this(
          result: json_.containsKey('result')
              ? SimulatedResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}

/// Manually constructed resource name.
///
/// If the custom module evaluates against only the resource data, you can omit
/// the `iam_policy_data` field. If it evaluates only the `iam_policy_data`
/// field, you can omit the resource data.
class SimulatedResource {
  /// A representation of the IAM policy.
  ///
  /// Optional.
  Policy? iamPolicyData;

  /// A representation of the Google Cloud resource.
  ///
  /// Should match the Google Cloud resource JSON format.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? resourceData;

  /// The type of the resource, for example, `compute.googleapis.com/Disk`.
  ///
  /// Required.
  core.String? resourceType;

  SimulatedResource({
    this.iamPolicyData,
    this.resourceData,
    this.resourceType,
  });

  SimulatedResource.fromJson(core.Map json_)
      : this(
          iamPolicyData: json_.containsKey('iamPolicyData')
              ? Policy.fromJson(
                  json_['iamPolicyData'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceData: json_.containsKey('resourceData')
              ? json_['resourceData'] as core.Map<core.String, core.dynamic>
              : null,
          resourceType: json_['resourceType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iamPolicyData != null) 'iamPolicyData': iamPolicyData!,
        if (resourceData != null) 'resourceData': resourceData!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Possible test result.
class SimulatedResult {
  /// Error encountered during the test.
  Status? error;

  /// Finding that would be published for the test case, if a violation is
  /// detected.
  Finding? finding;

  /// Indicates that the test case does not trigger any violation.
  Empty? noViolation;

  SimulatedResult({
    this.error,
    this.finding,
    this.noViolation,
  });

  SimulatedResult.fromJson(core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          finding: json_.containsKey('finding')
              ? Finding.fromJson(
                  json_['finding'] as core.Map<core.String, core.dynamic>)
              : null,
          noViolation: json_.containsKey('noViolation')
              ? Empty.fromJson(
                  json_['noViolation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (finding != null) 'finding': finding!,
        if (noViolation != null) 'noViolation': noViolation!,
      };
}

/// Attack path simulation
class Simulation {
  /// Indicates which cloud provider was used in this simulation.
  /// Possible string values are:
  /// - "CLOUD_PROVIDER_UNSPECIFIED" : The cloud provider is unspecified.
  /// - "GOOGLE_CLOUD_PLATFORM" : The cloud provider is Google Cloud Platform.
  /// - "AMAZON_WEB_SERVICES" : The cloud provider is Amazon Web Services.
  /// - "MICROSOFT_AZURE" : The cloud provider is Microsoft Azure.
  core.String? cloudProvider;

  /// Time simulation was created
  ///
  /// Output only.
  core.String? createTime;

  /// Full resource name of the Simulation: `organizations/123/simulations/456`
  core.String? name;

  /// Resource value configurations' metadata used in this simulation.
  ///
  /// Maximum of 100.
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
                  ?.map((value) => ResourceValueConfigMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudProvider != null) 'cloudProvider': cloudProvider!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (resourceValueConfigsMetadata != null)
          'resourceValueConfigsMetadata': resourceValueConfigsMetadata!,
      };
}

/// Security Command Center finding source.
///
/// A finding source is an entity or a mechanism that can produce a finding. A
/// source is like a container of findings that come from the same scanner,
/// logger, monitor, and other tools.
class Source {
  /// The canonical name of the finding source.
  ///
  /// It's either "organizations/{organization_id}/sources/{source_id}",
  /// "folders/{folder_id}/sources/{source_id}", or
  /// "projects/{project_number}/sources/{source_id}", depending on the closest
  /// CRM ancestor of the resource associated with the finding.
  core.String? canonicalName;

  /// The description of the source (max of 1024 characters).
  ///
  /// Example: "Web Security Scanner is a web security scanner for common
  /// vulnerabilities in App Engine applications. It can automatically scan and
  /// detect four common vulnerabilities, including cross-site-scripting (XSS),
  /// Flash injection, mixed content (HTTP in HTTPS), and outdated or insecure
  /// libraries."
  core.String? description;

  /// The source's display name.
  ///
  /// A source's display name must be unique amongst its siblings, for example,
  /// two sources with the same parent can't share the same display name. The
  /// display name must have a length between 1 and 64 characters (inclusive).
  core.String? displayName;

  /// The relative resource name of this source.
  ///
  /// See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example: "organizations/{organization_id}/sources/{source_id}"
  core.String? name;

  Source({
    this.canonicalName,
    this.description,
    this.displayName,
    this.name,
  });

  Source.fromJson(core.Map json_)
      : this(
          canonicalName: json_['canonicalName'] as core.String?,
          description: json_['description'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalName != null) 'canonicalName': canonicalName!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// Information about the static mute state.
///
/// A static mute state overrides any dynamic mute rules that apply to this
/// finding. The static mute state can be set by a static mute rule or by muting
/// the finding directly.
class StaticMute {
  /// When the static mute was applied.
  core.String? applyTime;

  /// The static mute state.
  ///
  /// If the value is `MUTED` or `UNMUTED`, then the finding's overall mute
  /// state will have the same value.
  /// Possible string values are:
  /// - "MUTE_UNSPECIFIED" : Unspecified.
  /// - "MUTED" : Finding has been muted.
  /// - "UNMUTED" : Finding has been unmuted.
  /// - "UNDEFINED" : Finding has never been muted/unmuted.
  core.String? state;

  StaticMute({
    this.applyTime,
    this.state,
  });

  StaticMute.fromJson(core.Map json_)
      : this(
          applyTime: json_['applyTime'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyTime != null) 'applyTime': applyTime!,
        if (state != null) 'state': state!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// The config for streaming-based notifications, which send each event as soon
/// as it is detected.
class StreamingConfig {
  /// Expression that defines the filter to apply across create/update events of
  /// assets or findings as specified by the event type.
  ///
  /// The expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`. Parentheses are supported, and `OR` has higher
  /// precedence than `AND`. Restrictions have the form ` ` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the corresponding resource. The supported operators are: * `=`
  /// for all value types. * `>`, `<`, `>=`, `<=` for integer values. * `:`,
  /// meaning substring matching, for strings. The supported value types are: *
  /// string literals in quotes. * integer literals without quotes. * boolean
  /// literals `true` and `false` without quotes.
  core.String? filter;

  StreamingConfig({
    this.filter,
  });

  StreamingConfig.fromJson(core.Map json_)
      : this(
          filter: json_['filter'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// Represents a Kubernetes subject.
class Subject {
  /// Authentication type for the subject.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication is not specified.
  /// - "USER" : User with valid certificate.
  /// - "SERVICEACCOUNT" : Users managed by Kubernetes API with credentials
  /// stored as secrets.
  /// - "GROUP" : Collection of users.
  core.String? kind;

  /// Name for the subject.
  core.String? name;

  /// Namespace for the subject.
  core.String? ns;

  Subject({
    this.kind,
    this.name,
    this.ns,
  });

  Subject.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
          ns: json_['ns'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (ns != null) 'ns': ns!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Information about the ticket, if any, that is being used to track the
/// resolution of the issue that is identified by this finding.
class TicketInfo {
  /// The assignee of the ticket in the ticket system.
  core.String? assignee;

  /// The description of the ticket in the ticket system.
  core.String? description;

  /// The identifier of the ticket in the ticket system.
  core.String? id;

  /// The latest status of the ticket, as reported by the ticket system.
  core.String? status;

  /// The time when the ticket was last updated, as reported by the ticket
  /// system.
  core.String? updateTime;

  /// The link to the ticket in the ticket system.
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignee != null) 'assignee': assignee!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uri != null) 'uri': uri!,
      };
}

/// Contains details about a group of security issues that, when the issues
/// occur together, represent a greater risk than when the issues occur
/// independently.
///
/// A group of such issues is referred to as a toxic combination.
class ToxicCombination {
  /// The
  /// [Attack exposure score](https://cloud.google.com/security-command-center/docs/attack-exposure-learn#attack_exposure_scores)
  /// of this toxic combination.
  ///
  /// The score is a measure of how much this toxic combination exposes one or
  /// more high-value resources to potential attack.
  core.double? attackExposureScore;

  /// List of resource names of findings associated with this toxic combination.
  ///
  /// For example, `organizations/123/sources/456/findings/789`.
  core.List<core.String>? relatedFindings;

  ToxicCombination({
    this.attackExposureScore,
    this.relatedFindings,
  });

  ToxicCombination.fromJson(core.Map json_)
      : this(
          attackExposureScore:
              (json_['attackExposureScore'] as core.num?)?.toDouble(),
          relatedFindings: (json_['relatedFindings'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attackExposureScore != null)
          'attackExposureScore': attackExposureScore!,
        if (relatedFindings != null) 'relatedFindings': relatedFindings!,
      };
}

/// Request to validate an Event Threat Detection custom module.
class ValidateEventThreatDetectionCustomModuleRequest {
  /// The raw text of the module's contents.
  ///
  /// Used to generate error messages.
  ///
  /// Required.
  core.String? rawText;

  /// The type of the module (e.g. CONFIGURABLE_BAD_IP).
  ///
  /// Required.
  core.String? type;

  ValidateEventThreatDetectionCustomModuleRequest({
    this.rawText,
    this.type,
  });

  ValidateEventThreatDetectionCustomModuleRequest.fromJson(core.Map json_)
      : this(
          rawText: json_['rawText'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rawText != null) 'rawText': rawText!,
        if (type != null) 'type': type!,
      };
}

/// Response to validating an Event Threat Detection custom module.
class ValidateEventThreatDetectionCustomModuleResponse {
  /// A list of errors returned by the validator.
  ///
  /// If the list is empty, there were no errors.
  CustomModuleValidationErrors? errors;

  ValidateEventThreatDetectionCustomModuleResponse({
    this.errors,
  });

  ValidateEventThreatDetectionCustomModuleResponse.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? CustomModuleValidationErrors.fromJson(
                  json_['errors'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
      };
}

/// A resource that is determined to have value to a user's system
class ValuedResource {
  /// Human-readable name of the valued resource.
  core.String? displayName;

  /// Exposed score for this valued resource.
  ///
  /// A value of 0 means no exposure was detected exposure.
  core.double? exposedScore;

  /// Valued resource name, for example, e.g.:
  /// `organizations/123/simulations/456/valuedResources/789`
  core.String? name;

  /// The
  /// [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// of the valued resource.
  core.String? resource;

  /// The
  /// [resource type](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
  /// of the valued resource.
  core.String? resourceType;

  /// How valuable this resource is.
  /// Possible string values are:
  /// - "RESOURCE_VALUE_UNSPECIFIED" : The resource value isn't specified.
  /// - "RESOURCE_VALUE_LOW" : This is a low-value resource.
  /// - "RESOURCE_VALUE_MEDIUM" : This is a medium-value resource.
  /// - "RESOURCE_VALUE_HIGH" : This is a high-value resource.
  core.String? resourceValue;

  /// List of resource value configurations' metadata used to determine the
  /// value of this resource.
  ///
  /// Maximum of 100.
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
                  ?.map((value) => ResourceValueConfigMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (exposedScore != null) 'exposedScore': exposedScore!,
        if (name != null) 'name': name!,
        if (resource != null) 'resource': resource!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (resourceValue != null) 'resourceValue': resourceValue!,
        if (resourceValueConfigsUsed != null)
          'resourceValueConfigsUsed': resourceValueConfigsUsed!,
      };
}

/// Refers to common vulnerability fields e.g. cve, cvss, cwe etc.
class Vulnerability {
  /// CVE stands for Common Vulnerabilities and Exposures
  /// (https://cve.mitre.org/about/)
  Cve? cve;

  /// The fixed package is relevant to the finding.
  Package? fixedPackage;

  /// The offending package is relevant to the finding.
  Package? offendingPackage;

  /// The security bulletin is relevant to this finding.
  SecurityBulletin? securityBulletin;

  Vulnerability({
    this.cve,
    this.fixedPackage,
    this.offendingPackage,
    this.securityBulletin,
  });

  Vulnerability.fromJson(core.Map json_)
      : this(
          cve: json_.containsKey('cve')
              ? Cve.fromJson(
                  json_['cve'] as core.Map<core.String, core.dynamic>)
              : null,
          fixedPackage: json_.containsKey('fixedPackage')
              ? Package.fromJson(
                  json_['fixedPackage'] as core.Map<core.String, core.dynamic>)
              : null,
          offendingPackage: json_.containsKey('offendingPackage')
              ? Package.fromJson(json_['offendingPackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          securityBulletin: json_.containsKey('securityBulletin')
              ? SecurityBulletin.fromJson(json_['securityBulletin']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cve != null) 'cve': cve!,
        if (fixedPackage != null) 'fixedPackage': fixedPackage!,
        if (offendingPackage != null) 'offendingPackage': offendingPackage!,
        if (securityBulletin != null) 'securityBulletin': securityBulletin!,
      };
}

/// A signature corresponding to a YARA rule.
class YaraRuleSignature {
  /// The name of the YARA rule.
  core.String? yaraRule;

  YaraRuleSignature({
    this.yaraRule,
  });

  YaraRuleSignature.fromJson(core.Map json_)
      : this(
          yaraRule: json_['yaraRule'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (yaraRule != null) 'yaraRule': yaraRule!,
      };
}
