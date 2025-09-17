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

/// Security Command Center API - v1beta2
///
/// Security Command Center API provides access to temporal views of assets and
/// findings within an organization.
///
/// For more information, see <https://cloud.google.com/security-command-center>
///
/// Create an instance of [SecurityCommandCenterApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersContainerThreatDetectionSettingsResource]
///   - [FoldersEventThreatDetectionSettingsResource]
///   - [FoldersRapidVulnerabilityDetectionSettingsResource]
///   - [FoldersSecurityHealthAnalyticsSettingsResource]
///   - [FoldersVirtualMachineThreatDetectionSettingsResource]
///   - [FoldersWebSecurityScannerSettingsResource]
/// - [OrganizationsResource]
///   - [OrganizationsContainerThreatDetectionSettingsResource]
///   - [OrganizationsEventThreatDetectionSettingsResource]
///   - [OrganizationsRapidVulnerabilityDetectionSettingsResource]
///   - [OrganizationsSecurityHealthAnalyticsSettingsResource]
///   - [OrganizationsVirtualMachineThreatDetectionSettingsResource]
///   - [OrganizationsWebSecurityScannerSettingsResource]
/// - [ProjectsResource]
///   - [ProjectsContainerThreatDetectionSettingsResource]
///   - [ProjectsEventThreatDetectionSettingsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsClustersResource]
///       - [ProjectsLocationsClustersContainerThreatDetectionSettingsResource]
///   - [ProjectsRapidVulnerabilityDetectionSettingsResource]
///   - [ProjectsSecurityHealthAnalyticsSettingsResource]
///   - [ProjectsVirtualMachineThreatDetectionSettingsResource]
///   - [ProjectsWebSecurityScannerSettingsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  FoldersContainerThreatDetectionSettingsResource
  get containerThreatDetectionSettings =>
      FoldersContainerThreatDetectionSettingsResource(_requester);
  FoldersEventThreatDetectionSettingsResource
  get eventThreatDetectionSettings =>
      FoldersEventThreatDetectionSettingsResource(_requester);
  FoldersRapidVulnerabilityDetectionSettingsResource
  get rapidVulnerabilityDetectionSettings =>
      FoldersRapidVulnerabilityDetectionSettingsResource(_requester);
  FoldersSecurityHealthAnalyticsSettingsResource
  get securityHealthAnalyticsSettings =>
      FoldersSecurityHealthAnalyticsSettingsResource(_requester);
  FoldersVirtualMachineThreatDetectionSettingsResource
  get virtualMachineThreatDetectionSettings =>
      FoldersVirtualMachineThreatDetectionSettingsResource(_requester);
  FoldersWebSecurityScannerSettingsResource get webSecurityScannerSettings =>
      FoldersWebSecurityScannerSettingsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;

  /// Get the ContainerThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetContainerThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateContainerThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  getContainerThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the EventThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetEventThreatDetectionSettings does not calculate
  /// the effective service settings for the resource, which accounts for
  /// inherited settings and defaults. Instead, use
  /// CalculateEventThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> getEventThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the RapidVulnerabilityDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetRapidVulnerabilityDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateRapidVulnerabilityDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RapidVulnerabilityDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings>
  getRapidVulnerabilityDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the SecurityCenterSettings resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityCenterSettings to retrieve.
  /// Format: organizations/{organization}/securityCenterSettings Format:
  /// folders/{folder}/securityCenterSettings Format:
  /// projects/{project}/securityCenterSettings
  /// Value must have pattern `^folders/\[^/\]+/securityCenterSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityCenterSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityCenterSettings> getSecurityCenterSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityCenterSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the SecurityHealthAnalyticsSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetSecurityHealthAnalyticsSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateSecurityHealthAnalyticsSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityHealthAnalyticsSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings>
  getSecurityHealthAnalyticsSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the VirtualMachineThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetVirtualMachineThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateVirtualMachineThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the VirtualMachineThreatDetectionSettings
  /// to retrieve. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings>
  getVirtualMachineThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the WebSecurityScannerSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetWebSecurityScannerSettings does not calculate
  /// the effective service settings for the resource, which accounts for
  /// inherited settings and defaults. Instead, use
  /// CalculateWebSecurityScannerSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the WebSecurityScannerSettings to retrieve.
  /// Formats: * organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern `^folders/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> getWebSecurityScannerSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the ContainerThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// ContainerThreatDetectionSettings. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  updateContainerThreatDetectionSettings(
    ContainerThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the EventThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// EventThreatDetectionSettings. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> updateEventThreatDetectionSettings(
    EventThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the RapidVulnerabilityDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the RapidVulnerabilityDetectionSettings.
  /// Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings>
  updateRapidVulnerabilityDetectionSettings(
    RapidVulnerabilityDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the SecurityHealthAnalyticsSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// SecurityHealthAnalyticsSettings. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings>
  updateSecurityHealthAnalyticsSettings(
    SecurityHealthAnalyticsSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the VirtualMachineThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// VirtualMachineThreatDetectionSettings. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings>
  updateVirtualMachineThreatDetectionSettings(
    VirtualMachineThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the WebSecurityScannerSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the WebSecurityScannerSettings.
  /// Formats: * organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern `^folders/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> updateWebSecurityScannerSettings(
    WebSecurityScannerSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersContainerThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  FoldersContainerThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective ContainerThreatDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  FoldersEventThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective EventThreatDetectionSettings based on its level
  /// in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern `^folders/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersRapidVulnerabilityDetectionSettingsResource {
  final commons.ApiRequester _requester;

  FoldersRapidVulnerabilityDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective RapidVulnerabilityDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RapidVulnerabilityDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings> calculate(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  FoldersSecurityHealthAnalyticsSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective SecurityHealthAnalyticsSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityHealthAnalyticsSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersVirtualMachineThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  FoldersVirtualMachineThreatDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective VirtualMachineThreatDetectionSettings based on
  /// its level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the VirtualMachineThreatDetectionSettings
  /// to calculate. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^folders/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class FoldersWebSecurityScannerSettingsResource {
  final commons.ApiRequester _requester;

  FoldersWebSecurityScannerSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective WebSecurityScannerSettings based on its level in
  /// the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the WebSecurityScannerSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern `^folders/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsContainerThreatDetectionSettingsResource
  get containerThreatDetectionSettings =>
      OrganizationsContainerThreatDetectionSettingsResource(_requester);
  OrganizationsEventThreatDetectionSettingsResource
  get eventThreatDetectionSettings =>
      OrganizationsEventThreatDetectionSettingsResource(_requester);
  OrganizationsRapidVulnerabilityDetectionSettingsResource
  get rapidVulnerabilityDetectionSettings =>
      OrganizationsRapidVulnerabilityDetectionSettingsResource(_requester);
  OrganizationsSecurityHealthAnalyticsSettingsResource
  get securityHealthAnalyticsSettings =>
      OrganizationsSecurityHealthAnalyticsSettingsResource(_requester);
  OrganizationsVirtualMachineThreatDetectionSettingsResource
  get virtualMachineThreatDetectionSettings =>
      OrganizationsVirtualMachineThreatDetectionSettingsResource(_requester);
  OrganizationsWebSecurityScannerSettingsResource
  get webSecurityScannerSettings =>
      OrganizationsWebSecurityScannerSettingsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;

  /// Get the ContainerThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetContainerThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateContainerThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  getContainerThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the EventThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetEventThreatDetectionSettings does not calculate
  /// the effective service settings for the resource, which accounts for
  /// inherited settings and defaults. Instead, use
  /// CalculateEventThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> getEventThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the RapidVulnerabilityDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetRapidVulnerabilityDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateRapidVulnerabilityDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RapidVulnerabilityDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings>
  getRapidVulnerabilityDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the SecurityCenterSettings resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityCenterSettings to retrieve.
  /// Format: organizations/{organization}/securityCenterSettings Format:
  /// folders/{folder}/securityCenterSettings Format:
  /// projects/{project}/securityCenterSettings
  /// Value must have pattern `^organizations/\[^/\]+/securityCenterSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityCenterSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityCenterSettings> getSecurityCenterSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityCenterSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the SecurityHealthAnalyticsSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetSecurityHealthAnalyticsSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateSecurityHealthAnalyticsSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityHealthAnalyticsSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings>
  getSecurityHealthAnalyticsSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the Subscription resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription to retrieve. Format:
  /// organizations/{organization}/subscription
  /// Value must have pattern `^organizations/\[^/\]+/subscription$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> getSubscription(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the VirtualMachineThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetVirtualMachineThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateVirtualMachineThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the VirtualMachineThreatDetectionSettings
  /// to retrieve. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings>
  getVirtualMachineThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the WebSecurityScannerSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetWebSecurityScannerSettings does not calculate
  /// the effective service settings for the resource, which accounts for
  /// inherited settings and defaults. Instead, use
  /// CalculateWebSecurityScannerSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the WebSecurityScannerSettings to retrieve.
  /// Formats: * organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> getWebSecurityScannerSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the ContainerThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// ContainerThreatDetectionSettings. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  updateContainerThreatDetectionSettings(
    ContainerThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the EventThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// EventThreatDetectionSettings. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> updateEventThreatDetectionSettings(
    EventThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the RapidVulnerabilityDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the RapidVulnerabilityDetectionSettings.
  /// Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings>
  updateRapidVulnerabilityDetectionSettings(
    RapidVulnerabilityDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the SecurityHealthAnalyticsSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// SecurityHealthAnalyticsSettings. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings>
  updateSecurityHealthAnalyticsSettings(
    SecurityHealthAnalyticsSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the VirtualMachineThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// VirtualMachineThreatDetectionSettings. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings>
  updateVirtualMachineThreatDetectionSettings(
    VirtualMachineThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the WebSecurityScannerSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the WebSecurityScannerSettings.
  /// Formats: * organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> updateWebSecurityScannerSettings(
    WebSecurityScannerSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsContainerThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsContainerThreatDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective ContainerThreatDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsEventThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective EventThreatDetectionSettings based on its level
  /// in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsRapidVulnerabilityDetectionSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsRapidVulnerabilityDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective RapidVulnerabilityDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RapidVulnerabilityDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings> calculate(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsSecurityHealthAnalyticsSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective SecurityHealthAnalyticsSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityHealthAnalyticsSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsVirtualMachineThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsVirtualMachineThreatDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective VirtualMachineThreatDetectionSettings based on
  /// its level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the VirtualMachineThreatDetectionSettings
  /// to calculate. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsWebSecurityScannerSettingsResource {
  final commons.ApiRequester _requester;

  OrganizationsWebSecurityScannerSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective WebSecurityScannerSettings based on its level in
  /// the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the WebSecurityScannerSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern
  /// `^organizations/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsContainerThreatDetectionSettingsResource
  get containerThreatDetectionSettings =>
      ProjectsContainerThreatDetectionSettingsResource(_requester);
  ProjectsEventThreatDetectionSettingsResource
  get eventThreatDetectionSettings =>
      ProjectsEventThreatDetectionSettingsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsRapidVulnerabilityDetectionSettingsResource
  get rapidVulnerabilityDetectionSettings =>
      ProjectsRapidVulnerabilityDetectionSettingsResource(_requester);
  ProjectsSecurityHealthAnalyticsSettingsResource
  get securityHealthAnalyticsSettings =>
      ProjectsSecurityHealthAnalyticsSettingsResource(_requester);
  ProjectsVirtualMachineThreatDetectionSettingsResource
  get virtualMachineThreatDetectionSettings =>
      ProjectsVirtualMachineThreatDetectionSettingsResource(_requester);
  ProjectsWebSecurityScannerSettingsResource get webSecurityScannerSettings =>
      ProjectsWebSecurityScannerSettingsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Get the ContainerThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetContainerThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateContainerThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  getContainerThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the EventThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetEventThreatDetectionSettings does not calculate
  /// the effective service settings for the resource, which accounts for
  /// inherited settings and defaults. Instead, use
  /// CalculateEventThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> getEventThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the RapidVulnerabilityDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetRapidVulnerabilityDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateRapidVulnerabilityDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RapidVulnerabilityDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings>
  getRapidVulnerabilityDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the SecurityCenterSettings resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityCenterSettings to retrieve.
  /// Format: organizations/{organization}/securityCenterSettings Format:
  /// folders/{folder}/securityCenterSettings Format:
  /// projects/{project}/securityCenterSettings
  /// Value must have pattern `^projects/\[^/\]+/securityCenterSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityCenterSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityCenterSettings> getSecurityCenterSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityCenterSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the SecurityHealthAnalyticsSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetSecurityHealthAnalyticsSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateSecurityHealthAnalyticsSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityHealthAnalyticsSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings>
  getSecurityHealthAnalyticsSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the VirtualMachineThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetVirtualMachineThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateVirtualMachineThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the VirtualMachineThreatDetectionSettings
  /// to retrieve. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings>
  getVirtualMachineThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get the WebSecurityScannerSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetWebSecurityScannerSettings does not calculate
  /// the effective service settings for the resource, which accounts for
  /// inherited settings and defaults. Instead, use
  /// CalculateWebSecurityScannerSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the WebSecurityScannerSettings to retrieve.
  /// Formats: * organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern `^projects/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> getWebSecurityScannerSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the ContainerThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// ContainerThreatDetectionSettings. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  updateContainerThreatDetectionSettings(
    ContainerThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the EventThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// EventThreatDetectionSettings. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> updateEventThreatDetectionSettings(
    EventThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the RapidVulnerabilityDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the RapidVulnerabilityDetectionSettings.
  /// Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings>
  updateRapidVulnerabilityDetectionSettings(
    RapidVulnerabilityDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the SecurityHealthAnalyticsSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// SecurityHealthAnalyticsSettings. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings>
  updateSecurityHealthAnalyticsSettings(
    SecurityHealthAnalyticsSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the VirtualMachineThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// VirtualMachineThreatDetectionSettings. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings>
  updateVirtualMachineThreatDetectionSettings(
    VirtualMachineThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the WebSecurityScannerSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the WebSecurityScannerSettings.
  /// Formats: * organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern `^projects/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> updateWebSecurityScannerSettings(
    WebSecurityScannerSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsContainerThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsContainerThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective ContainerThreatDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsEventThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsEventThreatDetectionSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective EventThreatDetectionSettings based on its level
  /// in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the EventThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  /// Value must have pattern `^projects/\[^/\]+/eventThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersResource get clusters =>
      ProjectsLocationsClustersResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersContainerThreatDetectionSettingsResource
  get containerThreatDetectionSettings =>
      ProjectsLocationsClustersContainerThreatDetectionSettingsResource(
        _requester,
      );

  ProjectsLocationsClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Get the ContainerThreatDetectionSettings resource.
  ///
  /// In the returned settings response, a missing field only indicates that it
  /// was not explicitly set, so no assumption should be made about these
  /// fields. In other words, GetContainerThreatDetectionSettings does not
  /// calculate the effective service settings for the resource, which accounts
  /// for inherited settings and defaults. Instead, use
  /// CalculateContainerThreatDetectionSettings for this purpose.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// retrieve. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  getContainerThreatDetectionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the ContainerThreatDetectionSettings resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the
  /// ContainerThreatDetectionSettings. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings>
  updateContainerThreatDetectionSettings(
    ContainerThreatDetectionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsClustersContainerThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClustersContainerThreatDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective ContainerThreatDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ContainerThreatDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clusters/\[^/\]+/containerThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContainerThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContainerThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContainerThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsRapidVulnerabilityDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsRapidVulnerabilityDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective RapidVulnerabilityDetectionSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RapidVulnerabilityDetectionSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/rapidVulnerabilityDetectionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RapidVulnerabilityDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RapidVulnerabilityDetectionSettings> calculate(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RapidVulnerabilityDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsSecurityHealthAnalyticsSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsSecurityHealthAnalyticsSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective SecurityHealthAnalyticsSettings based on its
  /// level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the SecurityHealthAnalyticsSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/securityHealthAnalyticsSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityHealthAnalyticsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityHealthAnalyticsSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SecurityHealthAnalyticsSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsVirtualMachineThreatDetectionSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsVirtualMachineThreatDetectionSettingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Calculates the effective VirtualMachineThreatDetectionSettings based on
  /// its level in the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the VirtualMachineThreatDetectionSettings
  /// to calculate. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/virtualMachineThreatDetectionSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VirtualMachineThreatDetectionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VirtualMachineThreatDetectionSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VirtualMachineThreatDetectionSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsWebSecurityScannerSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsWebSecurityScannerSettingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Calculates the effective WebSecurityScannerSettings based on its level in
  /// the resource hierarchy and its settings.
  ///
  /// Settings provided closer to the target resource take precedence over those
  /// further away (e.g. folder will override organization level settings). The
  /// default SCC setting for the detector service defaults can be overridden at
  /// organization, folder and project levels. No assumptions should be made
  /// about the SCC defaults as it is considered an internal implementation
  /// detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the WebSecurityScannerSettings to
  /// calculate. Formats: *
  /// organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  /// Value must have pattern `^projects/\[^/\]+/webSecurityScannerSettings$`.
  ///
  /// [showEligibleModulesOnly] - Optional. When set, will only retrieve the
  /// modules that are in scope. By default, all modules will be shown.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebSecurityScannerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebSecurityScannerSettings> calculate(
    core.String name, {
    core.bool? showEligibleModulesOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (showEligibleModulesOnly != null)
        'showEligibleModulesOnly': ['${showEligibleModulesOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':calculate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebSecurityScannerSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Configuration of a module.
class Config {
  /// The state of enablement for the module at its level of the resource
  /// hierarchy.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? moduleEnablementState;

  /// The configuration value for the module.
  ///
  /// The absence of this field implies its inheritance from the parent.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? value;

  Config({this.moduleEnablementState, this.value});

  Config.fromJson(core.Map json_)
    : this(
        moduleEnablementState: json_['moduleEnablementState'] as core.String?,
        value:
            json_.containsKey('value')
                ? json_['value'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (moduleEnablementState != null)
      'moduleEnablementState': moduleEnablementState!,
    if (value != null) 'value': value!,
  };
}

/// Resource capturing the settings for the Container Threat Detection service.
class ContainerThreatDetectionSettings {
  /// The configurations including the state of enablement for the service's
  /// different modules.
  ///
  /// The absence of a module in the map implies its configuration is inherited
  /// from its parent's configuration.
  core.Map<core.String, Config>? modules;

  /// Identifier.
  ///
  /// The resource name of the ContainerThreatDetectionSettings. Formats: *
  /// organizations/{organization}/containerThreatDetectionSettings *
  /// folders/{folder}/containerThreatDetectionSettings *
  /// projects/{project}/containerThreatDetectionSettings *
  /// projects/{project}/locations/{location}/clusters/{cluster}/containerThreatDetectionSettings
  core.String? name;

  /// The service account used by Container Threat Detection for scanning.
  ///
  /// Service accounts are scoped at the project level meaning this field will
  /// be empty at any level above a project.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// The state of enablement for the service at its level of the resource
  /// hierarchy.
  ///
  /// A DISABLED state will override all module enablement_states to DISABLED.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? serviceEnablementState;

  /// The time the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ContainerThreatDetectionSettings({
    this.modules,
    this.name,
    this.serviceAccount,
    this.serviceEnablementState,
    this.updateTime,
  });

  ContainerThreatDetectionSettings.fromJson(core.Map json_)
    : this(
        modules: (json_['modules'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Config.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        name: json_['name'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceEnablementState: json_['serviceEnablementState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modules != null) 'modules': modules!,
    if (name != null) 'name': name!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceEnablementState != null)
      'serviceEnablementState': serviceEnablementState!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Details of a subscription.
class Details {
  /// The time the subscription has or will end.
  core.String? endTime;

  /// The time the subscription has or will start.
  core.String? startTime;

  /// The type of subscription
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "STANDARD" : The standard subscription.
  /// - "TRIAL" : The trial subscription.
  /// - "ALPHA" : The alpha subscription.
  /// - "DEMO" : The demo subscription for channel partners.
  /// - "PAY_AS_YOU_GO" : Pay-as-you-go subscription.
  core.String? type;

  Details({this.endTime, this.startTime, this.type});

  Details.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
    if (type != null) 'type': type!,
  };
}

/// Resource capturing the settings for the Event Threat Detection service.
class EventThreatDetectionSettings {
  /// The configurations including the state of enablement for the service's
  /// different modules.
  ///
  /// The absence of a module in the map implies its configuration is inherited
  /// from its parent's configuration.
  core.Map<core.String, Config>? modules;

  /// Identifier.
  ///
  /// The resource name of the EventThreatDetectionSettings. Formats: *
  /// organizations/{organization}/eventThreatDetectionSettings *
  /// folders/{folder}/eventThreatDetectionSettings *
  /// projects/{project}/eventThreatDetectionSettings
  core.String? name;

  /// The state of enablement for the service at its level of the resource
  /// hierarchy.
  ///
  /// A DISABLED state will override all module enablement_states to DISABLED.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? serviceEnablementState;

  /// The time the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  EventThreatDetectionSettings({
    this.modules,
    this.name,
    this.serviceEnablementState,
    this.updateTime,
  });

  EventThreatDetectionSettings.fromJson(core.Map json_)
    : this(
        modules: (json_['modules'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Config.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        name: json_['name'] as core.String?,
        serviceEnablementState: json_['serviceEnablementState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modules != null) 'modules': modules!,
    if (name != null) 'name': name!,
    if (serviceEnablementState != null)
      'serviceEnablementState': serviceEnablementState!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Resource capturing the settings for the Rapid Vulnerability Detection
/// service.
class RapidVulnerabilityDetectionSettings {
  /// The configurations including the state of enablement for the service's
  /// different modules.
  ///
  /// The absence of a module in the map implies its configuration is inherited
  /// from its parent's.
  core.Map<core.String, Config>? modules;

  /// The resource name of the RapidVulnerabilityDetectionSettings.
  ///
  /// Formats: *
  /// organizations/{organization}/rapidVulnerabilityDetectionSettings *
  /// folders/{folder}/rapidVulnerabilityDetectionSettings *
  /// projects/{project}/rapidVulnerabilityDetectionSettings
  core.String? name;

  /// The state of enablement for the service at its level of the resource
  /// hierarchy.
  ///
  /// A DISABLED state will override all module enablement_states to DISABLED.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? serviceEnablementState;

  /// The time the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  RapidVulnerabilityDetectionSettings({
    this.modules,
    this.name,
    this.serviceEnablementState,
    this.updateTime,
  });

  RapidVulnerabilityDetectionSettings.fromJson(core.Map json_)
    : this(
        modules: (json_['modules'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Config.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        name: json_['name'] as core.String?,
        serviceEnablementState: json_['serviceEnablementState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modules != null) 'modules': modules!,
    if (name != null) 'name': name!,
    if (serviceEnablementState != null)
      'serviceEnablementState': serviceEnablementState!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Resource capturing the settings for Security Center.
class SecurityCenterSettings {
  /// The resource name of the project to send logs to.
  ///
  /// This project must be part of the organization this resource resides in.
  /// The format is `projects/{project_id}`. An empty value disables logging.
  /// This value is only referenced by services that support log sink. Please
  /// refer to the documentation for an updated list of compatible services.
  /// This may only be specified for organization level onboarding.
  core.String? logSinkProject;

  /// The resource name of the SecurityCenterSettings.
  ///
  /// Format: organizations/{organization}/securityCenterSettings Format:
  /// folders/{folder}/securityCenterSettings Format:
  /// projects/{project}/securityCenterSettings
  core.String? name;

  /// Timestamp of when the customer organization was onboarded to SCC.
  ///
  /// Output only.
  core.String? onboardingTime;

  /// The organization level service account to be used for security center
  /// components.
  ///
  /// Output only.
  core.String? orgServiceAccount;

  SecurityCenterSettings({
    this.logSinkProject,
    this.name,
    this.onboardingTime,
    this.orgServiceAccount,
  });

  SecurityCenterSettings.fromJson(core.Map json_)
    : this(
        logSinkProject: json_['logSinkProject'] as core.String?,
        name: json_['name'] as core.String?,
        onboardingTime: json_['onboardingTime'] as core.String?,
        orgServiceAccount: json_['orgServiceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (logSinkProject != null) 'logSinkProject': logSinkProject!,
    if (name != null) 'name': name!,
    if (onboardingTime != null) 'onboardingTime': onboardingTime!,
    if (orgServiceAccount != null) 'orgServiceAccount': orgServiceAccount!,
  };
}

/// Resource capturing the settings for the Security Health Analytics service.
class SecurityHealthAnalyticsSettings {
  /// The configurations including the state of enablement for the service's
  /// different modules.
  ///
  /// The absence of a module in the map implies its configuration is inherited
  /// from its parent's configuration.
  core.Map<core.String, Config>? modules;

  /// Identifier.
  ///
  /// The resource name of the SecurityHealthAnalyticsSettings. Formats: *
  /// organizations/{organization}/securityHealthAnalyticsSettings *
  /// folders/{folder}/securityHealthAnalyticsSettings *
  /// projects/{project}/securityHealthAnalyticsSettings
  core.String? name;

  /// The service account used by Security Health Analytics detectors.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// The state of enablement for the service at its level of the resource
  /// hierarchy.
  ///
  /// A DISABLED state will override all module enablement_states to DISABLED.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? serviceEnablementState;

  /// The time the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  SecurityHealthAnalyticsSettings({
    this.modules,
    this.name,
    this.serviceAccount,
    this.serviceEnablementState,
    this.updateTime,
  });

  SecurityHealthAnalyticsSettings.fromJson(core.Map json_)
    : this(
        modules: (json_['modules'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Config.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        name: json_['name'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceEnablementState: json_['serviceEnablementState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modules != null) 'modules': modules!,
    if (name != null) 'name': name!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceEnablementState != null)
      'serviceEnablementState': serviceEnablementState!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Resource capturing the state of an organization's subscription.
class Subscription {
  /// The details of the most recent active subscription.
  ///
  /// If there has never been a subscription this will be empty.
  Details? details;

  /// The resource name of the subscription.
  ///
  /// Format: organizations/{organization}/subscription
  core.String? name;

  /// The tier of SCC features this organization currently has access to.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Default value. This value is unused.
  /// - "STANDARD" : The standard tier.
  /// - "PREMIUM" : The premium tier.
  /// - "ENTERPRISE" : The enterprise tier.
  /// - "ENTERPRISE_MC" : The enterprise MC tier.
  core.String? tier;

  Subscription({this.details, this.name, this.tier});

  Subscription.fromJson(core.Map json_)
    : this(
        details:
            json_.containsKey('details')
                ? Details.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        tier: json_['tier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (name != null) 'name': name!,
    if (tier != null) 'tier': tier!,
  };
}

/// Resource capturing the settings for the Virtual Machine Threat Detection
/// service.
class VirtualMachineThreatDetectionSettings {
  /// The configurations including the state of enablement for the service's
  /// different modules.
  ///
  /// The absence of a module in the map implies its configuration is inherited
  /// from its parent's configuration.
  core.Map<core.String, Config>? modules;

  /// Identifier.
  ///
  /// The resource name of the VirtualMachineThreatDetectionSettings. Formats: *
  /// organizations/{organization}/virtualMachineThreatDetectionSettings *
  /// folders/{folder}/virtualMachineThreatDetectionSettings *
  /// projects/{project}/virtualMachineThreatDetectionSettings
  core.String? name;

  /// The service account used by Virtual Machine Threat Detection detectors.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// The state of enablement for the service at its level of the resource
  /// hierarchy.
  ///
  /// A DISABLED state will override all module enablement_states to DISABLED.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? serviceEnablementState;

  /// The time the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  VirtualMachineThreatDetectionSettings({
    this.modules,
    this.name,
    this.serviceAccount,
    this.serviceEnablementState,
    this.updateTime,
  });

  VirtualMachineThreatDetectionSettings.fromJson(core.Map json_)
    : this(
        modules: (json_['modules'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Config.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        name: json_['name'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceEnablementState: json_['serviceEnablementState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modules != null) 'modules': modules!,
    if (name != null) 'name': name!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceEnablementState != null)
      'serviceEnablementState': serviceEnablementState!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Resource capturing the settings for the Web Security Scanner service.
class WebSecurityScannerSettings {
  /// The configurations including the state of enablement for the service's
  /// different modules.
  ///
  /// The absence of a module in the map implies its configuration is inherited
  /// from its parent's configuration.
  core.Map<core.String, Config>? modules;

  /// Identifier.
  ///
  /// The resource name of the WebSecurityScannerSettings. Formats: *
  /// organizations/{organization}/webSecurityScannerSettings *
  /// folders/{folder}/webSecurityScannerSettings *
  /// projects/{project}/webSecurityScannerSettings
  core.String? name;

  /// The state of enablement for the service at its level of the resource
  /// hierarchy.
  ///
  /// A DISABLED state will override all module enablement_states to DISABLED.
  /// Possible string values are:
  /// - "ENABLEMENT_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INHERITED" : State is inherited from the parent resource.
  /// - "ENABLED" : State is enabled.
  /// - "DISABLED" : State is disabled.
  core.String? serviceEnablementState;

  /// The time the settings were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  WebSecurityScannerSettings({
    this.modules,
    this.name,
    this.serviceEnablementState,
    this.updateTime,
  });

  WebSecurityScannerSettings.fromJson(core.Map json_)
    : this(
        modules: (json_['modules'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Config.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        name: json_['name'] as core.String?,
        serviceEnablementState: json_['serviceEnablementState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (modules != null) 'modules': modules!,
    if (name != null) 'name': name!,
    if (serviceEnablementState != null)
      'serviceEnablementState': serviceEnablementState!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}
