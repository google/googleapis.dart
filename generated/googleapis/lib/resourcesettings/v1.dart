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

/// Resource Settings API - v1
///
/// The Resource Settings API allows users to control and modify the behavior of
/// their GCP resources (e.g., VM, firewall, Project, etc.) across the Cloud
/// Resource Hierarchy.
///
/// For more information, see
/// <https://cloud.google.com/resource-manager/docs/resource-settings/overview>
///
/// Create an instance of [ResourceSettingsApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersSettingsResource]
/// - [OrganizationsResource]
///   - [OrganizationsSettingsResource]
/// - [ProjectsResource]
///   - [ProjectsSettingsResource]
library resourcesettings.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Resource Settings API allows users to control and modify the behavior of
/// their GCP resources (e.g., VM, firewall, Project, etc.) across the Cloud
/// Resource Hierarchy.
class ResourceSettingsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  ResourceSettingsApi(http.Client client,
      {core.String rootUrl = 'https://resourcesettings.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersSettingsResource get settings => FoldersSettingsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersSettingsResource {
  final commons.ApiRequester _requester;

  FoldersSettingsResource(commons.ApiRequester client) : _requester = client;

  /// Returns a specified setting.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// setting does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the setting to get. See Setting for naming
  /// requirements.
  /// Value must have pattern `^folders/\[^/\]+/settings/\[^/\]+$`.
  ///
  /// [view] - The SettingView for this request.
  /// Possible string values are:
  /// - "SETTING_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the SETTING_VIEW_BASIC view.
  /// - "SETTING_VIEW_BASIC" : Include Setting.metadata, but nothing else. This
  /// is the default value (for both ListSettings and GetSetting).
  /// - "SETTING_VIEW_EFFECTIVE_VALUE" : Include Setting.effective_value, but
  /// nothing else.
  /// - "SETTING_VIEW_LOCAL_VALUE" : Include Setting.local_value, but nothing
  /// else.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1Setting> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1Setting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the settings that are available on the Cloud resource `parent`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project, folder, or organization that is the
  /// parent resource for this setting. Must be in one of the following forms: *
  /// `projects/{project_number}` * `projects/{project_id}` *
  /// `folders/{folder_id}` * `organizations/{organization_id}`
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [pageSize] - Unused. The size of the page to be returned.
  ///
  /// [pageToken] - Unused. A page token used to retrieve the next page.
  ///
  /// [view] - The SettingView for this request.
  /// Possible string values are:
  /// - "SETTING_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the SETTING_VIEW_BASIC view.
  /// - "SETTING_VIEW_BASIC" : Include Setting.metadata, but nothing else. This
  /// is the default value (for both ListSettings and GetSetting).
  /// - "SETTING_VIEW_EFFECTIVE_VALUE" : Include Setting.effective_value, but
  /// nothing else.
  /// - "SETTING_VIEW_LOCAL_VALUE" : Include Setting.local_value, but nothing
  /// else.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1ListSettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1ListSettingsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/settings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1ListSettingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a specified setting.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// setting does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read
  /// only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the
  /// etag supplied in the request does not match the persisted etag of the
  /// setting value. On success, the response will contain only `name`,
  /// `local_value` and `etag`. The `metadata` and `effective_value` cannot be
  /// updated through this API. Note: the supplied setting will perform a full
  /// overwrite of the `local_value` field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the setting. Must be in one of the following
  /// forms: * `projects/{project_number}/settings/{setting_name}` *
  /// `folders/{folder_id}/settings/{setting_name}` *
  /// `organizations/{organization_id}/settings/{setting_name}` For example,
  /// "/projects/123/settings/gcp-enableMyFeature"
  /// Value must have pattern `^folders/\[^/\]+/settings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1Setting> patch(
    GoogleCloudResourcesettingsV1Setting request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1Setting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsSettingsResource get settings =>
      OrganizationsSettingsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsSettingsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns a specified setting.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// setting does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the setting to get. See Setting for naming
  /// requirements.
  /// Value must have pattern `^organizations/\[^/\]+/settings/\[^/\]+$`.
  ///
  /// [view] - The SettingView for this request.
  /// Possible string values are:
  /// - "SETTING_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the SETTING_VIEW_BASIC view.
  /// - "SETTING_VIEW_BASIC" : Include Setting.metadata, but nothing else. This
  /// is the default value (for both ListSettings and GetSetting).
  /// - "SETTING_VIEW_EFFECTIVE_VALUE" : Include Setting.effective_value, but
  /// nothing else.
  /// - "SETTING_VIEW_LOCAL_VALUE" : Include Setting.local_value, but nothing
  /// else.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1Setting> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1Setting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the settings that are available on the Cloud resource `parent`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project, folder, or organization that is the
  /// parent resource for this setting. Must be in one of the following forms: *
  /// `projects/{project_number}` * `projects/{project_id}` *
  /// `folders/{folder_id}` * `organizations/{organization_id}`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Unused. The size of the page to be returned.
  ///
  /// [pageToken] - Unused. A page token used to retrieve the next page.
  ///
  /// [view] - The SettingView for this request.
  /// Possible string values are:
  /// - "SETTING_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the SETTING_VIEW_BASIC view.
  /// - "SETTING_VIEW_BASIC" : Include Setting.metadata, but nothing else. This
  /// is the default value (for both ListSettings and GetSetting).
  /// - "SETTING_VIEW_EFFECTIVE_VALUE" : Include Setting.effective_value, but
  /// nothing else.
  /// - "SETTING_VIEW_LOCAL_VALUE" : Include Setting.local_value, but nothing
  /// else.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1ListSettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1ListSettingsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/settings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1ListSettingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a specified setting.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// setting does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read
  /// only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the
  /// etag supplied in the request does not match the persisted etag of the
  /// setting value. On success, the response will contain only `name`,
  /// `local_value` and `etag`. The `metadata` and `effective_value` cannot be
  /// updated through this API. Note: the supplied setting will perform a full
  /// overwrite of the `local_value` field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the setting. Must be in one of the following
  /// forms: * `projects/{project_number}/settings/{setting_name}` *
  /// `folders/{folder_id}/settings/{setting_name}` *
  /// `organizations/{organization_id}/settings/{setting_name}` For example,
  /// "/projects/123/settings/gcp-enableMyFeature"
  /// Value must have pattern `^organizations/\[^/\]+/settings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1Setting> patch(
    GoogleCloudResourcesettingsV1Setting request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1Setting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsSettingsResource get settings => ProjectsSettingsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsSettingsResource(commons.ApiRequester client) : _requester = client;

  /// Returns a specified setting.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// setting does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the setting to get. See Setting for naming
  /// requirements.
  /// Value must have pattern `^projects/\[^/\]+/settings/\[^/\]+$`.
  ///
  /// [view] - The SettingView for this request.
  /// Possible string values are:
  /// - "SETTING_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the SETTING_VIEW_BASIC view.
  /// - "SETTING_VIEW_BASIC" : Include Setting.metadata, but nothing else. This
  /// is the default value (for both ListSettings and GetSetting).
  /// - "SETTING_VIEW_EFFECTIVE_VALUE" : Include Setting.effective_value, but
  /// nothing else.
  /// - "SETTING_VIEW_LOCAL_VALUE" : Include Setting.local_value, but nothing
  /// else.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1Setting> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1Setting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the settings that are available on the Cloud resource `parent`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project, folder, or organization that is the
  /// parent resource for this setting. Must be in one of the following forms: *
  /// `projects/{project_number}` * `projects/{project_id}` *
  /// `folders/{folder_id}` * `organizations/{organization_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Unused. The size of the page to be returned.
  ///
  /// [pageToken] - Unused. A page token used to retrieve the next page.
  ///
  /// [view] - The SettingView for this request.
  /// Possible string values are:
  /// - "SETTING_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the SETTING_VIEW_BASIC view.
  /// - "SETTING_VIEW_BASIC" : Include Setting.metadata, but nothing else. This
  /// is the default value (for both ListSettings and GetSetting).
  /// - "SETTING_VIEW_EFFECTIVE_VALUE" : Include Setting.effective_value, but
  /// nothing else.
  /// - "SETTING_VIEW_LOCAL_VALUE" : Include Setting.local_value, but nothing
  /// else.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1ListSettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1ListSettingsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/settings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1ListSettingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a specified setting.
  ///
  /// Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
  /// setting does not exist. Returns a `google.rpc.Status` with
  /// `google.rpc.Code.FAILED_PRECONDITION` if the setting is flagged as read
  /// only. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the
  /// etag supplied in the request does not match the persisted etag of the
  /// setting value. On success, the response will contain only `name`,
  /// `local_value` and `etag`. The `metadata` and `effective_value` cannot be
  /// updated through this API. Note: the supplied setting will perform a full
  /// overwrite of the `local_value` field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the setting. Must be in one of the following
  /// forms: * `projects/{project_number}/settings/{setting_name}` *
  /// `folders/{folder_id}/settings/{setting_name}` *
  /// `organizations/{organization_id}/settings/{setting_name}` For example,
  /// "/projects/123/settings/gcp-enableMyFeature"
  /// Value must have pattern `^projects/\[^/\]+/settings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudResourcesettingsV1Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudResourcesettingsV1Setting> patch(
    GoogleCloudResourcesettingsV1Setting request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudResourcesettingsV1Setting.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The response from ListSettings.
class GoogleCloudResourcesettingsV1ListSettingsResponse {
  /// Unused.
  ///
  /// A page token used to retrieve the next page.
  core.String? nextPageToken;

  /// A list of settings that are available at the specified Cloud resource.
  core.List<GoogleCloudResourcesettingsV1Setting>? settings;

  GoogleCloudResourcesettingsV1ListSettingsResponse({
    this.nextPageToken,
    this.settings,
  });

  GoogleCloudResourcesettingsV1ListSettingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          settings: json_.containsKey('settings')
              ? (json_['settings'] as core.List)
                  .map((value) => GoogleCloudResourcesettingsV1Setting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (settings != null) 'settings': settings!,
      };
}

/// The schema for settings.
class GoogleCloudResourcesettingsV1Setting {
  /// The effective value of the setting at the given parent resource, evaluated
  /// based on the resource hierarchy The effective value evaluates to one of
  /// the following options, in this order.
  ///
  /// If an option is not valid or doesn't exist, then the next option is used:
  /// 1. The local setting value on the given resource: Setting.local_value 2.
  /// If one of the given resource's ancestors in the resource hierarchy have a
  /// local setting value, the local value at the nearest such ancestor. 3. The
  /// setting's default value: SettingMetadata.default_value 4. An empty value,
  /// defined as a `Value` with all fields unset. The data type of Value must
  /// always be consistent with the data type defined in Setting.metadata.
  ///
  /// Output only.
  GoogleCloudResourcesettingsV1Value? effectiveValue;

  /// A fingerprint used for optimistic concurrency.
  ///
  /// See UpdateSetting for more details.
  core.String? etag;

  /// The configured value of the setting at the given parent resource, ignoring
  /// the resource hierarchy.
  ///
  /// The data type of Value must always be consistent with the data type
  /// defined in Setting.metadata.
  GoogleCloudResourcesettingsV1Value? localValue;

  /// Metadata about a setting which is not editable by the end user.
  ///
  /// Output only.
  GoogleCloudResourcesettingsV1SettingMetadata? metadata;

  /// The resource name of the setting.
  ///
  /// Must be in one of the following forms: *
  /// `projects/{project_number}/settings/{setting_name}` *
  /// `folders/{folder_id}/settings/{setting_name}` *
  /// `organizations/{organization_id}/settings/{setting_name}` For example,
  /// "/projects/123/settings/gcp-enableMyFeature"
  core.String? name;

  GoogleCloudResourcesettingsV1Setting({
    this.effectiveValue,
    this.etag,
    this.localValue,
    this.metadata,
    this.name,
  });

  GoogleCloudResourcesettingsV1Setting.fromJson(core.Map json_)
      : this(
          effectiveValue: json_.containsKey('effectiveValue')
              ? GoogleCloudResourcesettingsV1Value.fromJson(
                  json_['effectiveValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          localValue: json_.containsKey('localValue')
              ? GoogleCloudResourcesettingsV1Value.fromJson(
                  json_['localValue'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleCloudResourcesettingsV1SettingMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveValue != null) 'effectiveValue': effectiveValue!,
        if (etag != null) 'etag': etag!,
        if (localValue != null) 'localValue': localValue!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// Metadata about a setting which is not editable by the end user.
class GoogleCloudResourcesettingsV1SettingMetadata {
  /// The data type for this setting.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Unspecified data type.
  /// - "BOOLEAN" : A boolean setting.
  /// - "STRING" : A string setting.
  /// - "STRING_SET" : A string set setting.
  /// - "ENUM_VALUE" : A Enum setting
  /// - "DURATION_VALUE" : A Duration setting
  /// - "STRING_MAP" : A string-\>string map setting
  core.String? dataType;

  /// The value provided by Setting.effective_value if no setting value is
  /// explicitly set.
  ///
  /// Note: not all settings have a default value.
  GoogleCloudResourcesettingsV1Value? defaultValue;

  /// A detailed description of what this setting does.
  core.String? description;

  /// The human readable name for this setting.
  core.String? displayName;

  /// A flag indicating that values of this setting cannot be modified.
  ///
  /// See documentation for the specific setting for updates and reasons.
  core.bool? readOnly;

  GoogleCloudResourcesettingsV1SettingMetadata({
    this.dataType,
    this.defaultValue,
    this.description,
    this.displayName,
    this.readOnly,
  });

  GoogleCloudResourcesettingsV1SettingMetadata.fromJson(core.Map json_)
      : this(
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          defaultValue: json_.containsKey('defaultValue')
              ? GoogleCloudResourcesettingsV1Value.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (readOnly != null) 'readOnly': readOnly!,
      };
}

/// The data in a setting value.
class GoogleCloudResourcesettingsV1Value {
  /// Defines this value as being a boolean value.
  core.bool? booleanValue;

  /// Defines this value as being a Duration.
  core.String? durationValue;

  /// Defines this value as being a Enum.
  GoogleCloudResourcesettingsV1ValueEnumValue? enumValue;

  /// Defines this value as being a StringMap.
  GoogleCloudResourcesettingsV1ValueStringMap? stringMapValue;

  /// Defines this value as being a StringSet.
  GoogleCloudResourcesettingsV1ValueStringSet? stringSetValue;

  /// Defines this value as being a string value.
  core.String? stringValue;

  GoogleCloudResourcesettingsV1Value({
    this.booleanValue,
    this.durationValue,
    this.enumValue,
    this.stringMapValue,
    this.stringSetValue,
    this.stringValue,
  });

  GoogleCloudResourcesettingsV1Value.fromJson(core.Map json_)
      : this(
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          durationValue: json_.containsKey('durationValue')
              ? json_['durationValue'] as core.String
              : null,
          enumValue: json_.containsKey('enumValue')
              ? GoogleCloudResourcesettingsV1ValueEnumValue.fromJson(
                  json_['enumValue'] as core.Map<core.String, core.dynamic>)
              : null,
          stringMapValue: json_.containsKey('stringMapValue')
              ? GoogleCloudResourcesettingsV1ValueStringMap.fromJson(
                  json_['stringMapValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stringSetValue: json_.containsKey('stringSetValue')
              ? GoogleCloudResourcesettingsV1ValueStringSet.fromJson(
                  json_['stringSetValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (durationValue != null) 'durationValue': durationValue!,
        if (enumValue != null) 'enumValue': enumValue!,
        if (stringMapValue != null) 'stringMapValue': stringMapValue!,
        if (stringSetValue != null) 'stringSetValue': stringSetValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// A enum value that can hold any enum type setting values.
///
/// Each enum type is represented by a number, this representation is stored in
/// the definitions.
class GoogleCloudResourcesettingsV1ValueEnumValue {
  /// The value of this enum
  core.String? value;

  GoogleCloudResourcesettingsV1ValueEnumValue({
    this.value,
  });

  GoogleCloudResourcesettingsV1ValueEnumValue.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// A string-\>string map value that can hold a map of string keys to string
/// values.
///
/// The maximum length of each string is 200 characters and there can be a
/// maximum of 50 key-value pairs in the map.
class GoogleCloudResourcesettingsV1ValueStringMap {
  /// The key-value pairs in the map
  core.Map<core.String, core.String>? mappings;

  GoogleCloudResourcesettingsV1ValueStringMap({
    this.mappings,
  });

  GoogleCloudResourcesettingsV1ValueStringMap.fromJson(core.Map json_)
      : this(
          mappings: json_.containsKey('mappings')
              ? (json_['mappings'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mappings != null) 'mappings': mappings!,
      };
}

/// A string set value that can hold a set of strings.
///
/// The maximum length of each string is 200 characters and there can be a
/// maximum of 50 strings in the string set.
class GoogleCloudResourcesettingsV1ValueStringSet {
  /// The strings in the set
  core.List<core.String>? values;

  GoogleCloudResourcesettingsV1ValueStringSet({
    this.values,
  });

  GoogleCloudResourcesettingsV1ValueStringSet.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}
