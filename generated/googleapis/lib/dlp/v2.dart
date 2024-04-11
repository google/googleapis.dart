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

/// Sensitive Data Protection (DLP) - v2
///
/// Discover and protect your sensitive data. A fully managed service designed
/// to help you discover, classify, and protect your valuable data assets with
/// ease.
///
/// For more information, see
/// <https://cloud.google.com/sensitive-data-protection/docs/>
///
/// Create an instance of [DLPApi] to access these resources:
///
/// - [InfoTypesResource]
/// - [LocationsResource]
///   - [LocationsInfoTypesResource]
/// - [OrganizationsResource]
///   - [OrganizationsDeidentifyTemplatesResource]
///   - [OrganizationsInspectTemplatesResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsColumnDataProfilesResource]
///     - [OrganizationsLocationsConnectionsResource]
///     - [OrganizationsLocationsDeidentifyTemplatesResource]
///     - [OrganizationsLocationsDiscoveryConfigsResource]
///     - [OrganizationsLocationsDlpJobsResource]
///     - [OrganizationsLocationsInspectTemplatesResource]
///     - [OrganizationsLocationsJobTriggersResource]
///     - [OrganizationsLocationsProjectDataProfilesResource]
///     - [OrganizationsLocationsStoredInfoTypesResource]
///     - [OrganizationsLocationsTableDataProfilesResource]
///   - [OrganizationsStoredInfoTypesResource]
/// - [ProjectsResource]
///   - [ProjectsContentResource]
///   - [ProjectsDeidentifyTemplatesResource]
///   - [ProjectsDlpJobsResource]
///   - [ProjectsImageResource]
///   - [ProjectsInspectTemplatesResource]
///   - [ProjectsJobTriggersResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsColumnDataProfilesResource]
///     - [ProjectsLocationsConnectionsResource]
///     - [ProjectsLocationsContentResource]
///     - [ProjectsLocationsDeidentifyTemplatesResource]
///     - [ProjectsLocationsDiscoveryConfigsResource]
///     - [ProjectsLocationsDlpJobsResource]
///     - [ProjectsLocationsImageResource]
///     - [ProjectsLocationsInspectTemplatesResource]
///     - [ProjectsLocationsJobTriggersResource]
///     - [ProjectsLocationsProjectDataProfilesResource]
///     - [ProjectsLocationsStoredInfoTypesResource]
///     - [ProjectsLocationsTableDataProfilesResource]
///   - [ProjectsStoredInfoTypesResource]
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

/// Discover and protect your sensitive data.
///
/// A fully managed service designed to help you discover, classify, and protect
/// your valuable data assets with ease.
class DLPApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  InfoTypesResource get infoTypes => InfoTypesResource(_requester);
  LocationsResource get locations => LocationsResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  DLPApi(http.Client client,
      {core.String rootUrl = 'https://dlp.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class InfoTypesResource {
  final commons.ApiRequester _requester;

  InfoTypesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a list of the sensitive information types that DLP API supports.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [filter] - filter to only return infoTypes supported by certain parts of
  /// the API. Defaults to supported_by=INSPECT.
  ///
  /// [languageCode] - BCP-47 language code for localized infoType friendly
  /// names. If omitted, or if localized strings are not available, en-US
  /// strings will be returned.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [parent] - The parent resource name. The format of this value is as
  /// follows: locations/ LOCATION_ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListInfoTypesResponse> list({
    core.String? filter,
    core.String? languageCode,
    core.String? locationId,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (locationId != null) 'locationId': [locationId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/infoTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsInfoTypesResource get infoTypes =>
      LocationsInfoTypesResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;
}

class LocationsInfoTypesResource {
  final commons.ApiRequester _requester;

  LocationsInfoTypesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a list of the sensitive information types that DLP API supports.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource name. The format of this value is as
  /// follows: locations/ LOCATION_ID
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [filter] - filter to only return infoTypes supported by certain parts of
  /// the API. Defaults to supported_by=INSPECT.
  ///
  /// [languageCode] - BCP-47 language code for localized infoType friendly
  /// names. If omitted, or if localized strings are not available, en-US
  /// strings will be returned.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListInfoTypesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? languageCode,
    core.String? locationId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (locationId != null) 'locationId': [locationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/infoTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsDeidentifyTemplatesResource get deidentifyTemplates =>
      OrganizationsDeidentifyTemplatesResource(_requester);
  OrganizationsInspectTemplatesResource get inspectTemplates =>
      OrganizationsInspectTemplatesResource(_requester);
  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);
  OrganizationsStoredInfoTypesResource get storedInfoTypes =>
      OrganizationsStoredInfoTypesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for reusing frequently used configuration for
  /// de-identifying content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> create(
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be deleted, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be read, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListDeidentifyTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDeidentifyTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDeidentifyTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and deidentify template
  /// to be updated, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> patch(
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for reusing frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> create(
    GooglePrivacyDlpV2CreateInspectTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be deleted, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/inspectTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be read, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListInspectTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListInspectTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListInspectTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and inspectTemplate to be
  /// updated, for example `organizations/433245324/inspectTemplates/432452342`
  /// or projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> patch(
    GooglePrivacyDlpV2UpdateInspectTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsColumnDataProfilesResource get columnDataProfiles =>
      OrganizationsLocationsColumnDataProfilesResource(_requester);
  OrganizationsLocationsConnectionsResource get connections =>
      OrganizationsLocationsConnectionsResource(_requester);
  OrganizationsLocationsDeidentifyTemplatesResource get deidentifyTemplates =>
      OrganizationsLocationsDeidentifyTemplatesResource(_requester);
  OrganizationsLocationsDiscoveryConfigsResource get discoveryConfigs =>
      OrganizationsLocationsDiscoveryConfigsResource(_requester);
  OrganizationsLocationsDlpJobsResource get dlpJobs =>
      OrganizationsLocationsDlpJobsResource(_requester);
  OrganizationsLocationsInspectTemplatesResource get inspectTemplates =>
      OrganizationsLocationsInspectTemplatesResource(_requester);
  OrganizationsLocationsJobTriggersResource get jobTriggers =>
      OrganizationsLocationsJobTriggersResource(_requester);
  OrganizationsLocationsProjectDataProfilesResource get projectDataProfiles =>
      OrganizationsLocationsProjectDataProfilesResource(_requester);
  OrganizationsLocationsStoredInfoTypesResource get storedInfoTypes =>
      OrganizationsLocationsStoredInfoTypesResource(_requester);
  OrganizationsLocationsTableDataProfilesResource get tableDataProfiles =>
      OrganizationsLocationsTableDataProfilesResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsLocationsColumnDataProfilesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsColumnDataProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a column data profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name, for example
  /// `organizations/12345/locations/us/columnDataProfiles/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/columnDataProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ColumnDataProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ColumnDataProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ColumnDataProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists column data profiles for an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the organization or project, for
  /// example `organizations/433245324/locations/europe` or
  /// `projects/project-id/locations/asia`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values: - `table_data_profile_name` - The name of the
  /// related table data profile. - `project_id` - The Google Cloud project ID.
  /// (REQUIRED) - `dataset_id` - The BigQuery dataset ID. (REQUIRED) -
  /// `table_id` - The BigQuery table ID. (REQUIRED) - `field_id` - The ID of
  /// the BigQuery field. - `info_type` - The infotype detected in the resource.
  /// - `sensitivity_level` - HIGH|MEDIUM|LOW - `data_risk_level`: How much risk
  /// is associated with this data. - `status_code` - an RPC status code as
  /// defined in
  /// https://github.com/googleapis/googleapis/blob/master/google/rpc/code.proto
  /// * The operator must be `=` for project_id, dataset_id, and table_id. Other
  /// filters also support `!=`. Examples: * project_id = 12345 AND status_code
  /// = 1 * project_id = 12345 AND sensitivity_level = HIGH * project_id = 12345
  /// AND info_type = STREET_ADDRESS The length of this field should be no more
  /// than 500 characters.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Only one
  /// order field at a time is allowed. Examples: * `project_id asc` *
  /// `table_id` * `sensitivity_level desc` Supported fields are: -
  /// `project_id`: The Google Cloud project ID. - `dataset_id`: The ID of a
  /// BigQuery dataset. - `table_id`: The ID of a BigQuery table. -
  /// `sensitivity_level`: How sensitive the data in a column is, at most. -
  /// `data_risk_level`: How much risk is associated with this data. -
  /// `profile_last_generated`: When the profile was last updated in epoch
  /// seconds.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero, server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListColumnDataProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListColumnDataProfilesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/columnDataProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListColumnDataProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Searches for Connections in a parent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent name, typically an organization, without
  /// location. For example: "organizations/12345678".
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. * Supported fields/values - `state` -
  /// MISSING|AVAILABLE|ERROR
  ///
  /// [pageSize] - Optional. Number of results per page, max 1000.
  ///
  /// [pageToken] - Optional. Page token from a previous page to return the next
  /// set of results. If set, all other request fields must match the original
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2SearchConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2SearchConnectionsResponse> search(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/connections:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2SearchConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for reusing frequently used configuration for
  /// de-identifying content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> create(
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be deleted, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be read, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListDeidentifyTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDeidentifyTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDeidentifyTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and deidentify template
  /// to be updated, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> patch(
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsDiscoveryConfigsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDiscoveryConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a config for discovery to scan and profile storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value is as
  /// follows: `projects/`PROJECT_ID`/locations/`LOCATION_ID The following
  /// example `parent` string specifies a parent project with the identifier
  /// `example-project`, and specifies the `europe-west3` location for
  /// processing data: parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DiscoveryConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DiscoveryConfig> create(
    GooglePrivacyDlpV2CreateDiscoveryConfigRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/discoveryConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DiscoveryConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a discovery configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the config, for
  /// example `projects/dlp-test-project/discoveryConfigs/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/discoveryConfigs/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a discovery configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the configuration, for
  /// example `projects/dlp-test-project/discoveryConfigs/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/discoveryConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DiscoveryConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DiscoveryConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DiscoveryConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists discovery configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value is as
  /// follows: `projects/`PROJECT_ID`/locations/`LOCATION_ID The following
  /// example `parent` string specifies a parent project with the identifier
  /// `example-project`, and specifies the `europe-west3` location for
  /// processing data: parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [orderBy] - Comma separated list of config fields to order by, followed by
  /// `asc` or `desc` postfix. This list is case insensitive. The default
  /// sorting order is ascending. Redundant space characters are insignificant.
  /// Example: `name asc,update_time, create_time desc` Supported fields are: -
  /// `last_run_time`: corresponds to the last time the DiscoveryConfig ran. -
  /// `name`: corresponds to the DiscoveryConfig's name. - `status`: corresponds
  /// to DiscoveryConfig's status.
  ///
  /// [pageSize] - Size of the page. This value can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to ListDiscoveryConfigs. `order_by` field must not change for
  /// subsequent calls.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDiscoveryConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDiscoveryConfigsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/discoveryConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDiscoveryConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a discovery configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the configuration, for
  /// example `projects/dlp-test-project/discoveryConfigs/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/discoveryConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DiscoveryConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DiscoveryConfig> patch(
    GooglePrivacyDlpV2UpdateDiscoveryConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DiscoveryConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsDlpJobsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDlpJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists DlpJobs that match the specified filter in the request.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values for inspect jobs: - `state` -
  /// PENDING|RUNNING|CANCELED|FINISHED|FAILED - `inspected_storage` -
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The name of the
  /// trigger that created the job. - 'end_time` - Corresponds to the time the
  /// job finished. - 'start_time` - Corresponds to the time the job finished. *
  /// Supported fields for risk analysis jobs: - `state` -
  /// RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time
  /// the job finished. - 'start_time` - Corresponds to the time the job
  /// finished. * The operator must be `=` or `!=`. Examples: *
  /// inspected_storage = cloud_storage AND state = done * inspected_storage =
  /// cloud_storage OR inspected_storage = bigquery * inspected_storage =
  /// cloud_storage AND (state = done OR state = canceled) * end_time \>
  /// \"2017-12-12T00:00:00+00:00\" The length of this field should be no more
  /// than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, end_time asc, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the job was created. - `end_time`:
  /// corresponds to the time the job ended. - `name`: corresponds to the job's
  /// name. - `state`: corresponds to `state`
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [type] - The type of job. Defaults to `DlpJobType.INSPECT`
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDlpJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDlpJobsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for reusing frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> create(
    GooglePrivacyDlpV2CreateInspectTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be deleted, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/inspectTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be read, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListInspectTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListInspectTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListInspectTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and inspectTemplate to be
  /// updated, for example `organizations/433245324/inspectTemplates/432452342`
  /// or projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> patch(
    GooglePrivacyDlpV2UpdateInspectTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsJobTriggersResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsJobTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a job trigger to run DLP actions such as scanning storage for
  /// sensitive information on a set schedule.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> create(
    GooglePrivacyDlpV2CreateJobTriggerRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists job triggers.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// \`AND\` or \`OR\` logical operators. A sequence of restrictions implicitly
  /// uses \`AND\`. * A restriction has the form of \`{field} {operator}
  /// {value}\`. * Supported fields/values for inspect triggers: - \`status\` -
  /// HEALTHY|PAUSED|CANCELLED - \`inspected_storage\` -
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time\` - RFC 3339 formatted
  /// timestamp, surrounded by quotation marks. Nanoseconds are ignored. -
  /// 'error_count' - Number of errors that have occurred while running. * The
  /// operator must be \`=\` or \`!=\` for status and inspected_storage.
  /// Examples: * inspected_storage = cloud_storage AND status = HEALTHY *
  /// inspected_storage = cloud_storage OR inspected_storage = bigquery *
  /// inspected_storage = cloud_storage AND (state = PAUSED OR state = HEALTHY)
  /// * last_run_time \> \"2017-12-12T00:00:00+00:00\" The length of this field
  /// should be no more than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of triggeredJob fields to order by,
  /// followed by `asc` or `desc` postfix. This list is case insensitive. The
  /// default sorting order is ascending. Redundant space characters are
  /// insignificant. Example: `name asc,update_time, create_time desc` Supported
  /// fields are: - `create_time`: corresponds to the time the JobTrigger was
  /// created. - `update_time`: corresponds to the time the JobTrigger was last
  /// updated. - `last_run_time`: corresponds to the last time the JobTrigger
  /// ran. - `name`: corresponds to the JobTrigger's name. - `display_name`:
  /// corresponds to the JobTrigger's display name. - `status`: corresponds to
  /// JobTrigger's status.
  ///
  /// [pageSize] - Size of the page. This value can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to ListJobTriggers. `order_by` field must not change for subsequent
  /// calls.
  ///
  /// [type] - The type of jobs. Will use `DlpJobType.INSPECT` if not set.
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListJobTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListJobTriggersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> patch(
    GooglePrivacyDlpV2UpdateJobTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsProjectDataProfilesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsProjectDataProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a project data profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name, for example
  /// `organizations/12345/locations/us/projectDataProfiles/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/projectDataProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ProjectDataProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ProjectDataProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ProjectDataProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists project data profiles for an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. organizations/{org_id}/locations/{loc_id}
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values: - `sensitivity_level` - HIGH|MODERATE|LOW -
  /// `data_risk_level` - HIGH|MODERATE|LOW - `status_code` - an RPC status code
  /// as defined in
  /// https://github.com/googleapis/googleapis/blob/master/google/rpc/code.proto
  /// * The operator must be `=` or `!=`. Examples: * `project_id = 12345 AND
  /// status_code = 1` * `project_id = 12345 AND sensitivity_level = HIGH` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Only one
  /// order field at a time is allowed. Examples: * `project_id` *
  /// `sensitivity_level desc` Supported fields are: - `project_id`: Google
  /// Cloud project ID - `sensitivity_level`: How sensitive the data in a
  /// project is, at most. - `data_risk_level`: How much risk is associated with
  /// this data. - `profile_last_generated`: When the profile was last updated
  /// in epoch seconds.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero, server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListProjectDataProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListProjectDataProfilesResponse> list(
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

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/projectDataProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListProjectDataProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> create(
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be deleted, for example
  /// `organizations/433245324/storedInfoTypes/432452342` or
  /// projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be read, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the most recent version of the
  /// resource was created. - `state`: corresponds to the state of the resource.
  /// - `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListStoredInfoTypes`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListStoredInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListStoredInfoTypesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and storedInfoType to be
  /// updated, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> patch(
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsTableDataProfilesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsTableDataProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a TableDataProfile.
  ///
  /// Will not prevent the profile from being regenerated if the table is still
  /// included in a discovery configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the table data profile.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/tableDataProfiles/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a table data profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name, for example
  /// `organizations/12345/locations/us/tableDataProfiles/53234423`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/tableDataProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2TableDataProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2TableDataProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2TableDataProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists table data profiles for an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the organization or project, for
  /// example `organizations/433245324/locations/europe` or
  /// `projects/project-id/locations/asia`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values: - `project_id` - The Google Cloud project ID. -
  /// `dataset_id` - The BigQuery dataset ID. - `table_id` - The ID of the
  /// BigQuery table. - `sensitivity_level` - HIGH|MODERATE|LOW -
  /// `data_risk_level` - HIGH|MODERATE|LOW - `resource_visibility`:
  /// PUBLIC|RESTRICTED - `status_code` - an RPC status code as defined in
  /// https://github.com/googleapis/googleapis/blob/master/google/rpc/code.proto
  /// * The operator must be `=` or `!=`. Examples: * `project_id = 12345 AND
  /// status_code = 1` * `project_id = 12345 AND sensitivity_level = HIGH` *
  /// `project_id = 12345 AND resource_visibility = PUBLIC` The length of this
  /// field should be no more than 500 characters.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Only one
  /// order field at a time is allowed. Examples: * `project_id asc` *
  /// `table_id` * `sensitivity_level desc` Supported fields are: -
  /// `project_id`: The Google Cloud project ID. - `dataset_id`: The ID of a
  /// BigQuery dataset. - `table_id`: The ID of a BigQuery table. -
  /// `sensitivity_level`: How sensitive the data in a table is, at most. -
  /// `data_risk_level`: How much risk is associated with this data. -
  /// `profile_last_generated`: When the profile was last updated in epoch
  /// seconds. - `last_modified`: The last time the resource was modified. -
  /// `resource_visibility`: Visibility restriction for this resource. -
  /// `row_count`: Number of rows in this resource.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero, server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListTableDataProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListTableDataProfilesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tableDataProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListTableDataProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  OrganizationsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> create(
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be deleted, for example
  /// `organizations/433245324/storedInfoTypes/432452342` or
  /// projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern `^organizations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be read, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern `^organizations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the most recent version of the
  /// resource was created. - `state`: corresponds to the state of the resource.
  /// - `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListStoredInfoTypes`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListStoredInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListStoredInfoTypesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and storedInfoType to be
  /// updated, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern `^organizations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> patch(
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsContentResource get content => ProjectsContentResource(_requester);
  ProjectsDeidentifyTemplatesResource get deidentifyTemplates =>
      ProjectsDeidentifyTemplatesResource(_requester);
  ProjectsDlpJobsResource get dlpJobs => ProjectsDlpJobsResource(_requester);
  ProjectsImageResource get image => ProjectsImageResource(_requester);
  ProjectsInspectTemplatesResource get inspectTemplates =>
      ProjectsInspectTemplatesResource(_requester);
  ProjectsJobTriggersResource get jobTriggers =>
      ProjectsJobTriggersResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsStoredInfoTypesResource get storedInfoTypes =>
      ProjectsStoredInfoTypesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsContentResource {
  final commons.ApiRequester _requester;

  ProjectsContentResource(commons.ApiRequester client) : _requester = client;

  /// De-identifies potentially sensitive info from a ContentItem.
  ///
  /// This method has limits on input size and output size. See
  /// https://cloud.google.com/sensitive-data-protection/docs/deidentify-sensitive-data
  /// to learn more. When no InfoTypes or CustomInfoTypes are specified in this
  /// request, the system will automatically choose what detectors to run. By
  /// default this may be all types, but may change over time as detectors are
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyContentResponse> deidentify(
    GooglePrivacyDlpV2DeidentifyContentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/content:deidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Finds potentially sensitive info in content.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// When no InfoTypes or CustomInfoTypes are specified in this request, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated. For
  /// how to guides, see
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-images
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-text,
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectContentResponse> inspect(
    GooglePrivacyDlpV2InspectContentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/content:inspect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Re-identifies content that has been de-identified.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/pseudonymization#re-identification_in_free_text_code_example
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ReidentifyContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ReidentifyContentResponse> reidentify(
    GooglePrivacyDlpV2ReidentifyContentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/content:reidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for reusing frequently used configuration for
  /// de-identifying content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> create(
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be deleted, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern `^projects/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be read, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern `^projects/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListDeidentifyTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDeidentifyTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDeidentifyTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and deidentify template
  /// to be updated, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern `^projects/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> patch(
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDlpJobsResource {
  final commons.ApiRequester _requester;

  ProjectsDlpJobsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running DlpJob.
  ///
  /// The server makes a best effort to cancel the DlpJob, but success is not
  /// guaranteed. See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource to be cancelled.
  /// Value must have pattern `^projects/\[^/\]+/dlpJobs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    GooglePrivacyDlpV2CancelDlpJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new job to inspect storage or calculate risk metrics.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more. When no InfoTypes or CustomInfoTypes are specified in
  /// inspect jobs, the system will automatically choose what detectors to run.
  /// By default this may be all types, but may change over time as detectors
  /// are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DlpJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DlpJob> create(
    GooglePrivacyDlpV2CreateDlpJobRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running DlpJob.
  ///
  /// This method indicates that the client is no longer interested in the
  /// DlpJob result. The job will be canceled if possible. See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource to be deleted.
  /// Value must have pattern `^projects/\[^/\]+/dlpJobs/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running DlpJob.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource.
  /// Value must have pattern `^projects/\[^/\]+/dlpJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DlpJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DlpJob> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DlpJobs that match the specified filter in the request.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values for inspect jobs: - `state` -
  /// PENDING|RUNNING|CANCELED|FINISHED|FAILED - `inspected_storage` -
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The name of the
  /// trigger that created the job. - 'end_time` - Corresponds to the time the
  /// job finished. - 'start_time` - Corresponds to the time the job finished. *
  /// Supported fields for risk analysis jobs: - `state` -
  /// RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time
  /// the job finished. - 'start_time` - Corresponds to the time the job
  /// finished. * The operator must be `=` or `!=`. Examples: *
  /// inspected_storage = cloud_storage AND state = done * inspected_storage =
  /// cloud_storage OR inspected_storage = bigquery * inspected_storage =
  /// cloud_storage AND (state = done OR state = canceled) * end_time \>
  /// \"2017-12-12T00:00:00+00:00\" The length of this field should be no more
  /// than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, end_time asc, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the job was created. - `end_time`:
  /// corresponds to the time the job ended. - `name`: corresponds to the job's
  /// name. - `state`: corresponds to `state`
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [type] - The type of job. Defaults to `DlpJobType.INSPECT`
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDlpJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDlpJobsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsImageResource {
  final commons.ApiRequester _requester;

  ProjectsImageResource(commons.ApiRequester client) : _requester = client;

  /// Redacts potentially sensitive info from an image.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/redacting-sensitive-data-images
  /// to learn more. When no InfoTypes or CustomInfoTypes are specified in this
  /// request, the system will automatically choose what detectors to run. By
  /// default this may be all types, but may change over time as detectors are
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2RedactImageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2RedactImageResponse> redact(
    GooglePrivacyDlpV2RedactImageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/image:redact';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2RedactImageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for reusing frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> create(
    GooglePrivacyDlpV2CreateInspectTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be deleted, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern `^projects/\[^/\]+/inspectTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be read, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern `^projects/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListInspectTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListInspectTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListInspectTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and inspectTemplate to be
  /// updated, for example `organizations/433245324/inspectTemplates/432452342`
  /// or projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern `^projects/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> patch(
    GooglePrivacyDlpV2UpdateInspectTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobTriggersResource {
  final commons.ApiRequester _requester;

  ProjectsJobTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Activate a job trigger.
  ///
  /// Causes the immediate execute of a trigger instead of waiting on the
  /// trigger event to occur.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the trigger to activate, for example
  /// `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern `^projects/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DlpJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DlpJob> activate(
    GooglePrivacyDlpV2ActivateJobTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a job trigger to run DLP actions such as scanning storage for
  /// sensitive information on a set schedule.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> create(
    GooglePrivacyDlpV2CreateJobTriggerRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern `^projects/\[^/\]+/jobTriggers/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern `^projects/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists job triggers.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// \`AND\` or \`OR\` logical operators. A sequence of restrictions implicitly
  /// uses \`AND\`. * A restriction has the form of \`{field} {operator}
  /// {value}\`. * Supported fields/values for inspect triggers: - \`status\` -
  /// HEALTHY|PAUSED|CANCELLED - \`inspected_storage\` -
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time\` - RFC 3339 formatted
  /// timestamp, surrounded by quotation marks. Nanoseconds are ignored. -
  /// 'error_count' - Number of errors that have occurred while running. * The
  /// operator must be \`=\` or \`!=\` for status and inspected_storage.
  /// Examples: * inspected_storage = cloud_storage AND status = HEALTHY *
  /// inspected_storage = cloud_storage OR inspected_storage = bigquery *
  /// inspected_storage = cloud_storage AND (state = PAUSED OR state = HEALTHY)
  /// * last_run_time \> \"2017-12-12T00:00:00+00:00\" The length of this field
  /// should be no more than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of triggeredJob fields to order by,
  /// followed by `asc` or `desc` postfix. This list is case insensitive. The
  /// default sorting order is ascending. Redundant space characters are
  /// insignificant. Example: `name asc,update_time, create_time desc` Supported
  /// fields are: - `create_time`: corresponds to the time the JobTrigger was
  /// created. - `update_time`: corresponds to the time the JobTrigger was last
  /// updated. - `last_run_time`: corresponds to the last time the JobTrigger
  /// ran. - `name`: corresponds to the JobTrigger's name. - `display_name`:
  /// corresponds to the JobTrigger's display name. - `status`: corresponds to
  /// JobTrigger's status.
  ///
  /// [pageSize] - Size of the page. This value can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to ListJobTriggers. `order_by` field must not change for subsequent
  /// calls.
  ///
  /// [type] - The type of jobs. Will use `DlpJobType.INSPECT` if not set.
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListJobTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListJobTriggersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern `^projects/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> patch(
    GooglePrivacyDlpV2UpdateJobTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsColumnDataProfilesResource get columnDataProfiles =>
      ProjectsLocationsColumnDataProfilesResource(_requester);
  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsContentResource get content =>
      ProjectsLocationsContentResource(_requester);
  ProjectsLocationsDeidentifyTemplatesResource get deidentifyTemplates =>
      ProjectsLocationsDeidentifyTemplatesResource(_requester);
  ProjectsLocationsDiscoveryConfigsResource get discoveryConfigs =>
      ProjectsLocationsDiscoveryConfigsResource(_requester);
  ProjectsLocationsDlpJobsResource get dlpJobs =>
      ProjectsLocationsDlpJobsResource(_requester);
  ProjectsLocationsImageResource get image =>
      ProjectsLocationsImageResource(_requester);
  ProjectsLocationsInspectTemplatesResource get inspectTemplates =>
      ProjectsLocationsInspectTemplatesResource(_requester);
  ProjectsLocationsJobTriggersResource get jobTriggers =>
      ProjectsLocationsJobTriggersResource(_requester);
  ProjectsLocationsProjectDataProfilesResource get projectDataProfiles =>
      ProjectsLocationsProjectDataProfilesResource(_requester);
  ProjectsLocationsStoredInfoTypesResource get storedInfoTypes =>
      ProjectsLocationsStoredInfoTypesResource(_requester);
  ProjectsLocationsTableDataProfilesResource get tableDataProfiles =>
      ProjectsLocationsTableDataProfilesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsColumnDataProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsColumnDataProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a column data profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name, for example
  /// `organizations/12345/locations/us/columnDataProfiles/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/columnDataProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ColumnDataProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ColumnDataProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ColumnDataProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists column data profiles for an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the organization or project, for
  /// example `organizations/433245324/locations/europe` or
  /// `projects/project-id/locations/asia`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values: - `table_data_profile_name` - The name of the
  /// related table data profile. - `project_id` - The Google Cloud project ID.
  /// (REQUIRED) - `dataset_id` - The BigQuery dataset ID. (REQUIRED) -
  /// `table_id` - The BigQuery table ID. (REQUIRED) - `field_id` - The ID of
  /// the BigQuery field. - `info_type` - The infotype detected in the resource.
  /// - `sensitivity_level` - HIGH|MEDIUM|LOW - `data_risk_level`: How much risk
  /// is associated with this data. - `status_code` - an RPC status code as
  /// defined in
  /// https://github.com/googleapis/googleapis/blob/master/google/rpc/code.proto
  /// * The operator must be `=` for project_id, dataset_id, and table_id. Other
  /// filters also support `!=`. Examples: * project_id = 12345 AND status_code
  /// = 1 * project_id = 12345 AND sensitivity_level = HIGH * project_id = 12345
  /// AND info_type = STREET_ADDRESS The length of this field should be no more
  /// than 500 characters.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Only one
  /// order field at a time is allowed. Examples: * `project_id asc` *
  /// `table_id` * `sensitivity_level desc` Supported fields are: -
  /// `project_id`: The Google Cloud project ID. - `dataset_id`: The ID of a
  /// BigQuery dataset. - `table_id`: The ID of a BigQuery table. -
  /// `sensitivity_level`: How sensitive the data in a column is, at most. -
  /// `data_risk_level`: How much risk is associated with this data. -
  /// `profile_last_generated`: When the profile was last updated in epoch
  /// seconds.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero, server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListColumnDataProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListColumnDataProfilesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/columnDataProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListColumnDataProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a Connection to an external data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name in the format:
  /// "projects/{project}/locations/{location}".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2Connection> create(
    GooglePrivacyDlpV2CreateConnectionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Connection to be deleted, in the
  /// format:
  /// "projects/{project}/locations/{location}/connections/{connection}".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a Connection by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name in the format:
  /// "projects/{project}/locations/{location}/connections/{connection}".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2Connection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Connections in a parent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent name, for example:
  /// "projects/project-id/locations/global".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. * Supported fields/values - `state` -
  /// MISSING|AVAILABLE|ERROR
  ///
  /// [pageSize] - Optional. Number of results per page, max 1000.
  ///
  /// [pageToken] - Optional. Page token from a previous page to return the next
  /// set of results. If set, all other request fields must match the original
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListConnectionsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a Connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name in the format:
  /// "projects/{project}/locations/{location}/connections/{connection}".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2Connection> patch(
    GooglePrivacyDlpV2UpdateConnectionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2Connection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for Connections in a parent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent name, typically an organization, without
  /// location. For example: "organizations/12345678".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. * Supported fields/values - `state` -
  /// MISSING|AVAILABLE|ERROR
  ///
  /// [pageSize] - Optional. Number of results per page, max 1000.
  ///
  /// [pageToken] - Optional. Page token from a previous page to return the next
  /// set of results. If set, all other request fields must match the original
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2SearchConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2SearchConnectionsResponse> search(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/connections:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2SearchConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsContentResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsContentResource(commons.ApiRequester client)
      : _requester = client;

  /// De-identifies potentially sensitive info from a ContentItem.
  ///
  /// This method has limits on input size and output size. See
  /// https://cloud.google.com/sensitive-data-protection/docs/deidentify-sensitive-data
  /// to learn more. When no InfoTypes or CustomInfoTypes are specified in this
  /// request, the system will automatically choose what detectors to run. By
  /// default this may be all types, but may change over time as detectors are
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyContentResponse> deidentify(
    GooglePrivacyDlpV2DeidentifyContentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/content:deidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Finds potentially sensitive info in content.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// When no InfoTypes or CustomInfoTypes are specified in this request, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated. For
  /// how to guides, see
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-images
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-text,
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectContentResponse> inspect(
    GooglePrivacyDlpV2InspectContentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/content:inspect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Re-identifies content that has been de-identified.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/pseudonymization#re-identification_in_free_text_code_example
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ReidentifyContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ReidentifyContentResponse> reidentify(
    GooglePrivacyDlpV2ReidentifyContentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/content:reidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for reusing frequently used configuration for
  /// de-identifying content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> create(
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be deleted, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and deidentify
  /// template to be read, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListDeidentifyTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDeidentifyTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDeidentifyTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates-deid
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and deidentify template
  /// to be updated, for example
  /// `organizations/433245324/deidentifyTemplates/432452342` or
  /// projects/project-id/deidentifyTemplates/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deidentifyTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DeidentifyTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DeidentifyTemplate> patch(
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDiscoveryConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDiscoveryConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a config for discovery to scan and profile storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value is as
  /// follows: `projects/`PROJECT_ID`/locations/`LOCATION_ID The following
  /// example `parent` string specifies a parent project with the identifier
  /// `example-project`, and specifies the `europe-west3` location for
  /// processing data: parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DiscoveryConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DiscoveryConfig> create(
    GooglePrivacyDlpV2CreateDiscoveryConfigRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/discoveryConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DiscoveryConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a discovery configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the config, for
  /// example `projects/dlp-test-project/discoveryConfigs/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryConfigs/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a discovery configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the configuration, for
  /// example `projects/dlp-test-project/discoveryConfigs/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DiscoveryConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DiscoveryConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DiscoveryConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists discovery configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value is as
  /// follows: `projects/`PROJECT_ID`/locations/`LOCATION_ID The following
  /// example `parent` string specifies a parent project with the identifier
  /// `example-project`, and specifies the `europe-west3` location for
  /// processing data: parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [orderBy] - Comma separated list of config fields to order by, followed by
  /// `asc` or `desc` postfix. This list is case insensitive. The default
  /// sorting order is ascending. Redundant space characters are insignificant.
  /// Example: `name asc,update_time, create_time desc` Supported fields are: -
  /// `last_run_time`: corresponds to the last time the DiscoveryConfig ran. -
  /// `name`: corresponds to the DiscoveryConfig's name. - `status`: corresponds
  /// to DiscoveryConfig's status.
  ///
  /// [pageSize] - Size of the page. This value can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to ListDiscoveryConfigs. `order_by` field must not change for
  /// subsequent calls.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDiscoveryConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDiscoveryConfigsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/discoveryConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDiscoveryConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a discovery configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the configuration, for
  /// example `projects/dlp-test-project/discoveryConfigs/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveryConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DiscoveryConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DiscoveryConfig> patch(
    GooglePrivacyDlpV2UpdateDiscoveryConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DiscoveryConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDlpJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDlpJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running DlpJob.
  ///
  /// The server makes a best effort to cancel the DlpJob, but success is not
  /// guaranteed. See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dlpJobs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    GooglePrivacyDlpV2CancelDlpJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new job to inspect storage or calculate risk metrics.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more. When no InfoTypes or CustomInfoTypes are specified in
  /// inspect jobs, the system will automatically choose what detectors to run.
  /// By default this may be all types, but may change over time as detectors
  /// are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DlpJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DlpJob> create(
    GooglePrivacyDlpV2CreateDlpJobRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running DlpJob.
  ///
  /// This method indicates that the client is no longer interested in the
  /// DlpJob result. The job will be canceled if possible. See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dlpJobs/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Finish a running hybrid DlpJob.
  ///
  /// Triggers the finalization steps and running of any enabled actions that
  /// have not yet run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource to be finished.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dlpJobs/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> finish(
    GooglePrivacyDlpV2FinishDlpJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':finish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running DlpJob.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DlpJob resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dlpJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DlpJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DlpJob> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inspect hybrid content and store findings to a job.
  ///
  /// To review the findings, inspect the job. Inspection will occur
  /// asynchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the job to execute a hybrid inspect
  /// on, for example `projects/dlp-test-project/dlpJob/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dlpJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2HybridInspectResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2HybridInspectResponse> hybridInspect(
    GooglePrivacyDlpV2HybridInspectDlpJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':hybridInspect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2HybridInspectResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists DlpJobs that match the specified filter in the request.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-storage
  /// and
  /// https://cloud.google.com/sensitive-data-protection/docs/compute-risk-analysis
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values for inspect jobs: - `state` -
  /// PENDING|RUNNING|CANCELED|FINISHED|FAILED - `inspected_storage` -
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The name of the
  /// trigger that created the job. - 'end_time` - Corresponds to the time the
  /// job finished. - 'start_time` - Corresponds to the time the job finished. *
  /// Supported fields for risk analysis jobs: - `state` -
  /// RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time
  /// the job finished. - 'start_time` - Corresponds to the time the job
  /// finished. * The operator must be `=` or `!=`. Examples: *
  /// inspected_storage = cloud_storage AND state = done * inspected_storage =
  /// cloud_storage OR inspected_storage = bigquery * inspected_storage =
  /// cloud_storage AND (state = done OR state = canceled) * end_time \>
  /// \"2017-12-12T00:00:00+00:00\" The length of this field should be no more
  /// than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, end_time asc, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the job was created. - `end_time`:
  /// corresponds to the time the job ended. - `name`: corresponds to the job's
  /// name. - `state`: corresponds to `state`
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [type] - The type of job. Defaults to `DlpJobType.INSPECT`
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListDlpJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListDlpJobsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImageResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImageResource(commons.ApiRequester client)
      : _requester = client;

  /// Redacts potentially sensitive info from an image.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/redacting-sensitive-data-images
  /// to learn more. When no InfoTypes or CustomInfoTypes are specified in this
  /// request, the system will automatically choose what detectors to run. By
  /// default this may be all types, but may change over time as detectors are
  /// updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2RedactImageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2RedactImageResponse> redact(
    GooglePrivacyDlpV2RedactImageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/image:redact';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2RedactImageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for reusing frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> create(
    GooglePrivacyDlpV2CreateInspectTemplateRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be deleted, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/inspectTemplates/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and inspectTemplate
  /// to be read, for example
  /// `organizations/433245324/inspectTemplates/432452342` or
  /// projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc,update_time, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the template was created. -
  /// `update_time`: corresponds to the time the template was last updated. -
  /// `name`: corresponds to the template's name. - `display_name`: corresponds
  /// to the template's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListInspectTemplates`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListInspectTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListInspectTemplatesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-templates
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and inspectTemplate to be
  /// updated, for example `organizations/433245324/inspectTemplates/432452342`
  /// or projects/project-id/inspectTemplates/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/inspectTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2InspectTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2InspectTemplate> patch(
    GooglePrivacyDlpV2UpdateInspectTemplateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobTriggersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Activate a job trigger.
  ///
  /// Causes the immediate execute of a trigger instead of waiting on the
  /// trigger event to occur.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the trigger to activate, for example
  /// `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2DlpJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2DlpJob> activate(
    GooglePrivacyDlpV2ActivateJobTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a job trigger to run DLP actions such as scanning storage for
  /// sensitive information on a set schedule.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> create(
    GooglePrivacyDlpV2CreateJobTriggerRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inspect hybrid content and store findings to a trigger.
  ///
  /// The inspection will be processed asynchronously. To review the findings
  /// monitor the jobs within the trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the trigger to execute a hybrid
  /// inspect on, for example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2HybridInspectResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2HybridInspectResponse> hybridInspect(
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':hybridInspect';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2HybridInspectResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists job triggers.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// \`AND\` or \`OR\` logical operators. A sequence of restrictions implicitly
  /// uses \`AND\`. * A restriction has the form of \`{field} {operator}
  /// {value}\`. * Supported fields/values for inspect triggers: - \`status\` -
  /// HEALTHY|PAUSED|CANCELLED - \`inspected_storage\` -
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time\` - RFC 3339 formatted
  /// timestamp, surrounded by quotation marks. Nanoseconds are ignored. -
  /// 'error_count' - Number of errors that have occurred while running. * The
  /// operator must be \`=\` or \`!=\` for status and inspected_storage.
  /// Examples: * inspected_storage = cloud_storage AND status = HEALTHY *
  /// inspected_storage = cloud_storage OR inspected_storage = bigquery *
  /// inspected_storage = cloud_storage AND (state = PAUSED OR state = HEALTHY)
  /// * last_run_time \> \"2017-12-12T00:00:00+00:00\" The length of this field
  /// should be no more than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of triggeredJob fields to order by,
  /// followed by `asc` or `desc` postfix. This list is case insensitive. The
  /// default sorting order is ascending. Redundant space characters are
  /// insignificant. Example: `name asc,update_time, create_time desc` Supported
  /// fields are: - `create_time`: corresponds to the time the JobTrigger was
  /// created. - `update_time`: corresponds to the time the JobTrigger was last
  /// updated. - `last_run_time`: corresponds to the last time the JobTrigger
  /// ran. - `name`: corresponds to the JobTrigger's name. - `display_name`:
  /// corresponds to the JobTrigger's display name. - `status`: corresponds to
  /// JobTrigger's status.
  ///
  /// [pageSize] - Size of the page. This value can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to ListJobTriggers. `order_by` field must not change for subsequent
  /// calls.
  ///
  /// [type] - The type of jobs. Will use `DlpJobType.INSPECT` if not set.
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListJobTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListJobTriggersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a job trigger.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-job-triggers
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the project and the triggeredJob, for
  /// example `projects/dlp-test-project/jobTriggers/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTriggers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2JobTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2JobTrigger> patch(
    GooglePrivacyDlpV2UpdateJobTriggerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProjectDataProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProjectDataProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a project data profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name, for example
  /// `organizations/12345/locations/us/projectDataProfiles/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/projectDataProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ProjectDataProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ProjectDataProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ProjectDataProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists project data profiles for an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. organizations/{org_id}/locations/{loc_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values: - `sensitivity_level` - HIGH|MODERATE|LOW -
  /// `data_risk_level` - HIGH|MODERATE|LOW - `status_code` - an RPC status code
  /// as defined in
  /// https://github.com/googleapis/googleapis/blob/master/google/rpc/code.proto
  /// * The operator must be `=` or `!=`. Examples: * `project_id = 12345 AND
  /// status_code = 1` * `project_id = 12345 AND sensitivity_level = HIGH` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Only one
  /// order field at a time is allowed. Examples: * `project_id` *
  /// `sensitivity_level desc` Supported fields are: - `project_id`: Google
  /// Cloud project ID - `sensitivity_level`: How sensitive the data in a
  /// project is, at most. - `data_risk_level`: How much risk is associated with
  /// this data. - `profile_last_generated`: When the profile was last updated
  /// in epoch seconds.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero, server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListProjectDataProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListProjectDataProfilesResponse> list(
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

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/projectDataProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListProjectDataProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> create(
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be deleted, for example
  /// `organizations/433245324/storedInfoTypes/432452342` or
  /// projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be read, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the most recent version of the
  /// resource was created. - `state`: corresponds to the state of the resource.
  /// - `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListStoredInfoTypes`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListStoredInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListStoredInfoTypesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and storedInfoType to be
  /// updated, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> patch(
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTableDataProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTableDataProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a TableDataProfile.
  ///
  /// Will not prevent the profile from being regenerated if the table is still
  /// included in a discovery configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the table data profile.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tableDataProfiles/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a table data profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name, for example
  /// `organizations/12345/locations/us/tableDataProfiles/53234423`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tableDataProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2TableDataProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2TableDataProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2TableDataProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists table data profiles for an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the organization or project, for
  /// example `organizations/433245324/locations/europe` or
  /// `projects/project-id/locations/asia`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Allows filtering. Supported syntax: * Filter expressions are
  /// made up of one or more restrictions. * Restrictions can be combined by
  /// `AND` or `OR` logical operators. A sequence of restrictions implicitly
  /// uses `AND`. * A restriction has the form of `{field} {operator} {value}`.
  /// * Supported fields/values: - `project_id` - The Google Cloud project ID. -
  /// `dataset_id` - The BigQuery dataset ID. - `table_id` - The ID of the
  /// BigQuery table. - `sensitivity_level` - HIGH|MODERATE|LOW -
  /// `data_risk_level` - HIGH|MODERATE|LOW - `resource_visibility`:
  /// PUBLIC|RESTRICTED - `status_code` - an RPC status code as defined in
  /// https://github.com/googleapis/googleapis/blob/master/google/rpc/code.proto
  /// * The operator must be `=` or `!=`. Examples: * `project_id = 12345 AND
  /// status_code = 1` * `project_id = 12345 AND sensitivity_level = HIGH` *
  /// `project_id = 12345 AND resource_visibility = PUBLIC` The length of this
  /// field should be no more than 500 characters.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Only one
  /// order field at a time is allowed. Examples: * `project_id asc` *
  /// `table_id` * `sensitivity_level desc` Supported fields are: -
  /// `project_id`: The Google Cloud project ID. - `dataset_id`: The ID of a
  /// BigQuery dataset. - `table_id`: The ID of a BigQuery table. -
  /// `sensitivity_level`: How sensitive the data in a table is, at most. -
  /// `data_risk_level`: How much risk is associated with this data. -
  /// `profile_last_generated`: When the profile was last updated in epoch
  /// seconds. - `last_modified`: The last time the resource was modified. -
  /// `resource_visibility`: Visibility restriction for this resource. -
  /// `row_count`: Number of rows in this resource.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero, server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListTableDataProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListTableDataProfilesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tableDataProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListTableDataProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  ProjectsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID +
  /// Organizations scope, location specified:
  /// `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no
  /// location specified (defaults to global): `organizations/`ORG_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> create(
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be deleted, for example
  /// `organizations/433245324/storedInfoTypes/432452342` or
  /// projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern `^projects/\[^/\]+/storedInfoTypes/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the organization and storedInfoType to
  /// be read, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern `^projects/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/sensitive-data-protection/docs/specifying-location):
  /// + Projects scope, location specified:
  /// `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no
  /// location specified (defaults to global): `projects/`PROJECT_ID The
  /// following example `parent` string specifies a parent project with the
  /// identifier `example-project`, and specifies the `europe-west3` location
  /// for processing data:
  /// parent=projects/example-project/locations/europe-west3
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case insensitive. The default sorting
  /// order is ascending. Redundant space characters are insignificant. Example:
  /// `name asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to the time the most recent version of the
  /// resource was created. - `state`: corresponds to the state of the resource.
  /// - `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page. This value can be limited by the server. If
  /// zero server returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from the previous
  /// call to `ListStoredInfoTypes`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2ListStoredInfoTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2ListStoredInfoTypesResponse> list(
    core.String parent, {
    core.String? locationId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-stored-infotypes
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of organization and storedInfoType to be
  /// updated, for example `organizations/433245324/storedInfoTypes/432452342`
  /// or projects/project-id/storedInfoTypes/432452342.
  /// Value must have pattern `^projects/\[^/\]+/storedInfoTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GooglePrivacyDlpV2StoredInfoType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GooglePrivacyDlpV2StoredInfoType> patch(
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A task to execute on the completion of a job.
///
/// See https://cloud.google.com/sensitive-data-protection/docs/concepts-actions
/// to learn more.
class GooglePrivacyDlpV2Action {
  /// Create a de-identified copy of the input data.
  GooglePrivacyDlpV2Deidentify? deidentify;

  /// Sends an email when the job completes.
  ///
  /// The email goes to IAM project owners and technical
  /// [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
  GooglePrivacyDlpV2JobNotificationEmails? jobNotificationEmails;

  /// Publish a notification to a Pub/Sub topic.
  GooglePrivacyDlpV2PublishToPubSub? pubSub;

  /// Publish findings to Cloud Datahub.
  GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog?
      publishFindingsToCloudDataCatalog;

  /// Publish summary to Cloud Security Command Center (Alpha).
  GooglePrivacyDlpV2PublishSummaryToCscc? publishSummaryToCscc;

  /// Enable Stackdriver metric dlp.googleapis.com/finding_count.
  GooglePrivacyDlpV2PublishToStackdriver? publishToStackdriver;

  /// Save resulting findings in a provided location.
  GooglePrivacyDlpV2SaveFindings? saveFindings;

  GooglePrivacyDlpV2Action({
    this.deidentify,
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToCloudDataCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  GooglePrivacyDlpV2Action.fromJson(core.Map json_)
      : this(
          deidentify: json_.containsKey('deidentify')
              ? GooglePrivacyDlpV2Deidentify.fromJson(
                  json_['deidentify'] as core.Map<core.String, core.dynamic>)
              : null,
          jobNotificationEmails: json_.containsKey('jobNotificationEmails')
              ? GooglePrivacyDlpV2JobNotificationEmails.fromJson(
                  json_['jobNotificationEmails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pubSub: json_.containsKey('pubSub')
              ? GooglePrivacyDlpV2PublishToPubSub.fromJson(
                  json_['pubSub'] as core.Map<core.String, core.dynamic>)
              : null,
          publishFindingsToCloudDataCatalog: json_
                  .containsKey('publishFindingsToCloudDataCatalog')
              ? GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.fromJson(
                  json_['publishFindingsToCloudDataCatalog']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishSummaryToCscc: json_.containsKey('publishSummaryToCscc')
              ? GooglePrivacyDlpV2PublishSummaryToCscc.fromJson(
                  json_['publishSummaryToCscc']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishToStackdriver: json_.containsKey('publishToStackdriver')
              ? GooglePrivacyDlpV2PublishToStackdriver.fromJson(
                  json_['publishToStackdriver']
                      as core.Map<core.String, core.dynamic>)
              : null,
          saveFindings: json_.containsKey('saveFindings')
              ? GooglePrivacyDlpV2SaveFindings.fromJson(
                  json_['saveFindings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentify != null) 'deidentify': deidentify!,
        if (jobNotificationEmails != null)
          'jobNotificationEmails': jobNotificationEmails!,
        if (pubSub != null) 'pubSub': pubSub!,
        if (publishFindingsToCloudDataCatalog != null)
          'publishFindingsToCloudDataCatalog':
              publishFindingsToCloudDataCatalog!,
        if (publishSummaryToCscc != null)
          'publishSummaryToCscc': publishSummaryToCscc!,
        if (publishToStackdriver != null)
          'publishToStackdriver': publishToStackdriver!,
        if (saveFindings != null) 'saveFindings': saveFindings!,
      };
}

/// The results of an Action.
class GooglePrivacyDlpV2ActionDetails {
  /// Outcome of a de-identification action.
  GooglePrivacyDlpV2DeidentifyDataSourceDetails? deidentifyDetails;

  GooglePrivacyDlpV2ActionDetails({
    this.deidentifyDetails,
  });

  GooglePrivacyDlpV2ActionDetails.fromJson(core.Map json_)
      : this(
          deidentifyDetails: json_.containsKey('deidentifyDetails')
              ? GooglePrivacyDlpV2DeidentifyDataSourceDetails.fromJson(
                  json_['deidentifyDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyDetails != null) 'deidentifyDetails': deidentifyDetails!,
      };
}

/// Request message for ActivateJobTrigger.
typedef GooglePrivacyDlpV2ActivateJobTriggerRequest = $Empty;

/// Apply transformation to all findings.
typedef GooglePrivacyDlpV2AllInfoTypes = $Empty;

/// Catch-all for all other tables not specified by other filters.
///
/// Should always be last, except for single-table configurations, which will
/// only have a TableReference target.
typedef GooglePrivacyDlpV2AllOtherBigQueryTables = $Empty;

/// Match database resources not covered by any other filter.
typedef GooglePrivacyDlpV2AllOtherDatabaseResources = $Empty;

/// Apply to all text.
typedef GooglePrivacyDlpV2AllText = $Empty;

/// Result of a risk analysis operation request.
class GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails {
  /// Categorical stats result
  GooglePrivacyDlpV2CategoricalStatsResult? categoricalStatsResult;

  /// Delta-presence result
  GooglePrivacyDlpV2DeltaPresenceEstimationResult?
      deltaPresenceEstimationResult;

  /// K-anonymity result
  GooglePrivacyDlpV2KAnonymityResult? kAnonymityResult;

  /// K-map result
  GooglePrivacyDlpV2KMapEstimationResult? kMapEstimationResult;

  /// L-divesity result
  GooglePrivacyDlpV2LDiversityResult? lDiversityResult;

  /// Numerical stats result
  GooglePrivacyDlpV2NumericalStatsResult? numericalStatsResult;

  /// The configuration used for this job.
  GooglePrivacyDlpV2RequestedRiskAnalysisOptions? requestedOptions;

  /// Privacy metric to compute.
  GooglePrivacyDlpV2PrivacyMetric? requestedPrivacyMetric;

  /// Input dataset to compute metrics over.
  GooglePrivacyDlpV2BigQueryTable? requestedSourceTable;

  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails({
    this.categoricalStatsResult,
    this.deltaPresenceEstimationResult,
    this.kAnonymityResult,
    this.kMapEstimationResult,
    this.lDiversityResult,
    this.numericalStatsResult,
    this.requestedOptions,
    this.requestedPrivacyMetric,
    this.requestedSourceTable,
  });

  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(core.Map json_)
      : this(
          categoricalStatsResult: json_.containsKey('categoricalStatsResult')
              ? GooglePrivacyDlpV2CategoricalStatsResult.fromJson(
                  json_['categoricalStatsResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deltaPresenceEstimationResult:
              json_.containsKey('deltaPresenceEstimationResult')
                  ? GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(
                      json_['deltaPresenceEstimationResult']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kAnonymityResult: json_.containsKey('kAnonymityResult')
              ? GooglePrivacyDlpV2KAnonymityResult.fromJson(
                  json_['kAnonymityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kMapEstimationResult: json_.containsKey('kMapEstimationResult')
              ? GooglePrivacyDlpV2KMapEstimationResult.fromJson(
                  json_['kMapEstimationResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lDiversityResult: json_.containsKey('lDiversityResult')
              ? GooglePrivacyDlpV2LDiversityResult.fromJson(
                  json_['lDiversityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          numericalStatsResult: json_.containsKey('numericalStatsResult')
              ? GooglePrivacyDlpV2NumericalStatsResult.fromJson(
                  json_['numericalStatsResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedOptions: json_.containsKey('requestedOptions')
              ? GooglePrivacyDlpV2RequestedRiskAnalysisOptions.fromJson(
                  json_['requestedOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedPrivacyMetric: json_.containsKey('requestedPrivacyMetric')
              ? GooglePrivacyDlpV2PrivacyMetric.fromJson(
                  json_['requestedPrivacyMetric']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedSourceTable: json_.containsKey('requestedSourceTable')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['requestedSourceTable']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoricalStatsResult != null)
          'categoricalStatsResult': categoricalStatsResult!,
        if (deltaPresenceEstimationResult != null)
          'deltaPresenceEstimationResult': deltaPresenceEstimationResult!,
        if (kAnonymityResult != null) 'kAnonymityResult': kAnonymityResult!,
        if (kMapEstimationResult != null)
          'kMapEstimationResult': kMapEstimationResult!,
        if (lDiversityResult != null) 'lDiversityResult': lDiversityResult!,
        if (numericalStatsResult != null)
          'numericalStatsResult': numericalStatsResult!,
        if (requestedOptions != null) 'requestedOptions': requestedOptions!,
        if (requestedPrivacyMetric != null)
          'requestedPrivacyMetric': requestedPrivacyMetric!,
        if (requestedSourceTable != null)
          'requestedSourceTable': requestedSourceTable!,
      };
}

/// An auxiliary table contains statistical information on the relative
/// frequency of different quasi-identifiers values.
///
/// It has one or several quasi-identifiers columns, and one column that
/// indicates the relative frequency of each quasi-identifier tuple. If a tuple
/// is present in the data but not in the auxiliary table, the corresponding
/// relative frequency is assumed to be zero (and thus, the tuple is highly
/// reidentifiable).
class GooglePrivacyDlpV2AuxiliaryTable {
  /// Quasi-identifier columns.
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2QuasiIdField>? quasiIds;

  /// The relative frequency column must contain a floating-point number between
  /// 0 and 1 (inclusive).
  ///
  /// Null values are assumed to be zero.
  ///
  /// Required.
  GooglePrivacyDlpV2FieldId? relativeFrequency;

  /// Auxiliary table location.
  ///
  /// Required.
  GooglePrivacyDlpV2BigQueryTable? table;

  GooglePrivacyDlpV2AuxiliaryTable({
    this.quasiIds,
    this.relativeFrequency,
    this.table,
  });

  GooglePrivacyDlpV2AuxiliaryTable.fromJson(core.Map json_)
      : this(
          quasiIds: json_.containsKey('quasiIds')
              ? (json_['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2QuasiIdField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relativeFrequency: json_.containsKey('relativeFrequency')
              ? GooglePrivacyDlpV2FieldId.fromJson(json_['relativeFrequency']
                  as core.Map<core.String, core.dynamic>)
              : null,
          table: json_.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quasiIds != null) 'quasiIds': quasiIds!,
        if (relativeFrequency != null) 'relativeFrequency': relativeFrequency!,
        if (table != null) 'table': table!,
      };
}

/// Target used to match against for discovery with BigQuery tables
class GooglePrivacyDlpV2BigQueryDiscoveryTarget {
  /// How often and when to update profiles.
  ///
  /// New tables that match both the filter and conditions are scanned as
  /// quickly as possible depending on system capacity.
  GooglePrivacyDlpV2DiscoveryGenerationCadence? cadence;

  /// In addition to matching the filter, these conditions must be true before a
  /// profile is generated.
  GooglePrivacyDlpV2DiscoveryBigQueryConditions? conditions;

  /// Tables that match this filter will not have profiles created.
  GooglePrivacyDlpV2Disabled? disabled;

  /// The tables the discovery cadence applies to.
  ///
  /// The first target with a matching filter will be the one to apply to a
  /// table.
  ///
  /// Required.
  GooglePrivacyDlpV2DiscoveryBigQueryFilter? filter;

  GooglePrivacyDlpV2BigQueryDiscoveryTarget({
    this.cadence,
    this.conditions,
    this.disabled,
    this.filter,
  });

  GooglePrivacyDlpV2BigQueryDiscoveryTarget.fromJson(core.Map json_)
      : this(
          cadence: json_.containsKey('cadence')
              ? GooglePrivacyDlpV2DiscoveryGenerationCadence.fromJson(
                  json_['cadence'] as core.Map<core.String, core.dynamic>)
              : null,
          conditions: json_.containsKey('conditions')
              ? GooglePrivacyDlpV2DiscoveryBigQueryConditions.fromJson(
                  json_['conditions'] as core.Map<core.String, core.dynamic>)
              : null,
          disabled: json_.containsKey('disabled')
              ? GooglePrivacyDlpV2Disabled.fromJson(
                  json_['disabled'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? GooglePrivacyDlpV2DiscoveryBigQueryFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cadence != null) 'cadence': cadence!,
        if (conditions != null) 'conditions': conditions!,
        if (disabled != null) 'disabled': disabled!,
        if (filter != null) 'filter': filter!,
      };
}

/// Message defining a field of a BigQuery table.
class GooglePrivacyDlpV2BigQueryField {
  /// Designated field in the BigQuery table.
  GooglePrivacyDlpV2FieldId? field;

  /// Source table of the field.
  GooglePrivacyDlpV2BigQueryTable? table;

  GooglePrivacyDlpV2BigQueryField({
    this.field,
    this.table,
  });

  GooglePrivacyDlpV2BigQueryField.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          table: json_.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (table != null) 'table': table!,
      };
}

/// Row key for identifying a record in BigQuery table.
class GooglePrivacyDlpV2BigQueryKey {
  /// Row number inferred at the time the table was scanned.
  ///
  /// This value is nondeterministic, cannot be queried, and may be null for
  /// inspection jobs. To locate findings within a table, specify
  /// `inspect_job.storage_config.big_query_options.identifying_fields` in
  /// `CreateDlpJobRequest`.
  core.String? rowNumber;

  /// Complete BigQuery table reference.
  GooglePrivacyDlpV2BigQueryTable? tableReference;

  GooglePrivacyDlpV2BigQueryKey({
    this.rowNumber,
    this.tableReference,
  });

  GooglePrivacyDlpV2BigQueryKey.fromJson(core.Map json_)
      : this(
          rowNumber: json_.containsKey('rowNumber')
              ? json_['rowNumber'] as core.String
              : null,
          tableReference: json_.containsKey('tableReference')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(json_['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rowNumber != null) 'rowNumber': rowNumber!,
        if (tableReference != null) 'tableReference': tableReference!,
      };
}

/// Options defining BigQuery table and row identifiers.
class GooglePrivacyDlpV2BigQueryOptions {
  /// References to fields excluded from scanning.
  ///
  /// This allows you to skip inspection of entire columns which you know have
  /// no findings. When inspecting a table, we recommend that you inspect all
  /// columns. Otherwise, findings might be affected because hints from excluded
  /// columns will not be used.
  core.List<GooglePrivacyDlpV2FieldId>? excludedFields;

  /// Table fields that may uniquely identify a row within the table.
  ///
  /// When `actions.saveFindings.outputConfig.table` is specified, the values of
  /// columns specified here are available in the output table under
  /// `location.content_locations.record_location.record_key.id_values`. Nested
  /// fields such as `person.birthdate.year` are allowed.
  core.List<GooglePrivacyDlpV2FieldId>? identifyingFields;

  /// Limit scanning only to these fields.
  ///
  /// When inspecting a table, we recommend that you inspect all columns.
  /// Otherwise, findings might be affected because hints from excluded columns
  /// will not be used.
  core.List<GooglePrivacyDlpV2FieldId>? includedFields;

  /// Max number of rows to scan.
  ///
  /// If the table has more rows than this value, the rest of the rows are
  /// omitted. If not set, or if set to 0, all rows will be scanned. Only one of
  /// rows_limit and rows_limit_percent can be specified. Cannot be used in
  /// conjunction with TimespanConfig.
  core.String? rowsLimit;

  /// Max percentage of rows to scan.
  ///
  /// The rest are omitted. The number of rows scanned is rounded down. Must be
  /// between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to
  /// 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot
  /// be used in conjunction with TimespanConfig. Caution: A
  /// [known issue](https://cloud.google.com/sensitive-data-protection/docs/known-issues#bq-sampling)
  /// is causing the `rowsLimitPercent` field to behave unexpectedly. We
  /// recommend using `rowsLimit` instead.
  core.int? rowsLimitPercent;

  /// How to sample the data.
  /// Possible string values are:
  /// - "SAMPLE_METHOD_UNSPECIFIED" : No sampling.
  /// - "TOP" : Scan groups of rows in the order BigQuery provides (default).
  /// Multiple groups of rows may be scanned in parallel, so results may not
  /// appear in the same order the rows are read.
  /// - "RANDOM_START" : Randomly pick groups of rows to scan.
  core.String? sampleMethod;

  /// Complete BigQuery table reference.
  GooglePrivacyDlpV2BigQueryTable? tableReference;

  GooglePrivacyDlpV2BigQueryOptions({
    this.excludedFields,
    this.identifyingFields,
    this.includedFields,
    this.rowsLimit,
    this.rowsLimitPercent,
    this.sampleMethod,
    this.tableReference,
  });

  GooglePrivacyDlpV2BigQueryOptions.fromJson(core.Map json_)
      : this(
          excludedFields: json_.containsKey('excludedFields')
              ? (json_['excludedFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          identifyingFields: json_.containsKey('identifyingFields')
              ? (json_['identifyingFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includedFields: json_.containsKey('includedFields')
              ? (json_['includedFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowsLimit: json_.containsKey('rowsLimit')
              ? json_['rowsLimit'] as core.String
              : null,
          rowsLimitPercent: json_.containsKey('rowsLimitPercent')
              ? json_['rowsLimitPercent'] as core.int
              : null,
          sampleMethod: json_.containsKey('sampleMethod')
              ? json_['sampleMethod'] as core.String
              : null,
          tableReference: json_.containsKey('tableReference')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(json_['tableReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedFields != null) 'excludedFields': excludedFields!,
        if (identifyingFields != null) 'identifyingFields': identifyingFields!,
        if (includedFields != null) 'includedFields': includedFields!,
        if (rowsLimit != null) 'rowsLimit': rowsLimit!,
        if (rowsLimitPercent != null) 'rowsLimitPercent': rowsLimitPercent!,
        if (sampleMethod != null) 'sampleMethod': sampleMethod!,
        if (tableReference != null) 'tableReference': tableReference!,
      };
}

/// A pattern to match against one or more tables, datasets, or projects that
/// contain BigQuery tables.
///
/// At least one pattern must be specified. Regular expressions use RE2
/// [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found
/// under the google/re2 repository on GitHub.
class GooglePrivacyDlpV2BigQueryRegex {
  /// If unset, this property matches all datasets.
  core.String? datasetIdRegex;

  /// For organizations, if unset, will match all projects.
  ///
  /// Has no effect for data profile configurations created within a project.
  core.String? projectIdRegex;

  /// If unset, this property matches all tables.
  core.String? tableIdRegex;

  GooglePrivacyDlpV2BigQueryRegex({
    this.datasetIdRegex,
    this.projectIdRegex,
    this.tableIdRegex,
  });

  GooglePrivacyDlpV2BigQueryRegex.fromJson(core.Map json_)
      : this(
          datasetIdRegex: json_.containsKey('datasetIdRegex')
              ? json_['datasetIdRegex'] as core.String
              : null,
          projectIdRegex: json_.containsKey('projectIdRegex')
              ? json_['projectIdRegex'] as core.String
              : null,
          tableIdRegex: json_.containsKey('tableIdRegex')
              ? json_['tableIdRegex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetIdRegex != null) 'datasetIdRegex': datasetIdRegex!,
        if (projectIdRegex != null) 'projectIdRegex': projectIdRegex!,
        if (tableIdRegex != null) 'tableIdRegex': tableIdRegex!,
      };
}

/// A collection of regular expressions to determine what tables to match
/// against.
class GooglePrivacyDlpV2BigQueryRegexes {
  /// A single BigQuery regular expression pattern to match against one or more
  /// tables, datasets, or projects that contain BigQuery tables.
  core.List<GooglePrivacyDlpV2BigQueryRegex>? patterns;

  GooglePrivacyDlpV2BigQueryRegexes({
    this.patterns,
  });

  GooglePrivacyDlpV2BigQueryRegexes.fromJson(core.Map json_)
      : this(
          patterns: json_.containsKey('patterns')
              ? (json_['patterns'] as core.List)
                  .map((value) => GooglePrivacyDlpV2BigQueryRegex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (patterns != null) 'patterns': patterns!,
      };
}

/// Message defining the location of a BigQuery table.
///
/// A table is uniquely identified by its project_id, dataset_id, and
/// table_name. Within a query a table is often referenced with a string in the
/// format of: `:.` or `..`.
class GooglePrivacyDlpV2BigQueryTable {
  /// Dataset ID of the table.
  core.String? datasetId;

  /// The Google Cloud Platform project ID of the project containing the table.
  ///
  /// If omitted, project ID is inferred from the API call.
  core.String? projectId;

  /// Name of the table.
  core.String? tableId;

  GooglePrivacyDlpV2BigQueryTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  GooglePrivacyDlpV2BigQueryTable.fromJson(core.Map json_)
      : this(
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// Specifies a collection of BigQuery tables.
///
/// Used for Discovery.
class GooglePrivacyDlpV2BigQueryTableCollection {
  /// A collection of regular expressions to match a BigQuery table against.
  GooglePrivacyDlpV2BigQueryRegexes? includeRegexes;

  GooglePrivacyDlpV2BigQueryTableCollection({
    this.includeRegexes,
  });

  GooglePrivacyDlpV2BigQueryTableCollection.fromJson(core.Map json_)
      : this(
          includeRegexes: json_.containsKey('includeRegexes')
              ? GooglePrivacyDlpV2BigQueryRegexes.fromJson(
                  json_['includeRegexes']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeRegexes != null) 'includeRegexes': includeRegexes!,
      };
}

/// The types of BigQuery tables supported by Cloud DLP.
class GooglePrivacyDlpV2BigQueryTableTypes {
  /// A set of BigQuery table types.
  core.List<core.String>? types;

  GooglePrivacyDlpV2BigQueryTableTypes({
    this.types,
  });

  GooglePrivacyDlpV2BigQueryTableTypes.fromJson(core.Map json_)
      : this(
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (types != null) 'types': types!,
      };
}

/// Bounding box encompassing detected text within an image.
class GooglePrivacyDlpV2BoundingBox {
  /// Height of the bounding box in pixels.
  core.int? height;

  /// Left coordinate of the bounding box.
  ///
  /// (0,0) is upper left.
  core.int? left;

  /// Top coordinate of the bounding box.
  ///
  /// (0,0) is upper left.
  core.int? top;

  /// Width of the bounding box in pixels.
  core.int? width;

  GooglePrivacyDlpV2BoundingBox({
    this.height,
    this.left,
    this.top,
    this.width,
  });

  GooglePrivacyDlpV2BoundingBox.fromJson(core.Map json_)
      : this(
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          left: json_.containsKey('left') ? json_['left'] as core.int : null,
          top: json_.containsKey('top') ? json_['top'] as core.int : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (left != null) 'left': left!,
        if (top != null) 'top': top!,
        if (width != null) 'width': width!,
      };
}

/// Bucket is represented as a range, along with replacement values.
class GooglePrivacyDlpV2Bucket {
  /// Upper bound of the range, exclusive; type must match min.
  GooglePrivacyDlpV2Value? max;

  /// Lower bound of the range, inclusive.
  ///
  /// Type should be the same as max if used.
  GooglePrivacyDlpV2Value? min;

  /// Replacement value for this bucket.
  ///
  /// Required.
  GooglePrivacyDlpV2Value? replacementValue;

  GooglePrivacyDlpV2Bucket({
    this.max,
    this.min,
    this.replacementValue,
  });

  GooglePrivacyDlpV2Bucket.fromJson(core.Map json_)
      : this(
          max: json_.containsKey('max')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['max'] as core.Map<core.String, core.dynamic>)
              : null,
          min: json_.containsKey('min')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['min'] as core.Map<core.String, core.dynamic>)
              : null,
          replacementValue: json_.containsKey('replacementValue')
              ? GooglePrivacyDlpV2Value.fromJson(json_['replacementValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
        if (replacementValue != null) 'replacementValue': replacementValue!,
      };
}

/// Generalization function that buckets values based on ranges.
///
/// The ranges and replacement values are dynamically provided by the user for
/// custom behavior, such as 1-30 -\> LOW 31-65 -\> MEDIUM 66-100 -\> HIGH This
/// can be used on data of type: number, long, string, timestamp. If the bound
/// `Value` type differs from the type of data being transformed, we will first
/// attempt converting the type of the data to be transformed to match the type
/// of the bound before comparing. See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing
/// to learn more.
class GooglePrivacyDlpV2BucketingConfig {
  /// Set of buckets.
  ///
  /// Ranges must be non-overlapping.
  core.List<GooglePrivacyDlpV2Bucket>? buckets;

  GooglePrivacyDlpV2BucketingConfig({
    this.buckets,
  });

  GooglePrivacyDlpV2BucketingConfig.fromJson(core.Map json_)
      : this(
          buckets: json_.containsKey('buckets')
              ? (json_['buckets'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Bucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buckets != null) 'buckets': buckets!,
      };
}

/// Container for bytes to inspect or redact.
class GooglePrivacyDlpV2ByteContentItem {
  /// Content data to inspect or redact.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The type of data stored in the bytes string.
  ///
  /// Default will be TEXT_UTF8.
  /// Possible string values are:
  /// - "BYTES_TYPE_UNSPECIFIED" : Unused
  /// - "IMAGE" : Any image type.
  /// - "IMAGE_JPEG" : jpeg
  /// - "IMAGE_BMP" : bmp
  /// - "IMAGE_PNG" : png
  /// - "IMAGE_SVG" : svg
  /// - "TEXT_UTF8" : plain text
  /// - "WORD_DOCUMENT" : docx, docm, dotx, dotm
  /// - "PDF" : pdf
  /// - "POWERPOINT_DOCUMENT" : pptx, pptm, potx, potm, pot
  /// - "EXCEL_DOCUMENT" : xlsx, xlsm, xltx, xltm
  /// - "AVRO" : avro
  /// - "CSV" : csv
  /// - "TSV" : tsv
  core.String? type;

  GooglePrivacyDlpV2ByteContentItem({
    this.data,
    this.type,
  });

  GooglePrivacyDlpV2ByteContentItem.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (type != null) 'type': type!,
      };
}

/// The request message for canceling a DLP job.
typedef GooglePrivacyDlpV2CancelDlpJobRequest = $Empty;

/// Compute numerical stats over an individual column, including number of
/// distinct values and value count distribution.
class GooglePrivacyDlpV2CategoricalStatsConfig {
  /// Field to compute categorical stats on.
  ///
  /// All column types are supported except for arrays and structs. However, it
  /// may be more informative to use NumericalStats when the field type is
  /// supported, depending on the data.
  GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2CategoricalStatsConfig({
    this.field,
  });

  GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// Histogram of value frequencies in the column.
class GooglePrivacyDlpV2CategoricalStatsHistogramBucket {
  /// Total number of values in this bucket.
  core.String? bucketSize;

  /// Total number of distinct values in this bucket.
  core.String? bucketValueCount;

  /// Sample of value frequencies in this bucket.
  ///
  /// The total number of values returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2ValueFrequency>? bucketValues;

  /// Lower bound on the value frequency of the values in this bucket.
  core.String? valueFrequencyLowerBound;

  /// Upper bound on the value frequency of the values in this bucket.
  core.String? valueFrequencyUpperBound;

  GooglePrivacyDlpV2CategoricalStatsHistogramBucket({
    this.bucketSize,
    this.bucketValueCount,
    this.bucketValues,
    this.valueFrequencyLowerBound,
    this.valueFrequencyUpperBound,
  });

  GooglePrivacyDlpV2CategoricalStatsHistogramBucket.fromJson(core.Map json_)
      : this(
          bucketSize: json_.containsKey('bucketSize')
              ? json_['bucketSize'] as core.String
              : null,
          bucketValueCount: json_.containsKey('bucketValueCount')
              ? json_['bucketValueCount'] as core.String
              : null,
          bucketValues: json_.containsKey('bucketValues')
              ? (json_['bucketValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ValueFrequency.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueFrequencyLowerBound:
              json_.containsKey('valueFrequencyLowerBound')
                  ? json_['valueFrequencyLowerBound'] as core.String
                  : null,
          valueFrequencyUpperBound:
              json_.containsKey('valueFrequencyUpperBound')
                  ? json_['valueFrequencyUpperBound'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (bucketValueCount != null) 'bucketValueCount': bucketValueCount!,
        if (bucketValues != null) 'bucketValues': bucketValues!,
        if (valueFrequencyLowerBound != null)
          'valueFrequencyLowerBound': valueFrequencyLowerBound!,
        if (valueFrequencyUpperBound != null)
          'valueFrequencyUpperBound': valueFrequencyUpperBound!,
      };
}

/// Result of the categorical stats computation.
class GooglePrivacyDlpV2CategoricalStatsResult {
  /// Histogram of value frequencies in the column.
  core.List<GooglePrivacyDlpV2CategoricalStatsHistogramBucket>?
      valueFrequencyHistogramBuckets;

  GooglePrivacyDlpV2CategoricalStatsResult({
    this.valueFrequencyHistogramBuckets,
  });

  GooglePrivacyDlpV2CategoricalStatsResult.fromJson(core.Map json_)
      : this(
          valueFrequencyHistogramBuckets:
              json_.containsKey('valueFrequencyHistogramBuckets')
                  ? (json_['valueFrequencyHistogramBuckets'] as core.List)
                      .map((value) =>
                          GooglePrivacyDlpV2CategoricalStatsHistogramBucket
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (valueFrequencyHistogramBuckets != null)
          'valueFrequencyHistogramBuckets': valueFrequencyHistogramBuckets!,
      };
}

/// Partially mask a string by replacing a given number of characters with a
/// fixed character.
///
/// Masking can start from the beginning or end of the string. This can be used
/// on data of any type (numbers, longs, and so on) and when de-identifying
/// structured data we'll attempt to preserve the original data's type. (This
/// allows you to take a long like 123 and modify it to a string like **3.
class GooglePrivacyDlpV2CharacterMaskConfig {
  /// When masking a string, items in this list will be skipped when replacing
  /// characters.
  ///
  /// For example, if the input string is `555-555-5555` and you instruct Cloud
  /// DLP to skip `-` and mask 5 characters with `*`, Cloud DLP returns
  /// `***-**5-5555`.
  core.List<GooglePrivacyDlpV2CharsToIgnore>? charactersToIgnore;

  /// Character to use to mask the sensitive values—for example, `*` for an
  /// alphabetic string such as a name, or `0` for a numeric string such as ZIP
  /// code or credit card number.
  ///
  /// This string must have a length of 1. If not supplied, this value defaults
  /// to `*` for strings, and `0` for digits.
  core.String? maskingCharacter;

  /// Number of characters to mask.
  ///
  /// If not set, all matching chars will be masked. Skipped characters do not
  /// count towards this tally. If `number_to_mask` is negative, this denotes
  /// inverse masking. Cloud DLP masks all but a number of characters. For
  /// example, suppose you have the following values: - `masking_character` is
  /// `*` - `number_to_mask` is `-4` - `reverse_order` is `false` -
  /// `CharsToIgnore` includes `-` - Input string is `1234-5678-9012-3456` The
  /// resulting de-identified string is `****-****-****-3456`. Cloud DLP masks
  /// all but the last four characters. If `reverse_order` is `true`, all but
  /// the first four characters are masked as `1234-****-****-****`.
  core.int? numberToMask;

  /// Mask characters in reverse order.
  ///
  /// For example, if `masking_character` is `0`, `number_to_mask` is `14`, and
  /// `reverse_order` is `false`, then the input string `1234-5678-9012-3456` is
  /// masked as `00000000000000-3456`. If `masking_character` is `*`,
  /// `number_to_mask` is `3`, and `reverse_order` is `true`, then the string
  /// `12345` is masked as `12***`.
  core.bool? reverseOrder;

  GooglePrivacyDlpV2CharacterMaskConfig({
    this.charactersToIgnore,
    this.maskingCharacter,
    this.numberToMask,
    this.reverseOrder,
  });

  GooglePrivacyDlpV2CharacterMaskConfig.fromJson(core.Map json_)
      : this(
          charactersToIgnore: json_.containsKey('charactersToIgnore')
              ? (json_['charactersToIgnore'] as core.List)
                  .map((value) => GooglePrivacyDlpV2CharsToIgnore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maskingCharacter: json_.containsKey('maskingCharacter')
              ? json_['maskingCharacter'] as core.String
              : null,
          numberToMask: json_.containsKey('numberToMask')
              ? json_['numberToMask'] as core.int
              : null,
          reverseOrder: json_.containsKey('reverseOrder')
              ? json_['reverseOrder'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (charactersToIgnore != null)
          'charactersToIgnore': charactersToIgnore!,
        if (maskingCharacter != null) 'maskingCharacter': maskingCharacter!,
        if (numberToMask != null) 'numberToMask': numberToMask!,
        if (reverseOrder != null) 'reverseOrder': reverseOrder!,
      };
}

/// Characters to skip when doing deidentification of a value.
///
/// These will be left alone and skipped.
class GooglePrivacyDlpV2CharsToIgnore {
  /// Characters to not transform when masking.
  core.String? charactersToSkip;

  /// Common characters to not transform when masking.
  ///
  /// Useful to avoid removing punctuation.
  /// Possible string values are:
  /// - "COMMON_CHARS_TO_IGNORE_UNSPECIFIED" : Unused.
  /// - "NUMERIC" : 0-9
  /// - "ALPHA_UPPER_CASE" : A-Z
  /// - "ALPHA_LOWER_CASE" : a-z
  /// - "PUNCTUATION" : US Punctuation, one of
  /// !"#$%&'()*+,-./:;\<=\>?@\[\]^_\`{|}~
  /// - "WHITESPACE" : Whitespace character, one of \[ \t\n\x0B\f\r\]
  core.String? commonCharactersToIgnore;

  GooglePrivacyDlpV2CharsToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  GooglePrivacyDlpV2CharsToIgnore.fromJson(core.Map json_)
      : this(
          charactersToSkip: json_.containsKey('charactersToSkip')
              ? json_['charactersToSkip'] as core.String
              : null,
          commonCharactersToIgnore:
              json_.containsKey('commonCharactersToIgnore')
                  ? json_['commonCharactersToIgnore'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (charactersToSkip != null) 'charactersToSkip': charactersToSkip!,
        if (commonCharactersToIgnore != null)
          'commonCharactersToIgnore': commonCharactersToIgnore!,
      };
}

/// Target used to match against for discovery with Cloud SQL tables.
class GooglePrivacyDlpV2CloudSqlDiscoveryTarget {
  /// In addition to matching the filter, these conditions must be true before a
  /// profile is generated.
  GooglePrivacyDlpV2DiscoveryCloudSqlConditions? conditions;

  /// Disable profiling for database resources that match this filter.
  GooglePrivacyDlpV2Disabled? disabled;

  /// The tables the discovery cadence applies to.
  ///
  /// The first target with a matching filter will be the one to apply to a
  /// table.
  ///
  /// Required.
  GooglePrivacyDlpV2DiscoveryCloudSqlFilter? filter;

  /// How often and when to update profiles.
  ///
  /// New tables that match both the filter and conditions are scanned as
  /// quickly as possible depending on system capacity.
  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence? generationCadence;

  GooglePrivacyDlpV2CloudSqlDiscoveryTarget({
    this.conditions,
    this.disabled,
    this.filter,
    this.generationCadence,
  });

  GooglePrivacyDlpV2CloudSqlDiscoveryTarget.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? GooglePrivacyDlpV2DiscoveryCloudSqlConditions.fromJson(
                  json_['conditions'] as core.Map<core.String, core.dynamic>)
              : null,
          disabled: json_.containsKey('disabled')
              ? GooglePrivacyDlpV2Disabled.fromJson(
                  json_['disabled'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? GooglePrivacyDlpV2DiscoveryCloudSqlFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          generationCadence: json_.containsKey('generationCadence')
              ? GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence.fromJson(
                  json_['generationCadence']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (disabled != null) 'disabled': disabled!,
        if (filter != null) 'filter': filter!,
        if (generationCadence != null) 'generationCadence': generationCadence!,
      };
}

/// Use IAM auth to connect.
///
/// This requires the Cloud SQL IAM feature to be enabled on the instance, which
/// is not the default for Cloud SQL. See
/// https://cloud.google.com/sql/docs/postgres/authentication and
/// https://cloud.google.com/sql/docs/mysql/authentication.
typedef GooglePrivacyDlpV2CloudSqlIamCredential = $Empty;

/// Cloud SQL connection properties.
class GooglePrivacyDlpV2CloudSqlProperties {
  /// Built-in IAM authentication (must be configured in Cloud SQL).
  GooglePrivacyDlpV2CloudSqlIamCredential? cloudSqlIam;

  /// The Cloud SQL instance for which the connection is defined.
  ///
  /// Only one connection per instance is allowed. This can only be set at
  /// creation time, and cannot be updated. It is an error to use a
  /// connection_name from different project or region than the one that holds
  /// the connection. For example, a Connection resource for Cloud SQL
  /// connection_name "project-id:us-central1:sql-instance" must be created
  /// under the parent "projects/project-id/locations/us-central1"
  ///
  /// Optional. Immutable.
  core.String? connectionName;

  /// The database engine used by the Cloud SQL instance that this connection
  /// configures.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATABASE_ENGINE_UNKNOWN" : An engine that is not currently supported by
  /// SDP.
  /// - "DATABASE_ENGINE_MYSQL" : Cloud SQL for MySQL instance.
  /// - "DATABASE_ENGINE_POSTGRES" : Cloud SQL for Postgres instance.
  core.String? databaseEngine;

  /// DLP will limit its connections to max_connections.
  ///
  /// Must be 2 or greater.
  ///
  /// Required.
  core.int? maxConnections;

  /// A username and password stored in Secret Manager.
  GooglePrivacyDlpV2SecretManagerCredential? usernamePassword;

  GooglePrivacyDlpV2CloudSqlProperties({
    this.cloudSqlIam,
    this.connectionName,
    this.databaseEngine,
    this.maxConnections,
    this.usernamePassword,
  });

  GooglePrivacyDlpV2CloudSqlProperties.fromJson(core.Map json_)
      : this(
          cloudSqlIam: json_.containsKey('cloudSqlIam')
              ? GooglePrivacyDlpV2CloudSqlIamCredential.fromJson(
                  json_['cloudSqlIam'] as core.Map<core.String, core.dynamic>)
              : null,
          connectionName: json_.containsKey('connectionName')
              ? json_['connectionName'] as core.String
              : null,
          databaseEngine: json_.containsKey('databaseEngine')
              ? json_['databaseEngine'] as core.String
              : null,
          maxConnections: json_.containsKey('maxConnections')
              ? json_['maxConnections'] as core.int
              : null,
          usernamePassword: json_.containsKey('usernamePassword')
              ? GooglePrivacyDlpV2SecretManagerCredential.fromJson(
                  json_['usernamePassword']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSqlIam != null) 'cloudSqlIam': cloudSqlIam!,
        if (connectionName != null) 'connectionName': connectionName!,
        if (databaseEngine != null) 'databaseEngine': databaseEngine!,
        if (maxConnections != null) 'maxConnections': maxConnections!,
        if (usernamePassword != null) 'usernamePassword': usernamePassword!,
      };
}

/// Message representing a set of files in Cloud Storage.
class GooglePrivacyDlpV2CloudStorageFileSet {
  /// The url, in the format `gs:///`.
  ///
  /// Trailing wildcard in the path is allowed.
  core.String? url;

  GooglePrivacyDlpV2CloudStorageFileSet({
    this.url,
  });

  GooglePrivacyDlpV2CloudStorageFileSet.fromJson(core.Map json_)
      : this(
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// Options defining a file or a set of files within a Cloud Storage bucket.
class GooglePrivacyDlpV2CloudStorageOptions {
  /// Max number of bytes to scan from a file.
  ///
  /// If a scanned file's size is bigger than this value then the rest of the
  /// bytes are omitted. Only one of `bytes_limit_per_file` and
  /// `bytes_limit_per_file_percent` can be specified. This field can't be set
  /// if de-identification is requested. For certain file types, setting this
  /// field has no effect. For more information, see
  /// [Limits on bytes scanned per file](https://cloud.google.com/sensitive-data-protection/docs/supported-file-types#max-byte-size-per-file).
  core.String? bytesLimitPerFile;

  /// Max percentage of bytes to scan from a file.
  ///
  /// The rest are omitted. The number of bytes scanned is rounded down. Must be
  /// between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to
  /// 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can
  /// be specified. This field can't be set if de-identification is requested.
  /// For certain file types, setting this field has no effect. For more
  /// information, see
  /// [Limits on bytes scanned per file](https://cloud.google.com/sensitive-data-protection/docs/supported-file-types#max-byte-size-per-file).
  core.int? bytesLimitPerFilePercent;

  /// The set of one or more files to scan.
  GooglePrivacyDlpV2FileSet? fileSet;

  /// List of file type groups to include in the scan.
  ///
  /// If empty, all files are scanned and available data format processors are
  /// applied. In addition, the binary content of the selected files is always
  /// scanned as well. Images are scanned only as binary if the specified region
  /// does not support image inspection and no file_types were specified. Image
  /// inspection is restricted to 'global', 'us', 'asia', and 'europe'.
  core.List<core.String>? fileTypes;

  /// Limits the number of files to scan to this percentage of the input
  /// FileSet.
  ///
  /// Number of files scanned is rounded down. Must be between 0 and 100,
  /// inclusively. Both 0 and 100 means no limit. Defaults to 0.
  core.int? filesLimitPercent;

  /// How to sample the data.
  /// Possible string values are:
  /// - "SAMPLE_METHOD_UNSPECIFIED" : No sampling.
  /// - "TOP" : Scan from the top (default).
  /// - "RANDOM_START" : For each file larger than bytes_limit_per_file,
  /// randomly pick the offset to start scanning. The scanned bytes are
  /// contiguous.
  core.String? sampleMethod;

  GooglePrivacyDlpV2CloudStorageOptions({
    this.bytesLimitPerFile,
    this.bytesLimitPerFilePercent,
    this.fileSet,
    this.fileTypes,
    this.filesLimitPercent,
    this.sampleMethod,
  });

  GooglePrivacyDlpV2CloudStorageOptions.fromJson(core.Map json_)
      : this(
          bytesLimitPerFile: json_.containsKey('bytesLimitPerFile')
              ? json_['bytesLimitPerFile'] as core.String
              : null,
          bytesLimitPerFilePercent:
              json_.containsKey('bytesLimitPerFilePercent')
                  ? json_['bytesLimitPerFilePercent'] as core.int
                  : null,
          fileSet: json_.containsKey('fileSet')
              ? GooglePrivacyDlpV2FileSet.fromJson(
                  json_['fileSet'] as core.Map<core.String, core.dynamic>)
              : null,
          fileTypes: json_.containsKey('fileTypes')
              ? (json_['fileTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filesLimitPercent: json_.containsKey('filesLimitPercent')
              ? json_['filesLimitPercent'] as core.int
              : null,
          sampleMethod: json_.containsKey('sampleMethod')
              ? json_['sampleMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesLimitPerFile != null) 'bytesLimitPerFile': bytesLimitPerFile!,
        if (bytesLimitPerFilePercent != null)
          'bytesLimitPerFilePercent': bytesLimitPerFilePercent!,
        if (fileSet != null) 'fileSet': fileSet!,
        if (fileTypes != null) 'fileTypes': fileTypes!,
        if (filesLimitPercent != null) 'filesLimitPercent': filesLimitPercent!,
        if (sampleMethod != null) 'sampleMethod': sampleMethod!,
      };
}

/// Message representing a single file or path in Cloud Storage.
class GooglePrivacyDlpV2CloudStoragePath {
  /// A URL representing a file or path (no wildcards) in Cloud Storage.
  ///
  /// Example: `gs://[BUCKET_NAME]/dictionary.txt`
  core.String? path;

  GooglePrivacyDlpV2CloudStoragePath({
    this.path,
  });

  GooglePrivacyDlpV2CloudStoragePath.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
      };
}

/// Message representing a set of files in a Cloud Storage bucket.
///
/// Regular expressions are used to allow fine-grained control over which files
/// in the bucket to include. Included files are those that match at least one
/// item in `include_regex` and do not match any items in `exclude_regex`. Note
/// that a file that matches items from both lists will _not_ be included. For a
/// match to occur, the entire file path (i.e., everything in the url after the
/// bucket name) must match the regular expression. For example, given the input
/// `{bucket_name: "mybucket", include_regex: ["directory1/.*"], exclude_regex:
/// ["directory1/excluded.*"]}`: * `gs://mybucket/directory1/myfile` will be
/// included * `gs://mybucket/directory1/directory2/myfile` will be included
/// (`.*` matches across `/`) * `gs://mybucket/directory0/directory1/myfile`
/// will _not_ be included (the full path doesn't match any items in
/// `include_regex`) * `gs://mybucket/directory1/excludedfile` will _not_ be
/// included (the path matches an item in `exclude_regex`) If `include_regex` is
/// left empty, it will match all files by default (this is equivalent to
/// setting `include_regex: [".*"]`). Some other common use cases: *
/// `{bucket_name: "mybucket", exclude_regex: [".*\.pdf"]}` will include all
/// files in `mybucket` except for .pdf files * `{bucket_name: "mybucket",
/// include_regex: ["directory/[^/]+"]}` will include all files directly under
/// `gs://mybucket/directory/`, without matching across `/`
class GooglePrivacyDlpV2CloudStorageRegexFileSet {
  /// The name of a Cloud Storage bucket.
  ///
  /// Required.
  core.String? bucketName;

  /// A list of regular expressions matching file paths to exclude.
  ///
  /// All files in the bucket that match at least one of these regular
  /// expressions will be excluded from the scan. Regular expressions use RE2
  /// [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found
  /// under the google/re2 repository on GitHub.
  core.List<core.String>? excludeRegex;

  /// A list of regular expressions matching file paths to include.
  ///
  /// All files in the bucket that match at least one of these regular
  /// expressions will be included in the set of files, except for those that
  /// also match an item in `exclude_regex`. Leaving this field empty will match
  /// all files by default (this is equivalent to including `.*` in the list).
  /// Regular expressions use RE2
  /// [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found
  /// under the google/re2 repository on GitHub.
  core.List<core.String>? includeRegex;

  GooglePrivacyDlpV2CloudStorageRegexFileSet({
    this.bucketName,
    this.excludeRegex,
    this.includeRegex,
  });

  GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(core.Map json_)
      : this(
          bucketName: json_.containsKey('bucketName')
              ? json_['bucketName'] as core.String
              : null,
          excludeRegex: json_.containsKey('excludeRegex')
              ? (json_['excludeRegex'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeRegex: json_.containsKey('includeRegex')
              ? (json_['includeRegex'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (excludeRegex != null) 'excludeRegex': excludeRegex!,
        if (includeRegex != null) 'includeRegex': includeRegex!,
      };
}

/// Represents a color in the RGB color space.
class GooglePrivacyDlpV2Color {
  /// The amount of blue in the color as a value in the interval \[0, 1\].
  core.double? blue;

  /// The amount of green in the color as a value in the interval \[0, 1\].
  core.double? green;

  /// The amount of red in the color as a value in the interval \[0, 1\].
  core.double? red;

  GooglePrivacyDlpV2Color({
    this.blue,
    this.green,
    this.red,
  });

  GooglePrivacyDlpV2Color.fromJson(core.Map json_)
      : this(
          blue: json_.containsKey('blue')
              ? (json_['blue'] as core.num).toDouble()
              : null,
          green: json_.containsKey('green')
              ? (json_['green'] as core.num).toDouble()
              : null,
          red: json_.containsKey('red')
              ? (json_['red'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blue != null) 'blue': blue!,
        if (green != null) 'green': green!,
        if (red != null) 'red': red!,
      };
}

/// The profile for a scanned column within a table.
class GooglePrivacyDlpV2ColumnDataProfile {
  /// The name of the column.
  core.String? column;

  /// If it's been determined this column can be identified as a single type,
  /// this will be set.
  ///
  /// Otherwise the column either has unidentifiable content or mixed types.
  GooglePrivacyDlpV2InfoTypeSummary? columnInfoType;

  /// The data type of a given column.
  /// Possible string values are:
  /// - "COLUMN_DATA_TYPE_UNSPECIFIED" : Invalid type.
  /// - "TYPE_INT64" : Encoded as a string in decimal format.
  /// - "TYPE_BOOL" : Encoded as a boolean "false" or "true".
  /// - "TYPE_FLOAT64" : Encoded as a number, or string "NaN", "Infinity" or
  /// "-Infinity".
  /// - "TYPE_STRING" : Encoded as a string value.
  /// - "TYPE_BYTES" : Encoded as a base64 string per RFC 4648, section 4.
  /// - "TYPE_TIMESTAMP" : Encoded as an RFC 3339 timestamp with mandatory "Z"
  /// time zone string: 1985-04-12T23:20:50.52Z
  /// - "TYPE_DATE" : Encoded as RFC 3339 full-date format string: 1985-04-12
  /// - "TYPE_TIME" : Encoded as RFC 3339 partial-time format string:
  /// 23:20:50.52
  /// - "TYPE_DATETIME" : Encoded as RFC 3339 full-date "T" partial-time:
  /// 1985-04-12T23:20:50.52
  /// - "TYPE_GEOGRAPHY" : Encoded as WKT
  /// - "TYPE_NUMERIC" : Encoded as a decimal string.
  /// - "TYPE_RECORD" : Container of ordered fields, each with a type and field
  /// name.
  /// - "TYPE_BIGNUMERIC" : Decimal type.
  /// - "TYPE_JSON" : Json type.
  /// - "TYPE_INTERVAL" : Interval type.
  /// - "TYPE_RANGE_DATE" : Range type.
  /// - "TYPE_RANGE_DATETIME" : Range type.
  /// - "TYPE_RANGE_TIMESTAMP" : Range type.
  core.String? columnType;

  /// The data risk level for this column.
  GooglePrivacyDlpV2DataRiskLevel? dataRiskLevel;

  /// The BigQuery dataset ID.
  core.String? datasetId;

  /// The BigQuery location where the dataset's data is stored.
  ///
  /// See https://cloud.google.com/bigquery/docs/locations for supported
  /// locations.
  core.String? datasetLocation;

  /// The Google Cloud project ID that owns the profiled resource.
  core.String? datasetProjectId;

  /// Approximate percentage of entries being null in the column.
  /// Possible string values are:
  /// - "NULL_PERCENTAGE_LEVEL_UNSPECIFIED" : Unused.
  /// - "NULL_PERCENTAGE_VERY_LOW" : Very few null entries.
  /// - "NULL_PERCENTAGE_LOW" : Some null entries.
  /// - "NULL_PERCENTAGE_MEDIUM" : A few null entries.
  /// - "NULL_PERCENTAGE_HIGH" : A lot of null entries.
  core.String? estimatedNullPercentage;

  /// Approximate uniqueness of the column.
  /// Possible string values are:
  /// - "UNIQUENESS_SCORE_LEVEL_UNSPECIFIED" : Some columns do not have
  /// estimated uniqueness. Possible reasons include having too few values.
  /// - "UNIQUENESS_SCORE_LOW" : Low uniqueness, possibly a boolean, enum or
  /// similiarly typed column.
  /// - "UNIQUENESS_SCORE_MEDIUM" : Medium uniqueness.
  /// - "UNIQUENESS_SCORE_HIGH" : High uniqueness, possibly a column of free
  /// text or unique identifiers.
  core.String? estimatedUniquenessScore;

  /// The likelihood that this column contains free-form text.
  ///
  /// A value close to 1 may indicate the column is likely to contain free-form
  /// or natural language text. Range in 0-1.
  core.double? freeTextScore;

  /// The name of the profile.
  core.String? name;

  /// Other types found within this column.
  ///
  /// List will be unordered.
  core.List<GooglePrivacyDlpV2OtherInfoTypeSummary>? otherMatches;

  /// Indicates if a policy tag has been applied to the column.
  /// Possible string values are:
  /// - "COLUMN_POLICY_STATE_UNSPECIFIED" : No policy tags.
  /// - "COLUMN_POLICY_TAGGED" : Column has policy tag applied.
  core.String? policyState;

  /// The last time the profile was generated.
  core.String? profileLastGenerated;

  /// Success or error status from the most recent profile generation attempt.
  ///
  /// May be empty if the profile is still being generated.
  GooglePrivacyDlpV2ProfileStatus? profileStatus;

  /// The sensitivity of this column.
  GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  /// State of a profile.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unused.
  /// - "RUNNING" : The profile is currently running. Once a profile has
  /// finished it will transition to DONE.
  /// - "DONE" : The profile is no longer generating. If
  /// profile_status.status.code is 0, the profile succeeded, otherwise, it
  /// failed.
  core.String? state;

  /// The resource name of the table data profile.
  core.String? tableDataProfile;

  /// The resource name of the resource this column is within.
  core.String? tableFullResource;

  /// The BigQuery table ID.
  core.String? tableId;

  GooglePrivacyDlpV2ColumnDataProfile({
    this.column,
    this.columnInfoType,
    this.columnType,
    this.dataRiskLevel,
    this.datasetId,
    this.datasetLocation,
    this.datasetProjectId,
    this.estimatedNullPercentage,
    this.estimatedUniquenessScore,
    this.freeTextScore,
    this.name,
    this.otherMatches,
    this.policyState,
    this.profileLastGenerated,
    this.profileStatus,
    this.sensitivityScore,
    this.state,
    this.tableDataProfile,
    this.tableFullResource,
    this.tableId,
  });

  GooglePrivacyDlpV2ColumnDataProfile.fromJson(core.Map json_)
      : this(
          column: json_.containsKey('column')
              ? json_['column'] as core.String
              : null,
          columnInfoType: json_.containsKey('columnInfoType')
              ? GooglePrivacyDlpV2InfoTypeSummary.fromJson(
                  json_['columnInfoType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          columnType: json_.containsKey('columnType')
              ? json_['columnType'] as core.String
              : null,
          dataRiskLevel: json_.containsKey('dataRiskLevel')
              ? GooglePrivacyDlpV2DataRiskLevel.fromJson(
                  json_['dataRiskLevel'] as core.Map<core.String, core.dynamic>)
              : null,
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          datasetLocation: json_.containsKey('datasetLocation')
              ? json_['datasetLocation'] as core.String
              : null,
          datasetProjectId: json_.containsKey('datasetProjectId')
              ? json_['datasetProjectId'] as core.String
              : null,
          estimatedNullPercentage: json_.containsKey('estimatedNullPercentage')
              ? json_['estimatedNullPercentage'] as core.String
              : null,
          estimatedUniquenessScore:
              json_.containsKey('estimatedUniquenessScore')
                  ? json_['estimatedUniquenessScore'] as core.String
                  : null,
          freeTextScore: json_.containsKey('freeTextScore')
              ? (json_['freeTextScore'] as core.num).toDouble()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          otherMatches: json_.containsKey('otherMatches')
              ? (json_['otherMatches'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2OtherInfoTypeSummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          policyState: json_.containsKey('policyState')
              ? json_['policyState'] as core.String
              : null,
          profileLastGenerated: json_.containsKey('profileLastGenerated')
              ? json_['profileLastGenerated'] as core.String
              : null,
          profileStatus: json_.containsKey('profileStatus')
              ? GooglePrivacyDlpV2ProfileStatus.fromJson(
                  json_['profileStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          sensitivityScore: json_.containsKey('sensitivityScore')
              ? GooglePrivacyDlpV2SensitivityScore.fromJson(
                  json_['sensitivityScore']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          tableDataProfile: json_.containsKey('tableDataProfile')
              ? json_['tableDataProfile'] as core.String
              : null,
          tableFullResource: json_.containsKey('tableFullResource')
              ? json_['tableFullResource'] as core.String
              : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (columnInfoType != null) 'columnInfoType': columnInfoType!,
        if (columnType != null) 'columnType': columnType!,
        if (dataRiskLevel != null) 'dataRiskLevel': dataRiskLevel!,
        if (datasetId != null) 'datasetId': datasetId!,
        if (datasetLocation != null) 'datasetLocation': datasetLocation!,
        if (datasetProjectId != null) 'datasetProjectId': datasetProjectId!,
        if (estimatedNullPercentage != null)
          'estimatedNullPercentage': estimatedNullPercentage!,
        if (estimatedUniquenessScore != null)
          'estimatedUniquenessScore': estimatedUniquenessScore!,
        if (freeTextScore != null) 'freeTextScore': freeTextScore!,
        if (name != null) 'name': name!,
        if (otherMatches != null) 'otherMatches': otherMatches!,
        if (policyState != null) 'policyState': policyState!,
        if (profileLastGenerated != null)
          'profileLastGenerated': profileLastGenerated!,
        if (profileStatus != null) 'profileStatus': profileStatus!,
        if (sensitivityScore != null) 'sensitivityScore': sensitivityScore!,
        if (state != null) 'state': state!,
        if (tableDataProfile != null) 'tableDataProfile': tableDataProfile!,
        if (tableFullResource != null) 'tableFullResource': tableFullResource!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// The field type of `value` and `field` do not need to match to be considered
/// equal, but not all comparisons are possible.
///
/// EQUAL_TO and NOT_EQUAL_TO attempt to compare even with incompatible types,
/// but all other comparisons are invalid with incompatible types. A `value` of
/// type: - `string` can be compared against all other types - `boolean` can
/// only be compared against other booleans - `integer` can be compared against
/// doubles or a string if the string value can be parsed as an integer. -
/// `double` can be compared against integers or a string if the string can be
/// parsed as a double. - `Timestamp` can be compared against strings in RFC
/// 3339 date string format. - `TimeOfDay` can be compared against timestamps
/// and strings in the format of 'HH:mm:ss'. If we fail to compare do to type
/// mismatch, a warning will be given and the condition will evaluate to false.
class GooglePrivacyDlpV2Condition {
  /// Field within the record this condition is evaluated against.
  ///
  /// Required.
  GooglePrivacyDlpV2FieldId? field;

  /// Operator used to compare the field or infoType to the value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RELATIONAL_OPERATOR_UNSPECIFIED" : Unused
  /// - "EQUAL_TO" : Equal. Attempts to match even with incompatible types.
  /// - "NOT_EQUAL_TO" : Not equal to. Attempts to match even with incompatible
  /// types.
  /// - "GREATER_THAN" : Greater than.
  /// - "LESS_THAN" : Less than.
  /// - "GREATER_THAN_OR_EQUALS" : Greater than or equals.
  /// - "LESS_THAN_OR_EQUALS" : Less than or equals.
  /// - "EXISTS" : Exists
  core.String? operator;

  /// Value to compare against.
  ///
  /// \[Mandatory, except for `EXISTS` tests.\]
  GooglePrivacyDlpV2Value? value;

  GooglePrivacyDlpV2Condition({
    this.field,
    this.operator,
    this.value,
  });

  GooglePrivacyDlpV2Condition.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          operator: json_.containsKey('operator')
              ? json_['operator'] as core.String
              : null,
          value: json_.containsKey('value')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (operator != null) 'operator': operator!,
        if (value != null) 'value': value!,
      };
}

/// A collection of conditions.
class GooglePrivacyDlpV2Conditions {
  /// A collection of conditions.
  core.List<GooglePrivacyDlpV2Condition>? conditions;

  GooglePrivacyDlpV2Conditions({
    this.conditions,
  });

  GooglePrivacyDlpV2Conditions.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
      };
}

/// A data connection to allow DLP to profile data in locations that require
/// additional configuration.
class GooglePrivacyDlpV2Connection {
  /// Connect to a Cloud SQL instance.
  GooglePrivacyDlpV2CloudSqlProperties? cloudSql;

  /// Set if status == ERROR, to provide additional details.
  ///
  /// Will store the last 10 errors sorted with the most recent first.
  ///
  /// Output only.
  core.List<GooglePrivacyDlpV2Error>? errors;

  /// Name of the connection:
  /// projects/{project}/locations/{location}/connections/{name}.
  ///
  /// Output only.
  core.String? name;

  /// The connection's state in its lifecycle.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONNECTION_STATE_UNSPECIFIED" : Unused
  /// - "MISSING_CREDENTIALS" : DLP automatically created this connection during
  /// an initial scan, and it is awaiting full configuration by a user.
  /// - "AVAILABLE" : A configured connection that has not encountered any
  /// errors.
  /// - "ERROR" : A configured connection that encountered errors during its
  /// last use. It will not be used again until it is set to AVAILABLE. If the
  /// resolution requires external action, then a request to set the status to
  /// AVAILABLE will mark this connection for use. Otherwise, any changes to the
  /// connection properties will automatically mark it as AVAILABLE.
  core.String? state;

  GooglePrivacyDlpV2Connection({
    this.cloudSql,
    this.errors,
    this.name,
    this.state,
  });

  GooglePrivacyDlpV2Connection.fromJson(core.Map json_)
      : this(
          cloudSql: json_.containsKey('cloudSql')
              ? GooglePrivacyDlpV2CloudSqlProperties.fromJson(
                  json_['cloudSql'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSql != null) 'cloudSql': cloudSql!,
        if (errors != null) 'errors': errors!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// Represents a container that may contain DLP findings.
///
/// Examples of a container include a file, table, or database record.
class GooglePrivacyDlpV2Container {
  /// A string representation of the full container name.
  ///
  /// Examples: - BigQuery: 'Project:DataSetId.TableId' - Cloud Storage:
  /// 'gs://Bucket/folders/filename.txt'
  core.String? fullPath;

  /// Project where the finding was found.
  ///
  /// Can be different from the project that owns the finding.
  core.String? projectId;

  /// The rest of the path after the root.
  ///
  /// Examples: - For BigQuery table `project_id:dataset_id.table_id`, the
  /// relative path is `table_id` - For Cloud Storage file
  /// `gs://bucket/folder/filename.txt`, the relative path is
  /// `folder/filename.txt`
  core.String? relativePath;

  /// The root of the container.
  ///
  /// Examples: - For BigQuery table `project_id:dataset_id.table_id`, the root
  /// is `dataset_id` - For Cloud Storage file
  /// `gs://bucket/folder/filename.txt`, the root is `gs://bucket`
  core.String? rootPath;

  /// Container type, for example BigQuery or Cloud Storage.
  core.String? type;

  /// Findings container modification timestamp, if applicable.
  ///
  /// For Cloud Storage, this field contains the last file modification
  /// timestamp. For a BigQuery table, this field contains the
  /// last_modified_time property. For Datastore, this field isn't populated.
  core.String? updateTime;

  /// Findings container version, if available ("generation" for Cloud Storage).
  core.String? version;

  GooglePrivacyDlpV2Container({
    this.fullPath,
    this.projectId,
    this.relativePath,
    this.rootPath,
    this.type,
    this.updateTime,
    this.version,
  });

  GooglePrivacyDlpV2Container.fromJson(core.Map json_)
      : this(
          fullPath: json_.containsKey('fullPath')
              ? json_['fullPath'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          relativePath: json_.containsKey('relativePath')
              ? json_['relativePath'] as core.String
              : null,
          rootPath: json_.containsKey('rootPath')
              ? json_['rootPath'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullPath != null) 'fullPath': fullPath!,
        if (projectId != null) 'projectId': projectId!,
        if (relativePath != null) 'relativePath': relativePath!,
        if (rootPath != null) 'rootPath': rootPath!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// Type of content to inspect.
class GooglePrivacyDlpV2ContentItem {
  /// Content data to inspect or redact.
  ///
  /// Replaces `type` and `data`.
  GooglePrivacyDlpV2ByteContentItem? byteItem;

  /// Structured content for inspection.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/inspecting-text#inspecting_a_table
  /// to learn more.
  GooglePrivacyDlpV2Table? table;

  /// String data to inspect or redact.
  core.String? value;

  GooglePrivacyDlpV2ContentItem({
    this.byteItem,
    this.table,
    this.value,
  });

  GooglePrivacyDlpV2ContentItem.fromJson(core.Map json_)
      : this(
          byteItem: json_.containsKey('byteItem')
              ? GooglePrivacyDlpV2ByteContentItem.fromJson(
                  json_['byteItem'] as core.Map<core.String, core.dynamic>)
              : null,
          table: json_.containsKey('table')
              ? GooglePrivacyDlpV2Table.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteItem != null) 'byteItem': byteItem!,
        if (table != null) 'table': table!,
        if (value != null) 'value': value!,
      };
}

/// Precise location of the finding within a document, record, image, or
/// metadata container.
class GooglePrivacyDlpV2ContentLocation {
  /// Name of the container where the finding is located.
  ///
  /// The top level name is the source file name or table name. Names of some
  /// common storage containers are formatted as follows: * BigQuery tables:
  /// `{project_id}:{dataset_id}.{table_id}` * Cloud Storage files:
  /// `gs://{bucket}/{path}` * Datastore namespace: {namespace} Nested names
  /// could be absent if the embedded object has no string identifier (for
  /// example, an image contained within a document).
  core.String? containerName;

  /// Finding container modification timestamp, if applicable.
  ///
  /// For Cloud Storage, this field contains the last file modification
  /// timestamp. For a BigQuery table, this field contains the
  /// last_modified_time property. For Datastore, this field isn't populated.
  core.String? containerTimestamp;

  /// Finding container version, if available ("generation" for Cloud Storage).
  core.String? containerVersion;

  /// Location data for document files.
  GooglePrivacyDlpV2DocumentLocation? documentLocation;

  /// Location within an image's pixels.
  GooglePrivacyDlpV2ImageLocation? imageLocation;

  /// Location within the metadata for inspected content.
  GooglePrivacyDlpV2MetadataLocation? metadataLocation;

  /// Location within a row or record of a database table.
  GooglePrivacyDlpV2RecordLocation? recordLocation;

  GooglePrivacyDlpV2ContentLocation({
    this.containerName,
    this.containerTimestamp,
    this.containerVersion,
    this.documentLocation,
    this.imageLocation,
    this.metadataLocation,
    this.recordLocation,
  });

  GooglePrivacyDlpV2ContentLocation.fromJson(core.Map json_)
      : this(
          containerName: json_.containsKey('containerName')
              ? json_['containerName'] as core.String
              : null,
          containerTimestamp: json_.containsKey('containerTimestamp')
              ? json_['containerTimestamp'] as core.String
              : null,
          containerVersion: json_.containsKey('containerVersion')
              ? json_['containerVersion'] as core.String
              : null,
          documentLocation: json_.containsKey('documentLocation')
              ? GooglePrivacyDlpV2DocumentLocation.fromJson(
                  json_['documentLocation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageLocation: json_.containsKey('imageLocation')
              ? GooglePrivacyDlpV2ImageLocation.fromJson(
                  json_['imageLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          metadataLocation: json_.containsKey('metadataLocation')
              ? GooglePrivacyDlpV2MetadataLocation.fromJson(
                  json_['metadataLocation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          recordLocation: json_.containsKey('recordLocation')
              ? GooglePrivacyDlpV2RecordLocation.fromJson(
                  json_['recordLocation']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerName != null) 'containerName': containerName!,
        if (containerTimestamp != null)
          'containerTimestamp': containerTimestamp!,
        if (containerVersion != null) 'containerVersion': containerVersion!,
        if (documentLocation != null) 'documentLocation': documentLocation!,
        if (imageLocation != null) 'imageLocation': imageLocation!,
        if (metadataLocation != null) 'metadataLocation': metadataLocation!,
        if (recordLocation != null) 'recordLocation': recordLocation!,
      };
}

/// Request message for CreateConnection.
class GooglePrivacyDlpV2CreateConnectionRequest {
  /// The connection resource.
  ///
  /// Required.
  GooglePrivacyDlpV2Connection? connection;

  GooglePrivacyDlpV2CreateConnectionRequest({
    this.connection,
  });

  GooglePrivacyDlpV2CreateConnectionRequest.fromJson(core.Map json_)
      : this(
          connection: json_.containsKey('connection')
              ? GooglePrivacyDlpV2Connection.fromJson(
                  json_['connection'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connection != null) 'connection': connection!,
      };
}

/// Request message for CreateDeidentifyTemplate.
class GooglePrivacyDlpV2CreateDeidentifyTemplateRequest {
  /// The DeidentifyTemplate to create.
  ///
  /// Required.
  GooglePrivacyDlpV2DeidentifyTemplate? deidentifyTemplate;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  /// The template id can contain uppercase and lowercase letters, numbers, and
  /// hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`.
  ///
  /// The maximum length is 100 characters. Can be empty to allow the system to
  /// generate one.
  core.String? templateId;

  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest({
    this.deidentifyTemplate,
    this.locationId,
    this.templateId,
  });

  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(core.Map json_)
      : this(
          deidentifyTemplate: json_.containsKey('deidentifyTemplate')
              ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                  json_['deidentifyTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          templateId: json_.containsKey('templateId')
              ? json_['templateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
        if (locationId != null) 'locationId': locationId!,
        if (templateId != null) 'templateId': templateId!,
      };
}

/// Request message for CreateDiscoveryConfig.
class GooglePrivacyDlpV2CreateDiscoveryConfigRequest {
  /// The config ID can contain uppercase and lowercase letters, numbers, and
  /// hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`.
  ///
  /// The maximum length is 100 characters. Can be empty to allow the system to
  /// generate one.
  core.String? configId;

  /// The DiscoveryConfig to create.
  ///
  /// Required.
  GooglePrivacyDlpV2DiscoveryConfig? discoveryConfig;

  GooglePrivacyDlpV2CreateDiscoveryConfigRequest({
    this.configId,
    this.discoveryConfig,
  });

  GooglePrivacyDlpV2CreateDiscoveryConfigRequest.fromJson(core.Map json_)
      : this(
          configId: json_.containsKey('configId')
              ? json_['configId'] as core.String
              : null,
          discoveryConfig: json_.containsKey('discoveryConfig')
              ? GooglePrivacyDlpV2DiscoveryConfig.fromJson(
                  json_['discoveryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configId != null) 'configId': configId!,
        if (discoveryConfig != null) 'discoveryConfig': discoveryConfig!,
      };
}

/// Request message for CreateDlpJobRequest.
///
/// Used to initiate long running jobs such as calculating risk metrics or
/// inspecting Google Cloud Storage.
class GooglePrivacyDlpV2CreateDlpJobRequest {
  /// An inspection job scans a storage repository for InfoTypes.
  GooglePrivacyDlpV2InspectJobConfig? inspectJob;

  /// The job id can contain uppercase and lowercase letters, numbers, and
  /// hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`.
  ///
  /// The maximum length is 100 characters. Can be empty to allow the system to
  /// generate one.
  core.String? jobId;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  /// A risk analysis job calculates re-identification risk metrics for a
  /// BigQuery table.
  GooglePrivacyDlpV2RiskAnalysisJobConfig? riskJob;

  GooglePrivacyDlpV2CreateDlpJobRequest({
    this.inspectJob,
    this.jobId,
    this.locationId,
    this.riskJob,
  });

  GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(core.Map json_)
      : this(
          inspectJob: json_.containsKey('inspectJob')
              ? GooglePrivacyDlpV2InspectJobConfig.fromJson(
                  json_['inspectJob'] as core.Map<core.String, core.dynamic>)
              : null,
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          riskJob: json_.containsKey('riskJob')
              ? GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(
                  json_['riskJob'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectJob != null) 'inspectJob': inspectJob!,
        if (jobId != null) 'jobId': jobId!,
        if (locationId != null) 'locationId': locationId!,
        if (riskJob != null) 'riskJob': riskJob!,
      };
}

/// Request message for CreateInspectTemplate.
class GooglePrivacyDlpV2CreateInspectTemplateRequest {
  /// The InspectTemplate to create.
  ///
  /// Required.
  GooglePrivacyDlpV2InspectTemplate? inspectTemplate;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  /// The template id can contain uppercase and lowercase letters, numbers, and
  /// hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`.
  ///
  /// The maximum length is 100 characters. Can be empty to allow the system to
  /// generate one.
  core.String? templateId;

  GooglePrivacyDlpV2CreateInspectTemplateRequest({
    this.inspectTemplate,
    this.locationId,
    this.templateId,
  });

  GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(core.Map json_)
      : this(
          inspectTemplate: json_.containsKey('inspectTemplate')
              ? GooglePrivacyDlpV2InspectTemplate.fromJson(
                  json_['inspectTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          templateId: json_.containsKey('templateId')
              ? json_['templateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectTemplate != null) 'inspectTemplate': inspectTemplate!,
        if (locationId != null) 'locationId': locationId!,
        if (templateId != null) 'templateId': templateId!,
      };
}

/// Request message for CreateJobTrigger.
class GooglePrivacyDlpV2CreateJobTriggerRequest {
  /// The JobTrigger to create.
  ///
  /// Required.
  GooglePrivacyDlpV2JobTrigger? jobTrigger;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  /// The trigger id can contain uppercase and lowercase letters, numbers, and
  /// hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`.
  ///
  /// The maximum length is 100 characters. Can be empty to allow the system to
  /// generate one.
  core.String? triggerId;

  GooglePrivacyDlpV2CreateJobTriggerRequest({
    this.jobTrigger,
    this.locationId,
    this.triggerId,
  });

  GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(core.Map json_)
      : this(
          jobTrigger: json_.containsKey('jobTrigger')
              ? GooglePrivacyDlpV2JobTrigger.fromJson(
                  json_['jobTrigger'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          triggerId: json_.containsKey('triggerId')
              ? json_['triggerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobTrigger != null) 'jobTrigger': jobTrigger!,
        if (locationId != null) 'locationId': locationId!,
        if (triggerId != null) 'triggerId': triggerId!,
      };
}

/// Request message for CreateStoredInfoType.
class GooglePrivacyDlpV2CreateStoredInfoTypeRequest {
  /// Configuration of the storedInfoType to create.
  ///
  /// Required.
  GooglePrivacyDlpV2StoredInfoTypeConfig? config;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  /// The storedInfoType ID can contain uppercase and lowercase letters,
  /// numbers, and hyphens; that is, it must match the regular expression:
  /// `[a-zA-Z\d-_]+`.
  ///
  /// The maximum length is 100 characters. Can be empty to allow the system to
  /// generate one.
  core.String? storedInfoTypeId;

  GooglePrivacyDlpV2CreateStoredInfoTypeRequest({
    this.config,
    this.locationId,
    this.storedInfoTypeId,
  });

  GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          storedInfoTypeId: json_.containsKey('storedInfoTypeId')
              ? json_['storedInfoTypeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (locationId != null) 'locationId': locationId!,
        if (storedInfoTypeId != null) 'storedInfoTypeId': storedInfoTypeId!,
      };
}

/// Pseudonymization method that generates deterministic encryption for the
/// given input.
///
/// Outputs a base64 encoded representation of the encrypted output. Uses
/// AES-SIV based on the RFC https://tools.ietf.org/html/rfc5297.
class GooglePrivacyDlpV2CryptoDeterministicConfig {
  /// A context may be used for higher security and maintaining referential
  /// integrity such that the same identifier in two different contexts will be
  /// given a distinct surrogate.
  ///
  /// The context is appended to plaintext value being encrypted. On decryption
  /// the provided context is validated against the value used during
  /// encryption. If a context was provided during encryption, same context must
  /// be provided during decryption as well. If the context is not set,
  /// plaintext would be used as is for encryption. If the context is set but:
  /// 1. there is no record present when transforming a given value or 2. the
  /// field is not present when transforming a given value, plaintext would be
  /// used as is for encryption. Note that case (1) is expected when an
  /// `InfoTypeTransformation` is applied to both structured and unstructured
  /// `ContentItem`s.
  GooglePrivacyDlpV2FieldId? context;

  /// The key used by the encryption function.
  ///
  /// For deterministic encryption using AES-SIV, the provided key is internally
  /// expanded to 64 bytes prior to use.
  GooglePrivacyDlpV2CryptoKey? cryptoKey;

  /// The custom info type to annotate the surrogate with.
  ///
  /// This annotation will be applied to the surrogate by prefixing it with the
  /// name of the custom info type followed by the number of characters
  /// comprising the surrogate. The following scheme defines the format: {info
  /// type name}({surrogate character count}):{surrogate} For example, if the
  /// name of custom info type is 'MY_TOKEN_INFO_TYPE' and the surrogate is
  /// 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc'
  /// This annotation identifies the surrogate when inspecting content using the
  /// custom info type 'Surrogate'. This facilitates reversal of the surrogate
  /// when it occurs in free text. Note: For record transformations where the
  /// entire cell in a table is being transformed, surrogates are not mandatory.
  /// Surrogates are used to denote the location of the token and are necessary
  /// for re-identification in free form text. In order for inspection to work
  /// properly, the name of this info type must not occur naturally anywhere in
  /// your data; otherwise, inspection may either - reverse a surrogate that
  /// does not correspond to an actual identifier - be unable to parse the
  /// surrogate and result in an error Therefore, choose your custom info type
  /// name carefully after considering what your data looks like. One way to
  /// select a name that has a high chance of yielding reliable detection is to
  /// include one or more unicode characters that are highly improbable to exist
  /// in your data. For example, assuming your data is entered from a regular
  /// ASCII keyboard, the symbol with the hex code point 29DD might be used like
  /// so: ⧝MY_TOKEN_TYPE.
  GooglePrivacyDlpV2InfoType? surrogateInfoType;

  GooglePrivacyDlpV2CryptoDeterministicConfig({
    this.context,
    this.cryptoKey,
    this.surrogateInfoType,
  });

  GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cryptoKey: json_.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  json_['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
          surrogateInfoType: json_.containsKey('surrogateInfoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(json_['surrogateInfoType']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
        if (surrogateInfoType != null) 'surrogateInfoType': surrogateInfoType!,
      };
}

/// Pseudonymization method that generates surrogates via cryptographic hashing.
///
/// Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64
/// encoded representation of the hashed output (for example,
/// L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and
/// integer values can be hashed. See
/// https://cloud.google.com/sensitive-data-protection/docs/pseudonymization to
/// learn more.
class GooglePrivacyDlpV2CryptoHashConfig {
  /// The key used by the hash function.
  GooglePrivacyDlpV2CryptoKey? cryptoKey;

  GooglePrivacyDlpV2CryptoHashConfig({
    this.cryptoKey,
  });

  GooglePrivacyDlpV2CryptoHashConfig.fromJson(core.Map json_)
      : this(
          cryptoKey: json_.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  json_['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
      };
}

/// This is a data encryption key (DEK) (as opposed to a key encryption key
/// (KEK) stored by Cloud Key Management Service (Cloud KMS).
///
/// When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate
/// IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.
class GooglePrivacyDlpV2CryptoKey {
  /// Key wrapped using Cloud KMS
  GooglePrivacyDlpV2KmsWrappedCryptoKey? kmsWrapped;

  /// Transient crypto key
  GooglePrivacyDlpV2TransientCryptoKey? transient;

  /// Unwrapped crypto key
  GooglePrivacyDlpV2UnwrappedCryptoKey? unwrapped;

  GooglePrivacyDlpV2CryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  GooglePrivacyDlpV2CryptoKey.fromJson(core.Map json_)
      : this(
          kmsWrapped: json_.containsKey('kmsWrapped')
              ? GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(
                  json_['kmsWrapped'] as core.Map<core.String, core.dynamic>)
              : null,
          transient: json_.containsKey('transient')
              ? GooglePrivacyDlpV2TransientCryptoKey.fromJson(
                  json_['transient'] as core.Map<core.String, core.dynamic>)
              : null,
          unwrapped: json_.containsKey('unwrapped')
              ? GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(
                  json_['unwrapped'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsWrapped != null) 'kmsWrapped': kmsWrapped!,
        if (transient != null) 'transient': transient!,
        if (unwrapped != null) 'unwrapped': unwrapped!,
      };
}

/// Replaces an identifier with a surrogate using Format Preserving Encryption
/// (FPE) with the FFX mode of operation; however when used in the
/// `ReidentifyContent` API method, it serves the opposite function by reversing
/// the surrogate back into the original identifier.
///
/// The identifier must be encoded as ASCII. For a given crypto key and context,
/// the same identifier will be replaced with the same surrogate. Identifiers
/// must be at least two characters long. In the case that the identifier is the
/// empty string, it will be skipped. See
/// https://cloud.google.com/sensitive-data-protection/docs/pseudonymization to
/// learn more. Note: We recommend using CryptoDeterministicConfig for all use
/// cases which do not require preserving the input alphabet space and size,
/// plus warrant referential integrity.
class GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig {
  /// Common alphabets.
  /// Possible string values are:
  /// - "FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED" : Unused.
  /// - "NUMERIC" : `[0-9]` (radix of 10)
  /// - "HEXADECIMAL" : `[0-9A-F]` (radix of 16)
  /// - "UPPER_CASE_ALPHA_NUMERIC" : `[0-9A-Z]` (radix of 36)
  /// - "ALPHA_NUMERIC" : `[0-9A-Za-z]` (radix of 62)
  core.String? commonAlphabet;

  /// The 'tweak', a context may be used for higher security since the same
  /// identifier in two different contexts won't be given the same surrogate.
  ///
  /// If the context is not set, a default tweak will be used. If the context is
  /// set but: 1. there is no record present when transforming a given value or
  /// 1. the field is not present when transforming a given value, a default
  /// tweak will be used. Note that case (1) is expected when an
  /// `InfoTypeTransformation` is applied to both structured and unstructured
  /// `ContentItem`s. Currently, the referenced field may be of value type
  /// integer or string. The tweak is constructed as a sequence of bytes in big
  /// endian byte order such that: - a 64 bit integer is encoded followed by a
  /// single byte of value 1 - a string is encoded in UTF-8 format followed by a
  /// single byte of value 2
  GooglePrivacyDlpV2FieldId? context;

  /// The key used by the encryption algorithm.
  ///
  /// Required.
  GooglePrivacyDlpV2CryptoKey? cryptoKey;

  /// This is supported by mapping these to the alphanumeric characters that the
  /// FFX mode natively supports.
  ///
  /// This happens before/after encryption/decryption. Each character listed
  /// must appear only once. Number of characters must be in the range \[2,
  /// 95\]. This must be encoded as ASCII. The order of characters does not
  /// matter. The full list of allowed characters is:
  /// 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
  /// ~\`!@#$%^&*()_-+={\[}\]|\:;"'\<,\>.?/
  core.String? customAlphabet;

  /// The native way to select the alphabet.
  ///
  /// Must be in the range \[2, 95\].
  core.int? radix;

  /// The custom infoType to annotate the surrogate with.
  ///
  /// This annotation will be applied to the surrogate by prefixing it with the
  /// name of the custom infoType followed by the number of characters
  /// comprising the surrogate. The following scheme defines the format:
  /// info_type_name(surrogate_character_count):surrogate For example, if the
  /// name of custom infoType is 'MY_TOKEN_INFO_TYPE' and the surrogate is
  /// 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc'
  /// This annotation identifies the surrogate when inspecting content using the
  /// custom infoType
  /// \[`SurrogateType`\](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/InspectConfig#surrogatetype).
  /// This facilitates reversal of the surrogate when it occurs in free text. In
  /// order for inspection to work properly, the name of this infoType must not
  /// occur naturally anywhere in your data; otherwise, inspection may find a
  /// surrogate that does not correspond to an actual identifier. Therefore,
  /// choose your custom infoType name carefully after considering what your
  /// data looks like. One way to select a name that has a high chance of
  /// yielding reliable detection is to include one or more unicode characters
  /// that are highly improbable to exist in your data. For example, assuming
  /// your data is entered from a regular ASCII keyboard, the symbol with the
  /// hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE
  GooglePrivacyDlpV2InfoType? surrogateInfoType;

  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.context,
    this.cryptoKey,
    this.customAlphabet,
    this.radix,
    this.surrogateInfoType,
  });

  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(core.Map json_)
      : this(
          commonAlphabet: json_.containsKey('commonAlphabet')
              ? json_['commonAlphabet'] as core.String
              : null,
          context: json_.containsKey('context')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cryptoKey: json_.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  json_['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
          customAlphabet: json_.containsKey('customAlphabet')
              ? json_['customAlphabet'] as core.String
              : null,
          radix: json_.containsKey('radix') ? json_['radix'] as core.int : null,
          surrogateInfoType: json_.containsKey('surrogateInfoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(json_['surrogateInfoType']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonAlphabet != null) 'commonAlphabet': commonAlphabet!,
        if (context != null) 'context': context!,
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
        if (customAlphabet != null) 'customAlphabet': customAlphabet!,
        if (radix != null) 'radix': radix!,
        if (surrogateInfoType != null) 'surrogateInfoType': surrogateInfoType!,
      };
}

/// Custom information type provided by the user.
///
/// Used to find domain-specific sensitive information configurable to the data
/// in question.
class GooglePrivacyDlpV2CustomInfoType {
  /// Set of detection rules to apply to all findings of this CustomInfoType.
  ///
  /// Rules are applied in order that they are specified. Not supported for the
  /// `surrogate_type` CustomInfoType.
  core.List<GooglePrivacyDlpV2DetectionRule>? detectionRules;

  /// A list of phrases to detect as a CustomInfoType.
  GooglePrivacyDlpV2Dictionary? dictionary;

  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to
  /// be returned.
  ///
  /// It still can be used for rules matching.
  /// Possible string values are:
  /// - "EXCLUSION_TYPE_UNSPECIFIED" : A finding of this custom info type will
  /// not be excluded from results.
  /// - "EXCLUSION_TYPE_EXCLUDE" : A finding of this custom info type will be
  /// excluded from final results, but can still affect rule execution.
  core.String? exclusionType;

  /// CustomInfoType can either be a new infoType, or an extension of built-in
  /// infoType, when the name matches one of existing infoTypes and that
  /// infoType is specified in `InspectContent.info_types` field.
  ///
  /// Specifying the latter adds findings to the one detected by the system. If
  /// built-in info type is not specified in `InspectContent.info_types` list
  /// then the name is treated as a custom info type.
  GooglePrivacyDlpV2InfoType? infoType;

  /// Likelihood to return for this CustomInfoType.
  ///
  /// This base value can be altered by a detection rule if the finding meets
  /// the criteria specified by the rule. Defaults to `VERY_LIKELY` if not
  /// specified.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; same as POSSIBLE.
  /// - "VERY_UNLIKELY" : Highest chance of a false positive.
  /// - "UNLIKELY" : High chance of a false positive.
  /// - "POSSIBLE" : Some matching signals. The default value.
  /// - "LIKELY" : Low chance of a false positive.
  /// - "VERY_LIKELY" : Confidence level is high. Lowest chance of a false
  /// positive.
  core.String? likelihood;

  /// Regular expression based CustomInfoType.
  GooglePrivacyDlpV2Regex? regex;

  /// Sensitivity for this CustomInfoType.
  ///
  /// If this CustomInfoType extends an existing InfoType, the sensitivity here
  /// will take precedence over that of the original InfoType. If unset for a
  /// CustomInfoType, it will default to HIGH. This only applies to data
  /// profiling.
  GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  /// Load an existing `StoredInfoType` resource for use in `InspectDataSource`.
  ///
  /// Not currently supported in `InspectContent`.
  GooglePrivacyDlpV2StoredType? storedType;

  /// Message for detecting output from deidentification transformations that
  /// support reversing.
  GooglePrivacyDlpV2SurrogateType? surrogateType;

  GooglePrivacyDlpV2CustomInfoType({
    this.detectionRules,
    this.dictionary,
    this.exclusionType,
    this.infoType,
    this.likelihood,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  GooglePrivacyDlpV2CustomInfoType.fromJson(core.Map json_)
      : this(
          detectionRules: json_.containsKey('detectionRules')
              ? (json_['detectionRules'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DetectionRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dictionary: json_.containsKey('dictionary')
              ? GooglePrivacyDlpV2Dictionary.fromJson(
                  json_['dictionary'] as core.Map<core.String, core.dynamic>)
              : null,
          exclusionType: json_.containsKey('exclusionType')
              ? json_['exclusionType'] as core.String
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          likelihood: json_.containsKey('likelihood')
              ? json_['likelihood'] as core.String
              : null,
          regex: json_.containsKey('regex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  json_['regex'] as core.Map<core.String, core.dynamic>)
              : null,
          sensitivityScore: json_.containsKey('sensitivityScore')
              ? GooglePrivacyDlpV2SensitivityScore.fromJson(
                  json_['sensitivityScore']
                      as core.Map<core.String, core.dynamic>)
              : null,
          storedType: json_.containsKey('storedType')
              ? GooglePrivacyDlpV2StoredType.fromJson(
                  json_['storedType'] as core.Map<core.String, core.dynamic>)
              : null,
          surrogateType: json_.containsKey('surrogateType')
              ? GooglePrivacyDlpV2SurrogateType.fromJson(
                  json_['surrogateType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectionRules != null) 'detectionRules': detectionRules!,
        if (dictionary != null) 'dictionary': dictionary!,
        if (exclusionType != null) 'exclusionType': exclusionType!,
        if (infoType != null) 'infoType': infoType!,
        if (likelihood != null) 'likelihood': likelihood!,
        if (regex != null) 'regex': regex!,
        if (sensitivityScore != null) 'sensitivityScore': sensitivityScore!,
        if (storedType != null) 'storedType': storedType!,
        if (surrogateType != null) 'surrogateType': surrogateType!,
      };
}

/// A task to execute when a data profile has been generated.
class GooglePrivacyDlpV2DataProfileAction {
  /// Export data profiles into a provided location.
  GooglePrivacyDlpV2Export? exportData;

  /// Publish a message into the Pub/Sub topic.
  GooglePrivacyDlpV2PubSubNotification? pubSubNotification;

  GooglePrivacyDlpV2DataProfileAction({
    this.exportData,
    this.pubSubNotification,
  });

  GooglePrivacyDlpV2DataProfileAction.fromJson(core.Map json_)
      : this(
          exportData: json_.containsKey('exportData')
              ? GooglePrivacyDlpV2Export.fromJson(
                  json_['exportData'] as core.Map<core.String, core.dynamic>)
              : null,
          pubSubNotification: json_.containsKey('pubSubNotification')
              ? GooglePrivacyDlpV2PubSubNotification.fromJson(
                  json_['pubSubNotification']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportData != null) 'exportData': exportData!,
        if (pubSubNotification != null)
          'pubSubNotification': pubSubNotification!,
      };
}

/// Snapshot of the configurations used to generate the profile.
class GooglePrivacyDlpV2DataProfileConfigSnapshot {
  /// A copy of the configuration used to generate this profile.
  ///
  /// This is deprecated, and the DiscoveryConfig field is preferred moving
  /// forward. DataProfileJobConfig will still be written here for Discovery in
  /// BigQuery for backwards compatibility, but will not be updated with new
  /// fields, while DiscoveryConfig will.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GooglePrivacyDlpV2DataProfileJobConfig? dataProfileJob;

  /// A copy of the configuration used to generate this profile.
  GooglePrivacyDlpV2DiscoveryConfig? discoveryConfig;

  /// A copy of the inspection config used to generate this profile.
  ///
  /// This is a copy of the inspect_template specified in
  /// `DataProfileJobConfig`.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// Timestamp when the template was modified
  core.String? inspectTemplateModifiedTime;

  /// Name of the inspection template used to generate this profile
  core.String? inspectTemplateName;

  GooglePrivacyDlpV2DataProfileConfigSnapshot({
    this.dataProfileJob,
    this.discoveryConfig,
    this.inspectConfig,
    this.inspectTemplateModifiedTime,
    this.inspectTemplateName,
  });

  GooglePrivacyDlpV2DataProfileConfigSnapshot.fromJson(core.Map json_)
      : this(
          dataProfileJob: json_.containsKey('dataProfileJob')
              ? GooglePrivacyDlpV2DataProfileJobConfig.fromJson(
                  json_['dataProfileJob']
                      as core.Map<core.String, core.dynamic>)
              : null,
          discoveryConfig: json_.containsKey('discoveryConfig')
              ? GooglePrivacyDlpV2DiscoveryConfig.fromJson(
                  json_['discoveryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateModifiedTime:
              json_.containsKey('inspectTemplateModifiedTime')
                  ? json_['inspectTemplateModifiedTime'] as core.String
                  : null,
          inspectTemplateName: json_.containsKey('inspectTemplateName')
              ? json_['inspectTemplateName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataProfileJob != null) 'dataProfileJob': dataProfileJob!,
        if (discoveryConfig != null) 'discoveryConfig': discoveryConfig!,
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (inspectTemplateModifiedTime != null)
          'inspectTemplateModifiedTime': inspectTemplateModifiedTime!,
        if (inspectTemplateName != null)
          'inspectTemplateName': inspectTemplateName!,
      };
}

/// Configuration for setting up a job to scan resources for profile generation.
///
/// Only one data profile configuration may exist per organization, folder, or
/// project. The generated data profiles are retained according to the
/// [data retention policy](https://cloud.google.com/sensitive-data-protection/docs/data-profiles#retention).
class GooglePrivacyDlpV2DataProfileJobConfig {
  /// Actions to execute at the completion of the job.
  core.List<GooglePrivacyDlpV2DataProfileAction>? dataProfileActions;

  /// Detection logic for profile generation.
  ///
  /// Not all template features are used by profiles. FindingLimits,
  /// include_quote and exclude_info_types have no impact on data profiling.
  /// Multiple templates may be provided if there is data in multiple regions.
  /// At most one template must be specified per-region (including "global").
  /// Each region is scanned using the applicable template. If no
  /// region-specific template is specified, but a "global" template is
  /// specified, it will be copied to that region and used instead. If no global
  /// or region-specific template is provided for a region with data, that
  /// region's data will not be scanned. For more information, see
  /// https://cloud.google.com/sensitive-data-protection/docs/data-profiles#data-residency.
  core.List<core.String>? inspectTemplates;

  /// The data to scan.
  GooglePrivacyDlpV2DataProfileLocation? location;

  /// The project that will run the scan.
  ///
  /// The DLP service account that exists within this project must have access
  /// to all resources that are profiled, and the Cloud DLP API must be enabled.
  core.String? projectId;

  GooglePrivacyDlpV2DataProfileJobConfig({
    this.dataProfileActions,
    this.inspectTemplates,
    this.location,
    this.projectId,
  });

  GooglePrivacyDlpV2DataProfileJobConfig.fromJson(core.Map json_)
      : this(
          dataProfileActions: json_.containsKey('dataProfileActions')
              ? (json_['dataProfileActions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DataProfileAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectTemplates: json_.containsKey('inspectTemplates')
              ? (json_['inspectTemplates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          location: json_.containsKey('location')
              ? GooglePrivacyDlpV2DataProfileLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataProfileActions != null)
          'dataProfileActions': dataProfileActions!,
        if (inspectTemplates != null) 'inspectTemplates': inspectTemplates!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// The data that will be profiled.
typedef GooglePrivacyDlpV2DataProfileLocation = $Location02;

/// A condition for determining whether a Pub/Sub should be triggered.
class GooglePrivacyDlpV2DataProfilePubSubCondition {
  /// An expression.
  GooglePrivacyDlpV2PubSubExpressions? expressions;

  GooglePrivacyDlpV2DataProfilePubSubCondition({
    this.expressions,
  });

  GooglePrivacyDlpV2DataProfilePubSubCondition.fromJson(core.Map json_)
      : this(
          expressions: json_.containsKey('expressions')
              ? GooglePrivacyDlpV2PubSubExpressions.fromJson(
                  json_['expressions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expressions != null) 'expressions': expressions!,
      };
}

/// Score is a summary of all elements in the data profile.
///
/// A higher number means more risk.
class GooglePrivacyDlpV2DataRiskLevel {
  /// The score applied to the resource.
  /// Possible string values are:
  /// - "RISK_SCORE_UNSPECIFIED" : Unused.
  /// - "RISK_LOW" : Low risk - Lower indication of sensitive data that appears
  /// to have additional access restrictions in place or no indication of
  /// sensitive data found.
  /// - "RISK_MODERATE" : Medium risk - Sensitive data may be present but
  /// additional access or fine grain access restrictions appear to be present.
  /// Consider limiting access even further or transform data to mask.
  /// - "RISK_HIGH" : High risk – SPII may be present. Access controls may
  /// include public ACLs. Exfiltration of data may lead to user data loss.
  /// Re-identification of users may be possible. Consider limiting usage and or
  /// removing SPII.
  core.String? score;

  GooglePrivacyDlpV2DataRiskLevel({
    this.score,
  });

  GooglePrivacyDlpV2DataRiskLevel.fromJson(core.Map json_)
      : this(
          score:
              json_.containsKey('score') ? json_['score'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (score != null) 'score': score!,
      };
}

/// Message used to identify the type of resource being profiled.
class GooglePrivacyDlpV2DataSourceType {
  /// An identifying string to the type of resource being profiled.
  ///
  /// Current values: google/bigquery/table, google/project
  ///
  /// Output only.
  core.String? dataSource;

  GooglePrivacyDlpV2DataSourceType({
    this.dataSource,
  });

  GooglePrivacyDlpV2DataSourceType.fromJson(core.Map json_)
      : this(
          dataSource: json_.containsKey('dataSource')
              ? json_['dataSource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSource != null) 'dataSource': dataSource!,
      };
}

/// Match database resources using regex filters.
///
/// Examples of database resources are tables, views, and stored procedures.
class GooglePrivacyDlpV2DatabaseResourceCollection {
  /// A collection of regular expressions to match a database resource against.
  GooglePrivacyDlpV2DatabaseResourceRegexes? includeRegexes;

  GooglePrivacyDlpV2DatabaseResourceCollection({
    this.includeRegexes,
  });

  GooglePrivacyDlpV2DatabaseResourceCollection.fromJson(core.Map json_)
      : this(
          includeRegexes: json_.containsKey('includeRegexes')
              ? GooglePrivacyDlpV2DatabaseResourceRegexes.fromJson(
                  json_['includeRegexes']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeRegexes != null) 'includeRegexes': includeRegexes!,
      };
}

/// Identifies a single database resource, like a table within a database.
class GooglePrivacyDlpV2DatabaseResourceReference {
  /// The instance where this resource is located.
  ///
  /// For example: Cloud SQL's instance id.
  ///
  /// Required.
  core.String? instance;

  /// If within a project-level config, then this must match the config's
  /// project id.
  ///
  /// Required.
  core.String? projectId;

  GooglePrivacyDlpV2DatabaseResourceReference({
    this.instance,
    this.projectId,
  });

  GooglePrivacyDlpV2DatabaseResourceReference.fromJson(core.Map json_)
      : this(
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instance != null) 'instance': instance!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// A pattern to match against one or more database resources.
///
/// At least one pattern must be specified. Regular expressions use RE2
/// [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found
/// under the google/re2 repository on GitHub.
class GooglePrivacyDlpV2DatabaseResourceRegex {
  /// Regex to test the database name against.
  ///
  /// If empty, all databases match.
  core.String? databaseRegex;

  /// Regex to test the database resource's name against.
  ///
  /// An example of a database resource name is a table's name. Other database
  /// resource names like view names could be included in the future. If empty,
  /// all database resources match.
  core.String? databaseResourceNameRegex;

  /// Regex to test the instance name against.
  ///
  /// If empty, all instances match.
  core.String? instanceRegex;

  /// For organizations, if unset, will match all projects.
  ///
  /// Has no effect for Data Profile configurations created within a project.
  core.String? projectIdRegex;

  GooglePrivacyDlpV2DatabaseResourceRegex({
    this.databaseRegex,
    this.databaseResourceNameRegex,
    this.instanceRegex,
    this.projectIdRegex,
  });

  GooglePrivacyDlpV2DatabaseResourceRegex.fromJson(core.Map json_)
      : this(
          databaseRegex: json_.containsKey('databaseRegex')
              ? json_['databaseRegex'] as core.String
              : null,
          databaseResourceNameRegex:
              json_.containsKey('databaseResourceNameRegex')
                  ? json_['databaseResourceNameRegex'] as core.String
                  : null,
          instanceRegex: json_.containsKey('instanceRegex')
              ? json_['instanceRegex'] as core.String
              : null,
          projectIdRegex: json_.containsKey('projectIdRegex')
              ? json_['projectIdRegex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseRegex != null) 'databaseRegex': databaseRegex!,
        if (databaseResourceNameRegex != null)
          'databaseResourceNameRegex': databaseResourceNameRegex!,
        if (instanceRegex != null) 'instanceRegex': instanceRegex!,
        if (projectIdRegex != null) 'projectIdRegex': projectIdRegex!,
      };
}

/// A collection of regular expressions to determine what database resources to
/// match against.
class GooglePrivacyDlpV2DatabaseResourceRegexes {
  /// A group of regular expression patterns to match against one or more
  /// database resources.
  ///
  /// Maximum of 100 entries. The sum of all regular expression's length can't
  /// exceed 10 KiB.
  core.List<GooglePrivacyDlpV2DatabaseResourceRegex>? patterns;

  GooglePrivacyDlpV2DatabaseResourceRegexes({
    this.patterns,
  });

  GooglePrivacyDlpV2DatabaseResourceRegexes.fromJson(core.Map json_)
      : this(
          patterns: json_.containsKey('patterns')
              ? (json_['patterns'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2DatabaseResourceRegex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (patterns != null) 'patterns': patterns!,
      };
}

/// Record key for a finding in Cloud Datastore.
class GooglePrivacyDlpV2DatastoreKey {
  /// Datastore entity key.
  GooglePrivacyDlpV2Key? entityKey;

  GooglePrivacyDlpV2DatastoreKey({
    this.entityKey,
  });

  GooglePrivacyDlpV2DatastoreKey.fromJson(core.Map json_)
      : this(
          entityKey: json_.containsKey('entityKey')
              ? GooglePrivacyDlpV2Key.fromJson(
                  json_['entityKey'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityKey != null) 'entityKey': entityKey!,
      };
}

/// Options defining a data set within Google Cloud Datastore.
class GooglePrivacyDlpV2DatastoreOptions {
  /// The kind to process.
  GooglePrivacyDlpV2KindExpression? kind;

  /// A partition ID identifies a grouping of entities.
  ///
  /// The grouping is always by project and namespace, however the namespace ID
  /// may be empty.
  GooglePrivacyDlpV2PartitionId? partitionId;

  GooglePrivacyDlpV2DatastoreOptions({
    this.kind,
    this.partitionId,
  });

  GooglePrivacyDlpV2DatastoreOptions.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind')
              ? GooglePrivacyDlpV2KindExpression.fromJson(
                  json_['kind'] as core.Map<core.String, core.dynamic>)
              : null,
          partitionId: json_.containsKey('partitionId')
              ? GooglePrivacyDlpV2PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (partitionId != null) 'partitionId': partitionId!,
      };
}

/// Shifts dates by random number of days, with option to be consistent for the
/// same context.
///
/// See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-date-shifting
/// to learn more.
class GooglePrivacyDlpV2DateShiftConfig {
  /// Points to the field that contains the context, for example, an entity id.
  ///
  /// If set, must also set cryptoKey. If set, shift will be consistent for the
  /// given context.
  GooglePrivacyDlpV2FieldId? context;

  /// Causes the shift to be computed based on this key and the context.
  ///
  /// This results in the same shift for the same context and crypto_key. If
  /// set, must also set context. Can only be applied to table items.
  GooglePrivacyDlpV2CryptoKey? cryptoKey;

  /// For example, -5 means shift date to at most 5 days back in the past.
  ///
  /// Required.
  core.int? lowerBoundDays;

  /// Range of shift in days.
  ///
  /// Actual shift will be selected at random within this range (inclusive
  /// ends). Negative means shift to earlier in time. Must not be more than
  /// 365250 days (1000 years) each direction. For example, 3 means shift date
  /// to at most 3 days into the future.
  ///
  /// Required.
  core.int? upperBoundDays;

  GooglePrivacyDlpV2DateShiftConfig({
    this.context,
    this.cryptoKey,
    this.lowerBoundDays,
    this.upperBoundDays,
  });

  GooglePrivacyDlpV2DateShiftConfig.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cryptoKey: json_.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  json_['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
          lowerBoundDays: json_.containsKey('lowerBoundDays')
              ? json_['lowerBoundDays'] as core.int
              : null,
          upperBoundDays: json_.containsKey('upperBoundDays')
              ? json_['upperBoundDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
        if (lowerBoundDays != null) 'lowerBoundDays': lowerBoundDays!,
        if (upperBoundDays != null) 'upperBoundDays': upperBoundDays!,
      };
}

/// Message for a date time object.
///
/// e.g. 2018-01-01, 5th August.
class GooglePrivacyDlpV2DateTime {
  /// One or more of the following must be set.
  ///
  /// Must be a valid date or time value.
  GoogleTypeDate? date;

  /// Day of week
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// Time of day
  GoogleTypeTimeOfDay? time;

  /// Time zone
  GooglePrivacyDlpV2TimeZone? timeZone;

  GooglePrivacyDlpV2DateTime({
    this.date,
    this.dayOfWeek,
    this.time,
    this.timeZone,
  });

  GooglePrivacyDlpV2DateTime.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? GoogleTypeDate.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          dayOfWeek: json_.containsKey('dayOfWeek')
              ? json_['dayOfWeek'] as core.String
              : null,
          time: json_.containsKey('time')
              ? GoogleTypeTimeOfDay.fromJson(
                  json_['time'] as core.Map<core.String, core.dynamic>)
              : null,
          timeZone: json_.containsKey('timeZone')
              ? GooglePrivacyDlpV2TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (time != null) 'time': time!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Create a de-identified copy of the requested table or files.
///
/// A TransformationDetail will be created for each transformation. If any rows
/// in BigQuery are skipped during de-identification (transformation errors or
/// row size exceeds BigQuery insert API limits) they are placed in the failure
/// output table. If the original row exceeds the BigQuery insert API limit it
/// will be truncated when written to the failure output table. The failure
/// output table can be set in the
/// action.deidentify.output.big_query_output.deidentified_failure_output_table
/// field, if no table is set, a table will be automatically created in the same
/// project and dataset as the original table. Compatible with: Inspect
class GooglePrivacyDlpV2Deidentify {
  /// User settable Cloud Storage bucket and folders to store de-identified
  /// files.
  ///
  /// This field must be set for cloud storage deidentification. The output
  /// Cloud Storage bucket must be different from the input bucket.
  /// De-identified files will overwrite files in the output path. Form of:
  /// gs://bucket/folder/ or gs://bucket
  ///
  /// Required.
  core.String? cloudStorageOutput;

  /// List of user-specified file type groups to transform.
  ///
  /// If specified, only the files with these filetypes will be transformed. If
  /// empty, all supported files will be transformed. Supported types may be
  /// automatically added over time. If a file type is set in this field that
  /// isn't supported by the Deidentify action then the job will fail and will
  /// not be successfully created/started. Currently the only filetypes
  /// supported are: IMAGES, TEXT_FILES, CSV, TSV.
  core.List<core.String>? fileTypesToTransform;

  /// User specified deidentify templates and configs for structured,
  /// unstructured, and image files.
  GooglePrivacyDlpV2TransformationConfig? transformationConfig;

  /// Config for storing transformation details.
  ///
  /// This is separate from the de-identified content, and contains metadata
  /// about the successful transformations and/or failures that occurred while
  /// de-identifying. This needs to be set in order for users to access
  /// information about the status of each transformation (see
  /// TransformationDetails message for more information about what is noted).
  GooglePrivacyDlpV2TransformationDetailsStorageConfig?
      transformationDetailsStorageConfig;

  GooglePrivacyDlpV2Deidentify({
    this.cloudStorageOutput,
    this.fileTypesToTransform,
    this.transformationConfig,
    this.transformationDetailsStorageConfig,
  });

  GooglePrivacyDlpV2Deidentify.fromJson(core.Map json_)
      : this(
          cloudStorageOutput: json_.containsKey('cloudStorageOutput')
              ? json_['cloudStorageOutput'] as core.String
              : null,
          fileTypesToTransform: json_.containsKey('fileTypesToTransform')
              ? (json_['fileTypesToTransform'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transformationConfig: json_.containsKey('transformationConfig')
              ? GooglePrivacyDlpV2TransformationConfig.fromJson(
                  json_['transformationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transformationDetailsStorageConfig: json_
                  .containsKey('transformationDetailsStorageConfig')
              ? GooglePrivacyDlpV2TransformationDetailsStorageConfig.fromJson(
                  json_['transformationDetailsStorageConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudStorageOutput != null)
          'cloudStorageOutput': cloudStorageOutput!,
        if (fileTypesToTransform != null)
          'fileTypesToTransform': fileTypesToTransform!,
        if (transformationConfig != null)
          'transformationConfig': transformationConfig!,
        if (transformationDetailsStorageConfig != null)
          'transformationDetailsStorageConfig':
              transformationDetailsStorageConfig!,
      };
}

/// The configuration that controls how the data will change.
class GooglePrivacyDlpV2DeidentifyConfig {
  /// Treat the dataset as an image and redact.
  GooglePrivacyDlpV2ImageTransformations? imageTransformations;

  /// Treat the dataset as free-form text and apply the same free text
  /// transformation everywhere.
  GooglePrivacyDlpV2InfoTypeTransformations? infoTypeTransformations;

  /// Treat the dataset as structured.
  ///
  /// Transformations can be applied to specific locations within structured
  /// datasets, such as transforming a column within a table.
  GooglePrivacyDlpV2RecordTransformations? recordTransformations;

  /// Mode for handling transformation errors.
  ///
  /// If left unspecified, the default mode is
  /// `TransformationErrorHandling.ThrowError`.
  GooglePrivacyDlpV2TransformationErrorHandling? transformationErrorHandling;

  GooglePrivacyDlpV2DeidentifyConfig({
    this.imageTransformations,
    this.infoTypeTransformations,
    this.recordTransformations,
    this.transformationErrorHandling,
  });

  GooglePrivacyDlpV2DeidentifyConfig.fromJson(core.Map json_)
      : this(
          imageTransformations: json_.containsKey('imageTransformations')
              ? GooglePrivacyDlpV2ImageTransformations.fromJson(
                  json_['imageTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          infoTypeTransformations: json_.containsKey('infoTypeTransformations')
              ? GooglePrivacyDlpV2InfoTypeTransformations.fromJson(
                  json_['infoTypeTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          recordTransformations: json_.containsKey('recordTransformations')
              ? GooglePrivacyDlpV2RecordTransformations.fromJson(
                  json_['recordTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transformationErrorHandling:
              json_.containsKey('transformationErrorHandling')
                  ? GooglePrivacyDlpV2TransformationErrorHandling.fromJson(
                      json_['transformationErrorHandling']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageTransformations != null)
          'imageTransformations': imageTransformations!,
        if (infoTypeTransformations != null)
          'infoTypeTransformations': infoTypeTransformations!,
        if (recordTransformations != null)
          'recordTransformations': recordTransformations!,
        if (transformationErrorHandling != null)
          'transformationErrorHandling': transformationErrorHandling!,
      };
}

/// Request to de-identify a ContentItem.
class GooglePrivacyDlpV2DeidentifyContentRequest {
  /// Configuration for the de-identification of the content item.
  ///
  /// Items specified here will override the template referenced by the
  /// deidentify_template_name argument.
  GooglePrivacyDlpV2DeidentifyConfig? deidentifyConfig;

  /// Template to use.
  ///
  /// Any configuration directly specified in deidentify_config will override
  /// those set in the template. Singular fields that are set in this request
  /// will replace their corresponding fields in the template. Repeated fields
  /// are appended. Singular sub-messages and groups are recursively merged.
  core.String? deidentifyTemplateName;

  /// Configuration for the inspector.
  ///
  /// Items specified here will override the template referenced by the
  /// inspect_template_name argument.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// Template to use.
  ///
  /// Any configuration directly specified in inspect_config will override those
  /// set in the template. Singular fields that are set in this request will
  /// replace their corresponding fields in the template. Repeated fields are
  /// appended. Singular sub-messages and groups are recursively merged.
  core.String? inspectTemplateName;

  /// The item to de-identify.
  ///
  /// Will be treated as text. This value must be of type Table if your
  /// deidentify_config is a RecordTransformations object.
  GooglePrivacyDlpV2ContentItem? item;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  GooglePrivacyDlpV2DeidentifyContentRequest({
    this.deidentifyConfig,
    this.deidentifyTemplateName,
    this.inspectConfig,
    this.inspectTemplateName,
    this.item,
    this.locationId,
  });

  GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(core.Map json_)
      : this(
          deidentifyConfig: json_.containsKey('deidentifyConfig')
              ? GooglePrivacyDlpV2DeidentifyConfig.fromJson(
                  json_['deidentifyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deidentifyTemplateName: json_.containsKey('deidentifyTemplateName')
              ? json_['deidentifyTemplateName'] as core.String
              : null,
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: json_.containsKey('inspectTemplateName')
              ? json_['inspectTemplateName'] as core.String
              : null,
          item: json_.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyConfig != null) 'deidentifyConfig': deidentifyConfig!,
        if (deidentifyTemplateName != null)
          'deidentifyTemplateName': deidentifyTemplateName!,
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (inspectTemplateName != null)
          'inspectTemplateName': inspectTemplateName!,
        if (item != null) 'item': item!,
        if (locationId != null) 'locationId': locationId!,
      };
}

/// Results of de-identifying a ContentItem.
class GooglePrivacyDlpV2DeidentifyContentResponse {
  /// The de-identified item.
  GooglePrivacyDlpV2ContentItem? item;

  /// An overview of the changes that were made on the `item`.
  GooglePrivacyDlpV2TransformationOverview? overview;

  GooglePrivacyDlpV2DeidentifyContentResponse({
    this.item,
    this.overview,
  });

  GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(core.Map json_)
      : this(
          item: json_.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          overview: json_.containsKey('overview')
              ? GooglePrivacyDlpV2TransformationOverview.fromJson(
                  json_['overview'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
        if (overview != null) 'overview': overview!,
      };
}

/// The results of a Deidentify action from an inspect job.
class GooglePrivacyDlpV2DeidentifyDataSourceDetails {
  /// Stats about the de-identification operation.
  GooglePrivacyDlpV2DeidentifyDataSourceStats? deidentifyStats;

  /// De-identification config used for the request.
  GooglePrivacyDlpV2RequestedDeidentifyOptions? requestedOptions;

  GooglePrivacyDlpV2DeidentifyDataSourceDetails({
    this.deidentifyStats,
    this.requestedOptions,
  });

  GooglePrivacyDlpV2DeidentifyDataSourceDetails.fromJson(core.Map json_)
      : this(
          deidentifyStats: json_.containsKey('deidentifyStats')
              ? GooglePrivacyDlpV2DeidentifyDataSourceStats.fromJson(
                  json_['deidentifyStats']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedOptions: json_.containsKey('requestedOptions')
              ? GooglePrivacyDlpV2RequestedDeidentifyOptions.fromJson(
                  json_['requestedOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyStats != null) 'deidentifyStats': deidentifyStats!,
        if (requestedOptions != null) 'requestedOptions': requestedOptions!,
      };
}

/// Summary of what was modified during a transformation.
class GooglePrivacyDlpV2DeidentifyDataSourceStats {
  /// Number of successfully applied transformations.
  core.String? transformationCount;

  /// Number of errors encountered while trying to apply transformations.
  core.String? transformationErrorCount;

  /// Total size in bytes that were transformed in some way.
  core.String? transformedBytes;

  GooglePrivacyDlpV2DeidentifyDataSourceStats({
    this.transformationCount,
    this.transformationErrorCount,
    this.transformedBytes,
  });

  GooglePrivacyDlpV2DeidentifyDataSourceStats.fromJson(core.Map json_)
      : this(
          transformationCount: json_.containsKey('transformationCount')
              ? json_['transformationCount'] as core.String
              : null,
          transformationErrorCount:
              json_.containsKey('transformationErrorCount')
                  ? json_['transformationErrorCount'] as core.String
                  : null,
          transformedBytes: json_.containsKey('transformedBytes')
              ? json_['transformedBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transformationCount != null)
          'transformationCount': transformationCount!,
        if (transformationErrorCount != null)
          'transformationErrorCount': transformationErrorCount!,
        if (transformedBytes != null) 'transformedBytes': transformedBytes!,
      };
}

/// DeidentifyTemplates contains instructions on how to de-identify content.
///
/// See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-templates
/// to learn more.
class GooglePrivacyDlpV2DeidentifyTemplate {
  /// The creation timestamp of an inspectTemplate.
  ///
  /// Output only.
  core.String? createTime;

  /// The core content of the template.
  GooglePrivacyDlpV2DeidentifyConfig? deidentifyConfig;

  /// Short description (max 256 chars).
  core.String? description;

  /// Display name (max 256 chars).
  core.String? displayName;

  /// The template name.
  ///
  /// The template will have one of the following formats:
  /// `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR
  /// `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`
  ///
  /// Output only.
  core.String? name;

  /// The last update timestamp of an inspectTemplate.
  ///
  /// Output only.
  core.String? updateTime;

  GooglePrivacyDlpV2DeidentifyTemplate({
    this.createTime,
    this.deidentifyConfig,
    this.description,
    this.displayName,
    this.name,
    this.updateTime,
  });

  GooglePrivacyDlpV2DeidentifyTemplate.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deidentifyConfig: json_.containsKey('deidentifyConfig')
              ? GooglePrivacyDlpV2DeidentifyConfig.fromJson(
                  json_['deidentifyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deidentifyConfig != null) 'deidentifyConfig': deidentifyConfig!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// δ-presence metric, used to estimate how likely it is for an attacker to
/// figure out that one given individual appears in a de-identified dataset.
///
/// Similarly to the k-map metric, we cannot compute δ-presence exactly without
/// knowing the attack dataset, so we use a statistical model instead.
class GooglePrivacyDlpV2DeltaPresenceEstimationConfig {
  /// Several auxiliary tables can be used in the analysis.
  ///
  /// Each custom_tag used to tag a quasi-identifiers field must appear in
  /// exactly one field of one auxiliary table.
  core.List<GooglePrivacyDlpV2StatisticalTable>? auxiliaryTables;

  /// Fields considered to be quasi-identifiers.
  ///
  /// No two fields can have the same tag.
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2QuasiId>? quasiIds;

  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling.
  ///
  /// Set if no column is tagged with a region-specific InfoType (like US_ZIP_5)
  /// or a region code.
  core.String? regionCode;

  GooglePrivacyDlpV2DeltaPresenceEstimationConfig({
    this.auxiliaryTables,
    this.quasiIds,
    this.regionCode,
  });

  GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(core.Map json_)
      : this(
          auxiliaryTables: json_.containsKey('auxiliaryTables')
              ? (json_['auxiliaryTables'] as core.List)
                  .map((value) => GooglePrivacyDlpV2StatisticalTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quasiIds: json_.containsKey('quasiIds')
              ? (json_['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2QuasiId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auxiliaryTables != null) 'auxiliaryTables': auxiliaryTables!,
        if (quasiIds != null) 'quasiIds': quasiIds!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// A DeltaPresenceEstimationHistogramBucket message with the following values:
/// min_probability: 0.1 max_probability: 0.2 frequency: 42 means that there are
/// 42 records for which δ is in \[0.1, 0.2).
///
/// An important particular case is when min_probability = max_probability = 1:
/// then, every individual who shares this quasi-identifier combination is in
/// the dataset.
class GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket {
  /// Number of records within these probability bounds.
  core.String? bucketSize;

  /// Total number of distinct quasi-identifier tuple values in this bucket.
  core.String? bucketValueCount;

  /// Sample of quasi-identifier tuple values in this bucket.
  ///
  /// The total number of classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>?
      bucketValues;

  /// Always greater than or equal to min_probability.
  core.double? maxProbability;

  /// Between 0 and 1.
  core.double? minProbability;

  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket({
    this.bucketSize,
    this.bucketValueCount,
    this.bucketValues,
    this.maxProbability,
    this.minProbability,
  });

  GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket.fromJson(
      core.Map json_)
      : this(
          bucketSize: json_.containsKey('bucketSize')
              ? json_['bucketSize'] as core.String
              : null,
          bucketValueCount: json_.containsKey('bucketValueCount')
              ? json_['bucketValueCount'] as core.String
              : null,
          bucketValues: json_.containsKey('bucketValues')
              ? (json_['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxProbability: json_.containsKey('maxProbability')
              ? (json_['maxProbability'] as core.num).toDouble()
              : null,
          minProbability: json_.containsKey('minProbability')
              ? (json_['minProbability'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (bucketValueCount != null) 'bucketValueCount': bucketValueCount!,
        if (bucketValues != null) 'bucketValues': bucketValues!,
        if (maxProbability != null) 'maxProbability': maxProbability!,
        if (minProbability != null) 'minProbability': minProbability!,
      };
}

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues {
  /// The estimated probability that a given individual sharing these
  /// quasi-identifier values is in the dataset.
  ///
  /// This value, typically called δ, is the ratio between the number of records
  /// in the dataset with these quasi-identifier values, and the total number of
  /// individuals (inside *and* outside the dataset) with these quasi-identifier
  /// values. For example, if there are 15 individuals in the dataset who share
  /// the same quasi-identifier values, and an estimated 100 people in the
  /// entire population with these values, then δ is 0.15.
  core.double? estimatedProbability;

  /// The quasi-identifier values.
  core.List<GooglePrivacyDlpV2Value>? quasiIdsValues;

  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues({
    this.estimatedProbability,
    this.quasiIdsValues,
  });

  GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues.fromJson(
      core.Map json_)
      : this(
          estimatedProbability: json_.containsKey('estimatedProbability')
              ? (json_['estimatedProbability'] as core.num).toDouble()
              : null,
          quasiIdsValues: json_.containsKey('quasiIdsValues')
              ? (json_['quasiIdsValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedProbability != null)
          'estimatedProbability': estimatedProbability!,
        if (quasiIdsValues != null) 'quasiIdsValues': quasiIdsValues!,
      };
}

/// Result of the δ-presence computation.
///
/// Note that these results are an estimation, not exact values.
class GooglePrivacyDlpV2DeltaPresenceEstimationResult {
  /// The intervals \[min_probability, max_probability) do not overlap.
  ///
  /// If a value doesn't correspond to any such interval, the associated
  /// frequency is zero. For example, the following records: {min_probability:
  /// 0, max_probability: 0.1, frequency: 17} {min_probability: 0.2,
  /// max_probability: 0.3, frequency: 42} {min_probability: 0.3,
  /// max_probability: 0.4, frequency: 99} mean that there are no record with an
  /// estimated probability in \[0.1, 0.2) nor larger or equal to 0.4.
  core.List<GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>?
      deltaPresenceEstimationHistogram;

  GooglePrivacyDlpV2DeltaPresenceEstimationResult({
    this.deltaPresenceEstimationHistogram,
  });

  GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(core.Map json_)
      : this(
          deltaPresenceEstimationHistogram: json_
                  .containsKey('deltaPresenceEstimationHistogram')
              ? (json_['deltaPresenceEstimationHistogram'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deltaPresenceEstimationHistogram != null)
          'deltaPresenceEstimationHistogram': deltaPresenceEstimationHistogram!,
      };
}

/// Deprecated; use `InspectionRuleSet` instead.
///
/// Rule for modifying a `CustomInfoType` to alter behavior under certain
/// circumstances, depending on the specific details of the rule. Not supported
/// for the `surrogate_type` custom infoType.
class GooglePrivacyDlpV2DetectionRule {
  /// Hotword-based detection rule.
  GooglePrivacyDlpV2HotwordRule? hotwordRule;

  GooglePrivacyDlpV2DetectionRule({
    this.hotwordRule,
  });

  GooglePrivacyDlpV2DetectionRule.fromJson(core.Map json_)
      : this(
          hotwordRule: json_.containsKey('hotwordRule')
              ? GooglePrivacyDlpV2HotwordRule.fromJson(
                  json_['hotwordRule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotwordRule != null) 'hotwordRule': hotwordRule!,
      };
}

/// Custom information type based on a dictionary of words or phrases.
///
/// This can be used to match sensitive information specific to the data, such
/// as a list of employee IDs or job titles. Dictionary words are
/// case-insensitive and all characters other than letters and digits in the
/// unicode
/// [Basic Multilingual Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane)
/// will be replaced with whitespace when scanning for matches, so the
/// dictionary phrase "Sam Johnson" will match all three phrases "sam johnson",
/// "Sam, Johnson", and "Sam (Johnson)". Additionally, the characters
/// surrounding any match must be of a different type than the adjacent
/// characters within the word, so letters must be next to non-letters and
/// digits next to non-digits. For example, the dictionary word "jen" will match
/// the first three letters of the text "jen123" but will return no matches for
/// "jennifer". Dictionary words containing a large number of characters that
/// are not letters or digits may result in unexpected findings because such
/// characters are treated as whitespace. The
/// [limits](https://cloud.google.com/sensitive-data-protection/limits) page
/// contains details about the size limits of dictionaries. For dictionaries
/// that do not fit within these constraints, consider using
/// `LargeCustomDictionaryConfig` in the `StoredInfoType` API.
class GooglePrivacyDlpV2Dictionary {
  /// Newline-delimited file of words in Cloud Storage.
  ///
  /// Only a single file is accepted.
  GooglePrivacyDlpV2CloudStoragePath? cloudStoragePath;

  /// List of words or phrases to search for.
  GooglePrivacyDlpV2WordList? wordList;

  GooglePrivacyDlpV2Dictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  GooglePrivacyDlpV2Dictionary.fromJson(core.Map json_)
      : this(
          cloudStoragePath: json_.containsKey('cloudStoragePath')
              ? GooglePrivacyDlpV2CloudStoragePath.fromJson(
                  json_['cloudStoragePath']
                      as core.Map<core.String, core.dynamic>)
              : null,
          wordList: json_.containsKey('wordList')
              ? GooglePrivacyDlpV2WordList.fromJson(
                  json_['wordList'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudStoragePath != null) 'cloudStoragePath': cloudStoragePath!,
        if (wordList != null) 'wordList': wordList!,
      };
}

/// Do not profile the tables.
typedef GooglePrivacyDlpV2Disabled = $Empty;

/// Requirements that must be true before a table is scanned in discovery for
/// the first time.
///
/// There is an AND relationship between the top-level attributes. Additionally,
/// minimum conditions with an OR relationship that must be met before Cloud DLP
/// scans a table can be set (like a minimum row count or a minimum table age).
class GooglePrivacyDlpV2DiscoveryBigQueryConditions {
  /// BigQuery table must have been created after this date.
  ///
  /// Used to avoid backfilling.
  core.String? createdAfter;

  /// At least one of the conditions must be true for a table to be scanned.
  GooglePrivacyDlpV2OrConditions? orConditions;

  /// Restrict discovery to categories of table types.
  /// Possible string values are:
  /// - "BIG_QUERY_COLLECTION_UNSPECIFIED" : Unused.
  /// - "BIG_QUERY_COLLECTION_ALL_TYPES" : Automatically generate profiles for
  /// all tables, even if the table type is not yet fully supported for
  /// analysis. Profiles for unsupported tables will be generated with errors to
  /// indicate their partial support. When full support is added, the tables
  /// will automatically be profiled during the next scheduled run.
  /// - "BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES" : Only those types fully
  /// supported will be profiled. Will expand automatically as Cloud DLP adds
  /// support for new table types. Unsupported table types will not have partial
  /// profiles generated.
  core.String? typeCollection;

  /// Restrict discovery to specific table types.
  GooglePrivacyDlpV2BigQueryTableTypes? types;

  GooglePrivacyDlpV2DiscoveryBigQueryConditions({
    this.createdAfter,
    this.orConditions,
    this.typeCollection,
    this.types,
  });

  GooglePrivacyDlpV2DiscoveryBigQueryConditions.fromJson(core.Map json_)
      : this(
          createdAfter: json_.containsKey('createdAfter')
              ? json_['createdAfter'] as core.String
              : null,
          orConditions: json_.containsKey('orConditions')
              ? GooglePrivacyDlpV2OrConditions.fromJson(
                  json_['orConditions'] as core.Map<core.String, core.dynamic>)
              : null,
          typeCollection: json_.containsKey('typeCollection')
              ? json_['typeCollection'] as core.String
              : null,
          types: json_.containsKey('types')
              ? GooglePrivacyDlpV2BigQueryTableTypes.fromJson(
                  json_['types'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAfter != null) 'createdAfter': createdAfter!,
        if (orConditions != null) 'orConditions': orConditions!,
        if (typeCollection != null) 'typeCollection': typeCollection!,
        if (types != null) 'types': types!,
      };
}

/// Determines what tables will have profiles generated within an organization
/// or project.
///
/// Includes the ability to filter by regular expression patterns on project ID,
/// dataset ID, and table ID.
class GooglePrivacyDlpV2DiscoveryBigQueryFilter {
  /// Catch-all.
  ///
  /// This should always be the last filter in the list because anything above
  /// it will apply first. Should only appear once in a configuration. If none
  /// is specified, a default one will be added automatically.
  GooglePrivacyDlpV2AllOtherBigQueryTables? otherTables;

  /// A specific set of tables for this filter to apply to.
  ///
  /// A table collection must be specified in only one filter per config. If a
  /// table id or dataset is empty, Cloud DLP assumes all tables in that
  /// collection must be profiled. Must specify a project ID.
  GooglePrivacyDlpV2BigQueryTableCollection? tables;

  GooglePrivacyDlpV2DiscoveryBigQueryFilter({
    this.otherTables,
    this.tables,
  });

  GooglePrivacyDlpV2DiscoveryBigQueryFilter.fromJson(core.Map json_)
      : this(
          otherTables: json_.containsKey('otherTables')
              ? GooglePrivacyDlpV2AllOtherBigQueryTables.fromJson(
                  json_['otherTables'] as core.Map<core.String, core.dynamic>)
              : null,
          tables: json_.containsKey('tables')
              ? GooglePrivacyDlpV2BigQueryTableCollection.fromJson(
                  json_['tables'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (otherTables != null) 'otherTables': otherTables!,
        if (tables != null) 'tables': tables!,
      };
}

/// Requirements that must be true before a table is profiled for the first
/// time.
class GooglePrivacyDlpV2DiscoveryCloudSqlConditions {
  /// Database engines that should be profiled.
  ///
  /// Optional. Defaults to ALL_SUPPORTED_DATABASE_ENGINES if unspecified.
  ///
  /// Optional.
  core.List<core.String>? databaseEngines;

  /// Data profiles will only be generated for the database resource types
  /// specified in this field.
  ///
  /// If not specified, defaults to
  /// \[DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES\].
  core.List<core.String>? types;

  GooglePrivacyDlpV2DiscoveryCloudSqlConditions({
    this.databaseEngines,
    this.types,
  });

  GooglePrivacyDlpV2DiscoveryCloudSqlConditions.fromJson(core.Map json_)
      : this(
          databaseEngines: json_.containsKey('databaseEngines')
              ? (json_['databaseEngines'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseEngines != null) 'databaseEngines': databaseEngines!,
        if (types != null) 'types': types!,
      };
}

/// Determines what tables will have profiles generated within an organization
/// or project.
///
/// Includes the ability to filter by regular expression patterns on project ID,
/// location, instance, database, and database resource name.
class GooglePrivacyDlpV2DiscoveryCloudSqlFilter {
  /// A specific set of database resources for this filter to apply to.
  GooglePrivacyDlpV2DatabaseResourceCollection? collection;

  /// The database resource to scan.
  ///
  /// Targets including this can only include one target (the target with this
  /// database resource reference).
  GooglePrivacyDlpV2DatabaseResourceReference? databaseResourceReference;

  /// Catch-all.
  ///
  /// This should always be the last target in the list because anything above
  /// it will apply first. Should only appear once in a configuration. If none
  /// is specified, a default one will be added automatically.
  GooglePrivacyDlpV2AllOtherDatabaseResources? others;

  GooglePrivacyDlpV2DiscoveryCloudSqlFilter({
    this.collection,
    this.databaseResourceReference,
    this.others,
  });

  GooglePrivacyDlpV2DiscoveryCloudSqlFilter.fromJson(core.Map json_)
      : this(
          collection: json_.containsKey('collection')
              ? GooglePrivacyDlpV2DatabaseResourceCollection.fromJson(
                  json_['collection'] as core.Map<core.String, core.dynamic>)
              : null,
          databaseResourceReference:
              json_.containsKey('databaseResourceReference')
                  ? GooglePrivacyDlpV2DatabaseResourceReference.fromJson(
                      json_['databaseResourceReference']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          others: json_.containsKey('others')
              ? GooglePrivacyDlpV2AllOtherDatabaseResources.fromJson(
                  json_['others'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collection != null) 'collection': collection!,
        if (databaseResourceReference != null)
          'databaseResourceReference': databaseResourceReference!,
        if (others != null) 'others': others!,
      };
}

/// How often existing tables should have their profiles refreshed.
///
/// New tables are scanned as quickly as possible depending on system capacity.
class GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence {
  /// Data changes (non-schema changes) in Cloud SQL tables can't trigger
  /// reprofiling.
  ///
  /// If you set this field, profiles are refreshed at this frequency regardless
  /// of whether the underlying tables have changes. Defaults to never.
  /// Possible string values are:
  /// - "UPDATE_FREQUENCY_UNSPECIFIED" : Unspecified.
  /// - "UPDATE_FREQUENCY_NEVER" : After the data profile is created, it will
  /// never be updated.
  /// - "UPDATE_FREQUENCY_DAILY" : The data profile can be updated up to once
  /// every 24 hours.
  /// - "UPDATE_FREQUENCY_MONTHLY" : The data profile can be updated up to once
  /// every 30 days. Default.
  core.String? refreshFrequency;

  /// When to reprofile if the schema has changed.
  GooglePrivacyDlpV2SchemaModifiedCadence? schemaModifiedCadence;

  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence({
    this.refreshFrequency,
    this.schemaModifiedCadence,
  });

  GooglePrivacyDlpV2DiscoveryCloudSqlGenerationCadence.fromJson(core.Map json_)
      : this(
          refreshFrequency: json_.containsKey('refreshFrequency')
              ? json_['refreshFrequency'] as core.String
              : null,
          schemaModifiedCadence: json_.containsKey('schemaModifiedCadence')
              ? GooglePrivacyDlpV2SchemaModifiedCadence.fromJson(
                  json_['schemaModifiedCadence']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (refreshFrequency != null) 'refreshFrequency': refreshFrequency!,
        if (schemaModifiedCadence != null)
          'schemaModifiedCadence': schemaModifiedCadence!,
      };
}

/// Configuration for discovery to scan resources for profile generation.
///
/// Only one discovery configuration may exist per organization, folder, or
/// project. The generated data profiles are retained according to the
/// [data retention policy](https://cloud.google.com/sensitive-data-protection/docs/data-profiles#retention).
class GooglePrivacyDlpV2DiscoveryConfig {
  /// Actions to execute at the completion of scanning.
  core.List<GooglePrivacyDlpV2DataProfileAction>? actions;

  /// The creation timestamp of a DiscoveryConfig.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name (max 100 chars)
  core.String? displayName;

  /// A stream of errors encountered when the config was activated.
  ///
  /// Repeated errors may result in the config automatically being paused.
  /// Output only field. Will return the last 100 errors. Whenever the config is
  /// modified this list will be cleared.
  ///
  /// Output only.
  core.List<GooglePrivacyDlpV2Error>? errors;

  /// Detection logic for profile generation.
  ///
  /// Not all template features are used by Discovery. FindingLimits,
  /// include_quote and exclude_info_types have no impact on Discovery. Multiple
  /// templates may be provided if there is data in multiple regions. At most
  /// one template must be specified per-region (including "global"). Each
  /// region is scanned using the applicable template. If no region-specific
  /// template is specified, but a "global" template is specified, it will be
  /// copied to that region and used instead. If no global or region-specific
  /// template is provided for a region with data, that region's data will not
  /// be scanned. For more information, see
  /// https://cloud.google.com/sensitive-data-protection/docs/data-profiles#data-residency.
  core.List<core.String>? inspectTemplates;

  /// The timestamp of the last time this config was executed.
  ///
  /// Output only.
  core.String? lastRunTime;

  /// Unique resource name for the DiscoveryConfig, assigned by the service when
  /// the DiscoveryConfig is created, for example
  /// `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  core.String? name;

  /// Only set when the parent is an org.
  GooglePrivacyDlpV2OrgConfig? orgConfig;

  /// A status for this configuration.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unused
  /// - "RUNNING" : The discovery config is currently active.
  /// - "PAUSED" : The discovery config is paused temporarily.
  core.String? status;

  /// Target to match against for determining what to scan and how frequently.
  core.List<GooglePrivacyDlpV2DiscoveryTarget>? targets;

  /// The last update timestamp of a DiscoveryConfig.
  ///
  /// Output only.
  core.String? updateTime;

  GooglePrivacyDlpV2DiscoveryConfig({
    this.actions,
    this.createTime,
    this.displayName,
    this.errors,
    this.inspectTemplates,
    this.lastRunTime,
    this.name,
    this.orgConfig,
    this.status,
    this.targets,
    this.updateTime,
  });

  GooglePrivacyDlpV2DiscoveryConfig.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DataProfileAction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectTemplates: json_.containsKey('inspectTemplates')
              ? (json_['inspectTemplates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastRunTime: json_.containsKey('lastRunTime')
              ? json_['lastRunTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgConfig: json_.containsKey('orgConfig')
              ? GooglePrivacyDlpV2OrgConfig.fromJson(
                  json_['orgConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          targets: json_.containsKey('targets')
              ? (json_['targets'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DiscoveryTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (errors != null) 'errors': errors!,
        if (inspectTemplates != null) 'inspectTemplates': inspectTemplates!,
        if (lastRunTime != null) 'lastRunTime': lastRunTime!,
        if (name != null) 'name': name!,
        if (orgConfig != null) 'orgConfig': orgConfig!,
        if (status != null) 'status': status!,
        if (targets != null) 'targets': targets!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// What must take place for a profile to be updated and how frequently it
/// should occur.
///
/// New tables are scanned as quickly as possible depending on system capacity.
class GooglePrivacyDlpV2DiscoveryGenerationCadence {
  /// Governs when to update data profiles when a schema is modified.
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence? schemaModifiedCadence;

  /// Governs when to update data profiles when a table is modified.
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence? tableModifiedCadence;

  GooglePrivacyDlpV2DiscoveryGenerationCadence({
    this.schemaModifiedCadence,
    this.tableModifiedCadence,
  });

  GooglePrivacyDlpV2DiscoveryGenerationCadence.fromJson(core.Map json_)
      : this(
          schemaModifiedCadence: json_.containsKey('schemaModifiedCadence')
              ? GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.fromJson(
                  json_['schemaModifiedCadence']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tableModifiedCadence: json_.containsKey('tableModifiedCadence')
              ? GooglePrivacyDlpV2DiscoveryTableModifiedCadence.fromJson(
                  json_['tableModifiedCadence']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schemaModifiedCadence != null)
          'schemaModifiedCadence': schemaModifiedCadence!,
        if (tableModifiedCadence != null)
          'tableModifiedCadence': tableModifiedCadence!,
      };
}

/// The cadence at which to update data profiles when a schema is modified.
class GooglePrivacyDlpV2DiscoverySchemaModifiedCadence {
  /// How frequently profiles may be updated when schemas are modified.
  ///
  /// Defaults to monthly.
  /// Possible string values are:
  /// - "UPDATE_FREQUENCY_UNSPECIFIED" : Unspecified.
  /// - "UPDATE_FREQUENCY_NEVER" : After the data profile is created, it will
  /// never be updated.
  /// - "UPDATE_FREQUENCY_DAILY" : The data profile can be updated up to once
  /// every 24 hours.
  /// - "UPDATE_FREQUENCY_MONTHLY" : The data profile can be updated up to once
  /// every 30 days. Default.
  core.String? frequency;

  /// The type of events to consider when deciding if the table's schema has
  /// been modified and should have the profile updated.
  ///
  /// Defaults to NEW_COLUMNS.
  core.List<core.String>? types;

  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.fromJson(core.Map json_)
      : this(
          frequency: json_.containsKey('frequency')
              ? json_['frequency'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequency != null) 'frequency': frequency!,
        if (types != null) 'types': types!,
      };
}

/// The location to begin a discovery scan.
///
/// Denotes an organization ID or folder ID within an organization.
typedef GooglePrivacyDlpV2DiscoveryStartingLocation = $Location02;

/// The cadence at which to update data profiles when a table is modified.
class GooglePrivacyDlpV2DiscoveryTableModifiedCadence {
  /// How frequently data profiles can be updated when tables are modified.
  ///
  /// Defaults to never.
  /// Possible string values are:
  /// - "UPDATE_FREQUENCY_UNSPECIFIED" : Unspecified.
  /// - "UPDATE_FREQUENCY_NEVER" : After the data profile is created, it will
  /// never be updated.
  /// - "UPDATE_FREQUENCY_DAILY" : The data profile can be updated up to once
  /// every 24 hours.
  /// - "UPDATE_FREQUENCY_MONTHLY" : The data profile can be updated up to once
  /// every 30 days. Default.
  core.String? frequency;

  /// The type of events to consider when deciding if the table has been
  /// modified and should have the profile updated.
  ///
  /// Defaults to MODIFIED_TIMESTAMP.
  core.List<core.String>? types;

  GooglePrivacyDlpV2DiscoveryTableModifiedCadence({
    this.frequency,
    this.types,
  });

  GooglePrivacyDlpV2DiscoveryTableModifiedCadence.fromJson(core.Map json_)
      : this(
          frequency: json_.containsKey('frequency')
              ? json_['frequency'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequency != null) 'frequency': frequency!,
        if (types != null) 'types': types!,
      };
}

/// Target used to match against for Discovery.
class GooglePrivacyDlpV2DiscoveryTarget {
  /// BigQuery target for Discovery.
  ///
  /// The first target to match a table will be the one applied.
  GooglePrivacyDlpV2BigQueryDiscoveryTarget? bigQueryTarget;

  /// Cloud SQL target for Discovery.
  ///
  /// The first target to match a table will be the one applied.
  GooglePrivacyDlpV2CloudSqlDiscoveryTarget? cloudSqlTarget;

  GooglePrivacyDlpV2DiscoveryTarget({
    this.bigQueryTarget,
    this.cloudSqlTarget,
  });

  GooglePrivacyDlpV2DiscoveryTarget.fromJson(core.Map json_)
      : this(
          bigQueryTarget: json_.containsKey('bigQueryTarget')
              ? GooglePrivacyDlpV2BigQueryDiscoveryTarget.fromJson(
                  json_['bigQueryTarget']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cloudSqlTarget: json_.containsKey('cloudSqlTarget')
              ? GooglePrivacyDlpV2CloudSqlDiscoveryTarget.fromJson(
                  json_['cloudSqlTarget']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryTarget != null) 'bigQueryTarget': bigQueryTarget!,
        if (cloudSqlTarget != null) 'cloudSqlTarget': cloudSqlTarget!,
      };
}

/// Combines all of the information about a DLP job.
class GooglePrivacyDlpV2DlpJob {
  /// Events that should occur after the job has completed.
  core.List<GooglePrivacyDlpV2ActionDetails>? actionDetails;

  /// Time when the job was created.
  core.String? createTime;

  /// Time when the job finished.
  core.String? endTime;

  /// A stream of errors encountered running the job.
  core.List<GooglePrivacyDlpV2Error>? errors;

  /// Results from inspecting a data source.
  GooglePrivacyDlpV2InspectDataSourceDetails? inspectDetails;

  /// If created by a job trigger, the resource name of the trigger that
  /// instantiated the job.
  core.String? jobTriggerName;

  /// Time when the job was last modified by the system.
  core.String? lastModified;

  /// The server-assigned name.
  core.String? name;

  /// Results from analyzing risk of a data source.
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails? riskDetails;

  /// Time when the job started.
  core.String? startTime;

  /// State of a job.
  /// Possible string values are:
  /// - "JOB_STATE_UNSPECIFIED" : Unused.
  /// - "PENDING" : The job has not yet started.
  /// - "RUNNING" : The job is currently running. Once a job has finished it
  /// will transition to FAILED or DONE.
  /// - "DONE" : The job is no longer running.
  /// - "CANCELED" : The job was canceled before it could be completed.
  /// - "FAILED" : The job had an error and did not complete.
  /// - "ACTIVE" : The job is currently accepting findings via hybridInspect. A
  /// hybrid job in ACTIVE state may continue to have findings added to it
  /// through the calling of hybridInspect. After the job has finished no more
  /// calls to hybridInspect may be made. ACTIVE jobs can transition to DONE.
  core.String? state;

  /// The type of job.
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  core.String? type;

  GooglePrivacyDlpV2DlpJob({
    this.actionDetails,
    this.createTime,
    this.endTime,
    this.errors,
    this.inspectDetails,
    this.jobTriggerName,
    this.lastModified,
    this.name,
    this.riskDetails,
    this.startTime,
    this.state,
    this.type,
  });

  GooglePrivacyDlpV2DlpJob.fromJson(core.Map json_)
      : this(
          actionDetails: json_.containsKey('actionDetails')
              ? (json_['actionDetails'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ActionDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectDetails: json_.containsKey('inspectDetails')
              ? GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(
                  json_['inspectDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          jobTriggerName: json_.containsKey('jobTriggerName')
              ? json_['jobTriggerName'] as core.String
              : null,
          lastModified: json_.containsKey('lastModified')
              ? json_['lastModified'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          riskDetails: json_.containsKey('riskDetails')
              ? GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(
                  json_['riskDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionDetails != null) 'actionDetails': actionDetails!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (errors != null) 'errors': errors!,
        if (inspectDetails != null) 'inspectDetails': inspectDetails!,
        if (jobTriggerName != null) 'jobTriggerName': jobTriggerName!,
        if (lastModified != null) 'lastModified': lastModified!,
        if (name != null) 'name': name!,
        if (riskDetails != null) 'riskDetails': riskDetails!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// Location of a finding within a document.
class GooglePrivacyDlpV2DocumentLocation {
  /// Offset of the line, from the beginning of the file, where the finding is
  /// located.
  core.String? fileOffset;

  GooglePrivacyDlpV2DocumentLocation({
    this.fileOffset,
  });

  GooglePrivacyDlpV2DocumentLocation.fromJson(core.Map json_)
      : this(
          fileOffset: json_.containsKey('fileOffset')
              ? json_['fileOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileOffset != null) 'fileOffset': fileOffset!,
      };
}

/// An entity in a dataset is a field or set of fields that correspond to a
/// single person.
///
/// For example, in medical records the `EntityId` might be a patient
/// identifier, or for financial records it might be an account identifier. This
/// message is used when generalizations or analysis must take into account that
/// multiple rows correspond to the same entity.
class GooglePrivacyDlpV2EntityId {
  /// Composite key indicating which field contains the entity identifier.
  GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2EntityId({
    this.field,
  });

  GooglePrivacyDlpV2EntityId.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// Details information about an error encountered during job execution or the
/// results of an unsuccessful activation of the JobTrigger.
class GooglePrivacyDlpV2Error {
  /// Detailed error codes and messages.
  GoogleRpcStatus? details;

  /// The times the error occurred.
  ///
  /// List includes the oldest timestamp and the last 9 timestamps.
  core.List<core.String>? timestamps;

  GooglePrivacyDlpV2Error({
    this.details,
    this.timestamps,
  });

  GooglePrivacyDlpV2Error.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? GoogleRpcStatus.fromJson(
                  json_['details'] as core.Map<core.String, core.dynamic>)
              : null,
          timestamps: json_.containsKey('timestamps')
              ? (json_['timestamps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (timestamps != null) 'timestamps': timestamps!,
      };
}

/// The rule to exclude findings based on a hotword.
///
/// For record inspection of tables, column names are considered hotwords. An
/// example of this is to exclude a finding if it belongs to a BigQuery column
/// that matches a specific pattern.
class GooglePrivacyDlpV2ExcludeByHotword {
  /// Regular expression pattern defining what qualifies as a hotword.
  GooglePrivacyDlpV2Regex? hotwordRegex;

  /// Range of characters within which the entire hotword must reside.
  ///
  /// The total length of the window cannot exceed 1000 characters. The
  /// windowBefore property in proximity should be set to 1 if the hotword needs
  /// to be included in a column header.
  GooglePrivacyDlpV2Proximity? proximity;

  GooglePrivacyDlpV2ExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  GooglePrivacyDlpV2ExcludeByHotword.fromJson(core.Map json_)
      : this(
          hotwordRegex: json_.containsKey('hotwordRegex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  json_['hotwordRegex'] as core.Map<core.String, core.dynamic>)
              : null,
          proximity: json_.containsKey('proximity')
              ? GooglePrivacyDlpV2Proximity.fromJson(
                  json_['proximity'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotwordRegex != null) 'hotwordRegex': hotwordRegex!,
        if (proximity != null) 'proximity': proximity!,
      };
}

/// List of excluded infoTypes.
class GooglePrivacyDlpV2ExcludeInfoTypes {
  /// InfoType list in ExclusionRule rule drops a finding when it overlaps or
  /// contained within with a finding of an infoType from this list.
  ///
  /// For example, for \`InspectionRuleSet.info_types\` containing
  /// "PHONE_NUMBER"\` and \`exclusion_rule\` containing
  /// \`exclude_info_types.info_types\` with "EMAIL_ADDRESS" the phone number
  /// findings are dropped if they overlap with EMAIL_ADDRESS finding. That
  /// leads to "555-222-2222@example.org" to generate only a single finding,
  /// namely email address.
  core.List<GooglePrivacyDlpV2InfoType>? infoTypes;

  GooglePrivacyDlpV2ExcludeInfoTypes({
    this.infoTypes,
  });

  GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(core.Map json_)
      : this(
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoTypes != null) 'infoTypes': infoTypes!,
      };
}

/// The rule that specifies conditions when findings of infoTypes specified in
/// `InspectionRuleSet` are removed from results.
class GooglePrivacyDlpV2ExclusionRule {
  /// Dictionary which defines the rule.
  GooglePrivacyDlpV2Dictionary? dictionary;

  /// Drop if the hotword rule is contained in the proximate context.
  ///
  /// For tabular data, the context includes the column name.
  GooglePrivacyDlpV2ExcludeByHotword? excludeByHotword;

  /// Set of infoTypes for which findings would affect this rule.
  GooglePrivacyDlpV2ExcludeInfoTypes? excludeInfoTypes;

  /// How the rule is applied, see MatchingType documentation for details.
  /// Possible string values are:
  /// - "MATCHING_TYPE_UNSPECIFIED" : Invalid.
  /// - "MATCHING_TYPE_FULL_MATCH" : Full match. - Dictionary: join of
  /// Dictionary results matched complete finding quote - Regex: all regex
  /// matches fill a finding quote start to end - Exclude info type: completely
  /// inside affecting info types findings
  /// - "MATCHING_TYPE_PARTIAL_MATCH" : Partial match. - Dictionary: at least
  /// one of the tokens in the finding matches - Regex: substring of the finding
  /// matches - Exclude info type: intersects with affecting info types findings
  /// - "MATCHING_TYPE_INVERSE_MATCH" : Inverse match. - Dictionary: no tokens
  /// in the finding match the dictionary - Regex: finding doesn't match the
  /// regex - Exclude info type: no intersection with affecting info types
  /// findings
  core.String? matchingType;

  /// Regular expression which defines the rule.
  GooglePrivacyDlpV2Regex? regex;

  GooglePrivacyDlpV2ExclusionRule({
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.matchingType,
    this.regex,
  });

  GooglePrivacyDlpV2ExclusionRule.fromJson(core.Map json_)
      : this(
          dictionary: json_.containsKey('dictionary')
              ? GooglePrivacyDlpV2Dictionary.fromJson(
                  json_['dictionary'] as core.Map<core.String, core.dynamic>)
              : null,
          excludeByHotword: json_.containsKey('excludeByHotword')
              ? GooglePrivacyDlpV2ExcludeByHotword.fromJson(
                  json_['excludeByHotword']
                      as core.Map<core.String, core.dynamic>)
              : null,
          excludeInfoTypes: json_.containsKey('excludeInfoTypes')
              ? GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(
                  json_['excludeInfoTypes']
                      as core.Map<core.String, core.dynamic>)
              : null,
          matchingType: json_.containsKey('matchingType')
              ? json_['matchingType'] as core.String
              : null,
          regex: json_.containsKey('regex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  json_['regex'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dictionary != null) 'dictionary': dictionary!,
        if (excludeByHotword != null) 'excludeByHotword': excludeByHotword!,
        if (excludeInfoTypes != null) 'excludeInfoTypes': excludeInfoTypes!,
        if (matchingType != null) 'matchingType': matchingType!,
        if (regex != null) 'regex': regex!,
      };
}

/// If set, the detailed data profiles will be persisted to the location of your
/// choice whenever updated.
class GooglePrivacyDlpV2Export {
  /// Store all table and column profiles in an existing table or a new table in
  /// an existing dataset.
  ///
  /// Each re-generation will result in a new row in BigQuery.
  GooglePrivacyDlpV2BigQueryTable? profileTable;

  GooglePrivacyDlpV2Export({
    this.profileTable,
  });

  GooglePrivacyDlpV2Export.fromJson(core.Map json_)
      : this(
          profileTable: json_.containsKey('profileTable')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['profileTable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (profileTable != null) 'profileTable': profileTable!,
      };
}

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2Expressions {
  /// Conditions to apply to the expression.
  GooglePrivacyDlpV2Conditions? conditions;

  /// The operator to apply to the result of conditions.
  ///
  /// Default and currently only supported value is `AND`.
  /// Possible string values are:
  /// - "LOGICAL_OPERATOR_UNSPECIFIED" : Unused
  /// - "AND" : Conditional AND
  core.String? logicalOperator;

  GooglePrivacyDlpV2Expressions({
    this.conditions,
    this.logicalOperator,
  });

  GooglePrivacyDlpV2Expressions.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? GooglePrivacyDlpV2Conditions.fromJson(
                  json_['conditions'] as core.Map<core.String, core.dynamic>)
              : null,
          logicalOperator: json_.containsKey('logicalOperator')
              ? json_['logicalOperator'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (logicalOperator != null) 'logicalOperator': logicalOperator!,
      };
}

/// General identifier of a data field in a storage service.
class GooglePrivacyDlpV2FieldId {
  /// Name describing the field.
  core.String? name;

  GooglePrivacyDlpV2FieldId({
    this.name,
  });

  GooglePrivacyDlpV2FieldId.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// The transformation to apply to the field.
class GooglePrivacyDlpV2FieldTransformation {
  /// Only apply the transformation if the condition evaluates to true for the
  /// given `RecordCondition`.
  ///
  /// The conditions are allowed to reference fields that are not used in the
  /// actual transformation. Example Use Cases: - Apply a different bucket
  /// transformation to an age column if the zip code column for the same record
  /// is within a specific range. - Redact a field if the date of birth field is
  /// greater than 85.
  GooglePrivacyDlpV2RecordCondition? condition;

  /// Input field(s) to apply the transformation to.
  ///
  /// When you have columns that reference their position within a list, omit
  /// the index from the FieldId. FieldId name matching ignores the index. For
  /// example, instead of "contact.nums\[0\].type", use "contact.nums.type".
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2FieldId>? fields;

  /// Treat the contents of the field as free text, and selectively transform
  /// content that matches an `InfoType`.
  GooglePrivacyDlpV2InfoTypeTransformations? infoTypeTransformations;

  /// Apply the transformation to the entire field.
  GooglePrivacyDlpV2PrimitiveTransformation? primitiveTransformation;

  GooglePrivacyDlpV2FieldTransformation({
    this.condition,
    this.fields,
    this.infoTypeTransformations,
    this.primitiveTransformation,
  });

  GooglePrivacyDlpV2FieldTransformation.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? GooglePrivacyDlpV2RecordCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          infoTypeTransformations: json_.containsKey('infoTypeTransformations')
              ? GooglePrivacyDlpV2InfoTypeTransformations.fromJson(
                  json_['infoTypeTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          primitiveTransformation: json_.containsKey('primitiveTransformation')
              ? GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
                  json_['primitiveTransformation']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (fields != null) 'fields': fields!,
        if (infoTypeTransformations != null)
          'infoTypeTransformations': infoTypeTransformations!,
        if (primitiveTransformation != null)
          'primitiveTransformation': primitiveTransformation!,
      };
}

/// Set of files to scan.
class GooglePrivacyDlpV2FileSet {
  /// The regex-filtered set of files to scan.
  ///
  /// Exactly one of `url` or `regex_file_set` must be set.
  GooglePrivacyDlpV2CloudStorageRegexFileSet? regexFileSet;

  /// The Cloud Storage url of the file(s) to scan, in the format `gs:///`.
  ///
  /// Trailing wildcard in the path is allowed. If the url ends in a trailing
  /// slash, the bucket or directory represented by the url will be scanned
  /// non-recursively (content in sub-directories will not be scanned). This
  /// means that `gs://mybucket/` is equivalent to `gs://mybucket / * `, and
  /// `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory / *
  /// `. Exactly one of `url` or `regex_file_set` must be set.
  core.String? url;

  GooglePrivacyDlpV2FileSet({
    this.regexFileSet,
    this.url,
  });

  GooglePrivacyDlpV2FileSet.fromJson(core.Map json_)
      : this(
          regexFileSet: json_.containsKey('regexFileSet')
              ? GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(
                  json_['regexFileSet'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regexFileSet != null) 'regexFileSet': regexFileSet!,
        if (url != null) 'url': url!,
      };
}

/// Represents a piece of potentially sensitive content.
class GooglePrivacyDlpV2Finding {
  /// Timestamp when finding was detected.
  core.String? createTime;

  /// The unique finding id.
  core.String? findingId;

  /// The type of content that might have been found.
  ///
  /// Provided if `excluded_types` is false.
  GooglePrivacyDlpV2InfoType? infoType;

  /// Time the job started that produced this finding.
  core.String? jobCreateTime;

  /// The job that stored the finding.
  core.String? jobName;

  /// The labels associated with this `Finding`.
  ///
  /// Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label
  /// values must be between 0 and 63 characters long and must conform to the
  /// regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels
  /// can be associated with a given finding. Examples: * `"environment" :
  /// "production"` * `"pipeline" : "etl"`
  core.Map<core.String, core.String>? labels;

  /// Confidence of how likely it is that the `info_type` is correct.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; same as POSSIBLE.
  /// - "VERY_UNLIKELY" : Highest chance of a false positive.
  /// - "UNLIKELY" : High chance of a false positive.
  /// - "POSSIBLE" : Some matching signals. The default value.
  /// - "LIKELY" : Low chance of a false positive.
  /// - "VERY_LIKELY" : Confidence level is high. Lowest chance of a false
  /// positive.
  core.String? likelihood;

  /// Where the content was found.
  GooglePrivacyDlpV2Location? location;

  /// Resource name in format
  /// projects/{project}/locations/{location}/findings/{finding} Populated only
  /// when viewing persisted findings.
  core.String? name;

  /// The content that was found.
  ///
  /// Even if the content is not textual, it may be converted to a textual
  /// representation here. Provided if `include_quote` is true and the finding
  /// is less than or equal to 4096 bytes long. If the finding exceeds 4096
  /// bytes in length, the quote may be omitted.
  core.String? quote;

  /// Contains data parsed from quotes.
  ///
  /// Only populated if include_quote was set to true and a supported infoType
  /// was requested. Currently supported infoTypes: DATE, DATE_OF_BIRTH and
  /// TIME.
  GooglePrivacyDlpV2QuoteInfo? quoteInfo;

  /// The job that stored the finding.
  core.String? resourceName;

  /// Job trigger name, if applicable, for this finding.
  core.String? triggerName;

  GooglePrivacyDlpV2Finding({
    this.createTime,
    this.findingId,
    this.infoType,
    this.jobCreateTime,
    this.jobName,
    this.labels,
    this.likelihood,
    this.location,
    this.name,
    this.quote,
    this.quoteInfo,
    this.resourceName,
    this.triggerName,
  });

  GooglePrivacyDlpV2Finding.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          findingId: json_.containsKey('findingId')
              ? json_['findingId'] as core.String
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          jobCreateTime: json_.containsKey('jobCreateTime')
              ? json_['jobCreateTime'] as core.String
              : null,
          jobName: json_.containsKey('jobName')
              ? json_['jobName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          likelihood: json_.containsKey('likelihood')
              ? json_['likelihood'] as core.String
              : null,
          location: json_.containsKey('location')
              ? GooglePrivacyDlpV2Location.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          quote:
              json_.containsKey('quote') ? json_['quote'] as core.String : null,
          quoteInfo: json_.containsKey('quoteInfo')
              ? GooglePrivacyDlpV2QuoteInfo.fromJson(
                  json_['quoteInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          triggerName: json_.containsKey('triggerName')
              ? json_['triggerName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (findingId != null) 'findingId': findingId!,
        if (infoType != null) 'infoType': infoType!,
        if (jobCreateTime != null) 'jobCreateTime': jobCreateTime!,
        if (jobName != null) 'jobName': jobName!,
        if (labels != null) 'labels': labels!,
        if (likelihood != null) 'likelihood': likelihood!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (quote != null) 'quote': quote!,
        if (quoteInfo != null) 'quoteInfo': quoteInfo!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (triggerName != null) 'triggerName': triggerName!,
      };
}

/// Configuration to control the number of findings returned for inspection.
///
/// This is not used for de-identification or data profiling. When redacting
/// sensitive data from images, finding limits don't apply. They can cause
/// unexpected or inconsistent results, where only some data is redacted. Don't
/// include finding limits in RedactImage requests. Otherwise, Cloud DLP returns
/// an error.
class GooglePrivacyDlpV2FindingLimits {
  /// Configuration of findings limit given for specified infoTypes.
  core.List<GooglePrivacyDlpV2InfoTypeLimit>? maxFindingsPerInfoType;

  /// Max number of findings that are returned for each item scanned.
  ///
  /// When set within an InspectContentRequest, this field is ignored. This
  /// value isn't a hard limit. If the number of findings for an item reaches
  /// this limit, the inspection of that item ends gradually, not abruptly.
  /// Therefore, the actual number of findings that Cloud DLP returns for the
  /// item can be multiple times higher than this value.
  core.int? maxFindingsPerItem;

  /// Max number of findings that are returned per request or job.
  ///
  /// If you set this field in an InspectContentRequest, the resulting maximum
  /// value is the value that you set or 3,000, whichever is lower. This value
  /// isn't a hard limit. If an inspection reaches this limit, the inspection
  /// ends gradually, not abruptly. Therefore, the actual number of findings
  /// that Cloud DLP returns can be multiple times higher than this value.
  core.int? maxFindingsPerRequest;

  GooglePrivacyDlpV2FindingLimits({
    this.maxFindingsPerInfoType,
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
  });

  GooglePrivacyDlpV2FindingLimits.fromJson(core.Map json_)
      : this(
          maxFindingsPerInfoType: json_.containsKey('maxFindingsPerInfoType')
              ? (json_['maxFindingsPerInfoType'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeLimit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxFindingsPerItem: json_.containsKey('maxFindingsPerItem')
              ? json_['maxFindingsPerItem'] as core.int
              : null,
          maxFindingsPerRequest: json_.containsKey('maxFindingsPerRequest')
              ? json_['maxFindingsPerRequest'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxFindingsPerInfoType != null)
          'maxFindingsPerInfoType': maxFindingsPerInfoType!,
        if (maxFindingsPerItem != null)
          'maxFindingsPerItem': maxFindingsPerItem!,
        if (maxFindingsPerRequest != null)
          'maxFindingsPerRequest': maxFindingsPerRequest!,
      };
}

/// The request message for finishing a DLP hybrid job.
typedef GooglePrivacyDlpV2FinishDlpJobRequest = $Empty;

/// Buckets values based on fixed size ranges.
///
/// The Bucketing transformation can provide all of this functionality, but
/// requires more configuration. This message is provided as a convenience to
/// the user for simple bucketing strategies. The transformed value will be a
/// hyphenated string of {lower_bound}-{upper_bound}. For example, if
/// lower_bound = 10 and upper_bound = 20, all values that are within this
/// bucket will be replaced with "10-20". This can be used on data of type:
/// double, long. If the bound Value type differs from the type of data being
/// transformed, we will first attempt converting the type of the data to be
/// transformed to match the type of the bound before comparing. See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-bucketing
/// to learn more.
class GooglePrivacyDlpV2FixedSizeBucketingConfig {
  /// Size of each bucket (except for minimum and maximum buckets).
  ///
  /// So if `lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then
  /// the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50,
  /// 50-60, 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works.
  ///
  /// Required.
  core.double? bucketSize;

  /// Lower bound value of buckets.
  ///
  /// All values less than `lower_bound` are grouped together into a single
  /// bucket; for example if `lower_bound` = 10, then all values less than 10
  /// are replaced with the value "-10".
  ///
  /// Required.
  GooglePrivacyDlpV2Value? lowerBound;

  /// Upper bound value of buckets.
  ///
  /// All values greater than upper_bound are grouped together into a single
  /// bucket; for example if `upper_bound` = 89, then all values greater than 89
  /// are replaced with the value "89+".
  ///
  /// Required.
  GooglePrivacyDlpV2Value? upperBound;

  GooglePrivacyDlpV2FixedSizeBucketingConfig({
    this.bucketSize,
    this.lowerBound,
    this.upperBound,
  });

  GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(core.Map json_)
      : this(
          bucketSize: json_.containsKey('bucketSize')
              ? (json_['bucketSize'] as core.num).toDouble()
              : null,
          lowerBound: json_.containsKey('lowerBound')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['lowerBound'] as core.Map<core.String, core.dynamic>)
              : null,
          upperBound: json_.containsKey('upperBound')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['upperBound'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (lowerBound != null) 'lowerBound': lowerBound!,
        if (upperBound != null) 'upperBound': upperBound!,
      };
}

/// The rule that adjusts the likelihood of findings within a certain proximity
/// of hotwords.
class GooglePrivacyDlpV2HotwordRule {
  /// Regular expression pattern defining what qualifies as a hotword.
  GooglePrivacyDlpV2Regex? hotwordRegex;

  /// Likelihood adjustment to apply to all matching findings.
  GooglePrivacyDlpV2LikelihoodAdjustment? likelihoodAdjustment;

  /// Range of characters within which the entire hotword must reside.
  ///
  /// The total length of the window cannot exceed 1000 characters. The finding
  /// itself will be included in the window, so that hotwords can be used to
  /// match substrings of the finding itself. Suppose you want Cloud DLP to
  /// promote the likelihood of the phone number regex "\(\d{3}\) \d{3}-\d{4}"
  /// if the area code is known to be the area code of a company's office. In
  /// this case, use the hotword regex "\(xxx\)", where "xxx" is the area code
  /// in question. For tabular data, if you want to modify the likelihood of an
  /// entire column of findngs, see \[Hotword example: Set the match likelihood
  /// of a table
  /// column\](https://cloud.google.com/sensitive-data-protection/docs/creating-custom-infotypes-likelihood#match-column-values).
  GooglePrivacyDlpV2Proximity? proximity;

  GooglePrivacyDlpV2HotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  GooglePrivacyDlpV2HotwordRule.fromJson(core.Map json_)
      : this(
          hotwordRegex: json_.containsKey('hotwordRegex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  json_['hotwordRegex'] as core.Map<core.String, core.dynamic>)
              : null,
          likelihoodAdjustment: json_.containsKey('likelihoodAdjustment')
              ? GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(
                  json_['likelihoodAdjustment']
                      as core.Map<core.String, core.dynamic>)
              : null,
          proximity: json_.containsKey('proximity')
              ? GooglePrivacyDlpV2Proximity.fromJson(
                  json_['proximity'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotwordRegex != null) 'hotwordRegex': hotwordRegex!,
        if (likelihoodAdjustment != null)
          'likelihoodAdjustment': likelihoodAdjustment!,
        if (proximity != null) 'proximity': proximity!,
      };
}

/// An individual hybrid item to inspect.
///
/// Will be stored temporarily during processing.
class GooglePrivacyDlpV2HybridContentItem {
  /// Supplementary information that will be added to each finding.
  GooglePrivacyDlpV2HybridFindingDetails? findingDetails;

  /// The item to inspect.
  GooglePrivacyDlpV2ContentItem? item;

  GooglePrivacyDlpV2HybridContentItem({
    this.findingDetails,
    this.item,
  });

  GooglePrivacyDlpV2HybridContentItem.fromJson(core.Map json_)
      : this(
          findingDetails: json_.containsKey('findingDetails')
              ? GooglePrivacyDlpV2HybridFindingDetails.fromJson(
                  json_['findingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          item: json_.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (findingDetails != null) 'findingDetails': findingDetails!,
        if (item != null) 'item': item!,
      };
}

/// Populate to associate additional data with each finding.
class GooglePrivacyDlpV2HybridFindingDetails {
  /// Details about the container where the content being inspected is from.
  GooglePrivacyDlpV2Container? containerDetails;

  /// Offset in bytes of the line, from the beginning of the file, where the
  /// finding is located.
  ///
  /// Populate if the item being scanned is only part of a bigger item, such as
  /// a shard of a file and you want to track the absolute position of the
  /// finding.
  core.String? fileOffset;

  /// Labels to represent user provided metadata about the data being inspected.
  ///
  /// If configured by the job, some key values may be required. The labels
  /// associated with `Finding`'s produced by hybrid inspection. Label keys must
  /// be between 1 and 63 characters long and must conform to the following
  /// regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be
  /// between 0 and 63 characters long and must conform to the regular
  /// expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be
  /// associated with a given finding. Examples: * `"environment" :
  /// "production"` * `"pipeline" : "etl"`
  core.Map<core.String, core.String>? labels;

  /// Offset of the row for tables.
  ///
  /// Populate if the row(s) being scanned are part of a bigger dataset and you
  /// want to keep track of their absolute position.
  core.String? rowOffset;

  /// If the container is a table, additional information to make findings
  /// meaningful such as the columns that are primary keys.
  ///
  /// If not known ahead of time, can also be set within each inspect hybrid
  /// call and the two will be merged. Note that identifying_fields will only be
  /// stored to BigQuery, and only if the BigQuery action has been included.
  GooglePrivacyDlpV2TableOptions? tableOptions;

  GooglePrivacyDlpV2HybridFindingDetails({
    this.containerDetails,
    this.fileOffset,
    this.labels,
    this.rowOffset,
    this.tableOptions,
  });

  GooglePrivacyDlpV2HybridFindingDetails.fromJson(core.Map json_)
      : this(
          containerDetails: json_.containsKey('containerDetails')
              ? GooglePrivacyDlpV2Container.fromJson(json_['containerDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fileOffset: json_.containsKey('fileOffset')
              ? json_['fileOffset'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          rowOffset: json_.containsKey('rowOffset')
              ? json_['rowOffset'] as core.String
              : null,
          tableOptions: json_.containsKey('tableOptions')
              ? GooglePrivacyDlpV2TableOptions.fromJson(
                  json_['tableOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerDetails != null) 'containerDetails': containerDetails!,
        if (fileOffset != null) 'fileOffset': fileOffset!,
        if (labels != null) 'labels': labels!,
        if (rowOffset != null) 'rowOffset': rowOffset!,
        if (tableOptions != null) 'tableOptions': tableOptions!,
      };
}

/// Request to search for potentially sensitive info in a custom location.
class GooglePrivacyDlpV2HybridInspectDlpJobRequest {
  /// The item to inspect.
  GooglePrivacyDlpV2HybridContentItem? hybridItem;

  GooglePrivacyDlpV2HybridInspectDlpJobRequest({
    this.hybridItem,
  });

  GooglePrivacyDlpV2HybridInspectDlpJobRequest.fromJson(core.Map json_)
      : this(
          hybridItem: json_.containsKey('hybridItem')
              ? GooglePrivacyDlpV2HybridContentItem.fromJson(
                  json_['hybridItem'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hybridItem != null) 'hybridItem': hybridItem!,
      };
}

/// Request to search for potentially sensitive info in a custom location.
class GooglePrivacyDlpV2HybridInspectJobTriggerRequest {
  /// The item to inspect.
  GooglePrivacyDlpV2HybridContentItem? hybridItem;

  GooglePrivacyDlpV2HybridInspectJobTriggerRequest({
    this.hybridItem,
  });

  GooglePrivacyDlpV2HybridInspectJobTriggerRequest.fromJson(core.Map json_)
      : this(
          hybridItem: json_.containsKey('hybridItem')
              ? GooglePrivacyDlpV2HybridContentItem.fromJson(
                  json_['hybridItem'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hybridItem != null) 'hybridItem': hybridItem!,
      };
}

/// Quota exceeded errors will be thrown once quota has been met.
typedef GooglePrivacyDlpV2HybridInspectResponse = $Empty;

/// Statistics related to processing hybrid inspect requests.
class GooglePrivacyDlpV2HybridInspectStatistics {
  /// The number of hybrid inspection requests aborted because the job ran out
  /// of quota or was ended before they could be processed.
  core.String? abortedCount;

  /// The number of hybrid requests currently being processed.
  ///
  /// Only populated when called via method `getDlpJob`. A burst of traffic may
  /// cause hybrid inspect requests to be enqueued. Processing will take place
  /// as quickly as possible, but resource limitations may impact how long a
  /// request is enqueued for.
  core.String? pendingCount;

  /// The number of hybrid inspection requests processed within this job.
  core.String? processedCount;

  GooglePrivacyDlpV2HybridInspectStatistics({
    this.abortedCount,
    this.pendingCount,
    this.processedCount,
  });

  GooglePrivacyDlpV2HybridInspectStatistics.fromJson(core.Map json_)
      : this(
          abortedCount: json_.containsKey('abortedCount')
              ? json_['abortedCount'] as core.String
              : null,
          pendingCount: json_.containsKey('pendingCount')
              ? json_['pendingCount'] as core.String
              : null,
          processedCount: json_.containsKey('processedCount')
              ? json_['processedCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abortedCount != null) 'abortedCount': abortedCount!,
        if (pendingCount != null) 'pendingCount': pendingCount!,
        if (processedCount != null) 'processedCount': processedCount!,
      };
}

/// Configuration to control jobs where the content being inspected is outside
/// of Google Cloud Platform.
class GooglePrivacyDlpV2HybridOptions {
  /// A short description of where the data is coming from.
  ///
  /// Will be stored once in the job. 256 max length.
  core.String? description;

  /// To organize findings, these labels will be added to each finding.
  ///
  /// Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label
  /// values must be between 0 and 63 characters long and must conform to the
  /// regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels
  /// can be associated with a given finding. Examples: * `"environment" :
  /// "production"` * `"pipeline" : "etl"`
  core.Map<core.String, core.String>? labels;

  /// These are labels that each inspection request must include within their
  /// 'finding_labels' map.
  ///
  /// Request may contain others, but any missing one of these will be rejected.
  /// Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. No more
  /// than 10 keys can be required.
  core.List<core.String>? requiredFindingLabelKeys;

  /// If the container is a table, additional information to make findings
  /// meaningful such as the columns that are primary keys.
  GooglePrivacyDlpV2TableOptions? tableOptions;

  GooglePrivacyDlpV2HybridOptions({
    this.description,
    this.labels,
    this.requiredFindingLabelKeys,
    this.tableOptions,
  });

  GooglePrivacyDlpV2HybridOptions.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          requiredFindingLabelKeys:
              json_.containsKey('requiredFindingLabelKeys')
                  ? (json_['requiredFindingLabelKeys'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          tableOptions: json_.containsKey('tableOptions')
              ? GooglePrivacyDlpV2TableOptions.fromJson(
                  json_['tableOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (requiredFindingLabelKeys != null)
          'requiredFindingLabelKeys': requiredFindingLabelKeys!,
        if (tableOptions != null) 'tableOptions': tableOptions!,
      };
}

/// Location of the finding within an image.
class GooglePrivacyDlpV2ImageLocation {
  /// Bounding boxes locating the pixels within the image containing the
  /// finding.
  core.List<GooglePrivacyDlpV2BoundingBox>? boundingBoxes;

  GooglePrivacyDlpV2ImageLocation({
    this.boundingBoxes,
  });

  GooglePrivacyDlpV2ImageLocation.fromJson(core.Map json_)
      : this(
          boundingBoxes: json_.containsKey('boundingBoxes')
              ? (json_['boundingBoxes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2BoundingBox.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingBoxes != null) 'boundingBoxes': boundingBoxes!,
      };
}

/// Configuration for determining how redaction of images should occur.
class GooglePrivacyDlpV2ImageRedactionConfig {
  /// Only one per info_type should be provided per request.
  ///
  /// If not specified, and redact_all_text is false, the DLP API will redact
  /// all text that it matches against all info_types that are found, but not
  /// specified in another ImageRedactionConfig.
  GooglePrivacyDlpV2InfoType? infoType;

  /// If true, all text found in the image, regardless whether it matches an
  /// info_type, is redacted.
  ///
  /// Only one should be provided.
  core.bool? redactAllText;

  /// The color to use when redacting content from an image.
  ///
  /// If not specified, the default is black.
  GooglePrivacyDlpV2Color? redactionColor;

  GooglePrivacyDlpV2ImageRedactionConfig({
    this.infoType,
    this.redactAllText,
    this.redactionColor,
  });

  GooglePrivacyDlpV2ImageRedactionConfig.fromJson(core.Map json_)
      : this(
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          redactAllText: json_.containsKey('redactAllText')
              ? json_['redactAllText'] as core.bool
              : null,
          redactionColor: json_.containsKey('redactionColor')
              ? GooglePrivacyDlpV2Color.fromJson(json_['redactionColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoType != null) 'infoType': infoType!,
        if (redactAllText != null) 'redactAllText': redactAllText!,
        if (redactionColor != null) 'redactionColor': redactionColor!,
      };
}

/// Configuration for determining how redaction of images should occur.
class GooglePrivacyDlpV2ImageTransformation {
  /// Apply transformation to all findings not specified in other
  /// ImageTransformation's selected_info_types.
  ///
  /// Only one instance is allowed within the ImageTransformations message.
  GooglePrivacyDlpV2AllInfoTypes? allInfoTypes;

  /// Apply transformation to all text that doesn't match an infoType.
  ///
  /// Only one instance is allowed within the ImageTransformations message.
  GooglePrivacyDlpV2AllText? allText;

  /// The color to use when redacting content from an image.
  ///
  /// If not specified, the default is black.
  GooglePrivacyDlpV2Color? redactionColor;

  /// Apply transformation to the selected info_types.
  GooglePrivacyDlpV2SelectedInfoTypes? selectedInfoTypes;

  GooglePrivacyDlpV2ImageTransformation({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  GooglePrivacyDlpV2ImageTransformation.fromJson(core.Map json_)
      : this(
          allInfoTypes: json_.containsKey('allInfoTypes')
              ? GooglePrivacyDlpV2AllInfoTypes.fromJson(
                  json_['allInfoTypes'] as core.Map<core.String, core.dynamic>)
              : null,
          allText: json_.containsKey('allText')
              ? GooglePrivacyDlpV2AllText.fromJson(
                  json_['allText'] as core.Map<core.String, core.dynamic>)
              : null,
          redactionColor: json_.containsKey('redactionColor')
              ? GooglePrivacyDlpV2Color.fromJson(json_['redactionColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selectedInfoTypes: json_.containsKey('selectedInfoTypes')
              ? GooglePrivacyDlpV2SelectedInfoTypes.fromJson(
                  json_['selectedInfoTypes']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allInfoTypes != null) 'allInfoTypes': allInfoTypes!,
        if (allText != null) 'allText': allText!,
        if (redactionColor != null) 'redactionColor': redactionColor!,
        if (selectedInfoTypes != null) 'selectedInfoTypes': selectedInfoTypes!,
      };
}

/// A type of transformation that is applied over images.
class GooglePrivacyDlpV2ImageTransformations {
  /// List of transforms to make.
  core.List<GooglePrivacyDlpV2ImageTransformation>? transforms;

  GooglePrivacyDlpV2ImageTransformations({
    this.transforms,
  });

  GooglePrivacyDlpV2ImageTransformations.fromJson(core.Map json_)
      : this(
          transforms: json_.containsKey('transforms')
              ? (json_['transforms'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2ImageTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transforms != null) 'transforms': transforms!,
      };
}

/// Type of information detected by the API.
class GooglePrivacyDlpV2InfoType {
  /// Name of the information type.
  ///
  /// Either a name of your choosing when creating a CustomInfoType, or one of
  /// the names listed at
  /// https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference
  /// when specifying a built-in type. When sending Cloud DLP results to Data
  /// Catalog, infoType names should conform to the pattern
  /// `[A-Za-z0-9$_-]{1,64}`.
  core.String? name;

  /// Optional custom sensitivity for this InfoType.
  ///
  /// This only applies to data profiling.
  GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  /// Optional version name for this InfoType.
  core.String? version;

  GooglePrivacyDlpV2InfoType({
    this.name,
    this.sensitivityScore,
    this.version,
  });

  GooglePrivacyDlpV2InfoType.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sensitivityScore: json_.containsKey('sensitivityScore')
              ? GooglePrivacyDlpV2SensitivityScore.fromJson(
                  json_['sensitivityScore']
                      as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sensitivityScore != null) 'sensitivityScore': sensitivityScore!,
        if (version != null) 'version': version!,
      };
}

/// Classification of infoTypes to organize them according to geographic
/// location, industry, and data type.
class GooglePrivacyDlpV2InfoTypeCategory {
  /// The group of relevant businesses where this infoType is commonly used
  /// Possible string values are:
  /// - "INDUSTRY_UNSPECIFIED" : Unused industry
  /// - "FINANCE" : The infoType is typically used in the finance industry.
  /// - "HEALTH" : The infoType is typically used in the health industry.
  /// - "TELECOMMUNICATIONS" : The infoType is typically used in the
  /// telecommunications industry.
  core.String? industryCategory;

  /// The region or country that issued the ID or document represented by the
  /// infoType.
  /// Possible string values are:
  /// - "LOCATION_UNSPECIFIED" : Unused location
  /// - "GLOBAL" : The infoType is not issued by or tied to a specific region,
  /// but is used almost everywhere.
  /// - "ARGENTINA" : The infoType is typically used in Argentina.
  /// - "AUSTRALIA" : The infoType is typically used in Australia.
  /// - "BELGIUM" : The infoType is typically used in Belgium.
  /// - "BRAZIL" : The infoType is typically used in Brazil.
  /// - "CANADA" : The infoType is typically used in Canada.
  /// - "CHILE" : The infoType is typically used in Chile.
  /// - "CHINA" : The infoType is typically used in China.
  /// - "COLOMBIA" : The infoType is typically used in Colombia.
  /// - "CROATIA" : The infoType is typically used in Croatia.
  /// - "DENMARK" : The infoType is typically used in Denmark.
  /// - "FRANCE" : The infoType is typically used in France.
  /// - "FINLAND" : The infoType is typically used in Finland.
  /// - "GERMANY" : The infoType is typically used in Germany.
  /// - "HONG_KONG" : The infoType is typically used in Hong Kong.
  /// - "INDIA" : The infoType is typically used in India.
  /// - "INDONESIA" : The infoType is typically used in Indonesia.
  /// - "IRELAND" : The infoType is typically used in Ireland.
  /// - "ISRAEL" : The infoType is typically used in Israel.
  /// - "ITALY" : The infoType is typically used in Italy.
  /// - "JAPAN" : The infoType is typically used in Japan.
  /// - "KOREA" : The infoType is typically used in Korea.
  /// - "MEXICO" : The infoType is typically used in Mexico.
  /// - "THE_NETHERLANDS" : The infoType is typically used in the Netherlands.
  /// - "NEW_ZEALAND" : The infoType is typically used in New Zealand.
  /// - "NORWAY" : The infoType is typically used in Norway.
  /// - "PARAGUAY" : The infoType is typically used in Paraguay.
  /// - "PERU" : The infoType is typically used in Peru.
  /// - "POLAND" : The infoType is typically used in Poland.
  /// - "PORTUGAL" : The infoType is typically used in Portugal.
  /// - "SINGAPORE" : The infoType is typically used in Singapore.
  /// - "SOUTH_AFRICA" : The infoType is typically used in South Africa.
  /// - "SPAIN" : The infoType is typically used in Spain.
  /// - "SWEDEN" : The infoType is typically used in Sweden.
  /// - "SWITZERLAND" : The infoType is typically used in Switzerland.
  /// - "TAIWAN" : The infoType is typically used in Taiwan.
  /// - "THAILAND" : The infoType is typically used in Thailand.
  /// - "TURKEY" : The infoType is typically used in Turkey.
  /// - "UNITED_KINGDOM" : The infoType is typically used in the United Kingdom.
  /// - "UNITED_STATES" : The infoType is typically used in the United States.
  /// - "URUGUAY" : The infoType is typically used in Uruguay.
  /// - "VENEZUELA" : The infoType is typically used in Venezuela.
  /// - "INTERNAL" : The infoType is typically used in Google internally.
  core.String? locationCategory;

  /// The class of identifiers where this infoType belongs
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unused type
  /// - "PII" : Personally identifiable information, for example, a name or
  /// phone number
  /// - "SPII" : Personally identifiable information that is especially
  /// sensitive, for example, a passport number.
  /// - "DEMOGRAPHIC" : Attributes that can partially identify someone,
  /// especially in combination with other attributes, like age, height, and
  /// gender.
  /// - "CREDENTIAL" : Confidential or secret information, for example, a
  /// password.
  /// - "GOVERNMENT_ID" : An identification document issued by a government.
  /// - "DOCUMENT" : A document, for example, a resume or source code.
  /// - "CONTEXTUAL_INFORMATION" : Information that is not sensitive on its own,
  /// but provides details about the circumstances surrounding an entity or an
  /// event.
  core.String? typeCategory;

  GooglePrivacyDlpV2InfoTypeCategory({
    this.industryCategory,
    this.locationCategory,
    this.typeCategory,
  });

  GooglePrivacyDlpV2InfoTypeCategory.fromJson(core.Map json_)
      : this(
          industryCategory: json_.containsKey('industryCategory')
              ? json_['industryCategory'] as core.String
              : null,
          locationCategory: json_.containsKey('locationCategory')
              ? json_['locationCategory'] as core.String
              : null,
          typeCategory: json_.containsKey('typeCategory')
              ? json_['typeCategory'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (industryCategory != null) 'industryCategory': industryCategory!,
        if (locationCategory != null) 'locationCategory': locationCategory!,
        if (typeCategory != null) 'typeCategory': typeCategory!,
      };
}

/// InfoType description.
class GooglePrivacyDlpV2InfoTypeDescription {
  /// The category of the infoType.
  core.List<GooglePrivacyDlpV2InfoTypeCategory>? categories;

  /// Description of the infotype.
  ///
  /// Translated when language is provided in the request.
  core.String? description;

  /// Human readable form of the infoType name.
  core.String? displayName;

  /// Internal name of the infoType.
  core.String? name;

  /// The default sensitivity of the infoType.
  GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  /// Which parts of the API supports this InfoType.
  core.List<core.String>? supportedBy;

  /// A list of available versions for the infotype.
  core.List<GooglePrivacyDlpV2VersionDescription>? versions;

  GooglePrivacyDlpV2InfoTypeDescription({
    this.categories,
    this.description,
    this.displayName,
    this.name,
    this.sensitivityScore,
    this.supportedBy,
    this.versions,
  });

  GooglePrivacyDlpV2InfoTypeDescription.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sensitivityScore: json_.containsKey('sensitivityScore')
              ? GooglePrivacyDlpV2SensitivityScore.fromJson(
                  json_['sensitivityScore']
                      as core.Map<core.String, core.dynamic>)
              : null,
          supportedBy: json_.containsKey('supportedBy')
              ? (json_['supportedBy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          versions: json_.containsKey('versions')
              ? (json_['versions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2VersionDescription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (sensitivityScore != null) 'sensitivityScore': sensitivityScore!,
        if (supportedBy != null) 'supportedBy': supportedBy!,
        if (versions != null) 'versions': versions!,
      };
}

/// Configuration for setting a minimum likelihood per infotype.
///
/// Used to customize the minimum likelihood level for specific infotypes in the
/// request. For example, use this if you want to lower the precision for
/// PERSON_NAME without lowering the precision for the other infotypes in the
/// request.
class GooglePrivacyDlpV2InfoTypeLikelihood {
  /// Type of information the likelihood threshold applies to.
  ///
  /// Only one likelihood per info_type should be provided. If
  /// InfoTypeLikelihood does not have an info_type, the configuration fails.
  GooglePrivacyDlpV2InfoType? infoType;

  /// Only returns findings equal to or above this threshold.
  ///
  /// This field is required or else the configuration fails.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; same as POSSIBLE.
  /// - "VERY_UNLIKELY" : Highest chance of a false positive.
  /// - "UNLIKELY" : High chance of a false positive.
  /// - "POSSIBLE" : Some matching signals. The default value.
  /// - "LIKELY" : Low chance of a false positive.
  /// - "VERY_LIKELY" : Confidence level is high. Lowest chance of a false
  /// positive.
  core.String? minLikelihood;

  GooglePrivacyDlpV2InfoTypeLikelihood({
    this.infoType,
    this.minLikelihood,
  });

  GooglePrivacyDlpV2InfoTypeLikelihood.fromJson(core.Map json_)
      : this(
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          minLikelihood: json_.containsKey('minLikelihood')
              ? json_['minLikelihood'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoType != null) 'infoType': infoType!,
        if (minLikelihood != null) 'minLikelihood': minLikelihood!,
      };
}

/// Max findings configuration per infoType, per content item or long running
/// DlpJob.
class GooglePrivacyDlpV2InfoTypeLimit {
  /// Type of information the findings limit applies to.
  ///
  /// Only one limit per info_type should be provided. If InfoTypeLimit does not
  /// have an info_type, the DLP API applies the limit against all info_types
  /// that are found but not specified in another InfoTypeLimit.
  GooglePrivacyDlpV2InfoType? infoType;

  /// Max findings limit for the given infoType.
  core.int? maxFindings;

  GooglePrivacyDlpV2InfoTypeLimit({
    this.infoType,
    this.maxFindings,
  });

  GooglePrivacyDlpV2InfoTypeLimit.fromJson(core.Map json_)
      : this(
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          maxFindings: json_.containsKey('maxFindings')
              ? json_['maxFindings'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoType != null) 'infoType': infoType!,
        if (maxFindings != null) 'maxFindings': maxFindings!,
      };
}

/// Statistics regarding a specific InfoType.
class GooglePrivacyDlpV2InfoTypeStats {
  /// Number of findings for this infoType.
  core.String? count;

  /// The type of finding this stat is for.
  GooglePrivacyDlpV2InfoType? infoType;

  GooglePrivacyDlpV2InfoTypeStats({
    this.count,
    this.infoType,
  });

  GooglePrivacyDlpV2InfoTypeStats.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (infoType != null) 'infoType': infoType!,
      };
}

/// The infoType details for this column.
class GooglePrivacyDlpV2InfoTypeSummary {
  /// Not populated for predicted infotypes.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? estimatedPrevalence;

  /// The infoType.
  GooglePrivacyDlpV2InfoType? infoType;

  GooglePrivacyDlpV2InfoTypeSummary({
    this.estimatedPrevalence,
    this.infoType,
  });

  GooglePrivacyDlpV2InfoTypeSummary.fromJson(core.Map json_)
      : this(
          estimatedPrevalence: json_.containsKey('estimatedPrevalence')
              ? json_['estimatedPrevalence'] as core.int
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedPrevalence != null)
          'estimatedPrevalence': estimatedPrevalence!,
        if (infoType != null) 'infoType': infoType!,
      };
}

/// A transformation to apply to text that is identified as a specific
/// info_type.
class GooglePrivacyDlpV2InfoTypeTransformation {
  /// InfoTypes to apply the transformation to.
  ///
  /// An empty list will cause this transformation to apply to all findings that
  /// correspond to infoTypes that were requested in `InspectConfig`.
  core.List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Primitive transformation to apply to the infoType.
  ///
  /// Required.
  GooglePrivacyDlpV2PrimitiveTransformation? primitiveTransformation;

  GooglePrivacyDlpV2InfoTypeTransformation({
    this.infoTypes,
    this.primitiveTransformation,
  });

  GooglePrivacyDlpV2InfoTypeTransformation.fromJson(core.Map json_)
      : this(
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          primitiveTransformation: json_.containsKey('primitiveTransformation')
              ? GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
                  json_['primitiveTransformation']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoTypes != null) 'infoTypes': infoTypes!,
        if (primitiveTransformation != null)
          'primitiveTransformation': primitiveTransformation!,
      };
}

/// A type of transformation that will scan unstructured text and apply various
/// `PrimitiveTransformation`s to each finding, where the transformation is
/// applied to only values that were identified as a specific info_type.
class GooglePrivacyDlpV2InfoTypeTransformations {
  /// Transformation for each infoType.
  ///
  /// Cannot specify more than one for a given infoType.
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2InfoTypeTransformation>? transformations;

  GooglePrivacyDlpV2InfoTypeTransformations({
    this.transformations,
  });

  GooglePrivacyDlpV2InfoTypeTransformations.fromJson(core.Map json_)
      : this(
          transformations: json_.containsKey('transformations')
              ? (json_['transformations'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2InfoTypeTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transformations != null) 'transformations': transformations!,
      };
}

/// Configuration description of the scanning process.
///
/// When used with redactContent only info_types and min_likelihood are
/// currently used.
class GooglePrivacyDlpV2InspectConfig {
  /// Deprecated and unused.
  core.List<core.String>? contentOptions;

  /// CustomInfoTypes provided by the user.
  ///
  /// See
  /// https://cloud.google.com/sensitive-data-protection/docs/creating-custom-infotypes
  /// to learn more.
  core.List<GooglePrivacyDlpV2CustomInfoType>? customInfoTypes;

  /// When true, excludes type information of the findings.
  ///
  /// This is not used for data profiling.
  core.bool? excludeInfoTypes;

  /// When true, a contextual quote from the data that triggered a finding is
  /// included in the response; see Finding.quote.
  ///
  /// This is not used for data profiling.
  core.bool? includeQuote;

  /// Restricts what info_types to look for.
  ///
  /// The values must correspond to InfoType values returned by ListInfoTypes or
  /// listed at
  /// https://cloud.google.com/sensitive-data-protection/docs/infotypes-reference.
  /// When no InfoTypes or CustomInfoTypes are specified in a request, the
  /// system may automatically choose a default list of detectors to run, which
  /// may change over time. If you need precise control and predictability as to
  /// what detectors are run you should specify specific InfoTypes listed in the
  /// reference, otherwise a default list will be used, which may change over
  /// time.
  core.List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Configuration to control the number of findings returned.
  ///
  /// This is not used for data profiling. When redacting sensitive data from
  /// images, finding limits don't apply. They can cause unexpected or
  /// inconsistent results, where only some data is redacted. Don't include
  /// finding limits in RedactImage requests. Otherwise, Cloud DLP returns an
  /// error. When set within an InspectJobConfig, the specified maximum values
  /// aren't hard limits. If an inspection job reaches these limits, the job
  /// ends gradually, not abruptly. Therefore, the actual number of findings
  /// that Cloud DLP returns can be multiple times higher than these maximum
  /// values.
  GooglePrivacyDlpV2FindingLimits? limits;

  /// Only returns findings equal to or above this threshold.
  ///
  /// The default is POSSIBLE. In general, the highest likelihood setting yields
  /// the fewest findings in results and the lowest chance of a false positive.
  /// For more information, see
  /// [Match likelihood](https://cloud.google.com/sensitive-data-protection/docs/likelihood).
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; same as POSSIBLE.
  /// - "VERY_UNLIKELY" : Highest chance of a false positive.
  /// - "UNLIKELY" : High chance of a false positive.
  /// - "POSSIBLE" : Some matching signals. The default value.
  /// - "LIKELY" : Low chance of a false positive.
  /// - "VERY_LIKELY" : Confidence level is high. Lowest chance of a false
  /// positive.
  core.String? minLikelihood;

  /// Minimum likelihood per infotype.
  ///
  /// For each infotype, a user can specify a minimum likelihood. The system
  /// only returns a finding if its likelihood is above this threshold. If this
  /// field is not set, the system uses the InspectConfig min_likelihood.
  core.List<GooglePrivacyDlpV2InfoTypeLikelihood>? minLikelihoodPerInfoType;

  /// Set of rules to apply to the findings for this InspectConfig.
  ///
  /// Exclusion rules, contained in the set are executed in the end, other rules
  /// are executed in the order they are specified for each info type.
  core.List<GooglePrivacyDlpV2InspectionRuleSet>? ruleSet;

  GooglePrivacyDlpV2InspectConfig({
    this.contentOptions,
    this.customInfoTypes,
    this.excludeInfoTypes,
    this.includeQuote,
    this.infoTypes,
    this.limits,
    this.minLikelihood,
    this.minLikelihoodPerInfoType,
    this.ruleSet,
  });

  GooglePrivacyDlpV2InspectConfig.fromJson(core.Map json_)
      : this(
          contentOptions: json_.containsKey('contentOptions')
              ? (json_['contentOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customInfoTypes: json_.containsKey('customInfoTypes')
              ? (json_['customInfoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2CustomInfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          excludeInfoTypes: json_.containsKey('excludeInfoTypes')
              ? json_['excludeInfoTypes'] as core.bool
              : null,
          includeQuote: json_.containsKey('includeQuote')
              ? json_['includeQuote'] as core.bool
              : null,
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limits: json_.containsKey('limits')
              ? GooglePrivacyDlpV2FindingLimits.fromJson(
                  json_['limits'] as core.Map<core.String, core.dynamic>)
              : null,
          minLikelihood: json_.containsKey('minLikelihood')
              ? json_['minLikelihood'] as core.String
              : null,
          minLikelihoodPerInfoType: json_
                  .containsKey('minLikelihoodPerInfoType')
              ? (json_['minLikelihoodPerInfoType'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeLikelihood.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ruleSet: json_.containsKey('ruleSet')
              ? (json_['ruleSet'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InspectionRuleSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentOptions != null) 'contentOptions': contentOptions!,
        if (customInfoTypes != null) 'customInfoTypes': customInfoTypes!,
        if (excludeInfoTypes != null) 'excludeInfoTypes': excludeInfoTypes!,
        if (includeQuote != null) 'includeQuote': includeQuote!,
        if (infoTypes != null) 'infoTypes': infoTypes!,
        if (limits != null) 'limits': limits!,
        if (minLikelihood != null) 'minLikelihood': minLikelihood!,
        if (minLikelihoodPerInfoType != null)
          'minLikelihoodPerInfoType': minLikelihoodPerInfoType!,
        if (ruleSet != null) 'ruleSet': ruleSet!,
      };
}

/// Request to search for potentially sensitive info in a ContentItem.
class GooglePrivacyDlpV2InspectContentRequest {
  /// Configuration for the inspector.
  ///
  /// What specified here will override the template referenced by the
  /// inspect_template_name argument.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// Template to use.
  ///
  /// Any configuration directly specified in inspect_config will override those
  /// set in the template. Singular fields that are set in this request will
  /// replace their corresponding fields in the template. Repeated fields are
  /// appended. Singular sub-messages and groups are recursively merged.
  core.String? inspectTemplateName;

  /// The item to inspect.
  GooglePrivacyDlpV2ContentItem? item;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  GooglePrivacyDlpV2InspectContentRequest({
    this.inspectConfig,
    this.inspectTemplateName,
    this.item,
    this.locationId,
  });

  GooglePrivacyDlpV2InspectContentRequest.fromJson(core.Map json_)
      : this(
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: json_.containsKey('inspectTemplateName')
              ? json_['inspectTemplateName'] as core.String
              : null,
          item: json_.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (inspectTemplateName != null)
          'inspectTemplateName': inspectTemplateName!,
        if (item != null) 'item': item!,
        if (locationId != null) 'locationId': locationId!,
      };
}

/// Results of inspecting an item.
class GooglePrivacyDlpV2InspectContentResponse {
  /// The findings.
  GooglePrivacyDlpV2InspectResult? result;

  GooglePrivacyDlpV2InspectContentResponse({
    this.result,
  });

  GooglePrivacyDlpV2InspectContentResponse.fromJson(core.Map json_)
      : this(
          result: json_.containsKey('result')
              ? GooglePrivacyDlpV2InspectResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}

/// The results of an inspect DataSource job.
class GooglePrivacyDlpV2InspectDataSourceDetails {
  /// The configuration used for this job.
  GooglePrivacyDlpV2RequestedOptions? requestedOptions;

  /// A summary of the outcome of this inspection job.
  GooglePrivacyDlpV2Result? result;

  GooglePrivacyDlpV2InspectDataSourceDetails({
    this.requestedOptions,
    this.result,
  });

  GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(core.Map json_)
      : this(
          requestedOptions: json_.containsKey('requestedOptions')
              ? GooglePrivacyDlpV2RequestedOptions.fromJson(
                  json_['requestedOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          result: json_.containsKey('result')
              ? GooglePrivacyDlpV2Result.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestedOptions != null) 'requestedOptions': requestedOptions!,
        if (result != null) 'result': result!,
      };
}

/// Controls what and how to inspect for findings.
class GooglePrivacyDlpV2InspectJobConfig {
  /// Actions to execute at the completion of the job.
  core.List<GooglePrivacyDlpV2Action>? actions;

  /// How and what to scan for.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// If provided, will be used as the default for all values in InspectConfig.
  ///
  /// `inspect_config` will be merged into the values persisted as part of the
  /// template.
  core.String? inspectTemplateName;

  /// The data to scan.
  GooglePrivacyDlpV2StorageConfig? storageConfig;

  GooglePrivacyDlpV2InspectJobConfig({
    this.actions,
    this.inspectConfig,
    this.inspectTemplateName,
    this.storageConfig,
  });

  GooglePrivacyDlpV2InspectJobConfig.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: json_.containsKey('inspectTemplateName')
              ? json_['inspectTemplateName'] as core.String
              : null,
          storageConfig: json_.containsKey('storageConfig')
              ? GooglePrivacyDlpV2StorageConfig.fromJson(
                  json_['storageConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (inspectTemplateName != null)
          'inspectTemplateName': inspectTemplateName!,
        if (storageConfig != null) 'storageConfig': storageConfig!,
      };
}

/// All the findings for a single scanned item.
class GooglePrivacyDlpV2InspectResult {
  /// List of findings for an item.
  core.List<GooglePrivacyDlpV2Finding>? findings;

  /// If true, then this item might have more findings than were returned, and
  /// the findings returned are an arbitrary subset of all findings.
  ///
  /// The findings list might be truncated because the input items were too
  /// large, or because the server reached the maximum amount of resources
  /// allowed for a single API call. For best results, divide the input into
  /// smaller batches.
  core.bool? findingsTruncated;

  GooglePrivacyDlpV2InspectResult({
    this.findings,
    this.findingsTruncated,
  });

  GooglePrivacyDlpV2InspectResult.fromJson(core.Map json_)
      : this(
          findings: json_.containsKey('findings')
              ? (json_['findings'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Finding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          findingsTruncated: json_.containsKey('findingsTruncated')
              ? json_['findingsTruncated'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (findings != null) 'findings': findings!,
        if (findingsTruncated != null) 'findingsTruncated': findingsTruncated!,
      };
}

/// The inspectTemplate contains a configuration (set of types of sensitive data
/// to be detected) to be used anywhere you otherwise would normally specify
/// InspectConfig.
///
/// See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-templates
/// to learn more.
class GooglePrivacyDlpV2InspectTemplate {
  /// The creation timestamp of an inspectTemplate.
  ///
  /// Output only.
  core.String? createTime;

  /// Short description (max 256 chars).
  core.String? description;

  /// Display name (max 256 chars).
  core.String? displayName;

  /// The core content of the template.
  ///
  /// Configuration of the scanning process.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// The template name.
  ///
  /// The template will have one of the following formats:
  /// `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR
  /// `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;
  ///
  /// Output only.
  core.String? name;

  /// The last update timestamp of an inspectTemplate.
  ///
  /// Output only.
  core.String? updateTime;

  GooglePrivacyDlpV2InspectTemplate({
    this.createTime,
    this.description,
    this.displayName,
    this.inspectConfig,
    this.name,
    this.updateTime,
  });

  GooglePrivacyDlpV2InspectTemplate.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A single inspection rule to be applied to infoTypes, specified in
/// `InspectionRuleSet`.
class GooglePrivacyDlpV2InspectionRule {
  /// Exclusion rule.
  GooglePrivacyDlpV2ExclusionRule? exclusionRule;

  /// Hotword-based detection rule.
  GooglePrivacyDlpV2HotwordRule? hotwordRule;

  GooglePrivacyDlpV2InspectionRule({
    this.exclusionRule,
    this.hotwordRule,
  });

  GooglePrivacyDlpV2InspectionRule.fromJson(core.Map json_)
      : this(
          exclusionRule: json_.containsKey('exclusionRule')
              ? GooglePrivacyDlpV2ExclusionRule.fromJson(
                  json_['exclusionRule'] as core.Map<core.String, core.dynamic>)
              : null,
          hotwordRule: json_.containsKey('hotwordRule')
              ? GooglePrivacyDlpV2HotwordRule.fromJson(
                  json_['hotwordRule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exclusionRule != null) 'exclusionRule': exclusionRule!,
        if (hotwordRule != null) 'hotwordRule': hotwordRule!,
      };
}

/// Rule set for modifying a set of infoTypes to alter behavior under certain
/// circumstances, depending on the specific details of the rules within the
/// set.
class GooglePrivacyDlpV2InspectionRuleSet {
  /// List of infoTypes this rule set is applied to.
  core.List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Set of rules to be applied to infoTypes.
  ///
  /// The rules are applied in order.
  core.List<GooglePrivacyDlpV2InspectionRule>? rules;

  GooglePrivacyDlpV2InspectionRuleSet({
    this.infoTypes,
    this.rules,
  });

  GooglePrivacyDlpV2InspectionRuleSet.fromJson(core.Map json_)
      : this(
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InspectionRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoTypes != null) 'infoTypes': infoTypes!,
        if (rules != null) 'rules': rules!,
      };
}

/// Sends an email when the job completes.
///
/// The email goes to IAM project owners and technical
/// [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).
typedef GooglePrivacyDlpV2JobNotificationEmails = $Empty;

/// Contains a configuration to make api calls on a repeating basis.
///
/// See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-job-triggers
/// to learn more.
class GooglePrivacyDlpV2JobTrigger {
  /// The creation timestamp of a triggeredJob.
  ///
  /// Output only.
  core.String? createTime;

  /// User provided description (max 256 chars)
  core.String? description;

  /// Display name (max 100 chars)
  core.String? displayName;

  /// A stream of errors encountered when the trigger was activated.
  ///
  /// Repeated errors may result in the JobTrigger automatically being paused.
  /// Will return the last 100 errors. Whenever the JobTrigger is modified this
  /// list will be cleared.
  ///
  /// Output only.
  core.List<GooglePrivacyDlpV2Error>? errors;

  /// For inspect jobs, a snapshot of the configuration.
  GooglePrivacyDlpV2InspectJobConfig? inspectJob;

  /// The timestamp of the last time this trigger executed.
  ///
  /// Output only.
  core.String? lastRunTime;

  /// Unique resource name for the triggeredJob, assigned by the service when
  /// the triggeredJob is created, for example
  /// `projects/dlp-test-project/jobTriggers/53234423`.
  core.String? name;

  /// A status for this trigger.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unused.
  /// - "HEALTHY" : Trigger is healthy.
  /// - "PAUSED" : Trigger is temporarily paused.
  /// - "CANCELLED" : Trigger is cancelled and can not be resumed.
  core.String? status;

  /// A list of triggers which will be OR'ed together.
  ///
  /// Only one in the list needs to trigger for a job to be started. The list
  /// may contain only a single Schedule trigger and must have at least one
  /// object.
  core.List<GooglePrivacyDlpV2Trigger>? triggers;

  /// The last update timestamp of a triggeredJob.
  ///
  /// Output only.
  core.String? updateTime;

  GooglePrivacyDlpV2JobTrigger({
    this.createTime,
    this.description,
    this.displayName,
    this.errors,
    this.inspectJob,
    this.lastRunTime,
    this.name,
    this.status,
    this.triggers,
    this.updateTime,
  });

  GooglePrivacyDlpV2JobTrigger.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectJob: json_.containsKey('inspectJob')
              ? GooglePrivacyDlpV2InspectJobConfig.fromJson(
                  json_['inspectJob'] as core.Map<core.String, core.dynamic>)
              : null,
          lastRunTime: json_.containsKey('lastRunTime')
              ? json_['lastRunTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          triggers: json_.containsKey('triggers')
              ? (json_['triggers'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (errors != null) 'errors': errors!,
        if (inspectJob != null) 'inspectJob': inspectJob!,
        if (lastRunTime != null) 'lastRunTime': lastRunTime!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (triggers != null) 'triggers': triggers!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// k-anonymity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2KAnonymityConfig {
  /// Message indicating that multiple rows might be associated to a single
  /// individual.
  ///
  /// If the same entity_id is associated to multiple quasi-identifier tuples
  /// over distinct rows, we consider the entire collection of tuples as the
  /// composite quasi-identifier. This collection is a multiset: the order in
  /// which the different tuples appear in the dataset is ignored, but their
  /// frequency is taken into account. Important note: a maximum of 1000 rows
  /// can be associated to a single entity ID. If more rows are associated with
  /// the same entity ID, some might be ignored.
  GooglePrivacyDlpV2EntityId? entityId;

  /// Set of fields to compute k-anonymity over.
  ///
  /// When multiple fields are specified, they are considered a single composite
  /// key. Structs and repeated data types are not supported; however, nested
  /// fields are supported so long as they are not structs themselves or nested
  /// within a repeated field.
  core.List<GooglePrivacyDlpV2FieldId>? quasiIds;

  GooglePrivacyDlpV2KAnonymityConfig({
    this.entityId,
    this.quasiIds,
  });

  GooglePrivacyDlpV2KAnonymityConfig.fromJson(core.Map json_)
      : this(
          entityId: json_.containsKey('entityId')
              ? GooglePrivacyDlpV2EntityId.fromJson(
                  json_['entityId'] as core.Map<core.String, core.dynamic>)
              : null,
          quasiIds: json_.containsKey('quasiIds')
              ? (json_['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityId != null) 'entityId': entityId!,
        if (quasiIds != null) 'quasiIds': quasiIds!,
      };
}

/// The set of columns' values that share the same ldiversity value
class GooglePrivacyDlpV2KAnonymityEquivalenceClass {
  /// Size of the equivalence class, for example number of rows with the above
  /// set of values.
  core.String? equivalenceClassSize;

  /// Set of values defining the equivalence class.
  ///
  /// One value per quasi-identifier column in the original KAnonymity metric
  /// message. The order is always the same as the original request.
  core.List<GooglePrivacyDlpV2Value>? quasiIdsValues;

  GooglePrivacyDlpV2KAnonymityEquivalenceClass({
    this.equivalenceClassSize,
    this.quasiIdsValues,
  });

  GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(core.Map json_)
      : this(
          equivalenceClassSize: json_.containsKey('equivalenceClassSize')
              ? json_['equivalenceClassSize'] as core.String
              : null,
          quasiIdsValues: json_.containsKey('quasiIdsValues')
              ? (json_['quasiIdsValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (equivalenceClassSize != null)
          'equivalenceClassSize': equivalenceClassSize!,
        if (quasiIdsValues != null) 'quasiIdsValues': quasiIdsValues!,
      };
}

/// Histogram of k-anonymity equivalence classes.
class GooglePrivacyDlpV2KAnonymityHistogramBucket {
  /// Total number of equivalence classes in this bucket.
  core.String? bucketSize;

  /// Total number of distinct equivalence classes in this bucket.
  core.String? bucketValueCount;

  /// Sample of equivalence classes in this bucket.
  ///
  /// The total number of classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2KAnonymityEquivalenceClass>? bucketValues;

  /// Lower bound on the size of the equivalence classes in this bucket.
  core.String? equivalenceClassSizeLowerBound;

  /// Upper bound on the size of the equivalence classes in this bucket.
  core.String? equivalenceClassSizeUpperBound;

  GooglePrivacyDlpV2KAnonymityHistogramBucket({
    this.bucketSize,
    this.bucketValueCount,
    this.bucketValues,
    this.equivalenceClassSizeLowerBound,
    this.equivalenceClassSizeUpperBound,
  });

  GooglePrivacyDlpV2KAnonymityHistogramBucket.fromJson(core.Map json_)
      : this(
          bucketSize: json_.containsKey('bucketSize')
              ? json_['bucketSize'] as core.String
              : null,
          bucketValueCount: json_.containsKey('bucketValueCount')
              ? json_['bucketValueCount'] as core.String
              : null,
          bucketValues: json_.containsKey('bucketValues')
              ? (json_['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          equivalenceClassSizeLowerBound:
              json_.containsKey('equivalenceClassSizeLowerBound')
                  ? json_['equivalenceClassSizeLowerBound'] as core.String
                  : null,
          equivalenceClassSizeUpperBound:
              json_.containsKey('equivalenceClassSizeUpperBound')
                  ? json_['equivalenceClassSizeUpperBound'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (bucketValueCount != null) 'bucketValueCount': bucketValueCount!,
        if (bucketValues != null) 'bucketValues': bucketValues!,
        if (equivalenceClassSizeLowerBound != null)
          'equivalenceClassSizeLowerBound': equivalenceClassSizeLowerBound!,
        if (equivalenceClassSizeUpperBound != null)
          'equivalenceClassSizeUpperBound': equivalenceClassSizeUpperBound!,
      };
}

/// Result of the k-anonymity computation.
class GooglePrivacyDlpV2KAnonymityResult {
  /// Histogram of k-anonymity equivalence classes.
  core.List<GooglePrivacyDlpV2KAnonymityHistogramBucket>?
      equivalenceClassHistogramBuckets;

  GooglePrivacyDlpV2KAnonymityResult({
    this.equivalenceClassHistogramBuckets,
  });

  GooglePrivacyDlpV2KAnonymityResult.fromJson(core.Map json_)
      : this(
          equivalenceClassHistogramBuckets:
              json_.containsKey('equivalenceClassHistogramBuckets')
                  ? (json_['equivalenceClassHistogramBuckets'] as core.List)
                      .map((value) =>
                          GooglePrivacyDlpV2KAnonymityHistogramBucket.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (equivalenceClassHistogramBuckets != null)
          'equivalenceClassHistogramBuckets': equivalenceClassHistogramBuckets!,
      };
}

/// Reidentifiability metric.
///
/// This corresponds to a risk model similar to what is called "journalist risk"
/// in the literature, except the attack dataset is statistically modeled
/// instead of being perfectly known. This can be done using publicly available
/// data (like the US Census), or using a custom statistical model (indicated as
/// one or several BigQuery tables), or by extrapolating from the distribution
/// of values in the input dataset.
class GooglePrivacyDlpV2KMapEstimationConfig {
  /// Several auxiliary tables can be used in the analysis.
  ///
  /// Each custom_tag used to tag a quasi-identifiers column must appear in
  /// exactly one column of one auxiliary table.
  core.List<GooglePrivacyDlpV2AuxiliaryTable>? auxiliaryTables;

  /// Fields considered to be quasi-identifiers.
  ///
  /// No two columns can have the same tag.
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2TaggedField>? quasiIds;

  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling.
  ///
  /// Set if no column is tagged with a region-specific InfoType (like US_ZIP_5)
  /// or a region code.
  core.String? regionCode;

  GooglePrivacyDlpV2KMapEstimationConfig({
    this.auxiliaryTables,
    this.quasiIds,
    this.regionCode,
  });

  GooglePrivacyDlpV2KMapEstimationConfig.fromJson(core.Map json_)
      : this(
          auxiliaryTables: json_.containsKey('auxiliaryTables')
              ? (json_['auxiliaryTables'] as core.List)
                  .map((value) => GooglePrivacyDlpV2AuxiliaryTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quasiIds: json_.containsKey('quasiIds')
              ? (json_['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2TaggedField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auxiliaryTables != null) 'auxiliaryTables': auxiliaryTables!,
        if (quasiIds != null) 'quasiIds': quasiIds!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// A KMapEstimationHistogramBucket message with the following values:
/// min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42
/// records whose quasi-identifier values correspond to 3, 4 or 5 people in the
/// overlying population.
///
/// An important particular case is when min_anonymity = max_anonymity = 1: the
/// frequency field then corresponds to the number of uniquely identifiable
/// records.
class GooglePrivacyDlpV2KMapEstimationHistogramBucket {
  /// Number of records within these anonymity bounds.
  core.String? bucketSize;

  /// Total number of distinct quasi-identifier tuple values in this bucket.
  core.String? bucketValueCount;

  /// Sample of quasi-identifier tuple values in this bucket.
  ///
  /// The total number of classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2KMapEstimationQuasiIdValues>? bucketValues;

  /// Always greater than or equal to min_anonymity.
  core.String? maxAnonymity;

  /// Always positive.
  core.String? minAnonymity;

  GooglePrivacyDlpV2KMapEstimationHistogramBucket({
    this.bucketSize,
    this.bucketValueCount,
    this.bucketValues,
    this.maxAnonymity,
    this.minAnonymity,
  });

  GooglePrivacyDlpV2KMapEstimationHistogramBucket.fromJson(core.Map json_)
      : this(
          bucketSize: json_.containsKey('bucketSize')
              ? json_['bucketSize'] as core.String
              : null,
          bucketValueCount: json_.containsKey('bucketValueCount')
              ? json_['bucketValueCount'] as core.String
              : null,
          bucketValues: json_.containsKey('bucketValues')
              ? (json_['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxAnonymity: json_.containsKey('maxAnonymity')
              ? json_['maxAnonymity'] as core.String
              : null,
          minAnonymity: json_.containsKey('minAnonymity')
              ? json_['minAnonymity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (bucketValueCount != null) 'bucketValueCount': bucketValueCount!,
        if (bucketValues != null) 'bucketValues': bucketValues!,
        if (maxAnonymity != null) 'maxAnonymity': maxAnonymity!,
        if (minAnonymity != null) 'minAnonymity': minAnonymity!,
      };
}

/// A tuple of values for the quasi-identifier columns.
class GooglePrivacyDlpV2KMapEstimationQuasiIdValues {
  /// The estimated anonymity for these quasi-identifier values.
  core.String? estimatedAnonymity;

  /// The quasi-identifier values.
  core.List<GooglePrivacyDlpV2Value>? quasiIdsValues;

  GooglePrivacyDlpV2KMapEstimationQuasiIdValues({
    this.estimatedAnonymity,
    this.quasiIdsValues,
  });

  GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(core.Map json_)
      : this(
          estimatedAnonymity: json_.containsKey('estimatedAnonymity')
              ? json_['estimatedAnonymity'] as core.String
              : null,
          quasiIdsValues: json_.containsKey('quasiIdsValues')
              ? (json_['quasiIdsValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedAnonymity != null)
          'estimatedAnonymity': estimatedAnonymity!,
        if (quasiIdsValues != null) 'quasiIdsValues': quasiIdsValues!,
      };
}

/// Result of the reidentifiability analysis.
///
/// Note that these results are an estimation, not exact values.
class GooglePrivacyDlpV2KMapEstimationResult {
  /// The intervals \[min_anonymity, max_anonymity\] do not overlap.
  ///
  /// If a value doesn't correspond to any such interval, the associated
  /// frequency is zero. For example, the following records: {min_anonymity: 1,
  /// max_anonymity: 1, frequency: 17} {min_anonymity: 2, max_anonymity: 3,
  /// frequency: 42} {min_anonymity: 5, max_anonymity: 10, frequency: 99} mean
  /// that there are no record with an estimated anonymity of 4, 5, or larger
  /// than 10.
  core.List<GooglePrivacyDlpV2KMapEstimationHistogramBucket>?
      kMapEstimationHistogram;

  GooglePrivacyDlpV2KMapEstimationResult({
    this.kMapEstimationHistogram,
  });

  GooglePrivacyDlpV2KMapEstimationResult.fromJson(core.Map json_)
      : this(
          kMapEstimationHistogram: json_.containsKey('kMapEstimationHistogram')
              ? (json_['kMapEstimationHistogram'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2KMapEstimationHistogramBucket.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kMapEstimationHistogram != null)
          'kMapEstimationHistogram': kMapEstimationHistogram!,
      };
}

/// A unique identifier for a Datastore entity.
///
/// If a key's partition ID or any of its path kinds or names are
/// reserved/read-only, the key is reserved/read-only. A reserved/read-only key
/// is forbidden in certain documented contexts.
class GooglePrivacyDlpV2Key {
  /// Entities are partitioned into subsets, currently identified by a project
  /// ID and namespace ID.
  ///
  /// Queries are scoped to a single partition.
  GooglePrivacyDlpV2PartitionId? partitionId;

  /// The entity path.
  ///
  /// An entity path consists of one or more elements composed of a kind and a
  /// string or numerical identifier, which identify entities. The first element
  /// identifies a _root entity_, the second element identifies a _child_ of the
  /// root entity, the third element identifies a child of the second entity,
  /// and so forth. The entities identified by all prefixes of the path are
  /// called the element's _ancestors_. A path can never be empty, and a path
  /// can have at most 100 elements.
  core.List<GooglePrivacyDlpV2PathElement>? path;

  GooglePrivacyDlpV2Key({
    this.partitionId,
    this.path,
  });

  GooglePrivacyDlpV2Key.fromJson(core.Map json_)
      : this(
          partitionId: json_.containsKey('partitionId')
              ? GooglePrivacyDlpV2PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_.containsKey('path')
              ? (json_['path'] as core.List)
                  .map((value) => GooglePrivacyDlpV2PathElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionId != null) 'partitionId': partitionId!,
        if (path != null) 'path': path!,
      };
}

/// A representation of a Datastore kind.
typedef GooglePrivacyDlpV2KindExpression = $KindExpression;

/// Include to use an existing data crypto key wrapped by KMS.
///
/// The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires
/// the following IAM permissions when sending a request to perform a crypto
/// transformation using a KMS-wrapped crypto key: dlp.kms.encrypt For more
/// information, see
/// [Creating a wrapped key](https://cloud.google.com/sensitive-data-protection/docs/create-wrapped-key).
/// Note: When you use Cloud KMS for cryptographic operations,
/// [charges apply](https://cloud.google.com/kms/pricing).
class GooglePrivacyDlpV2KmsWrappedCryptoKey {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  ///
  /// Required.
  core.String? cryptoKeyName;

  /// The wrapped data crypto key.
  ///
  /// Required.
  core.String? wrappedKey;
  core.List<core.int> get wrappedKeyAsBytes =>
      convert.base64.decode(wrappedKey!);

  set wrappedKeyAsBytes(core.List<core.int> bytes_) {
    wrappedKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GooglePrivacyDlpV2KmsWrappedCryptoKey({
    this.cryptoKeyName,
    this.wrappedKey,
  });

  GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(core.Map json_)
      : this(
          cryptoKeyName: json_.containsKey('cryptoKeyName')
              ? json_['cryptoKeyName'] as core.String
              : null,
          wrappedKey: json_.containsKey('wrappedKey')
              ? json_['wrappedKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
        if (wrappedKey != null) 'wrappedKey': wrappedKey!,
      };
}

/// l-diversity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2LDiversityConfig {
  /// Set of quasi-identifiers indicating how equivalence classes are defined
  /// for the l-diversity computation.
  ///
  /// When multiple fields are specified, they are considered a single composite
  /// key.
  core.List<GooglePrivacyDlpV2FieldId>? quasiIds;

  /// Sensitive field for computing the l-value.
  GooglePrivacyDlpV2FieldId? sensitiveAttribute;

  GooglePrivacyDlpV2LDiversityConfig({
    this.quasiIds,
    this.sensitiveAttribute,
  });

  GooglePrivacyDlpV2LDiversityConfig.fromJson(core.Map json_)
      : this(
          quasiIds: json_.containsKey('quasiIds')
              ? (json_['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sensitiveAttribute: json_.containsKey('sensitiveAttribute')
              ? GooglePrivacyDlpV2FieldId.fromJson(json_['sensitiveAttribute']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quasiIds != null) 'quasiIds': quasiIds!,
        if (sensitiveAttribute != null)
          'sensitiveAttribute': sensitiveAttribute!,
      };
}

/// The set of columns' values that share the same ldiversity value.
class GooglePrivacyDlpV2LDiversityEquivalenceClass {
  /// Size of the k-anonymity equivalence class.
  core.String? equivalenceClassSize;

  /// Number of distinct sensitive values in this equivalence class.
  core.String? numDistinctSensitiveValues;

  /// Quasi-identifier values defining the k-anonymity equivalence class.
  ///
  /// The order is always the same as the original request.
  core.List<GooglePrivacyDlpV2Value>? quasiIdsValues;

  /// Estimated frequencies of top sensitive values.
  core.List<GooglePrivacyDlpV2ValueFrequency>? topSensitiveValues;

  GooglePrivacyDlpV2LDiversityEquivalenceClass({
    this.equivalenceClassSize,
    this.numDistinctSensitiveValues,
    this.quasiIdsValues,
    this.topSensitiveValues,
  });

  GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(core.Map json_)
      : this(
          equivalenceClassSize: json_.containsKey('equivalenceClassSize')
              ? json_['equivalenceClassSize'] as core.String
              : null,
          numDistinctSensitiveValues:
              json_.containsKey('numDistinctSensitiveValues')
                  ? json_['numDistinctSensitiveValues'] as core.String
                  : null,
          quasiIdsValues: json_.containsKey('quasiIdsValues')
              ? (json_['quasiIdsValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          topSensitiveValues: json_.containsKey('topSensitiveValues')
              ? (json_['topSensitiveValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ValueFrequency.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (equivalenceClassSize != null)
          'equivalenceClassSize': equivalenceClassSize!,
        if (numDistinctSensitiveValues != null)
          'numDistinctSensitiveValues': numDistinctSensitiveValues!,
        if (quasiIdsValues != null) 'quasiIdsValues': quasiIdsValues!,
        if (topSensitiveValues != null)
          'topSensitiveValues': topSensitiveValues!,
      };
}

/// Histogram of l-diversity equivalence class sensitive value frequencies.
class GooglePrivacyDlpV2LDiversityHistogramBucket {
  /// Total number of equivalence classes in this bucket.
  core.String? bucketSize;

  /// Total number of distinct equivalence classes in this bucket.
  core.String? bucketValueCount;

  /// Sample of equivalence classes in this bucket.
  ///
  /// The total number of classes returned per bucket is capped at 20.
  core.List<GooglePrivacyDlpV2LDiversityEquivalenceClass>? bucketValues;

  /// Lower bound on the sensitive value frequencies of the equivalence classes
  /// in this bucket.
  core.String? sensitiveValueFrequencyLowerBound;

  /// Upper bound on the sensitive value frequencies of the equivalence classes
  /// in this bucket.
  core.String? sensitiveValueFrequencyUpperBound;

  GooglePrivacyDlpV2LDiversityHistogramBucket({
    this.bucketSize,
    this.bucketValueCount,
    this.bucketValues,
    this.sensitiveValueFrequencyLowerBound,
    this.sensitiveValueFrequencyUpperBound,
  });

  GooglePrivacyDlpV2LDiversityHistogramBucket.fromJson(core.Map json_)
      : this(
          bucketSize: json_.containsKey('bucketSize')
              ? json_['bucketSize'] as core.String
              : null,
          bucketValueCount: json_.containsKey('bucketValueCount')
              ? json_['bucketValueCount'] as core.String
              : null,
          bucketValues: json_.containsKey('bucketValues')
              ? (json_['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sensitiveValueFrequencyLowerBound:
              json_.containsKey('sensitiveValueFrequencyLowerBound')
                  ? json_['sensitiveValueFrequencyLowerBound'] as core.String
                  : null,
          sensitiveValueFrequencyUpperBound:
              json_.containsKey('sensitiveValueFrequencyUpperBound')
                  ? json_['sensitiveValueFrequencyUpperBound'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketSize != null) 'bucketSize': bucketSize!,
        if (bucketValueCount != null) 'bucketValueCount': bucketValueCount!,
        if (bucketValues != null) 'bucketValues': bucketValues!,
        if (sensitiveValueFrequencyLowerBound != null)
          'sensitiveValueFrequencyLowerBound':
              sensitiveValueFrequencyLowerBound!,
        if (sensitiveValueFrequencyUpperBound != null)
          'sensitiveValueFrequencyUpperBound':
              sensitiveValueFrequencyUpperBound!,
      };
}

/// Result of the l-diversity computation.
class GooglePrivacyDlpV2LDiversityResult {
  /// Histogram of l-diversity equivalence class sensitive value frequencies.
  core.List<GooglePrivacyDlpV2LDiversityHistogramBucket>?
      sensitiveValueFrequencyHistogramBuckets;

  GooglePrivacyDlpV2LDiversityResult({
    this.sensitiveValueFrequencyHistogramBuckets,
  });

  GooglePrivacyDlpV2LDiversityResult.fromJson(core.Map json_)
      : this(
          sensitiveValueFrequencyHistogramBuckets: json_
                  .containsKey('sensitiveValueFrequencyHistogramBuckets')
              ? (json_['sensitiveValueFrequencyHistogramBuckets'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2LDiversityHistogramBucket.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sensitiveValueFrequencyHistogramBuckets != null)
          'sensitiveValueFrequencyHistogramBuckets':
              sensitiveValueFrequencyHistogramBuckets!,
      };
}

/// Configuration for a custom dictionary created from a data source of any size
/// up to the maximum size defined in the
/// [limits](https://cloud.google.com/sensitive-data-protection/limits) page.
///
/// The artifacts of dictionary creation are stored in the specified Cloud
/// Storage location. Consider using `CustomInfoType.Dictionary` for smaller
/// dictionaries that satisfy the size requirements.
class GooglePrivacyDlpV2LargeCustomDictionaryConfig {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  GooglePrivacyDlpV2BigQueryField? bigQueryField;

  /// Set of files containing newline-delimited lists of dictionary phrases.
  GooglePrivacyDlpV2CloudStorageFileSet? cloudStorageFileSet;

  /// Location to store dictionary artifacts in Cloud Storage.
  ///
  /// These files will only be accessible by project owners and the DLP API. If
  /// any of these artifacts are modified, the dictionary is considered invalid
  /// and can no longer be used.
  GooglePrivacyDlpV2CloudStoragePath? outputPath;

  GooglePrivacyDlpV2LargeCustomDictionaryConfig({
    this.bigQueryField,
    this.cloudStorageFileSet,
    this.outputPath,
  });

  GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(core.Map json_)
      : this(
          bigQueryField: json_.containsKey('bigQueryField')
              ? GooglePrivacyDlpV2BigQueryField.fromJson(
                  json_['bigQueryField'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudStorageFileSet: json_.containsKey('cloudStorageFileSet')
              ? GooglePrivacyDlpV2CloudStorageFileSet.fromJson(
                  json_['cloudStorageFileSet']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outputPath: json_.containsKey('outputPath')
              ? GooglePrivacyDlpV2CloudStoragePath.fromJson(
                  json_['outputPath'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryField != null) 'bigQueryField': bigQueryField!,
        if (cloudStorageFileSet != null)
          'cloudStorageFileSet': cloudStorageFileSet!,
        if (outputPath != null) 'outputPath': outputPath!,
      };
}

/// Summary statistics of a custom dictionary.
class GooglePrivacyDlpV2LargeCustomDictionaryStats {
  /// Approximate number of distinct phrases in the dictionary.
  core.String? approxNumPhrases;

  GooglePrivacyDlpV2LargeCustomDictionaryStats({
    this.approxNumPhrases,
  });

  GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(core.Map json_)
      : this(
          approxNumPhrases: json_.containsKey('approxNumPhrases')
              ? json_['approxNumPhrases'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approxNumPhrases != null) 'approxNumPhrases': approxNumPhrases!,
      };
}

/// Skips the data without modifying it if the requested transformation would
/// cause an error.
///
/// For example, if a `DateShift` transformation were applied an an IP address,
/// this mode would leave the IP address unchanged in the response.
typedef GooglePrivacyDlpV2LeaveUntransformed = $Empty;

/// Message for specifying an adjustment to the likelihood of a finding as part
/// of a detection rule.
class GooglePrivacyDlpV2LikelihoodAdjustment {
  /// Set the likelihood of a finding to a fixed value.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; same as POSSIBLE.
  /// - "VERY_UNLIKELY" : Highest chance of a false positive.
  /// - "UNLIKELY" : High chance of a false positive.
  /// - "POSSIBLE" : Some matching signals. The default value.
  /// - "LIKELY" : Low chance of a false positive.
  /// - "VERY_LIKELY" : Confidence level is high. Lowest chance of a false
  /// positive.
  core.String? fixedLikelihood;

  /// Increase or decrease the likelihood by the specified number of levels.
  ///
  /// For example, if a finding would be `POSSIBLE` without the detection rule
  /// and `relative_likelihood` is 1, then it is upgraded to `LIKELY`, while a
  /// value of -1 would downgrade it to `UNLIKELY`. Likelihood may never drop
  /// below `VERY_UNLIKELY` or exceed `VERY_LIKELY`, so applying an adjustment
  /// of 1 followed by an adjustment of -1 when base likelihood is `VERY_LIKELY`
  /// will result in a final likelihood of `LIKELY`.
  core.int? relativeLikelihood;

  GooglePrivacyDlpV2LikelihoodAdjustment({
    this.fixedLikelihood,
    this.relativeLikelihood,
  });

  GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(core.Map json_)
      : this(
          fixedLikelihood: json_.containsKey('fixedLikelihood')
              ? json_['fixedLikelihood'] as core.String
              : null,
          relativeLikelihood: json_.containsKey('relativeLikelihood')
              ? json_['relativeLikelihood'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedLikelihood != null) 'fixedLikelihood': fixedLikelihood!,
        if (relativeLikelihood != null)
          'relativeLikelihood': relativeLikelihood!,
      };
}

/// List of profiles generated for a given organization or project.
class GooglePrivacyDlpV2ListColumnDataProfilesResponse {
  /// List of data profiles.
  core.List<GooglePrivacyDlpV2ColumnDataProfile>? columnDataProfiles;

  /// The next page token.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListColumnDataProfilesResponse({
    this.columnDataProfiles,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListColumnDataProfilesResponse.fromJson(core.Map json_)
      : this(
          columnDataProfiles: json_.containsKey('columnDataProfiles')
              ? (json_['columnDataProfiles'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ColumnDataProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnDataProfiles != null)
          'columnDataProfiles': columnDataProfiles!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListConnections.
class GooglePrivacyDlpV2ListConnectionsResponse {
  /// List of connections.
  core.List<GooglePrivacyDlpV2Connection>? connections;

  /// Token to retrieve the next page of results.
  ///
  /// An empty value means there are no more results.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListConnectionsResponse.fromJson(core.Map json_)
      : this(
          connections: json_.containsKey('connections')
              ? (json_['connections'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Connection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListDeidentifyTemplates.
class GooglePrivacyDlpV2ListDeidentifyTemplatesResponse {
  /// List of deidentify templates, up to page_size in
  /// ListDeidentifyTemplatesRequest.
  core.List<GooglePrivacyDlpV2DeidentifyTemplate>? deidentifyTemplates;

  /// If the next page is available then the next page token to be used in the
  /// following ListDeidentifyTemplates request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse({
    this.deidentifyTemplates,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(core.Map json_)
      : this(
          deidentifyTemplates: json_.containsKey('deidentifyTemplates')
              ? (json_['deidentifyTemplates'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplates != null)
          'deidentifyTemplates': deidentifyTemplates!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListDiscoveryConfigs.
class GooglePrivacyDlpV2ListDiscoveryConfigsResponse {
  /// List of configs, up to page_size in ListDiscoveryConfigsRequest.
  core.List<GooglePrivacyDlpV2DiscoveryConfig>? discoveryConfigs;

  /// If the next page is available then this value is the next page token to be
  /// used in the following ListDiscoveryConfigs request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListDiscoveryConfigsResponse({
    this.discoveryConfigs,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListDiscoveryConfigsResponse.fromJson(core.Map json_)
      : this(
          discoveryConfigs: json_.containsKey('discoveryConfigs')
              ? (json_['discoveryConfigs'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DiscoveryConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (discoveryConfigs != null) 'discoveryConfigs': discoveryConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for listing DLP jobs.
class GooglePrivacyDlpV2ListDlpJobsResponse {
  /// A list of DlpJobs that matches the specified filter in the request.
  core.List<GooglePrivacyDlpV2DlpJob>? jobs;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListDlpJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DlpJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response to the ListInfoTypes request.
class GooglePrivacyDlpV2ListInfoTypesResponse {
  /// Set of sensitive infoTypes.
  core.List<GooglePrivacyDlpV2InfoTypeDescription>? infoTypes;

  GooglePrivacyDlpV2ListInfoTypesResponse({
    this.infoTypes,
  });

  GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(core.Map json_)
      : this(
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2InfoTypeDescription.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoTypes != null) 'infoTypes': infoTypes!,
      };
}

/// Response message for ListInspectTemplates.
class GooglePrivacyDlpV2ListInspectTemplatesResponse {
  /// List of inspectTemplates, up to page_size in ListInspectTemplatesRequest.
  core.List<GooglePrivacyDlpV2InspectTemplate>? inspectTemplates;

  /// If the next page is available then the next page token to be used in the
  /// following ListInspectTemplates request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListInspectTemplatesResponse({
    this.inspectTemplates,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(core.Map json_)
      : this(
          inspectTemplates: json_.containsKey('inspectTemplates')
              ? (json_['inspectTemplates'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InspectTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectTemplates != null) 'inspectTemplates': inspectTemplates!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListJobTriggers.
class GooglePrivacyDlpV2ListJobTriggersResponse {
  /// List of triggeredJobs, up to page_size in ListJobTriggersRequest.
  core.List<GooglePrivacyDlpV2JobTrigger>? jobTriggers;

  /// If the next page is available then this value is the next page token to be
  /// used in the following ListJobTriggers request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListJobTriggersResponse({
    this.jobTriggers,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(core.Map json_)
      : this(
          jobTriggers: json_.containsKey('jobTriggers')
              ? (json_['jobTriggers'] as core.List)
                  .map((value) => GooglePrivacyDlpV2JobTrigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobTriggers != null) 'jobTriggers': jobTriggers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List of profiles generated for a given organization or project.
class GooglePrivacyDlpV2ListProjectDataProfilesResponse {
  /// The next page token.
  core.String? nextPageToken;

  /// List of data profiles.
  core.List<GooglePrivacyDlpV2ProjectDataProfile>? projectDataProfiles;

  GooglePrivacyDlpV2ListProjectDataProfilesResponse({
    this.nextPageToken,
    this.projectDataProfiles,
  });

  GooglePrivacyDlpV2ListProjectDataProfilesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          projectDataProfiles: json_.containsKey('projectDataProfiles')
              ? (json_['projectDataProfiles'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ProjectDataProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projectDataProfiles != null)
          'projectDataProfiles': projectDataProfiles!,
      };
}

/// Response message for ListStoredInfoTypes.
class GooglePrivacyDlpV2ListStoredInfoTypesResponse {
  /// If the next page is available then the next page token to be used in the
  /// following ListStoredInfoTypes request.
  core.String? nextPageToken;

  /// List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest.
  core.List<GooglePrivacyDlpV2StoredInfoType>? storedInfoTypes;

  GooglePrivacyDlpV2ListStoredInfoTypesResponse({
    this.nextPageToken,
    this.storedInfoTypes,
  });

  GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          storedInfoTypes: json_.containsKey('storedInfoTypes')
              ? (json_['storedInfoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2StoredInfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (storedInfoTypes != null) 'storedInfoTypes': storedInfoTypes!,
      };
}

/// List of profiles generated for a given organization or project.
class GooglePrivacyDlpV2ListTableDataProfilesResponse {
  /// The next page token.
  core.String? nextPageToken;

  /// List of data profiles.
  core.List<GooglePrivacyDlpV2TableDataProfile>? tableDataProfiles;

  GooglePrivacyDlpV2ListTableDataProfilesResponse({
    this.nextPageToken,
    this.tableDataProfiles,
  });

  GooglePrivacyDlpV2ListTableDataProfilesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tableDataProfiles: json_.containsKey('tableDataProfiles')
              ? (json_['tableDataProfiles'] as core.List)
                  .map((value) => GooglePrivacyDlpV2TableDataProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tableDataProfiles != null) 'tableDataProfiles': tableDataProfiles!,
      };
}

/// Specifies the location of the finding.
class GooglePrivacyDlpV2Location {
  /// Zero-based byte offsets delimiting the finding.
  ///
  /// These are relative to the finding's containing element. Note that when the
  /// content is not textual, this references the UTF-8 encoded textual
  /// representation of the content. Omitted if content is an image.
  GooglePrivacyDlpV2Range? byteRange;

  /// Unicode character offsets delimiting the finding.
  ///
  /// These are relative to the finding's containing element. Provided when the
  /// content is text.
  GooglePrivacyDlpV2Range? codepointRange;

  /// Information about the container where this finding occurred, if available.
  GooglePrivacyDlpV2Container? container;

  /// List of nested objects pointing to the precise location of the finding
  /// within the file or record.
  core.List<GooglePrivacyDlpV2ContentLocation>? contentLocations;

  GooglePrivacyDlpV2Location({
    this.byteRange,
    this.codepointRange,
    this.container,
    this.contentLocations,
  });

  GooglePrivacyDlpV2Location.fromJson(core.Map json_)
      : this(
          byteRange: json_.containsKey('byteRange')
              ? GooglePrivacyDlpV2Range.fromJson(
                  json_['byteRange'] as core.Map<core.String, core.dynamic>)
              : null,
          codepointRange: json_.containsKey('codepointRange')
              ? GooglePrivacyDlpV2Range.fromJson(json_['codepointRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          container: json_.containsKey('container')
              ? GooglePrivacyDlpV2Container.fromJson(
                  json_['container'] as core.Map<core.String, core.dynamic>)
              : null,
          contentLocations: json_.containsKey('contentLocations')
              ? (json_['contentLocations'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ContentLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteRange != null) 'byteRange': byteRange!,
        if (codepointRange != null) 'codepointRange': codepointRange!,
        if (container != null) 'container': container!,
        if (contentLocations != null) 'contentLocations': contentLocations!,
      };
}

/// Job trigger option for hybrid jobs.
///
/// Jobs must be manually created and finished.
typedef GooglePrivacyDlpV2Manual = $Empty;

/// Metadata Location
class GooglePrivacyDlpV2MetadataLocation {
  /// Storage metadata.
  GooglePrivacyDlpV2StorageMetadataLabel? storageLabel;

  /// Type of metadata containing the finding.
  /// Possible string values are:
  /// - "METADATATYPE_UNSPECIFIED" : Unused
  /// - "STORAGE_METADATA" : General file metadata provided by Cloud Storage.
  core.String? type;

  GooglePrivacyDlpV2MetadataLocation({
    this.storageLabel,
    this.type,
  });

  GooglePrivacyDlpV2MetadataLocation.fromJson(core.Map json_)
      : this(
          storageLabel: json_.containsKey('storageLabel')
              ? GooglePrivacyDlpV2StorageMetadataLabel.fromJson(
                  json_['storageLabel'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (storageLabel != null) 'storageLabel': storageLabel!,
        if (type != null) 'type': type!,
      };
}

/// Compute numerical stats over an individual column, including min, max, and
/// quantiles.
class GooglePrivacyDlpV2NumericalStatsConfig {
  /// Field to compute numerical stats on.
  ///
  /// Supported types are integer, float, date, datetime, timestamp, time.
  GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2NumericalStatsConfig({
    this.field,
  });

  GooglePrivacyDlpV2NumericalStatsConfig.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// Result of the numerical stats computation.
class GooglePrivacyDlpV2NumericalStatsResult {
  /// Maximum value appearing in the column.
  GooglePrivacyDlpV2Value? maxValue;

  /// Minimum value appearing in the column.
  GooglePrivacyDlpV2Value? minValue;

  /// List of 99 values that partition the set of field values into 100 equal
  /// sized buckets.
  core.List<GooglePrivacyDlpV2Value>? quantileValues;

  GooglePrivacyDlpV2NumericalStatsResult({
    this.maxValue,
    this.minValue,
    this.quantileValues,
  });

  GooglePrivacyDlpV2NumericalStatsResult.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: json_.containsKey('minValue')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['minValue'] as core.Map<core.String, core.dynamic>)
              : null,
          quantileValues: json_.containsKey('quantileValues')
              ? (json_['quantileValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (quantileValues != null) 'quantileValues': quantileValues!,
      };
}

/// There is an OR relationship between these attributes.
///
/// They are used to determine if a table should be scanned or not in Discovery.
class GooglePrivacyDlpV2OrConditions {
  /// Minimum age a table must have before Cloud DLP can profile it.
  ///
  /// Value must be 1 hour or greater.
  core.String? minAge;

  /// Minimum number of rows that should be present before Cloud DLP profiles a
  /// table
  core.int? minRowCount;

  GooglePrivacyDlpV2OrConditions({
    this.minAge,
    this.minRowCount,
  });

  GooglePrivacyDlpV2OrConditions.fromJson(core.Map json_)
      : this(
          minAge: json_.containsKey('minAge')
              ? json_['minAge'] as core.String
              : null,
          minRowCount: json_.containsKey('minRowCount')
              ? json_['minRowCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minAge != null) 'minAge': minAge!,
        if (minRowCount != null) 'minRowCount': minRowCount!,
      };
}

/// Project and scan location information.
///
/// Only set when the parent is an org.
class GooglePrivacyDlpV2OrgConfig {
  /// The data to scan: folder, org, or project
  GooglePrivacyDlpV2DiscoveryStartingLocation? location;

  /// The project that will run the scan.
  ///
  /// The DLP service account that exists within this project must have access
  /// to all resources that are profiled, and the Cloud DLP API must be enabled.
  core.String? projectId;

  GooglePrivacyDlpV2OrgConfig({
    this.location,
    this.projectId,
  });

  GooglePrivacyDlpV2OrgConfig.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? GooglePrivacyDlpV2DiscoveryStartingLocation.fromJson(
                  json_['location'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Infotype details for other infoTypes found within a column.
class GooglePrivacyDlpV2OtherInfoTypeSummary {
  /// Approximate percentage of non-null rows that contained data detected by
  /// this infotype.
  core.int? estimatedPrevalence;

  /// Whether this infoType was excluded from sensitivity and risk analysis due
  /// to factors such as low prevalence (subject to change).
  core.bool? excludedFromAnalysis;

  /// The other infoType.
  GooglePrivacyDlpV2InfoType? infoType;

  GooglePrivacyDlpV2OtherInfoTypeSummary({
    this.estimatedPrevalence,
    this.excludedFromAnalysis,
    this.infoType,
  });

  GooglePrivacyDlpV2OtherInfoTypeSummary.fromJson(core.Map json_)
      : this(
          estimatedPrevalence: json_.containsKey('estimatedPrevalence')
              ? json_['estimatedPrevalence'] as core.int
              : null,
          excludedFromAnalysis: json_.containsKey('excludedFromAnalysis')
              ? json_['excludedFromAnalysis'] as core.bool
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedPrevalence != null)
          'estimatedPrevalence': estimatedPrevalence!,
        if (excludedFromAnalysis != null)
          'excludedFromAnalysis': excludedFromAnalysis!,
        if (infoType != null) 'infoType': infoType!,
      };
}

/// Cloud repository for storing output.
class GooglePrivacyDlpV2OutputStorageConfig {
  /// Schema used for writing the findings for Inspect jobs.
  ///
  /// This field is only used for Inspect and must be unspecified for Risk jobs.
  /// Columns are derived from the `Finding` object. If appending to an existing
  /// table, any columns from the predefined schema that are missing will be
  /// added. No columns in the existing table will be deleted. If unspecified,
  /// then all available columns will be used for a new table or an (existing)
  /// table with no schema, and no changes will be made to an existing table
  /// that has a schema. Only for use with external storage.
  /// Possible string values are:
  /// - "OUTPUT_SCHEMA_UNSPECIFIED" : Unused.
  /// - "BASIC_COLUMNS" : Basic schema including only `info_type`, `quote`,
  /// `certainty`, and `timestamp`.
  /// - "GCS_COLUMNS" : Schema tailored to findings from scanning Cloud Storage.
  /// - "DATASTORE_COLUMNS" : Schema tailored to findings from scanning Google
  /// Datastore.
  /// - "BIG_QUERY_COLUMNS" : Schema tailored to findings from scanning Google
  /// BigQuery.
  /// - "ALL_COLUMNS" : Schema containing all columns.
  core.String? outputSchema;

  /// Store findings in an existing table or a new table in an existing dataset.
  ///
  /// If table_id is not set a new one will be generated for you with the
  /// following format: dlp_googleapis_yyyy_mm_dd_\[dlp_job_id\]. Pacific time
  /// zone will be used for generating the date details. For Inspect, each
  /// column in an existing output table must have the same name, type, and mode
  /// of a field in the `Finding` object. For Risk, an existing output table
  /// should be the output of a previous Risk analysis job run on the same
  /// source table, with the same privacy metric and quasi-identifiers. Risk
  /// jobs that analyze the same table but compute a different privacy metric,
  /// or use different sets of quasi-identifiers, cannot store their results in
  /// the same table.
  GooglePrivacyDlpV2BigQueryTable? table;

  GooglePrivacyDlpV2OutputStorageConfig({
    this.outputSchema,
    this.table,
  });

  GooglePrivacyDlpV2OutputStorageConfig.fromJson(core.Map json_)
      : this(
          outputSchema: json_.containsKey('outputSchema')
              ? json_['outputSchema'] as core.String
              : null,
          table: json_.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputSchema != null) 'outputSchema': outputSchema!,
        if (table != null) 'table': table!,
      };
}

/// Datastore partition ID.
///
/// A partition ID identifies a grouping of entities. The grouping is always by
/// project and namespace, however the namespace ID may be empty. A partition ID
/// contains several dimensions: project ID and namespace ID.
class GooglePrivacyDlpV2PartitionId {
  /// If not empty, the ID of the namespace to which the entities belong.
  core.String? namespaceId;

  /// The ID of the project to which the entities belong.
  core.String? projectId;

  GooglePrivacyDlpV2PartitionId({
    this.namespaceId,
    this.projectId,
  });

  GooglePrivacyDlpV2PartitionId.fromJson(core.Map json_)
      : this(
          namespaceId: json_.containsKey('namespaceId')
              ? json_['namespaceId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namespaceId != null) 'namespaceId': namespaceId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete. If neither is set, the
/// element is incomplete.
class GooglePrivacyDlpV2PathElement {
  /// The auto-allocated ID of the entity.
  ///
  /// Never equal to zero. Values less than zero are discouraged and may not be
  /// supported in the future.
  core.String? id;

  /// The kind of the entity.
  ///
  /// A kind matching regex `__.*__` is reserved/read-only. A kind must not
  /// contain more than 1500 bytes when UTF-8 encoded. Cannot be `""`.
  core.String? kind;

  /// The name of the entity.
  ///
  /// A name matching regex `__.*__` is reserved/read-only. A name must not be
  /// more than 1500 bytes when UTF-8 encoded. Cannot be `""`.
  core.String? name;

  GooglePrivacyDlpV2PathElement({
    this.id,
    this.kind,
    this.name,
  });

  GooglePrivacyDlpV2PathElement.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// A rule for transforming a value.
class GooglePrivacyDlpV2PrimitiveTransformation {
  /// Bucketing
  GooglePrivacyDlpV2BucketingConfig? bucketingConfig;

  /// Mask
  GooglePrivacyDlpV2CharacterMaskConfig? characterMaskConfig;

  /// Deterministic Crypto
  GooglePrivacyDlpV2CryptoDeterministicConfig? cryptoDeterministicConfig;

  /// Crypto
  GooglePrivacyDlpV2CryptoHashConfig? cryptoHashConfig;

  /// Ffx-Fpe
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig? cryptoReplaceFfxFpeConfig;

  /// Date Shift
  GooglePrivacyDlpV2DateShiftConfig? dateShiftConfig;

  /// Fixed size bucketing
  GooglePrivacyDlpV2FixedSizeBucketingConfig? fixedSizeBucketingConfig;

  /// Redact
  GooglePrivacyDlpV2RedactConfig? redactConfig;

  /// Replace with a specified value.
  GooglePrivacyDlpV2ReplaceValueConfig? replaceConfig;

  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  GooglePrivacyDlpV2ReplaceDictionaryConfig? replaceDictionaryConfig;

  /// Replace with infotype
  GooglePrivacyDlpV2ReplaceWithInfoTypeConfig? replaceWithInfoTypeConfig;

  /// Time extraction
  GooglePrivacyDlpV2TimePartConfig? timePartConfig;

  GooglePrivacyDlpV2PrimitiveTransformation({
    this.bucketingConfig,
    this.characterMaskConfig,
    this.cryptoDeterministicConfig,
    this.cryptoHashConfig,
    this.cryptoReplaceFfxFpeConfig,
    this.dateShiftConfig,
    this.fixedSizeBucketingConfig,
    this.redactConfig,
    this.replaceConfig,
    this.replaceDictionaryConfig,
    this.replaceWithInfoTypeConfig,
    this.timePartConfig,
  });

  GooglePrivacyDlpV2PrimitiveTransformation.fromJson(core.Map json_)
      : this(
          bucketingConfig: json_.containsKey('bucketingConfig')
              ? GooglePrivacyDlpV2BucketingConfig.fromJson(
                  json_['bucketingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          characterMaskConfig: json_.containsKey('characterMaskConfig')
              ? GooglePrivacyDlpV2CharacterMaskConfig.fromJson(
                  json_['characterMaskConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cryptoDeterministicConfig:
              json_.containsKey('cryptoDeterministicConfig')
                  ? GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(
                      json_['cryptoDeterministicConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          cryptoHashConfig: json_.containsKey('cryptoHashConfig')
              ? GooglePrivacyDlpV2CryptoHashConfig.fromJson(
                  json_['cryptoHashConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cryptoReplaceFfxFpeConfig:
              json_.containsKey('cryptoReplaceFfxFpeConfig')
                  ? GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(
                      json_['cryptoReplaceFfxFpeConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          dateShiftConfig: json_.containsKey('dateShiftConfig')
              ? GooglePrivacyDlpV2DateShiftConfig.fromJson(
                  json_['dateShiftConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fixedSizeBucketingConfig:
              json_.containsKey('fixedSizeBucketingConfig')
                  ? GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(
                      json_['fixedSizeBucketingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          redactConfig: json_.containsKey('redactConfig')
              ? GooglePrivacyDlpV2RedactConfig.fromJson(
                  json_['redactConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          replaceConfig: json_.containsKey('replaceConfig')
              ? GooglePrivacyDlpV2ReplaceValueConfig.fromJson(
                  json_['replaceConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          replaceDictionaryConfig: json_.containsKey('replaceDictionaryConfig')
              ? GooglePrivacyDlpV2ReplaceDictionaryConfig.fromJson(
                  json_['replaceDictionaryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          replaceWithInfoTypeConfig:
              json_.containsKey('replaceWithInfoTypeConfig')
                  ? GooglePrivacyDlpV2ReplaceWithInfoTypeConfig.fromJson(
                      json_['replaceWithInfoTypeConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          timePartConfig: json_.containsKey('timePartConfig')
              ? GooglePrivacyDlpV2TimePartConfig.fromJson(
                  json_['timePartConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketingConfig != null) 'bucketingConfig': bucketingConfig!,
        if (characterMaskConfig != null)
          'characterMaskConfig': characterMaskConfig!,
        if (cryptoDeterministicConfig != null)
          'cryptoDeterministicConfig': cryptoDeterministicConfig!,
        if (cryptoHashConfig != null) 'cryptoHashConfig': cryptoHashConfig!,
        if (cryptoReplaceFfxFpeConfig != null)
          'cryptoReplaceFfxFpeConfig': cryptoReplaceFfxFpeConfig!,
        if (dateShiftConfig != null) 'dateShiftConfig': dateShiftConfig!,
        if (fixedSizeBucketingConfig != null)
          'fixedSizeBucketingConfig': fixedSizeBucketingConfig!,
        if (redactConfig != null) 'redactConfig': redactConfig!,
        if (replaceConfig != null) 'replaceConfig': replaceConfig!,
        if (replaceDictionaryConfig != null)
          'replaceDictionaryConfig': replaceDictionaryConfig!,
        if (replaceWithInfoTypeConfig != null)
          'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig!,
        if (timePartConfig != null) 'timePartConfig': timePartConfig!,
      };
}

/// Privacy metric to compute for reidentification risk analysis.
class GooglePrivacyDlpV2PrivacyMetric {
  /// Categorical stats
  GooglePrivacyDlpV2CategoricalStatsConfig? categoricalStatsConfig;

  /// delta-presence
  GooglePrivacyDlpV2DeltaPresenceEstimationConfig?
      deltaPresenceEstimationConfig;

  /// K-anonymity
  GooglePrivacyDlpV2KAnonymityConfig? kAnonymityConfig;

  /// k-map
  GooglePrivacyDlpV2KMapEstimationConfig? kMapEstimationConfig;

  /// l-diversity
  GooglePrivacyDlpV2LDiversityConfig? lDiversityConfig;

  /// Numerical stats
  GooglePrivacyDlpV2NumericalStatsConfig? numericalStatsConfig;

  GooglePrivacyDlpV2PrivacyMetric({
    this.categoricalStatsConfig,
    this.deltaPresenceEstimationConfig,
    this.kAnonymityConfig,
    this.kMapEstimationConfig,
    this.lDiversityConfig,
    this.numericalStatsConfig,
  });

  GooglePrivacyDlpV2PrivacyMetric.fromJson(core.Map json_)
      : this(
          categoricalStatsConfig: json_.containsKey('categoricalStatsConfig')
              ? GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(
                  json_['categoricalStatsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deltaPresenceEstimationConfig:
              json_.containsKey('deltaPresenceEstimationConfig')
                  ? GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(
                      json_['deltaPresenceEstimationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kAnonymityConfig: json_.containsKey('kAnonymityConfig')
              ? GooglePrivacyDlpV2KAnonymityConfig.fromJson(
                  json_['kAnonymityConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kMapEstimationConfig: json_.containsKey('kMapEstimationConfig')
              ? GooglePrivacyDlpV2KMapEstimationConfig.fromJson(
                  json_['kMapEstimationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lDiversityConfig: json_.containsKey('lDiversityConfig')
              ? GooglePrivacyDlpV2LDiversityConfig.fromJson(
                  json_['lDiversityConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          numericalStatsConfig: json_.containsKey('numericalStatsConfig')
              ? GooglePrivacyDlpV2NumericalStatsConfig.fromJson(
                  json_['numericalStatsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoricalStatsConfig != null)
          'categoricalStatsConfig': categoricalStatsConfig!,
        if (deltaPresenceEstimationConfig != null)
          'deltaPresenceEstimationConfig': deltaPresenceEstimationConfig!,
        if (kAnonymityConfig != null) 'kAnonymityConfig': kAnonymityConfig!,
        if (kMapEstimationConfig != null)
          'kMapEstimationConfig': kMapEstimationConfig!,
        if (lDiversityConfig != null) 'lDiversityConfig': lDiversityConfig!,
        if (numericalStatsConfig != null)
          'numericalStatsConfig': numericalStatsConfig!,
      };
}

/// Success or errors for the profile generation.
class GooglePrivacyDlpV2ProfileStatus {
  /// Profiling status code and optional message.
  ///
  /// The `status.code` value is 0 (default value) for OK.
  GoogleRpcStatus? status;

  /// Time when the profile generation status was updated
  core.String? timestamp;

  GooglePrivacyDlpV2ProfileStatus({
    this.status,
    this.timestamp,
  });

  GooglePrivacyDlpV2ProfileStatus.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          timestamp: json_.containsKey('timestamp')
              ? json_['timestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (timestamp != null) 'timestamp': timestamp!,
      };
}

/// An aggregated profile for this project, based on the resources profiled
/// within it.
class GooglePrivacyDlpV2ProjectDataProfile {
  /// The data risk level of this project.
  GooglePrivacyDlpV2DataRiskLevel? dataRiskLevel;

  /// The resource name of the profile.
  core.String? name;

  /// The last time the profile was generated.
  core.String? profileLastGenerated;

  /// Success or error status of the last attempt to profile the project.
  GooglePrivacyDlpV2ProfileStatus? profileStatus;

  /// Project ID that was profiled.
  core.String? projectId;

  /// The sensitivity score of this project.
  GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  GooglePrivacyDlpV2ProjectDataProfile({
    this.dataRiskLevel,
    this.name,
    this.profileLastGenerated,
    this.profileStatus,
    this.projectId,
    this.sensitivityScore,
  });

  GooglePrivacyDlpV2ProjectDataProfile.fromJson(core.Map json_)
      : this(
          dataRiskLevel: json_.containsKey('dataRiskLevel')
              ? GooglePrivacyDlpV2DataRiskLevel.fromJson(
                  json_['dataRiskLevel'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          profileLastGenerated: json_.containsKey('profileLastGenerated')
              ? json_['profileLastGenerated'] as core.String
              : null,
          profileStatus: json_.containsKey('profileStatus')
              ? GooglePrivacyDlpV2ProfileStatus.fromJson(
                  json_['profileStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          sensitivityScore: json_.containsKey('sensitivityScore')
              ? GooglePrivacyDlpV2SensitivityScore.fromJson(
                  json_['sensitivityScore']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRiskLevel != null) 'dataRiskLevel': dataRiskLevel!,
        if (name != null) 'name': name!,
        if (profileLastGenerated != null)
          'profileLastGenerated': profileLastGenerated!,
        if (profileStatus != null) 'profileStatus': profileStatus!,
        if (projectId != null) 'projectId': projectId!,
        if (sensitivityScore != null) 'sensitivityScore': sensitivityScore!,
      };
}

/// Message for specifying a window around a finding to apply a detection rule.
class GooglePrivacyDlpV2Proximity {
  /// Number of characters after the finding to consider.
  core.int? windowAfter;

  /// Number of characters before the finding to consider.
  ///
  /// For tabular data, if you want to modify the likelihood of an entire column
  /// of findngs, set this to 1. For more information, see \[Hotword example:
  /// Set the match likelihood of a table
  /// column\](https://cloud.google.com/sensitive-data-protection/docs/creating-custom-infotypes-likelihood#match-column-values).
  core.int? windowBefore;

  GooglePrivacyDlpV2Proximity({
    this.windowAfter,
    this.windowBefore,
  });

  GooglePrivacyDlpV2Proximity.fromJson(core.Map json_)
      : this(
          windowAfter: json_.containsKey('windowAfter')
              ? json_['windowAfter'] as core.int
              : null,
          windowBefore: json_.containsKey('windowBefore')
              ? json_['windowBefore'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (windowAfter != null) 'windowAfter': windowAfter!,
        if (windowBefore != null) 'windowBefore': windowBefore!,
      };
}

/// A condition consisting of a value.
class GooglePrivacyDlpV2PubSubCondition {
  /// The minimum data risk score that triggers the condition.
  /// Possible string values are:
  /// - "PROFILE_SCORE_BUCKET_UNSPECIFIED" : Unused.
  /// - "HIGH" : High risk/sensitivity detected.
  /// - "MEDIUM_OR_HIGH" : Medium or high risk/sensitivity detected.
  core.String? minimumRiskScore;

  /// The minimum sensitivity level that triggers the condition.
  /// Possible string values are:
  /// - "PROFILE_SCORE_BUCKET_UNSPECIFIED" : Unused.
  /// - "HIGH" : High risk/sensitivity detected.
  /// - "MEDIUM_OR_HIGH" : Medium or high risk/sensitivity detected.
  core.String? minimumSensitivityScore;

  GooglePrivacyDlpV2PubSubCondition({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  GooglePrivacyDlpV2PubSubCondition.fromJson(core.Map json_)
      : this(
          minimumRiskScore: json_.containsKey('minimumRiskScore')
              ? json_['minimumRiskScore'] as core.String
              : null,
          minimumSensitivityScore: json_.containsKey('minimumSensitivityScore')
              ? json_['minimumSensitivityScore'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minimumRiskScore != null) 'minimumRiskScore': minimumRiskScore!,
        if (minimumSensitivityScore != null)
          'minimumSensitivityScore': minimumSensitivityScore!,
      };
}

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2PubSubExpressions {
  /// Conditions to apply to the expression.
  core.List<GooglePrivacyDlpV2PubSubCondition>? conditions;

  /// The operator to apply to the collection of conditions.
  /// Possible string values are:
  /// - "LOGICAL_OPERATOR_UNSPECIFIED" : Unused.
  /// - "OR" : Conditional OR.
  /// - "AND" : Conditional AND.
  core.String? logicalOperator;

  GooglePrivacyDlpV2PubSubExpressions({
    this.conditions,
    this.logicalOperator,
  });

  GooglePrivacyDlpV2PubSubExpressions.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2PubSubCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          logicalOperator: json_.containsKey('logicalOperator')
              ? json_['logicalOperator'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
        if (logicalOperator != null) 'logicalOperator': logicalOperator!,
      };
}

/// Send a Pub/Sub message into the given Pub/Sub topic to connect other systems
/// to data profile generation.
///
/// The message payload data will be the byte serialization of
/// `DataProfilePubSubMessage`.
class GooglePrivacyDlpV2PubSubNotification {
  /// How much data to include in the Pub/Sub message.
  ///
  /// If the user wishes to limit the size of the message, they can use
  /// resource_name and fetch the profile fields they wish to. Per table profile
  /// (not per column).
  /// Possible string values are:
  /// - "DETAIL_LEVEL_UNSPECIFIED" : Unused.
  /// - "TABLE_PROFILE" : The full table data profile.
  /// - "RESOURCE_NAME" : The resource name of the table.
  core.String? detailOfMessage;

  /// The type of event that triggers a Pub/Sub.
  ///
  /// At most one `PubSubNotification` per EventType is permitted.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Unused.
  /// - "NEW_PROFILE" : New profile (not a re-profile).
  /// - "CHANGED_PROFILE" : Changed one of the following profile metrics: *
  /// Table data risk score * Table sensitivity score * Table resource
  /// visibility * Table encryption type * Table predicted infoTypes * Table
  /// other infoTypes
  /// - "SCORE_INCREASED" : Table data risk score or sensitivity score
  /// increased.
  /// - "ERROR_CHANGED" : A user (non-internal) error occurred.
  core.String? event;

  /// Conditions (e.g., data risk or sensitivity level) for triggering a
  /// Pub/Sub.
  GooglePrivacyDlpV2DataProfilePubSubCondition? pubsubCondition;

  /// Cloud Pub/Sub topic to send notifications to.
  ///
  /// Format is projects/{project}/topics/{topic}.
  core.String? topic;

  GooglePrivacyDlpV2PubSubNotification({
    this.detailOfMessage,
    this.event,
    this.pubsubCondition,
    this.topic,
  });

  GooglePrivacyDlpV2PubSubNotification.fromJson(core.Map json_)
      : this(
          detailOfMessage: json_.containsKey('detailOfMessage')
              ? json_['detailOfMessage'] as core.String
              : null,
          event:
              json_.containsKey('event') ? json_['event'] as core.String : null,
          pubsubCondition: json_.containsKey('pubsubCondition')
              ? GooglePrivacyDlpV2DataProfilePubSubCondition.fromJson(
                  json_['pubsubCondition']
                      as core.Map<core.String, core.dynamic>)
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detailOfMessage != null) 'detailOfMessage': detailOfMessage!,
        if (event != null) 'event': event!,
        if (pubsubCondition != null) 'pubsubCondition': pubsubCondition!,
        if (topic != null) 'topic': topic!,
      };
}

/// Publish findings of a DlpJob to Data Catalog.
///
/// In Data Catalog, tag templates are applied to the resource that Cloud DLP
/// scanned. Data Catalog tag templates are stored in the same project and
/// region where the BigQuery table exists. For Cloud DLP to create and apply
/// the tag template, the Cloud DLP service agent must have the
/// `roles/datacatalog.tagTemplateOwner` permission on the project. The tag
/// template contains fields summarizing the results of the DlpJob. Any field
/// values previously written by another DlpJob are deleted. InfoType naming
/// patterns are strictly enforced when using this feature. Findings are
/// persisted in Data Catalog storage and are governed by service-specific
/// policies for Data Catalog. For more information, see
/// [Service Specific Terms](https://cloud.google.com/terms/service-terms). Only
/// a single instance of this action can be specified. This action is allowed
/// only if all resources being scanned are BigQuery tables. Compatible with:
/// Inspect
typedef GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = $Empty;

/// Publish the result summary of a DlpJob to
/// [Security Command Center](https://cloud.google.com/security-command-center).
///
/// This action is available for only projects that belong to an organization.
/// This action publishes the count of finding instances and their infoTypes.
/// The summary of findings are persisted in Security Command Center and are
/// governed by \[service-specific policies for Security Command
/// Center\](https://cloud.google.com/terms/service-terms). Only a single
/// instance of this action can be specified. Compatible with: Inspect
typedef GooglePrivacyDlpV2PublishSummaryToCscc = $Empty;

/// Publish a message into a given Pub/Sub topic when DlpJob has completed.
///
/// The message contains a single field, `DlpJobName`, which is equal to the
/// finished job's
/// \[`DlpJob.name`\](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/projects.dlpJobs#DlpJob).
/// Compatible with: Inspect, Risk
class GooglePrivacyDlpV2PublishToPubSub {
  /// Cloud Pub/Sub topic to send notifications to.
  ///
  /// The topic must have given publishing access rights to the DLP API service
  /// account executing the long running DlpJob sending the notifications.
  /// Format is projects/{project}/topics/{topic}.
  core.String? topic;

  GooglePrivacyDlpV2PublishToPubSub({
    this.topic,
  });

  GooglePrivacyDlpV2PublishToPubSub.fromJson(core.Map json_)
      : this(
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Enable Stackdriver metric dlp.googleapis.com/finding_count.
///
/// This will publish a metric to stack driver on each infotype requested and
/// how many findings were found for it. CustomDetectors will be bucketed as
/// 'Custom' under the Stackdriver label 'info_type'.
typedef GooglePrivacyDlpV2PublishToStackdriver = $Empty;

/// A column with a semantic tag attached.
class GooglePrivacyDlpV2QuasiId {
  /// A column can be tagged with a custom tag.
  ///
  /// In this case, the user must indicate an auxiliary table that contains
  /// statistical information on the possible values of this column (below).
  core.String? customTag;

  /// Identifies the column.
  ///
  /// Required.
  GooglePrivacyDlpV2FieldId? field;

  /// If no semantic tag is indicated, we infer the statistical model from the
  /// distribution of values in the input data
  GoogleProtobufEmpty? inferred;

  /// A column can be tagged with a InfoType to use the relevant public dataset
  /// as a statistical model of population, if available.
  ///
  /// We currently support US ZIP codes, region codes, ages and genders. To
  /// programmatically obtain the list of supported InfoTypes, use ListInfoTypes
  /// with the supported_by=RISK_ANALYSIS filter.
  GooglePrivacyDlpV2InfoType? infoType;

  GooglePrivacyDlpV2QuasiId({
    this.customTag,
    this.field,
    this.inferred,
    this.infoType,
  });

  GooglePrivacyDlpV2QuasiId.fromJson(core.Map json_)
      : this(
          customTag: json_.containsKey('customTag')
              ? json_['customTag'] as core.String
              : null,
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          inferred: json_.containsKey('inferred')
              ? GoogleProtobufEmpty.fromJson(
                  json_['inferred'] as core.Map<core.String, core.dynamic>)
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customTag != null) 'customTag': customTag!,
        if (field != null) 'field': field!,
        if (inferred != null) 'inferred': inferred!,
        if (infoType != null) 'infoType': infoType!,
      };
}

/// A quasi-identifier column has a custom_tag, used to know which column in the
/// data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdField {
  /// A auxiliary field.
  core.String? customTag;

  /// Identifies the column.
  GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2QuasiIdField({
    this.customTag,
    this.field,
  });

  GooglePrivacyDlpV2QuasiIdField.fromJson(core.Map json_)
      : this(
          customTag: json_.containsKey('customTag')
              ? json_['customTag'] as core.String
              : null,
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customTag != null) 'customTag': customTag!,
        if (field != null) 'field': field!,
      };
}

/// A quasi-identifier column has a custom_tag, used to know which column in the
/// data corresponds to which column in the statistical model.
class GooglePrivacyDlpV2QuasiIdentifierField {
  /// A column can be tagged with a custom tag.
  ///
  /// In this case, the user must indicate an auxiliary table that contains
  /// statistical information on the possible values of this column (below).
  core.String? customTag;

  /// Identifies the column.
  GooglePrivacyDlpV2FieldId? field;

  GooglePrivacyDlpV2QuasiIdentifierField({
    this.customTag,
    this.field,
  });

  GooglePrivacyDlpV2QuasiIdentifierField.fromJson(core.Map json_)
      : this(
          customTag: json_.containsKey('customTag')
              ? json_['customTag'] as core.String
              : null,
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customTag != null) 'customTag': customTag!,
        if (field != null) 'field': field!,
      };
}

/// Message for infoType-dependent details parsed from quote.
class GooglePrivacyDlpV2QuoteInfo {
  /// The date time indicated by the quote.
  GooglePrivacyDlpV2DateTime? dateTime;

  GooglePrivacyDlpV2QuoteInfo({
    this.dateTime,
  });

  GooglePrivacyDlpV2QuoteInfo.fromJson(core.Map json_)
      : this(
          dateTime: json_.containsKey('dateTime')
              ? GooglePrivacyDlpV2DateTime.fromJson(
                  json_['dateTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTime != null) 'dateTime': dateTime!,
      };
}

/// Generic half-open interval \[start, end)
class GooglePrivacyDlpV2Range {
  /// Index of the last character of the range (exclusive).
  core.String? end;

  /// Index of the first character of the range (inclusive).
  core.String? start;

  GooglePrivacyDlpV2Range({
    this.end,
    this.start,
  });

  GooglePrivacyDlpV2Range.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end') ? json_['end'] as core.String : null,
          start:
              json_.containsKey('start') ? json_['start'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// A condition for determining whether a transformation should be applied to a
/// field.
class GooglePrivacyDlpV2RecordCondition {
  /// An expression.
  GooglePrivacyDlpV2Expressions? expressions;

  GooglePrivacyDlpV2RecordCondition({
    this.expressions,
  });

  GooglePrivacyDlpV2RecordCondition.fromJson(core.Map json_)
      : this(
          expressions: json_.containsKey('expressions')
              ? GooglePrivacyDlpV2Expressions.fromJson(
                  json_['expressions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expressions != null) 'expressions': expressions!,
      };
}

/// Message for a unique key indicating a record that contains a finding.
class GooglePrivacyDlpV2RecordKey {
  /// Datastore key
  GooglePrivacyDlpV2BigQueryKey? bigQueryKey;

  /// BigQuery key
  GooglePrivacyDlpV2DatastoreKey? datastoreKey;

  /// Values of identifying columns in the given row.
  ///
  /// Order of values matches the order of `identifying_fields` specified in the
  /// scanning request.
  core.List<core.String>? idValues;

  GooglePrivacyDlpV2RecordKey({
    this.bigQueryKey,
    this.datastoreKey,
    this.idValues,
  });

  GooglePrivacyDlpV2RecordKey.fromJson(core.Map json_)
      : this(
          bigQueryKey: json_.containsKey('bigQueryKey')
              ? GooglePrivacyDlpV2BigQueryKey.fromJson(
                  json_['bigQueryKey'] as core.Map<core.String, core.dynamic>)
              : null,
          datastoreKey: json_.containsKey('datastoreKey')
              ? GooglePrivacyDlpV2DatastoreKey.fromJson(
                  json_['datastoreKey'] as core.Map<core.String, core.dynamic>)
              : null,
          idValues: json_.containsKey('idValues')
              ? (json_['idValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryKey != null) 'bigQueryKey': bigQueryKey!,
        if (datastoreKey != null) 'datastoreKey': datastoreKey!,
        if (idValues != null) 'idValues': idValues!,
      };
}

/// Location of a finding within a row or record.
class GooglePrivacyDlpV2RecordLocation {
  /// Field id of the field containing the finding.
  GooglePrivacyDlpV2FieldId? fieldId;

  /// Key of the finding.
  GooglePrivacyDlpV2RecordKey? recordKey;

  /// Location within a `ContentItem.Table`.
  GooglePrivacyDlpV2TableLocation? tableLocation;

  GooglePrivacyDlpV2RecordLocation({
    this.fieldId,
    this.recordKey,
    this.tableLocation,
  });

  GooglePrivacyDlpV2RecordLocation.fromJson(core.Map json_)
      : this(
          fieldId: json_.containsKey('fieldId')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['fieldId'] as core.Map<core.String, core.dynamic>)
              : null,
          recordKey: json_.containsKey('recordKey')
              ? GooglePrivacyDlpV2RecordKey.fromJson(
                  json_['recordKey'] as core.Map<core.String, core.dynamic>)
              : null,
          tableLocation: json_.containsKey('tableLocation')
              ? GooglePrivacyDlpV2TableLocation.fromJson(
                  json_['tableLocation'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (recordKey != null) 'recordKey': recordKey!,
        if (tableLocation != null) 'tableLocation': tableLocation!,
      };
}

/// Configuration to suppress records whose suppression conditions evaluate to
/// true.
class GooglePrivacyDlpV2RecordSuppression {
  /// A condition that when it evaluates to true will result in the record being
  /// evaluated to be suppressed from the transformed content.
  GooglePrivacyDlpV2RecordCondition? condition;

  GooglePrivacyDlpV2RecordSuppression({
    this.condition,
  });

  GooglePrivacyDlpV2RecordSuppression.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? GooglePrivacyDlpV2RecordCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
      };
}

/// A type of transformation that is applied over structured data such as a
/// table.
class GooglePrivacyDlpV2RecordTransformations {
  /// Transform the record by applying various field transformations.
  core.List<GooglePrivacyDlpV2FieldTransformation>? fieldTransformations;

  /// Configuration defining which records get suppressed entirely.
  ///
  /// Records that match any suppression rule are omitted from the output.
  core.List<GooglePrivacyDlpV2RecordSuppression>? recordSuppressions;

  GooglePrivacyDlpV2RecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  GooglePrivacyDlpV2RecordTransformations.fromJson(core.Map json_)
      : this(
          fieldTransformations: json_.containsKey('fieldTransformations')
              ? (json_['fieldTransformations'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2FieldTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          recordSuppressions: json_.containsKey('recordSuppressions')
              ? (json_['recordSuppressions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2RecordSuppression.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldTransformations != null)
          'fieldTransformations': fieldTransformations!,
        if (recordSuppressions != null)
          'recordSuppressions': recordSuppressions!,
      };
}

/// Redact a given value.
///
/// For example, if used with an `InfoTypeTransformation` transforming
/// PHONE_NUMBER, and input 'My phone number is 206-555-0123', the output would
/// be 'My phone number is '.
typedef GooglePrivacyDlpV2RedactConfig = $Empty;

/// Request to search for potentially sensitive info in an image and redact it
/// by covering it with a colored rectangle.
class GooglePrivacyDlpV2RedactImageRequest {
  /// The content must be PNG, JPEG, SVG or BMP.
  GooglePrivacyDlpV2ByteContentItem? byteItem;

  /// The configuration for specifying what content to redact from images.
  core.List<GooglePrivacyDlpV2ImageRedactionConfig>? imageRedactionConfigs;

  /// Whether the response should include findings along with the redacted
  /// image.
  core.bool? includeFindings;

  /// Configuration for the inspector.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  GooglePrivacyDlpV2RedactImageRequest({
    this.byteItem,
    this.imageRedactionConfigs,
    this.includeFindings,
    this.inspectConfig,
    this.locationId,
  });

  GooglePrivacyDlpV2RedactImageRequest.fromJson(core.Map json_)
      : this(
          byteItem: json_.containsKey('byteItem')
              ? GooglePrivacyDlpV2ByteContentItem.fromJson(
                  json_['byteItem'] as core.Map<core.String, core.dynamic>)
              : null,
          imageRedactionConfigs: json_.containsKey('imageRedactionConfigs')
              ? (json_['imageRedactionConfigs'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2ImageRedactionConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includeFindings: json_.containsKey('includeFindings')
              ? json_['includeFindings'] as core.bool
              : null,
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteItem != null) 'byteItem': byteItem!,
        if (imageRedactionConfigs != null)
          'imageRedactionConfigs': imageRedactionConfigs!,
        if (includeFindings != null) 'includeFindings': includeFindings!,
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (locationId != null) 'locationId': locationId!,
      };
}

/// Results of redacting an image.
class GooglePrivacyDlpV2RedactImageResponse {
  /// If an image was being inspected and the InspectConfig's include_quote was
  /// set to true, then this field will include all text, if any, that was found
  /// in the image.
  core.String? extractedText;

  /// The findings.
  ///
  /// Populated when include_findings in the request is true.
  GooglePrivacyDlpV2InspectResult? inspectResult;

  /// The redacted image.
  ///
  /// The type will be the same as the original image.
  core.String? redactedImage;
  core.List<core.int> get redactedImageAsBytes =>
      convert.base64.decode(redactedImage!);

  set redactedImageAsBytes(core.List<core.int> bytes_) {
    redactedImage =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GooglePrivacyDlpV2RedactImageResponse({
    this.extractedText,
    this.inspectResult,
    this.redactedImage,
  });

  GooglePrivacyDlpV2RedactImageResponse.fromJson(core.Map json_)
      : this(
          extractedText: json_.containsKey('extractedText')
              ? json_['extractedText'] as core.String
              : null,
          inspectResult: json_.containsKey('inspectResult')
              ? GooglePrivacyDlpV2InspectResult.fromJson(
                  json_['inspectResult'] as core.Map<core.String, core.dynamic>)
              : null,
          redactedImage: json_.containsKey('redactedImage')
              ? json_['redactedImage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extractedText != null) 'extractedText': extractedText!,
        if (inspectResult != null) 'inspectResult': inspectResult!,
        if (redactedImage != null) 'redactedImage': redactedImage!,
      };
}

/// Message defining a custom regular expression.
class GooglePrivacyDlpV2Regex {
  /// The index of the submatch to extract as findings.
  ///
  /// When not specified, the entire match is returned. No more than 3 may be
  /// included.
  core.List<core.int>? groupIndexes;

  /// Pattern defining the regular expression.
  ///
  /// Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under
  /// the google/re2 repository on GitHub.
  core.String? pattern;

  GooglePrivacyDlpV2Regex({
    this.groupIndexes,
    this.pattern,
  });

  GooglePrivacyDlpV2Regex.fromJson(core.Map json_)
      : this(
          groupIndexes: json_.containsKey('groupIndexes')
              ? (json_['groupIndexes'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          pattern: json_.containsKey('pattern')
              ? json_['pattern'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupIndexes != null) 'groupIndexes': groupIndexes!,
        if (pattern != null) 'pattern': pattern!,
      };
}

/// Request to re-identify an item.
class GooglePrivacyDlpV2ReidentifyContentRequest {
  /// Configuration for the inspector.
  GooglePrivacyDlpV2InspectConfig? inspectConfig;

  /// Template to use.
  ///
  /// Any configuration directly specified in `inspect_config` will override
  /// those set in the template. Singular fields that are set in this request
  /// will replace their corresponding fields in the template. Repeated fields
  /// are appended. Singular sub-messages and groups are recursively merged.
  core.String? inspectTemplateName;

  /// The item to re-identify.
  ///
  /// Will be treated as text.
  GooglePrivacyDlpV2ContentItem? item;

  /// This field has no effect.
  ///
  /// Deprecated.
  core.String? locationId;

  /// Configuration for the re-identification of the content item.
  ///
  /// This field shares the same proto message type that is used for
  /// de-identification, however its usage here is for the reversal of the
  /// previous de-identification. Re-identification is performed by examining
  /// the transformations used to de-identify the items and executing the
  /// reverse. This requires that only reversible transformations be provided
  /// here. The reversible transformations are: - `CryptoDeterministicConfig` -
  /// `CryptoReplaceFfxFpeConfig`
  GooglePrivacyDlpV2DeidentifyConfig? reidentifyConfig;

  /// Template to use.
  ///
  /// References an instance of `DeidentifyTemplate`. Any configuration directly
  /// specified in `reidentify_config` or `inspect_config` will override those
  /// set in the template. The `DeidentifyTemplate` used must include only
  /// reversible transformations. Singular fields that are set in this request
  /// will replace their corresponding fields in the template. Repeated fields
  /// are appended. Singular sub-messages and groups are recursively merged.
  core.String? reidentifyTemplateName;

  GooglePrivacyDlpV2ReidentifyContentRequest({
    this.inspectConfig,
    this.inspectTemplateName,
    this.item,
    this.locationId,
    this.reidentifyConfig,
    this.reidentifyTemplateName,
  });

  GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(core.Map json_)
      : this(
          inspectConfig: json_.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  json_['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: json_.containsKey('inspectTemplateName')
              ? json_['inspectTemplateName'] as core.String
              : null,
          item: json_.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          reidentifyConfig: json_.containsKey('reidentifyConfig')
              ? GooglePrivacyDlpV2DeidentifyConfig.fromJson(
                  json_['reidentifyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          reidentifyTemplateName: json_.containsKey('reidentifyTemplateName')
              ? json_['reidentifyTemplateName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectConfig != null) 'inspectConfig': inspectConfig!,
        if (inspectTemplateName != null)
          'inspectTemplateName': inspectTemplateName!,
        if (item != null) 'item': item!,
        if (locationId != null) 'locationId': locationId!,
        if (reidentifyConfig != null) 'reidentifyConfig': reidentifyConfig!,
        if (reidentifyTemplateName != null)
          'reidentifyTemplateName': reidentifyTemplateName!,
      };
}

/// Results of re-identifying an item.
class GooglePrivacyDlpV2ReidentifyContentResponse {
  /// The re-identified item.
  GooglePrivacyDlpV2ContentItem? item;

  /// An overview of the changes that were made to the `item`.
  GooglePrivacyDlpV2TransformationOverview? overview;

  GooglePrivacyDlpV2ReidentifyContentResponse({
    this.item,
    this.overview,
  });

  GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(core.Map json_)
      : this(
          item: json_.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
          overview: json_.containsKey('overview')
              ? GooglePrivacyDlpV2TransformationOverview.fromJson(
                  json_['overview'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
        if (overview != null) 'overview': overview!,
      };
}

/// Replace each input value with a value randomly selected from the dictionary.
class GooglePrivacyDlpV2ReplaceDictionaryConfig {
  /// A list of words to select from for random replacement.
  ///
  /// The [limits](https://cloud.google.com/sensitive-data-protection/limits)
  /// page contains details about the size limits of dictionaries.
  GooglePrivacyDlpV2WordList? wordList;

  GooglePrivacyDlpV2ReplaceDictionaryConfig({
    this.wordList,
  });

  GooglePrivacyDlpV2ReplaceDictionaryConfig.fromJson(core.Map json_)
      : this(
          wordList: json_.containsKey('wordList')
              ? GooglePrivacyDlpV2WordList.fromJson(
                  json_['wordList'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (wordList != null) 'wordList': wordList!,
      };
}

/// Replace each input value with a given `Value`.
class GooglePrivacyDlpV2ReplaceValueConfig {
  /// Value to replace it with.
  GooglePrivacyDlpV2Value? newValue;

  GooglePrivacyDlpV2ReplaceValueConfig({
    this.newValue,
  });

  GooglePrivacyDlpV2ReplaceValueConfig.fromJson(core.Map json_)
      : this(
          newValue: json_.containsKey('newValue')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['newValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newValue != null) 'newValue': newValue!,
      };
}

/// Replace each matching finding with the name of the info_type.
typedef GooglePrivacyDlpV2ReplaceWithInfoTypeConfig = $Empty;

/// De-identification options.
class GooglePrivacyDlpV2RequestedDeidentifyOptions {
  /// Snapshot of the state of the `DeidentifyTemplate` from the Deidentify
  /// action at the time this job was run.
  GooglePrivacyDlpV2DeidentifyTemplate? snapshotDeidentifyTemplate;

  /// Snapshot of the state of the image transformation `DeidentifyTemplate`
  /// from the `Deidentify` action at the time this job was run.
  GooglePrivacyDlpV2DeidentifyTemplate? snapshotImageRedactTemplate;

  /// Snapshot of the state of the structured `DeidentifyTemplate` from the
  /// `Deidentify` action at the time this job was run.
  GooglePrivacyDlpV2DeidentifyTemplate? snapshotStructuredDeidentifyTemplate;

  GooglePrivacyDlpV2RequestedDeidentifyOptions({
    this.snapshotDeidentifyTemplate,
    this.snapshotImageRedactTemplate,
    this.snapshotStructuredDeidentifyTemplate,
  });

  GooglePrivacyDlpV2RequestedDeidentifyOptions.fromJson(core.Map json_)
      : this(
          snapshotDeidentifyTemplate:
              json_.containsKey('snapshotDeidentifyTemplate')
                  ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                      json_['snapshotDeidentifyTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          snapshotImageRedactTemplate:
              json_.containsKey('snapshotImageRedactTemplate')
                  ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                      json_['snapshotImageRedactTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          snapshotStructuredDeidentifyTemplate:
              json_.containsKey('snapshotStructuredDeidentifyTemplate')
                  ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                      json_['snapshotStructuredDeidentifyTemplate']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (snapshotDeidentifyTemplate != null)
          'snapshotDeidentifyTemplate': snapshotDeidentifyTemplate!,
        if (snapshotImageRedactTemplate != null)
          'snapshotImageRedactTemplate': snapshotImageRedactTemplate!,
        if (snapshotStructuredDeidentifyTemplate != null)
          'snapshotStructuredDeidentifyTemplate':
              snapshotStructuredDeidentifyTemplate!,
      };
}

/// Snapshot of the inspection configuration.
class GooglePrivacyDlpV2RequestedOptions {
  /// Inspect config.
  GooglePrivacyDlpV2InspectJobConfig? jobConfig;

  /// If run with an InspectTemplate, a snapshot of its state at the time of
  /// this run.
  GooglePrivacyDlpV2InspectTemplate? snapshotInspectTemplate;

  GooglePrivacyDlpV2RequestedOptions({
    this.jobConfig,
    this.snapshotInspectTemplate,
  });

  GooglePrivacyDlpV2RequestedOptions.fromJson(core.Map json_)
      : this(
          jobConfig: json_.containsKey('jobConfig')
              ? GooglePrivacyDlpV2InspectJobConfig.fromJson(
                  json_['jobConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          snapshotInspectTemplate: json_.containsKey('snapshotInspectTemplate')
              ? GooglePrivacyDlpV2InspectTemplate.fromJson(
                  json_['snapshotInspectTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobConfig != null) 'jobConfig': jobConfig!,
        if (snapshotInspectTemplate != null)
          'snapshotInspectTemplate': snapshotInspectTemplate!,
      };
}

/// Risk analysis options.
class GooglePrivacyDlpV2RequestedRiskAnalysisOptions {
  /// The job config for the risk job.
  GooglePrivacyDlpV2RiskAnalysisJobConfig? jobConfig;

  GooglePrivacyDlpV2RequestedRiskAnalysisOptions({
    this.jobConfig,
  });

  GooglePrivacyDlpV2RequestedRiskAnalysisOptions.fromJson(core.Map json_)
      : this(
          jobConfig: json_.containsKey('jobConfig')
              ? GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(
                  json_['jobConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobConfig != null) 'jobConfig': jobConfig!,
      };
}

/// All result fields mentioned below are updated while the job is processing.
class GooglePrivacyDlpV2Result {
  /// Statistics related to the processing of hybrid inspect.
  GooglePrivacyDlpV2HybridInspectStatistics? hybridStats;

  /// Statistics of how many instances of each info type were found during
  /// inspect job.
  core.List<GooglePrivacyDlpV2InfoTypeStats>? infoTypeStats;

  /// Total size in bytes that were processed.
  core.String? processedBytes;

  /// Estimate of the number of bytes to process.
  core.String? totalEstimatedBytes;

  GooglePrivacyDlpV2Result({
    this.hybridStats,
    this.infoTypeStats,
    this.processedBytes,
    this.totalEstimatedBytes,
  });

  GooglePrivacyDlpV2Result.fromJson(core.Map json_)
      : this(
          hybridStats: json_.containsKey('hybridStats')
              ? GooglePrivacyDlpV2HybridInspectStatistics.fromJson(
                  json_['hybridStats'] as core.Map<core.String, core.dynamic>)
              : null,
          infoTypeStats: json_.containsKey('infoTypeStats')
              ? (json_['infoTypeStats'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          processedBytes: json_.containsKey('processedBytes')
              ? json_['processedBytes'] as core.String
              : null,
          totalEstimatedBytes: json_.containsKey('totalEstimatedBytes')
              ? json_['totalEstimatedBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hybridStats != null) 'hybridStats': hybridStats!,
        if (infoTypeStats != null) 'infoTypeStats': infoTypeStats!,
        if (processedBytes != null) 'processedBytes': processedBytes!,
        if (totalEstimatedBytes != null)
          'totalEstimatedBytes': totalEstimatedBytes!,
      };
}

/// Configuration for a risk analysis job.
///
/// See
/// https://cloud.google.com/sensitive-data-protection/docs/concepts-risk-analysis
/// to learn more.
class GooglePrivacyDlpV2RiskAnalysisJobConfig {
  /// Actions to execute at the completion of the job.
  ///
  /// Are executed in the order provided.
  core.List<GooglePrivacyDlpV2Action>? actions;

  /// Privacy metric to compute.
  GooglePrivacyDlpV2PrivacyMetric? privacyMetric;

  /// Input dataset to compute metrics over.
  GooglePrivacyDlpV2BigQueryTable? sourceTable;

  GooglePrivacyDlpV2RiskAnalysisJobConfig({
    this.actions,
    this.privacyMetric,
    this.sourceTable,
  });

  GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          privacyMetric: json_.containsKey('privacyMetric')
              ? GooglePrivacyDlpV2PrivacyMetric.fromJson(
                  json_['privacyMetric'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceTable: json_.containsKey('sourceTable')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['sourceTable'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (privacyMetric != null) 'privacyMetric': privacyMetric!,
        if (sourceTable != null) 'sourceTable': sourceTable!,
      };
}

/// Values of the row.
class GooglePrivacyDlpV2Row {
  /// Individual cells.
  core.List<GooglePrivacyDlpV2Value>? values;

  GooglePrivacyDlpV2Row({
    this.values,
  });

  GooglePrivacyDlpV2Row.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// If set, the detailed findings will be persisted to the specified
/// OutputStorageConfig.
///
/// Only a single instance of this action can be specified. Compatible with:
/// Inspect, Risk
class GooglePrivacyDlpV2SaveFindings {
  /// Location to store findings outside of DLP.
  GooglePrivacyDlpV2OutputStorageConfig? outputConfig;

  GooglePrivacyDlpV2SaveFindings({
    this.outputConfig,
  });

  GooglePrivacyDlpV2SaveFindings.fromJson(core.Map json_)
      : this(
          outputConfig: json_.containsKey('outputConfig')
              ? GooglePrivacyDlpV2OutputStorageConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputConfig != null) 'outputConfig': outputConfig!,
      };
}

/// Schedule for inspect job triggers.
class GooglePrivacyDlpV2Schedule {
  /// With this option a job is started on a regular periodic basis.
  ///
  /// For example: every day (86400 seconds). A scheduled start time will be
  /// skipped if the previous execution has not ended when its scheduled time
  /// occurs. This value must be set to a time duration greater than or equal to
  /// 1 day and can be no longer than 60 days.
  core.String? recurrencePeriodDuration;

  GooglePrivacyDlpV2Schedule({
    this.recurrencePeriodDuration,
  });

  GooglePrivacyDlpV2Schedule.fromJson(core.Map json_)
      : this(
          recurrencePeriodDuration:
              json_.containsKey('recurrencePeriodDuration')
                  ? json_['recurrencePeriodDuration'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recurrencePeriodDuration != null)
          'recurrencePeriodDuration': recurrencePeriodDuration!,
      };
}

/// How frequency to modify the profile when the table's schema is modified.
class GooglePrivacyDlpV2SchemaModifiedCadence {
  /// Frequency to regenerate data profiles when the schema is modified.
  ///
  /// Defaults to monthly.
  /// Possible string values are:
  /// - "UPDATE_FREQUENCY_UNSPECIFIED" : Unspecified.
  /// - "UPDATE_FREQUENCY_NEVER" : After the data profile is created, it will
  /// never be updated.
  /// - "UPDATE_FREQUENCY_DAILY" : The data profile can be updated up to once
  /// every 24 hours.
  /// - "UPDATE_FREQUENCY_MONTHLY" : The data profile can be updated up to once
  /// every 30 days. Default.
  core.String? frequency;

  /// The types of schema modifications to consider.
  ///
  /// Defaults to NEW_COLUMNS.
  core.List<core.String>? types;

  GooglePrivacyDlpV2SchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  GooglePrivacyDlpV2SchemaModifiedCadence.fromJson(core.Map json_)
      : this(
          frequency: json_.containsKey('frequency')
              ? json_['frequency'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequency != null) 'frequency': frequency!,
        if (types != null) 'types': types!,
      };
}

/// Response message for SearchConnections.
class GooglePrivacyDlpV2SearchConnectionsResponse {
  /// List of connections that match the search query.
  ///
  /// Note that only a subset of the fields will be populated, and only "name"
  /// is guaranteed to be set. For full details of a Connection, call
  /// GetConnection with the name.
  core.List<GooglePrivacyDlpV2Connection>? connections;

  /// Token to retrieve the next page of results.
  ///
  /// An empty value means there are no more results.
  core.String? nextPageToken;

  GooglePrivacyDlpV2SearchConnectionsResponse({
    this.connections,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2SearchConnectionsResponse.fromJson(core.Map json_)
      : this(
          connections: json_.containsKey('connections')
              ? (json_['connections'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Connection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A credential consisting of a username and password, where the password is
/// stored in a Secret Manager resource.
///
/// Note: Secret Manager
/// [charges apply](https://cloud.google.com/secret-manager/pricing).
class GooglePrivacyDlpV2SecretManagerCredential {
  /// The name of the Secret Manager resource that stores the password, in the
  /// form "projects/project-id/secrets/secret-name/versions/version".
  ///
  /// Required.
  core.String? passwordSecretVersionName;

  /// The username.
  ///
  /// Required.
  core.String? username;

  GooglePrivacyDlpV2SecretManagerCredential({
    this.passwordSecretVersionName,
    this.username,
  });

  GooglePrivacyDlpV2SecretManagerCredential.fromJson(core.Map json_)
      : this(
          passwordSecretVersionName:
              json_.containsKey('passwordSecretVersionName')
                  ? json_['passwordSecretVersionName'] as core.String
                  : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (passwordSecretVersionName != null)
          'passwordSecretVersionName': passwordSecretVersionName!,
        if (username != null) 'username': username!,
      };
}

/// Apply transformation to the selected info_types.
class GooglePrivacyDlpV2SelectedInfoTypes {
  /// InfoTypes to apply the transformation to.
  ///
  /// Required. Provided InfoType must be unique within the ImageTransformations
  /// message.
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2InfoType>? infoTypes;

  GooglePrivacyDlpV2SelectedInfoTypes({
    this.infoTypes,
  });

  GooglePrivacyDlpV2SelectedInfoTypes.fromJson(core.Map json_)
      : this(
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoTypes != null) 'infoTypes': infoTypes!,
      };
}

/// Score is calculated from of all elements in the data profile.
///
/// A higher level means the data is more sensitive.
class GooglePrivacyDlpV2SensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible string values are:
  /// - "SENSITIVITY_SCORE_UNSPECIFIED" : Unused.
  /// - "SENSITIVITY_LOW" : No sensitive information detected. The resource
  /// isn't publicly accessible.
  /// - "SENSITIVITY_MODERATE" : Medium risk. Contains personally identifiable
  /// information (PII), potentially sensitive data, or fields with free-text
  /// data that are at a higher risk of having intermittent sensitive data.
  /// Consider limiting access.
  /// - "SENSITIVITY_HIGH" : High risk. Sensitive personally identifiable
  /// information (SPII) can be present. Exfiltration of data can lead to user
  /// data loss. Re-identification of users might be possible. Consider limiting
  /// usage and or removing SPII.
  core.String? score;

  GooglePrivacyDlpV2SensitivityScore({
    this.score,
  });

  GooglePrivacyDlpV2SensitivityScore.fromJson(core.Map json_)
      : this(
          score:
              json_.containsKey('score') ? json_['score'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (score != null) 'score': score!,
      };
}

/// An auxiliary table containing statistical information on the relative
/// frequency of different quasi-identifiers values.
///
/// It has one or several quasi-identifiers columns, and one column that
/// indicates the relative frequency of each quasi-identifier tuple. If a tuple
/// is present in the data but not in the auxiliary table, the corresponding
/// relative frequency is assumed to be zero (and thus, the tuple is highly
/// reidentifiable).
class GooglePrivacyDlpV2StatisticalTable {
  /// Quasi-identifier columns.
  ///
  /// Required.
  core.List<GooglePrivacyDlpV2QuasiIdentifierField>? quasiIds;

  /// The relative frequency column must contain a floating-point number between
  /// 0 and 1 (inclusive).
  ///
  /// Null values are assumed to be zero.
  ///
  /// Required.
  GooglePrivacyDlpV2FieldId? relativeFrequency;

  /// Auxiliary table location.
  ///
  /// Required.
  GooglePrivacyDlpV2BigQueryTable? table;

  GooglePrivacyDlpV2StatisticalTable({
    this.quasiIds,
    this.relativeFrequency,
    this.table,
  });

  GooglePrivacyDlpV2StatisticalTable.fromJson(core.Map json_)
      : this(
          quasiIds: json_.containsKey('quasiIds')
              ? (json_['quasiIds'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2QuasiIdentifierField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relativeFrequency: json_.containsKey('relativeFrequency')
              ? GooglePrivacyDlpV2FieldId.fromJson(json_['relativeFrequency']
                  as core.Map<core.String, core.dynamic>)
              : null,
          table: json_.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quasiIds != null) 'quasiIds': quasiIds!,
        if (relativeFrequency != null) 'relativeFrequency': relativeFrequency!,
        if (table != null) 'table': table!,
      };
}

/// Shared message indicating Cloud storage type.
class GooglePrivacyDlpV2StorageConfig {
  /// BigQuery options.
  GooglePrivacyDlpV2BigQueryOptions? bigQueryOptions;

  /// Cloud Storage options.
  GooglePrivacyDlpV2CloudStorageOptions? cloudStorageOptions;

  /// Google Cloud Datastore options.
  GooglePrivacyDlpV2DatastoreOptions? datastoreOptions;

  /// Hybrid inspection options.
  GooglePrivacyDlpV2HybridOptions? hybridOptions;

  /// Configuration of the timespan of the items to include in scanning.
  GooglePrivacyDlpV2TimespanConfig? timespanConfig;

  GooglePrivacyDlpV2StorageConfig({
    this.bigQueryOptions,
    this.cloudStorageOptions,
    this.datastoreOptions,
    this.hybridOptions,
    this.timespanConfig,
  });

  GooglePrivacyDlpV2StorageConfig.fromJson(core.Map json_)
      : this(
          bigQueryOptions: json_.containsKey('bigQueryOptions')
              ? GooglePrivacyDlpV2BigQueryOptions.fromJson(
                  json_['bigQueryOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cloudStorageOptions: json_.containsKey('cloudStorageOptions')
              ? GooglePrivacyDlpV2CloudStorageOptions.fromJson(
                  json_['cloudStorageOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          datastoreOptions: json_.containsKey('datastoreOptions')
              ? GooglePrivacyDlpV2DatastoreOptions.fromJson(
                  json_['datastoreOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hybridOptions: json_.containsKey('hybridOptions')
              ? GooglePrivacyDlpV2HybridOptions.fromJson(
                  json_['hybridOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          timespanConfig: json_.containsKey('timespanConfig')
              ? GooglePrivacyDlpV2TimespanConfig.fromJson(
                  json_['timespanConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigQueryOptions != null) 'bigQueryOptions': bigQueryOptions!,
        if (cloudStorageOptions != null)
          'cloudStorageOptions': cloudStorageOptions!,
        if (datastoreOptions != null) 'datastoreOptions': datastoreOptions!,
        if (hybridOptions != null) 'hybridOptions': hybridOptions!,
        if (timespanConfig != null) 'timespanConfig': timespanConfig!,
      };
}

/// Storage metadata label to indicate which metadata entry contains findings.
class GooglePrivacyDlpV2StorageMetadataLabel {
  /// Label name.
  core.String? key;

  GooglePrivacyDlpV2StorageMetadataLabel({
    this.key,
  });

  GooglePrivacyDlpV2StorageMetadataLabel.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
      };
}

/// StoredInfoType resource message that contains information about the current
/// version and any pending updates.
class GooglePrivacyDlpV2StoredInfoType {
  /// Current version of the stored info type.
  GooglePrivacyDlpV2StoredInfoTypeVersion? currentVersion;

  /// Resource name.
  core.String? name;

  /// Pending versions of the stored info type.
  ///
  /// Empty if no versions are pending.
  core.List<GooglePrivacyDlpV2StoredInfoTypeVersion>? pendingVersions;

  GooglePrivacyDlpV2StoredInfoType({
    this.currentVersion,
    this.name,
    this.pendingVersions,
  });

  GooglePrivacyDlpV2StoredInfoType.fromJson(core.Map json_)
      : this(
          currentVersion: json_.containsKey('currentVersion')
              ? GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(
                  json_['currentVersion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pendingVersions: json_.containsKey('pendingVersions')
              ? (json_['pendingVersions'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentVersion != null) 'currentVersion': currentVersion!,
        if (name != null) 'name': name!,
        if (pendingVersions != null) 'pendingVersions': pendingVersions!,
      };
}

/// Configuration for stored infoTypes.
///
/// All fields and subfield are provided by the user. For more information, see
/// https://cloud.google.com/sensitive-data-protection/docs/creating-custom-infotypes.
class GooglePrivacyDlpV2StoredInfoTypeConfig {
  /// Description of the StoredInfoType (max 256 characters).
  core.String? description;

  /// Store dictionary-based CustomInfoType.
  GooglePrivacyDlpV2Dictionary? dictionary;

  /// Display name of the StoredInfoType (max 256 characters).
  core.String? displayName;

  /// StoredInfoType where findings are defined by a dictionary of phrases.
  GooglePrivacyDlpV2LargeCustomDictionaryConfig? largeCustomDictionary;

  /// Store regular expression-based StoredInfoType.
  GooglePrivacyDlpV2Regex? regex;

  GooglePrivacyDlpV2StoredInfoTypeConfig({
    this.description,
    this.dictionary,
    this.displayName,
    this.largeCustomDictionary,
    this.regex,
  });

  GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          dictionary: json_.containsKey('dictionary')
              ? GooglePrivacyDlpV2Dictionary.fromJson(
                  json_['dictionary'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          largeCustomDictionary: json_.containsKey('largeCustomDictionary')
              ? GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(
                  json_['largeCustomDictionary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          regex: json_.containsKey('regex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  json_['regex'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (dictionary != null) 'dictionary': dictionary!,
        if (displayName != null) 'displayName': displayName!,
        if (largeCustomDictionary != null)
          'largeCustomDictionary': largeCustomDictionary!,
        if (regex != null) 'regex': regex!,
      };
}

/// Statistics for a StoredInfoType.
class GooglePrivacyDlpV2StoredInfoTypeStats {
  /// StoredInfoType where findings are defined by a dictionary of phrases.
  GooglePrivacyDlpV2LargeCustomDictionaryStats? largeCustomDictionary;

  GooglePrivacyDlpV2StoredInfoTypeStats({
    this.largeCustomDictionary,
  });

  GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(core.Map json_)
      : this(
          largeCustomDictionary: json_.containsKey('largeCustomDictionary')
              ? GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(
                  json_['largeCustomDictionary']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (largeCustomDictionary != null)
          'largeCustomDictionary': largeCustomDictionary!,
      };
}

/// Version of a StoredInfoType, including the configuration used to build it,
/// create timestamp, and current state.
class GooglePrivacyDlpV2StoredInfoTypeVersion {
  /// StoredInfoType configuration.
  GooglePrivacyDlpV2StoredInfoTypeConfig? config;

  /// Create timestamp of the version.
  ///
  /// Read-only, determined by the system when the version is created.
  core.String? createTime;

  /// Errors that occurred when creating this storedInfoType version, or
  /// anomalies detected in the storedInfoType data that render it unusable.
  ///
  /// Only the five most recent errors will be displayed, with the most recent
  /// error appearing first. For example, some of the data for stored custom
  /// dictionaries is put in the user's Cloud Storage bucket, and if this data
  /// is modified or deleted by the user or another system, the dictionary
  /// becomes invalid. If any errors occur, fix the problem indicated by the
  /// error message and use the UpdateStoredInfoType API method to create
  /// another version of the storedInfoType to continue using it, reusing the
  /// same `config` if it was not the source of the error.
  core.List<GooglePrivacyDlpV2Error>? errors;

  /// Stored info type version state.
  ///
  /// Read-only, updated by the system during dictionary creation.
  /// Possible string values are:
  /// - "STORED_INFO_TYPE_STATE_UNSPECIFIED" : Unused
  /// - "PENDING" : StoredInfoType version is being created.
  /// - "READY" : StoredInfoType version is ready for use.
  /// - "FAILED" : StoredInfoType creation failed. All relevant error messages
  /// are returned in the `StoredInfoTypeVersion` message.
  /// - "INVALID" : StoredInfoType is no longer valid because artifacts stored
  /// in user-controlled storage were modified. To fix an invalid
  /// StoredInfoType, use the `UpdateStoredInfoType` method to create a new
  /// version.
  core.String? state;

  /// Statistics about this storedInfoType version.
  GooglePrivacyDlpV2StoredInfoTypeStats? stats;

  GooglePrivacyDlpV2StoredInfoTypeVersion({
    this.config,
    this.createTime,
    this.errors,
    this.state,
    this.stats,
  });

  GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stats: json_.containsKey('stats')
              ? GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (errors != null) 'errors': errors!,
        if (state != null) 'state': state!,
        if (stats != null) 'stats': stats!,
      };
}

/// A reference to a StoredInfoType to use with scanning.
class GooglePrivacyDlpV2StoredType {
  /// Timestamp indicating when the version of the `StoredInfoType` used for
  /// inspection was created.
  ///
  /// Output-only field, populated by the system.
  core.String? createTime;

  /// Resource name of the requested `StoredInfoType`, for example
  /// `organizations/433245324/storedInfoTypes/432452342` or
  /// `projects/project-id/storedInfoTypes/432452342`.
  core.String? name;

  GooglePrivacyDlpV2StoredType({
    this.createTime,
    this.name,
  });

  GooglePrivacyDlpV2StoredType.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
      };
}

/// A collection that informs the user the number of times a particular
/// `TransformationResultCode` and error details occurred.
class GooglePrivacyDlpV2SummaryResult {
  /// Outcome of the transformation.
  /// Possible string values are:
  /// - "TRANSFORMATION_RESULT_CODE_UNSPECIFIED" : Unused
  /// - "SUCCESS" : Transformation completed without an error.
  /// - "ERROR" : Transformation had an error.
  core.String? code;

  /// Number of transformations counted by this result.
  core.String? count;

  /// A place for warnings or errors to show up if a transformation didn't work
  /// as expected.
  core.String? details;

  GooglePrivacyDlpV2SummaryResult({
    this.code,
    this.count,
    this.details,
  });

  GooglePrivacyDlpV2SummaryResult.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (count != null) 'count': count!,
        if (details != null) 'details': details!,
      };
}

/// Message for detecting output from deidentification transformations such as
/// \[`CryptoReplaceFfxFpeConfig`\](https://cloud.google.com/sensitive-data-protection/docs/reference/rest/v2/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig).
///
/// These types of transformations are those that perform pseudonymization,
/// thereby producing a "surrogate" as output. This should be used in
/// conjunction with a field on the transformation such as
/// `surrogate_info_type`. This CustomInfoType does not support the use of
/// `detection_rules`.
typedef GooglePrivacyDlpV2SurrogateType = $Empty;

/// Structured content to inspect.
///
/// Up to 50,000 `Value`s per request allowed. See
/// https://cloud.google.com/sensitive-data-protection/docs/inspecting-structured-text#inspecting_a_table
/// to learn more.
class GooglePrivacyDlpV2Table {
  /// Headers of the table.
  core.List<GooglePrivacyDlpV2FieldId>? headers;

  /// Rows of the table.
  core.List<GooglePrivacyDlpV2Row>? rows;

  GooglePrivacyDlpV2Table({
    this.headers,
    this.rows,
  });

  GooglePrivacyDlpV2Table.fromJson(core.Map json_)
      : this(
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headers != null) 'headers': headers!,
        if (rows != null) 'rows': rows!,
      };
}

/// The profile for a scanned table.
class GooglePrivacyDlpV2TableDataProfile {
  /// The snapshot of the configurations used to generate the profile.
  GooglePrivacyDlpV2DataProfileConfigSnapshot? configSnapshot;

  /// The time at which the table was created.
  core.String? createTime;

  /// The data risk level of this table.
  GooglePrivacyDlpV2DataRiskLevel? dataRiskLevel;

  /// The resource type that was profiled.
  GooglePrivacyDlpV2DataSourceType? dataSourceType;

  /// If the resource is BigQuery, the dataset ID.
  core.String? datasetId;

  /// If supported, the location where the dataset's data is stored.
  ///
  /// See https://cloud.google.com/bigquery/docs/locations for supported
  /// locations.
  core.String? datasetLocation;

  /// The Google Cloud project ID that owns the resource.
  core.String? datasetProjectId;

  /// How the table is encrypted.
  /// Possible string values are:
  /// - "ENCRYPTION_STATUS_UNSPECIFIED" : Unused.
  /// - "ENCRYPTION_GOOGLE_MANAGED" : Google manages server-side encryption keys
  /// on your behalf.
  /// - "ENCRYPTION_CUSTOMER_MANAGED" : Customer provides the key.
  core.String? encryptionStatus;

  /// The time when this table expires.
  ///
  /// Optional.
  core.String? expirationTime;

  /// The number of columns skipped in the table because of an error.
  core.String? failedColumnCount;

  /// The resource name of the resource profiled.
  ///
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String? fullResource;

  /// The time when this table was last modified
  core.String? lastModifiedTime;

  /// The name of the profile.
  core.String? name;

  /// Other infoTypes found in this table's data.
  core.List<GooglePrivacyDlpV2OtherInfoTypeSummary>? otherInfoTypes;

  /// The infoTypes predicted from this table's data.
  core.List<GooglePrivacyDlpV2InfoTypeSummary>? predictedInfoTypes;

  /// The last time the profile was generated.
  core.String? profileLastGenerated;

  /// Success or error status from the most recent profile generation attempt.
  ///
  /// May be empty if the profile is still being generated.
  GooglePrivacyDlpV2ProfileStatus? profileStatus;

  /// The resource name to the project data profile for this table.
  core.String? projectDataProfile;

  /// The labels applied to the resource at the time the profile was generated.
  core.Map<core.String, core.String>? resourceLabels;

  /// How broadly a resource has been shared.
  /// Possible string values are:
  /// - "RESOURCE_VISIBILITY_UNSPECIFIED" : Unused.
  /// - "RESOURCE_VISIBILITY_PUBLIC" : Visible to any user.
  /// - "RESOURCE_VISIBILITY_RESTRICTED" : Visible only to specific users.
  core.String? resourceVisibility;

  /// Number of rows in the table when the profile was generated.
  ///
  /// This will not be populated for BigLake tables.
  core.String? rowCount;

  /// The number of columns profiled in the table.
  core.String? scannedColumnCount;

  /// The sensitivity score of this table.
  GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  /// State of a profile.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unused.
  /// - "RUNNING" : The profile is currently running. Once a profile has
  /// finished it will transition to DONE.
  /// - "DONE" : The profile is no longer generating. If
  /// profile_status.status.code is 0, the profile succeeded, otherwise, it
  /// failed.
  core.String? state;

  /// If the resource is BigQuery, the BigQuery table ID.
  core.String? tableId;

  /// The size of the table when the profile was generated.
  core.String? tableSizeBytes;

  GooglePrivacyDlpV2TableDataProfile({
    this.configSnapshot,
    this.createTime,
    this.dataRiskLevel,
    this.dataSourceType,
    this.datasetId,
    this.datasetLocation,
    this.datasetProjectId,
    this.encryptionStatus,
    this.expirationTime,
    this.failedColumnCount,
    this.fullResource,
    this.lastModifiedTime,
    this.name,
    this.otherInfoTypes,
    this.predictedInfoTypes,
    this.profileLastGenerated,
    this.profileStatus,
    this.projectDataProfile,
    this.resourceLabels,
    this.resourceVisibility,
    this.rowCount,
    this.scannedColumnCount,
    this.sensitivityScore,
    this.state,
    this.tableId,
    this.tableSizeBytes,
  });

  GooglePrivacyDlpV2TableDataProfile.fromJson(core.Map json_)
      : this(
          configSnapshot: json_.containsKey('configSnapshot')
              ? GooglePrivacyDlpV2DataProfileConfigSnapshot.fromJson(
                  json_['configSnapshot']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataRiskLevel: json_.containsKey('dataRiskLevel')
              ? GooglePrivacyDlpV2DataRiskLevel.fromJson(
                  json_['dataRiskLevel'] as core.Map<core.String, core.dynamic>)
              : null,
          dataSourceType: json_.containsKey('dataSourceType')
              ? GooglePrivacyDlpV2DataSourceType.fromJson(
                  json_['dataSourceType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          datasetId: json_.containsKey('datasetId')
              ? json_['datasetId'] as core.String
              : null,
          datasetLocation: json_.containsKey('datasetLocation')
              ? json_['datasetLocation'] as core.String
              : null,
          datasetProjectId: json_.containsKey('datasetProjectId')
              ? json_['datasetProjectId'] as core.String
              : null,
          encryptionStatus: json_.containsKey('encryptionStatus')
              ? json_['encryptionStatus'] as core.String
              : null,
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          failedColumnCount: json_.containsKey('failedColumnCount')
              ? json_['failedColumnCount'] as core.String
              : null,
          fullResource: json_.containsKey('fullResource')
              ? json_['fullResource'] as core.String
              : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          otherInfoTypes: json_.containsKey('otherInfoTypes')
              ? (json_['otherInfoTypes'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2OtherInfoTypeSummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          predictedInfoTypes: json_.containsKey('predictedInfoTypes')
              ? (json_['predictedInfoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          profileLastGenerated: json_.containsKey('profileLastGenerated')
              ? json_['profileLastGenerated'] as core.String
              : null,
          profileStatus: json_.containsKey('profileStatus')
              ? GooglePrivacyDlpV2ProfileStatus.fromJson(
                  json_['profileStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          projectDataProfile: json_.containsKey('projectDataProfile')
              ? json_['projectDataProfile'] as core.String
              : null,
          resourceLabels: json_.containsKey('resourceLabels')
              ? (json_['resourceLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          resourceVisibility: json_.containsKey('resourceVisibility')
              ? json_['resourceVisibility'] as core.String
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.String
              : null,
          scannedColumnCount: json_.containsKey('scannedColumnCount')
              ? json_['scannedColumnCount'] as core.String
              : null,
          sensitivityScore: json_.containsKey('sensitivityScore')
              ? GooglePrivacyDlpV2SensitivityScore.fromJson(
                  json_['sensitivityScore']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          tableId: json_.containsKey('tableId')
              ? json_['tableId'] as core.String
              : null,
          tableSizeBytes: json_.containsKey('tableSizeBytes')
              ? json_['tableSizeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configSnapshot != null) 'configSnapshot': configSnapshot!,
        if (createTime != null) 'createTime': createTime!,
        if (dataRiskLevel != null) 'dataRiskLevel': dataRiskLevel!,
        if (dataSourceType != null) 'dataSourceType': dataSourceType!,
        if (datasetId != null) 'datasetId': datasetId!,
        if (datasetLocation != null) 'datasetLocation': datasetLocation!,
        if (datasetProjectId != null) 'datasetProjectId': datasetProjectId!,
        if (encryptionStatus != null) 'encryptionStatus': encryptionStatus!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (failedColumnCount != null) 'failedColumnCount': failedColumnCount!,
        if (fullResource != null) 'fullResource': fullResource!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (name != null) 'name': name!,
        if (otherInfoTypes != null) 'otherInfoTypes': otherInfoTypes!,
        if (predictedInfoTypes != null)
          'predictedInfoTypes': predictedInfoTypes!,
        if (profileLastGenerated != null)
          'profileLastGenerated': profileLastGenerated!,
        if (profileStatus != null) 'profileStatus': profileStatus!,
        if (projectDataProfile != null)
          'projectDataProfile': projectDataProfile!,
        if (resourceLabels != null) 'resourceLabels': resourceLabels!,
        if (resourceVisibility != null)
          'resourceVisibility': resourceVisibility!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (scannedColumnCount != null)
          'scannedColumnCount': scannedColumnCount!,
        if (sensitivityScore != null) 'sensitivityScore': sensitivityScore!,
        if (state != null) 'state': state!,
        if (tableId != null) 'tableId': tableId!,
        if (tableSizeBytes != null) 'tableSizeBytes': tableSizeBytes!,
      };
}

/// Location of a finding within a table.
class GooglePrivacyDlpV2TableLocation {
  /// The zero-based index of the row where the finding is located.
  ///
  /// Only populated for resources that have a natural ordering, not BigQuery.
  /// In BigQuery, to identify the row a finding came from, populate
  /// BigQueryOptions.identifying_fields with your primary key column names and
  /// when you store the findings the value of those columns will be stored
  /// inside of Finding.
  core.String? rowIndex;

  GooglePrivacyDlpV2TableLocation({
    this.rowIndex,
  });

  GooglePrivacyDlpV2TableLocation.fromJson(core.Map json_)
      : this(
          rowIndex: json_.containsKey('rowIndex')
              ? json_['rowIndex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rowIndex != null) 'rowIndex': rowIndex!,
      };
}

/// Instructions regarding the table content being inspected.
class GooglePrivacyDlpV2TableOptions {
  /// The columns that are the primary keys for table objects included in
  /// ContentItem.
  ///
  /// A copy of this cell's value will stored alongside alongside each finding
  /// so that the finding can be traced to the specific row it came from. No
  /// more than 3 may be provided.
  core.List<GooglePrivacyDlpV2FieldId>? identifyingFields;

  GooglePrivacyDlpV2TableOptions({
    this.identifyingFields,
  });

  GooglePrivacyDlpV2TableOptions.fromJson(core.Map json_)
      : this(
          identifyingFields: json_.containsKey('identifyingFields')
              ? (json_['identifyingFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identifyingFields != null) 'identifyingFields': identifyingFields!,
      };
}

/// A column with a semantic tag attached.
class GooglePrivacyDlpV2TaggedField {
  /// A column can be tagged with a custom tag.
  ///
  /// In this case, the user must indicate an auxiliary table that contains
  /// statistical information on the possible values of this column (below).
  core.String? customTag;

  /// Identifies the column.
  ///
  /// Required.
  GooglePrivacyDlpV2FieldId? field;

  /// If no semantic tag is indicated, we infer the statistical model from the
  /// distribution of values in the input data
  GoogleProtobufEmpty? inferred;

  /// A column can be tagged with a InfoType to use the relevant public dataset
  /// as a statistical model of population, if available.
  ///
  /// We currently support US ZIP codes, region codes, ages and genders. To
  /// programmatically obtain the list of supported InfoTypes, use ListInfoTypes
  /// with the supported_by=RISK_ANALYSIS filter.
  GooglePrivacyDlpV2InfoType? infoType;

  GooglePrivacyDlpV2TaggedField({
    this.customTag,
    this.field,
    this.inferred,
    this.infoType,
  });

  GooglePrivacyDlpV2TaggedField.fromJson(core.Map json_)
      : this(
          customTag: json_.containsKey('customTag')
              ? json_['customTag'] as core.String
              : null,
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          inferred: json_.containsKey('inferred')
              ? GoogleProtobufEmpty.fromJson(
                  json_['inferred'] as core.Map<core.String, core.dynamic>)
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customTag != null) 'customTag': customTag!,
        if (field != null) 'field': field!,
        if (inferred != null) 'inferred': inferred!,
        if (infoType != null) 'infoType': infoType!,
      };
}

/// Throw an error and fail the request when a transformation error occurs.
typedef GooglePrivacyDlpV2ThrowError = $Empty;

/// For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a
/// portion of the value.
class GooglePrivacyDlpV2TimePartConfig {
  /// The part of the time to keep.
  /// Possible string values are:
  /// - "TIME_PART_UNSPECIFIED" : Unused
  /// - "YEAR" : \[0-9999\]
  /// - "MONTH" : \[1-12\]
  /// - "DAY_OF_MONTH" : \[1-31\]
  /// - "DAY_OF_WEEK" : \[1-7\]
  /// - "WEEK_OF_YEAR" : \[1-53\]
  /// - "HOUR_OF_DAY" : \[0-23\]
  core.String? partToExtract;

  GooglePrivacyDlpV2TimePartConfig({
    this.partToExtract,
  });

  GooglePrivacyDlpV2TimePartConfig.fromJson(core.Map json_)
      : this(
          partToExtract: json_.containsKey('partToExtract')
              ? json_['partToExtract'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partToExtract != null) 'partToExtract': partToExtract!,
      };
}

/// Time zone of the date time object.
class GooglePrivacyDlpV2TimeZone {
  /// Set only if the offset can be determined.
  ///
  /// Positive for time ahead of UTC. E.g. For "UTC-9", this value is -540.
  core.int? offsetMinutes;

  GooglePrivacyDlpV2TimeZone({
    this.offsetMinutes,
  });

  GooglePrivacyDlpV2TimeZone.fromJson(core.Map json_)
      : this(
          offsetMinutes: json_.containsKey('offsetMinutes')
              ? json_['offsetMinutes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offsetMinutes != null) 'offsetMinutes': offsetMinutes!,
      };
}

/// Configuration of the timespan of the items to include in scanning.
///
/// Currently only supported when inspecting Cloud Storage and BigQuery.
class GooglePrivacyDlpV2TimespanConfig {
  /// When the job is started by a JobTrigger we will automatically figure out a
  /// valid start_time to avoid scanning files that have not been modified since
  /// the last time the JobTrigger executed.
  ///
  /// This will be based on the time of the execution of the last run of the
  /// JobTrigger or the timespan end_time used in the last run of the
  /// JobTrigger.
  core.bool? enableAutoPopulationOfTimespanConfig;

  /// Exclude files, tables, or rows newer than this value.
  ///
  /// If not set, no upper time limit is applied.
  core.String? endTime;

  /// Exclude files, tables, or rows older than this value.
  ///
  /// If not set, no lower time limit is applied.
  core.String? startTime;

  /// Specification of the field containing the timestamp of scanned items.
  ///
  /// Used for data sources like Datastore and BigQuery. *For BigQuery* If this
  /// value is not specified and the table was modified between the given start
  /// and end times, the entire table will be scanned. If this value is
  /// specified, then rows are filtered based on the given start and end times.
  /// Rows with a `NULL` value in the provided BigQuery column are skipped.
  /// Valid data types of the provided BigQuery column are: `INTEGER`, `DATE`,
  /// `TIMESTAMP`, and `DATETIME`. If your BigQuery table is
  /// [partitioned at ingestion time](https://cloud.google.com/bigquery/docs/partitioned-tables#ingestion_time),
  /// you can use any of the following pseudo-columns as your timestamp field.
  /// When used with Cloud DLP, these pseudo-column names are case sensitive. -
  /// _PARTITIONTIME - _PARTITIONDATE - _PARTITION_LOAD_TIME *For Datastore* If
  /// this value is specified, then entities are filtered based on the given
  /// start and end times. If an entity does not contain the provided timestamp
  /// property or contains empty or invalid values, then it is included. Valid
  /// data types of the provided timestamp property are: `TIMESTAMP`. See the
  /// [known issue](https://cloud.google.com/sensitive-data-protection/docs/known-issues#bq-timespan)
  /// related to this operation.
  GooglePrivacyDlpV2FieldId? timestampField;

  GooglePrivacyDlpV2TimespanConfig({
    this.enableAutoPopulationOfTimespanConfig,
    this.endTime,
    this.startTime,
    this.timestampField,
  });

  GooglePrivacyDlpV2TimespanConfig.fromJson(core.Map json_)
      : this(
          enableAutoPopulationOfTimespanConfig:
              json_.containsKey('enableAutoPopulationOfTimespanConfig')
                  ? json_['enableAutoPopulationOfTimespanConfig'] as core.bool
                  : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          timestampField: json_.containsKey('timestampField')
              ? GooglePrivacyDlpV2FieldId.fromJson(json_['timestampField']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableAutoPopulationOfTimespanConfig != null)
          'enableAutoPopulationOfTimespanConfig':
              enableAutoPopulationOfTimespanConfig!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (timestampField != null) 'timestampField': timestampField!,
      };
}

/// User specified templates and configs for how to deidentify structured,
/// unstructures, and image files.
///
/// User must provide either a unstructured deidentify template or at least one
/// redact image config.
class GooglePrivacyDlpV2TransformationConfig {
  /// De-identify template.
  ///
  /// If this template is specified, it will serve as the default de-identify
  /// template. This template cannot contain `record_transformations` since it
  /// can be used for unstructured content such as free-form text files. If this
  /// template is not set, a default `ReplaceWithInfoTypeConfig` will be used to
  /// de-identify unstructured content.
  core.String? deidentifyTemplate;

  /// Image redact template.
  ///
  /// If this template is specified, it will serve as the de-identify template
  /// for images. If this template is not set, all findings in the image will be
  /// redacted with a black box.
  core.String? imageRedactTemplate;

  /// Structured de-identify template.
  ///
  /// If this template is specified, it will serve as the de-identify template
  /// for structured content such as delimited files and tables. If this
  /// template is not set but the `deidentify_template` is set, then
  /// `deidentify_template` will also apply to the structured content. If
  /// neither template is set, a default `ReplaceWithInfoTypeConfig` will be
  /// used to de-identify structured content.
  core.String? structuredDeidentifyTemplate;

  GooglePrivacyDlpV2TransformationConfig({
    this.deidentifyTemplate,
    this.imageRedactTemplate,
    this.structuredDeidentifyTemplate,
  });

  GooglePrivacyDlpV2TransformationConfig.fromJson(core.Map json_)
      : this(
          deidentifyTemplate: json_.containsKey('deidentifyTemplate')
              ? json_['deidentifyTemplate'] as core.String
              : null,
          imageRedactTemplate: json_.containsKey('imageRedactTemplate')
              ? json_['imageRedactTemplate'] as core.String
              : null,
          structuredDeidentifyTemplate:
              json_.containsKey('structuredDeidentifyTemplate')
                  ? json_['structuredDeidentifyTemplate'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
        if (imageRedactTemplate != null)
          'imageRedactTemplate': imageRedactTemplate!,
        if (structuredDeidentifyTemplate != null)
          'structuredDeidentifyTemplate': structuredDeidentifyTemplate!,
      };
}

/// Config for storing transformation details.
class GooglePrivacyDlpV2TransformationDetailsStorageConfig {
  /// The BigQuery table in which to store the output.
  ///
  /// This may be an existing table or in a new table in an existing dataset. If
  /// table_id is not set a new one will be generated for you with the following
  /// format: dlp_googleapis_transformation_details_yyyy_mm_dd_\[dlp_job_id\].
  /// Pacific time zone will be used for generating the date details.
  GooglePrivacyDlpV2BigQueryTable? table;

  GooglePrivacyDlpV2TransformationDetailsStorageConfig({
    this.table,
  });

  GooglePrivacyDlpV2TransformationDetailsStorageConfig.fromJson(core.Map json_)
      : this(
          table: json_.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (table != null) 'table': table!,
      };
}

/// How to handle transformation errors during de-identification.
///
/// A transformation error occurs when the requested transformation is
/// incompatible with the data. For example, trying to de-identify an IP address
/// using a `DateShift` transformation would result in a transformation error,
/// since date info cannot be extracted from an IP address. Information about
/// any incompatible transformations, and how they were handled, is returned in
/// the response as part of the `TransformationOverviews`.
class GooglePrivacyDlpV2TransformationErrorHandling {
  /// Ignore errors
  GooglePrivacyDlpV2LeaveUntransformed? leaveUntransformed;

  /// Throw an error
  GooglePrivacyDlpV2ThrowError? throwError;

  GooglePrivacyDlpV2TransformationErrorHandling({
    this.leaveUntransformed,
    this.throwError,
  });

  GooglePrivacyDlpV2TransformationErrorHandling.fromJson(core.Map json_)
      : this(
          leaveUntransformed: json_.containsKey('leaveUntransformed')
              ? GooglePrivacyDlpV2LeaveUntransformed.fromJson(
                  json_['leaveUntransformed']
                      as core.Map<core.String, core.dynamic>)
              : null,
          throwError: json_.containsKey('throwError')
              ? GooglePrivacyDlpV2ThrowError.fromJson(
                  json_['throwError'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (leaveUntransformed != null)
          'leaveUntransformed': leaveUntransformed!,
        if (throwError != null) 'throwError': throwError!,
      };
}

/// Overview of the modifications that occurred.
class GooglePrivacyDlpV2TransformationOverview {
  /// Transformations applied to the dataset.
  core.List<GooglePrivacyDlpV2TransformationSummary>? transformationSummaries;

  /// Total size in bytes that were transformed in some way.
  core.String? transformedBytes;

  GooglePrivacyDlpV2TransformationOverview({
    this.transformationSummaries,
    this.transformedBytes,
  });

  GooglePrivacyDlpV2TransformationOverview.fromJson(core.Map json_)
      : this(
          transformationSummaries: json_.containsKey('transformationSummaries')
              ? (json_['transformationSummaries'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2TransformationSummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transformedBytes: json_.containsKey('transformedBytes')
              ? json_['transformedBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transformationSummaries != null)
          'transformationSummaries': transformationSummaries!,
        if (transformedBytes != null) 'transformedBytes': transformedBytes!,
      };
}

/// Summary of a single transformation.
///
/// Only one of 'transformation', 'field_transformation', or 'record_suppress'
/// will be set.
class GooglePrivacyDlpV2TransformationSummary {
  /// Set if the transformation was limited to a specific FieldId.
  GooglePrivacyDlpV2FieldId? field;

  /// The field transformation that was applied.
  ///
  /// If multiple field transformations are requested for a single field, this
  /// list will contain all of them; otherwise, only one is supplied.
  core.List<GooglePrivacyDlpV2FieldTransformation>? fieldTransformations;

  /// Set if the transformation was limited to a specific InfoType.
  GooglePrivacyDlpV2InfoType? infoType;

  /// The specific suppression option these stats apply to.
  GooglePrivacyDlpV2RecordSuppression? recordSuppress;

  /// Collection of all transformations that took place or had an error.
  core.List<GooglePrivacyDlpV2SummaryResult>? results;

  /// The specific transformation these stats apply to.
  GooglePrivacyDlpV2PrimitiveTransformation? transformation;

  /// Total size in bytes that were transformed in some way.
  core.String? transformedBytes;

  GooglePrivacyDlpV2TransformationSummary({
    this.field,
    this.fieldTransformations,
    this.infoType,
    this.recordSuppress,
    this.results,
    this.transformation,
    this.transformedBytes,
  });

  GooglePrivacyDlpV2TransformationSummary.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldTransformations: json_.containsKey('fieldTransformations')
              ? (json_['fieldTransformations'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2FieldTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          infoType: json_.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  json_['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          recordSuppress: json_.containsKey('recordSuppress')
              ? GooglePrivacyDlpV2RecordSuppression.fromJson(
                  json_['recordSuppress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => GooglePrivacyDlpV2SummaryResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transformation: json_.containsKey('transformation')
              ? GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
                  json_['transformation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transformedBytes: json_.containsKey('transformedBytes')
              ? json_['transformedBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (fieldTransformations != null)
          'fieldTransformations': fieldTransformations!,
        if (infoType != null) 'infoType': infoType!,
        if (recordSuppress != null) 'recordSuppress': recordSuppress!,
        if (results != null) 'results': results!,
        if (transformation != null) 'transformation': transformation!,
        if (transformedBytes != null) 'transformedBytes': transformedBytes!,
      };
}

/// Use this to have a random data crypto key generated.
///
/// It will be discarded after the request finishes.
class GooglePrivacyDlpV2TransientCryptoKey {
  /// Name of the key.
  ///
  /// This is an arbitrary string used to differentiate different keys. A unique
  /// key is generated per name: two separate `TransientCryptoKey` protos share
  /// the same generated key if their names are the same. When the data crypto
  /// key is generated, this name is not used in any way (repeating the api call
  /// will result in a different key being generated).
  ///
  /// Required.
  core.String? name;

  GooglePrivacyDlpV2TransientCryptoKey({
    this.name,
  });

  GooglePrivacyDlpV2TransientCryptoKey.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// What event needs to occur for a new job to be started.
class GooglePrivacyDlpV2Trigger {
  /// For use with hybrid jobs.
  ///
  /// Jobs must be manually created and finished.
  GooglePrivacyDlpV2Manual? manual;

  /// Create a job on a repeating basis based on the elapse of time.
  GooglePrivacyDlpV2Schedule? schedule;

  GooglePrivacyDlpV2Trigger({
    this.manual,
    this.schedule,
  });

  GooglePrivacyDlpV2Trigger.fromJson(core.Map json_)
      : this(
          manual: json_.containsKey('manual')
              ? GooglePrivacyDlpV2Manual.fromJson(
                  json_['manual'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: json_.containsKey('schedule')
              ? GooglePrivacyDlpV2Schedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manual != null) 'manual': manual!,
        if (schedule != null) 'schedule': schedule!,
      };
}

/// Using raw keys is prone to security risks due to accidentally leaking the
/// key.
///
/// Choose another type of key if possible.
class GooglePrivacyDlpV2UnwrappedCryptoKey {
  /// A 128/192/256 bit key.
  ///
  /// Required.
  core.String? key;
  core.List<core.int> get keyAsBytes => convert.base64.decode(key!);

  set keyAsBytes(core.List<core.int> bytes_) {
    key =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GooglePrivacyDlpV2UnwrappedCryptoKey({
    this.key,
  });

  GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
      };
}

/// Request message for UpdateConnection.
class GooglePrivacyDlpV2UpdateConnectionRequest {
  /// The connection with new values for the relevant fields.
  ///
  /// Required.
  GooglePrivacyDlpV2Connection? connection;

  /// Mask to control which fields get updated.
  ///
  /// Optional.
  core.String? updateMask;

  GooglePrivacyDlpV2UpdateConnectionRequest({
    this.connection,
    this.updateMask,
  });

  GooglePrivacyDlpV2UpdateConnectionRequest.fromJson(core.Map json_)
      : this(
          connection: json_.containsKey('connection')
              ? GooglePrivacyDlpV2Connection.fromJson(
                  json_['connection'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connection != null) 'connection': connection!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for UpdateDeidentifyTemplate.
class GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest {
  /// New DeidentifyTemplate value.
  GooglePrivacyDlpV2DeidentifyTemplate? deidentifyTemplate;

  /// Mask to control which fields get updated.
  core.String? updateMask;

  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest({
    this.deidentifyTemplate,
    this.updateMask,
  });

  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(core.Map json_)
      : this(
          deidentifyTemplate: json_.containsKey('deidentifyTemplate')
              ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                  json_['deidentifyTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for UpdateDiscoveryConfig.
class GooglePrivacyDlpV2UpdateDiscoveryConfigRequest {
  /// New DiscoveryConfig value.
  ///
  /// Required.
  GooglePrivacyDlpV2DiscoveryConfig? discoveryConfig;

  /// Mask to control which fields get updated.
  core.String? updateMask;

  GooglePrivacyDlpV2UpdateDiscoveryConfigRequest({
    this.discoveryConfig,
    this.updateMask,
  });

  GooglePrivacyDlpV2UpdateDiscoveryConfigRequest.fromJson(core.Map json_)
      : this(
          discoveryConfig: json_.containsKey('discoveryConfig')
              ? GooglePrivacyDlpV2DiscoveryConfig.fromJson(
                  json_['discoveryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (discoveryConfig != null) 'discoveryConfig': discoveryConfig!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for UpdateInspectTemplate.
class GooglePrivacyDlpV2UpdateInspectTemplateRequest {
  /// New InspectTemplate value.
  GooglePrivacyDlpV2InspectTemplate? inspectTemplate;

  /// Mask to control which fields get updated.
  core.String? updateMask;

  GooglePrivacyDlpV2UpdateInspectTemplateRequest({
    this.inspectTemplate,
    this.updateMask,
  });

  GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(core.Map json_)
      : this(
          inspectTemplate: json_.containsKey('inspectTemplate')
              ? GooglePrivacyDlpV2InspectTemplate.fromJson(
                  json_['inspectTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inspectTemplate != null) 'inspectTemplate': inspectTemplate!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for UpdateJobTrigger.
class GooglePrivacyDlpV2UpdateJobTriggerRequest {
  /// New JobTrigger value.
  GooglePrivacyDlpV2JobTrigger? jobTrigger;

  /// Mask to control which fields get updated.
  core.String? updateMask;

  GooglePrivacyDlpV2UpdateJobTriggerRequest({
    this.jobTrigger,
    this.updateMask,
  });

  GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(core.Map json_)
      : this(
          jobTrigger: json_.containsKey('jobTrigger')
              ? GooglePrivacyDlpV2JobTrigger.fromJson(
                  json_['jobTrigger'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobTrigger != null) 'jobTrigger': jobTrigger!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for UpdateStoredInfoType.
class GooglePrivacyDlpV2UpdateStoredInfoTypeRequest {
  /// Updated configuration for the storedInfoType.
  ///
  /// If not provided, a new version of the storedInfoType will be created with
  /// the existing configuration.
  GooglePrivacyDlpV2StoredInfoTypeConfig? config;

  /// Mask to control which fields get updated.
  core.String? updateMask;

  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest({
    this.config,
    this.updateMask,
  });

  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Set of primitive values supported by the system.
///
/// Note that for the purposes of inspection or transformation, the number of
/// bytes considered to comprise a 'Value' is based on its representation as a
/// UTF-8 encoded string. For example, if 'integer_value' is set to 123456789,
/// the number of bytes would be counted as 9, even though an int64 only holds
/// up to 8 bytes of data.
class GooglePrivacyDlpV2Value {
  /// boolean
  core.bool? booleanValue;

  /// date
  GoogleTypeDate? dateValue;

  /// day of week
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeekValue;

  /// float
  core.double? floatValue;

  /// integer
  core.String? integerValue;

  /// string
  core.String? stringValue;

  /// time of day
  GoogleTypeTimeOfDay? timeValue;

  /// timestamp
  core.String? timestampValue;

  GooglePrivacyDlpV2Value({
    this.booleanValue,
    this.dateValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timeValue,
    this.timestampValue,
  });

  GooglePrivacyDlpV2Value.fromJson(core.Map json_)
      : this(
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          dateValue: json_.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  json_['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          dayOfWeekValue: json_.containsKey('dayOfWeekValue')
              ? json_['dayOfWeekValue'] as core.String
              : null,
          floatValue: json_.containsKey('floatValue')
              ? (json_['floatValue'] as core.num).toDouble()
              : null,
          integerValue: json_.containsKey('integerValue')
              ? json_['integerValue'] as core.String
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
          timeValue: json_.containsKey('timeValue')
              ? GoogleTypeTimeOfDay.fromJson(
                  json_['timeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          timestampValue: json_.containsKey('timestampValue')
              ? json_['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!,
        if (dayOfWeekValue != null) 'dayOfWeekValue': dayOfWeekValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timeValue != null) 'timeValue': timeValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

/// A value of a field, including its frequency.
class GooglePrivacyDlpV2ValueFrequency {
  /// How many times the value is contained in the field.
  core.String? count;

  /// A value contained in the field in question.
  GooglePrivacyDlpV2Value? value;

  GooglePrivacyDlpV2ValueFrequency({
    this.count,
    this.value,
  });

  GooglePrivacyDlpV2ValueFrequency.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          value: json_.containsKey('value')
              ? GooglePrivacyDlpV2Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (value != null) 'value': value!,
      };
}

/// Details about each available version for an infotype.
class GooglePrivacyDlpV2VersionDescription {
  /// Description of the version.
  core.String? description;

  /// Name of the version
  core.String? version;

  GooglePrivacyDlpV2VersionDescription({
    this.description,
    this.version,
  });

  GooglePrivacyDlpV2VersionDescription.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (version != null) 'version': version!,
      };
}

/// Message defining a list of words or phrases to search for in the data.
class GooglePrivacyDlpV2WordList {
  /// Words or phrases defining the dictionary.
  ///
  /// The dictionary must contain at least one phrase and every phrase must
  /// contain at least 2 characters that are letters or digits. \[required\]
  core.List<core.String>? words;

  GooglePrivacyDlpV2WordList({
    this.words,
  });

  GooglePrivacyDlpV2WordList.fromJson(core.Map json_)
      : this(
          words: json_.containsKey('words')
              ? (json_['words'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (words != null) 'words': words!,
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

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef GoogleTypeTimeOfDay = $TimeOfDay;
