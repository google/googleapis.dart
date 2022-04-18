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

/// Cloud Data Loss Prevention (DLP) API - v2
///
/// Provides methods for detection, risk analysis, and de-identification of
/// privacy-sensitive fragments in text, images, and Google Cloud Platform
/// storage repositories.
///
/// For more information, see <https://cloud.google.com/dlp/docs/>
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
///     - [OrganizationsLocationsDeidentifyTemplatesResource]
///     - [OrganizationsLocationsDlpJobsResource]
///     - [OrganizationsLocationsInspectTemplatesResource]
///     - [OrganizationsLocationsJobTriggersResource]
///     - [OrganizationsLocationsStoredInfoTypesResource]
///   - [OrganizationsStoredInfoTypesResource]
/// - [ProjectsResource]
///   - [ProjectsContentResource]
///   - [ProjectsDeidentifyTemplatesResource]
///   - [ProjectsDlpJobsResource]
///   - [ProjectsImageResource]
///   - [ProjectsInspectTemplatesResource]
///   - [ProjectsJobTriggersResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsContentResource]
///     - [ProjectsLocationsDeidentifyTemplatesResource]
///     - [ProjectsLocationsDlpJobsResource]
///     - [ProjectsLocationsImageResource]
///     - [ProjectsLocationsInspectTemplatesResource]
///     - [ProjectsLocationsJobTriggersResource]
///     - [ProjectsLocationsStoredInfoTypesResource]
///   - [ProjectsStoredInfoTypesResource]
library dlp.v2;

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

/// Provides methods for detection, risk analysis, and de-identification of
/// privacy-sensitive fragments in text, images, and Google Cloud Platform
/// storage repositories.
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

  /// Returns a list of the sensitive information types that the DLP API
  /// supports.
  ///
  /// See https://cloud.google.com/dlp/docs/infotypes-reference to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (locationId != null) 'locationId': [locationId],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/infoTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  /// Returns a list of the sensitive information types that the DLP API
  /// supports.
  ///
  /// See https://cloud.google.com/dlp/docs/infotypes-reference to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (locationId != null) 'locationId': [locationId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/infoTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  /// Creates a DeidentifyTemplate for re-using frequently used configuration
  /// for de-identifying content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListDeidentifyTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for re-using frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListInspectTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDeidentifyTemplatesResource get deidentifyTemplates =>
      OrganizationsLocationsDeidentifyTemplatesResource(_requester);
  OrganizationsLocationsDlpJobsResource get dlpJobs =>
      OrganizationsLocationsDlpJobsResource(_requester);
  OrganizationsLocationsInspectTemplatesResource get inspectTemplates =>
      OrganizationsLocationsInspectTemplatesResource(_requester);
  OrganizationsLocationsJobTriggersResource get jobTriggers =>
      OrganizationsLocationsJobTriggersResource(_requester);
  OrganizationsLocationsStoredInfoTypesResource get storedInfoTypes =>
      OrganizationsLocationsStoredInfoTypesResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class OrganizationsLocationsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for re-using frequently used configuration
  /// for de-identifying content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListDeidentifyTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsDlpJobsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsDlpJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists DlpJobs that match the specified filter in the request.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The resource name of
  /// the trigger that created job. - 'end_time` - Corresponds to time the job
  /// finished. - 'start_time` - Corresponds to time the job finished. *
  /// Supported fields for risk analysis jobs: - `state` -
  /// RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to time the
  /// job finished. - 'start_time` - Corresponds to time the job finished. * The
  /// operator must be `=` or `!=`. Examples: * inspected_storage =
  /// cloud_storage AND state = done * inspected_storage = cloud_storage OR
  /// inspected_storage = bigquery * inspected_storage = cloud_storage AND
  /// (state = done OR state = canceled) * end_time \>
  /// \"2017-12-12T00:00:00+00:00\" The length of this field should be no more
  /// than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, end_time asc, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the job was created. - `end_time`:
  /// corresponds to time the job ended. - `name`: corresponds to job's name. -
  /// `state`: corresponds to `state`
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for re-using frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListInspectTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsJobTriggersResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsJobTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a job trigger to run DLP actions such as scanning storage for
  /// sensitive information on a set schedule.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists job triggers.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// followed by `asc` or `desc` postfix. This list is case-insensitive,
  /// default sorting order is ascending, redundant space characters are
  /// insignificant. Example: `name asc,update_time, create_time desc` Supported
  /// fields are: - `create_time`: corresponds to time the JobTrigger was
  /// created. - `update_time`: corresponds to time the JobTrigger was last
  /// updated. - `last_run_time`: corresponds to the last time the JobTrigger
  /// ran. - `name`: corresponds to JobTrigger's name. - `display_name`:
  /// corresponds to JobTrigger's display name. - `status`: corresponds to
  /// JobTrigger's status.
  ///
  /// [pageSize] - Size of the page, can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to ListJobTriggers. `order_by` field must not change for subsequent calls.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the most recent version of the resource
  /// was created. - `state`: corresponds to the state of the resource. -
  /// `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListStoredInfoTypes`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
  /// learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  OrganizationsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the most recent version of the resource
  /// was created. - `state`: corresponds to the state of the resource. -
  /// `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListStoredInfoTypes`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
  /// learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// https://cloud.google.com/dlp/docs/deidentify-sensitive-data to learn more.
  /// When no InfoTypes or CustomInfoTypes are specified in this request, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/content:deidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Finds potentially sensitive info in content.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// When no InfoTypes or CustomInfoTypes are specified in this request, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated. For
  /// how to guides, see https://cloud.google.com/dlp/docs/inspecting-images and
  /// https://cloud.google.com/dlp/docs/inspecting-text,
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/content:inspect';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Re-identifies content that has been de-identified.
  ///
  /// See
  /// https://cloud.google.com/dlp/docs/pseudonymization#re-identification_in_free_text_code_example
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/content:reidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for re-using frequently used configuration
  /// for de-identifying content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListDeidentifyTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDlpJobsResource {
  final commons.ApiRequester _requester;

  ProjectsDlpJobsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running DlpJob.
  ///
  /// The server makes a best effort to cancel the DlpJob, but success is not
  /// guaranteed. See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new job to inspect storage or calculate risk metrics.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
  /// When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running DlpJob.
  ///
  /// This method indicates that the client is no longer interested in the
  /// DlpJob result. The job will be cancelled if possible. See
  /// https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running DlpJob.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DlpJobs that match the specified filter in the request.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The resource name of
  /// the trigger that created job. - 'end_time` - Corresponds to time the job
  /// finished. - 'start_time` - Corresponds to time the job finished. *
  /// Supported fields for risk analysis jobs: - `state` -
  /// RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to time the
  /// job finished. - 'start_time` - Corresponds to time the job finished. * The
  /// operator must be `=` or `!=`. Examples: * inspected_storage =
  /// cloud_storage AND state = done * inspected_storage = cloud_storage OR
  /// inspected_storage = bigquery * inspected_storage = cloud_storage AND
  /// (state = done OR state = canceled) * end_time \>
  /// \"2017-12-12T00:00:00+00:00\" The length of this field should be no more
  /// than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, end_time asc, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the job was created. - `end_time`:
  /// corresponds to time the job ended. - `name`: corresponds to job's name. -
  /// `state`: corresponds to `state`
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsImageResource {
  final commons.ApiRequester _requester;

  ProjectsImageResource(commons.ApiRequester client) : _requester = client;

  /// Redacts potentially sensitive info from an image.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// See https://cloud.google.com/dlp/docs/redacting-sensitive-data-images to
  /// learn more. When no InfoTypes or CustomInfoTypes are specified in this
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
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/image:redact';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2RedactImageResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for re-using frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListInspectTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':activate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a job trigger to run DLP actions such as scanning storage for
  /// sensitive information on a set schedule.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists job triggers.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// followed by `asc` or `desc` postfix. This list is case-insensitive,
  /// default sorting order is ascending, redundant space characters are
  /// insignificant. Example: `name asc,update_time, create_time desc` Supported
  /// fields are: - `create_time`: corresponds to time the JobTrigger was
  /// created. - `update_time`: corresponds to time the JobTrigger was last
  /// updated. - `last_run_time`: corresponds to the last time the JobTrigger
  /// ran. - `name`: corresponds to JobTrigger's name. - `display_name`:
  /// corresponds to JobTrigger's display name. - `status`: corresponds to
  /// JobTrigger's status.
  ///
  /// [pageSize] - Size of the page, can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to ListJobTriggers. `order_by` field must not change for subsequent calls.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsContentResource get content =>
      ProjectsLocationsContentResource(_requester);
  ProjectsLocationsDeidentifyTemplatesResource get deidentifyTemplates =>
      ProjectsLocationsDeidentifyTemplatesResource(_requester);
  ProjectsLocationsDlpJobsResource get dlpJobs =>
      ProjectsLocationsDlpJobsResource(_requester);
  ProjectsLocationsImageResource get image =>
      ProjectsLocationsImageResource(_requester);
  ProjectsLocationsInspectTemplatesResource get inspectTemplates =>
      ProjectsLocationsInspectTemplatesResource(_requester);
  ProjectsLocationsJobTriggersResource get jobTriggers =>
      ProjectsLocationsJobTriggersResource(_requester);
  ProjectsLocationsStoredInfoTypesResource get storedInfoTypes =>
      ProjectsLocationsStoredInfoTypesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsContentResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsContentResource(commons.ApiRequester client)
      : _requester = client;

  /// De-identifies potentially sensitive info from a ContentItem.
  ///
  /// This method has limits on input size and output size. See
  /// https://cloud.google.com/dlp/docs/deidentify-sensitive-data to learn more.
  /// When no InfoTypes or CustomInfoTypes are specified in this request, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/content:deidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Finds potentially sensitive info in content.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// When no InfoTypes or CustomInfoTypes are specified in this request, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated. For
  /// how to guides, see https://cloud.google.com/dlp/docs/inspecting-images and
  /// https://cloud.google.com/dlp/docs/inspecting-text,
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent resource name. The format of this value varies depending
  /// on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/content:inspect';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Re-identifies content that has been de-identified.
  ///
  /// See
  /// https://cloud.google.com/dlp/docs/pseudonymization#re-identification_in_free_text_code_example
  /// to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/content:reidentify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeidentifyTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeidentifyTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DeidentifyTemplate for re-using frequently used configuration
  /// for de-identifying content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DeidentifyTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListDeidentifyTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/deidentifyTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the DeidentifyTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
  /// more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDlpJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDlpJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running DlpJob.
  ///
  /// The server makes a best effort to cancel the DlpJob, but success is not
  /// guaranteed. See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new job to inspect storage or calculate risk metrics.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
  /// When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the
  /// system will automatically choose what detectors to run. By default this
  /// may be all types, but may change over time as detectors are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running DlpJob.
  ///
  /// This method indicates that the client is no longer interested in the
  /// DlpJob result. The job will be cancelled if possible. See
  /// https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<GoogleProtobufEmpty> finish(
    GooglePrivacyDlpV2FinishDlpJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':finish';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running DlpJob.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':hybridInspect';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2HybridInspectResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DlpJobs that match the specified filter in the request.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-storage and
  /// https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The resource name of
  /// the trigger that created job. - 'end_time` - Corresponds to time the job
  /// finished. - 'start_time` - Corresponds to time the job finished. *
  /// Supported fields for risk analysis jobs: - `state` -
  /// RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to time the
  /// job finished. - 'start_time` - Corresponds to time the job finished. * The
  /// operator must be `=` or `!=`. Examples: * inspected_storage =
  /// cloud_storage AND state = done * inspected_storage = cloud_storage OR
  /// inspected_storage = bigquery * inspected_storage = cloud_storage AND
  /// (state = done OR state = canceled) * end_time \>
  /// \"2017-12-12T00:00:00+00:00\" The length of this field should be no more
  /// than 500 characters.
  ///
  /// [locationId] - Deprecated. This field has no effect.
  ///
  /// [orderBy] - Comma separated list of fields to order by, followed by `asc`
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, end_time asc, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the job was created. - `end_time`:
  /// corresponds to time the job ended. - `name`: corresponds to job's name. -
  /// `state`: corresponds to `state`
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/dlpJobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImageResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImageResource(commons.ApiRequester client)
      : _requester = client;

  /// Redacts potentially sensitive info from an image.
  ///
  /// This method has limits on input size, processing time, and output size.
  /// See https://cloud.google.com/dlp/docs/redacting-sensitive-data-images to
  /// learn more. When no InfoTypes or CustomInfoTypes are specified in this
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
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/image:redact';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2RedactImageResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInspectTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInspectTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an InspectTemplate for re-using frequently used configuration for
  /// inspecting content, images, and storage.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists InspectTemplates.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc,update_time, create_time desc` Supported fields are: - `create_time`:
  /// corresponds to time the template was created. - `update_time`: corresponds
  /// to time the template was last updated. - `name`: corresponds to template's
  /// name. - `display_name`: corresponds to template's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListInspectTemplates`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/inspectTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the InspectTemplate.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-templates to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2InspectTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':activate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2DlpJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a job trigger to run DLP actions such as scanning storage for
  /// sensitive information on a set schedule.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':hybridInspect';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2HybridInspectResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists job triggers.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// followed by `asc` or `desc` postfix. This list is case-insensitive,
  /// default sorting order is ascending, redundant space characters are
  /// insignificant. Example: `name asc,update_time, create_time desc` Supported
  /// fields are: - `create_time`: corresponds to time the JobTrigger was
  /// created. - `update_time`: corresponds to time the JobTrigger was last
  /// updated. - `last_run_time`: corresponds to the last time the JobTrigger
  /// ran. - `name`: corresponds to JobTrigger's name. - `display_name`:
  /// corresponds to JobTrigger's display name. - `status`: corresponds to
  /// JobTrigger's status.
  ///
  /// [pageSize] - Size of the page, can be limited by a server.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to ListJobTriggers. `order_by` field must not change for subsequent calls.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/jobTriggers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a job trigger.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2JobTrigger.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the most recent version of the resource
  /// was created. - `state`: corresponds to the state of the resource. -
  /// `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListStoredInfoTypes`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
  /// learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsStoredInfoTypesResource {
  final commons.ApiRequester _requester;

  ProjectsStoredInfoTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pre-built stored infoType to be used for inspection.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a stored infoType.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists stored infoTypes.
  ///
  /// See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn
  /// more.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name. The format of this value varies
  /// depending on the scope of the request (project or organization) and
  /// whether you have
  /// [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location):
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
  /// or `desc` postfix. This list is case-insensitive, default sorting order is
  /// ascending, redundant space characters are insignificant. Example: `name
  /// asc, display_name, create_time desc` Supported fields are: -
  /// `create_time`: corresponds to time the most recent version of the resource
  /// was created. - `state`: corresponds to the state of the resource. -
  /// `name`: corresponds to resource name. - `display_name`: corresponds to
  /// info type's display name.
  ///
  /// [pageSize] - Size of the page, can be limited by server. If zero server
  /// returns a page of max size 100.
  ///
  /// [pageToken] - Page token to continue retrieval. Comes from previous call
  /// to `ListStoredInfoTypes`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (locationId != null) 'locationId': [locationId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/storedInfoTypes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the stored infoType by creating a new version.
  ///
  /// The existing version will continue to be used until the new version is
  /// ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
  /// learn more.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GooglePrivacyDlpV2StoredInfoType.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A task to execute on the completion of a job.
///
/// See https://cloud.google.com/dlp/docs/concepts-actions to learn more.
class GooglePrivacyDlpV2Action {
  /// Enable email notification for project owners and editors on job's
  /// completion/failure.
  GooglePrivacyDlpV2JobNotificationEmails? jobNotificationEmails;

  /// Publish a notification to a pubsub topic.
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
    this.jobNotificationEmails,
    this.pubSub,
    this.publishFindingsToCloudDataCatalog,
    this.publishSummaryToCscc,
    this.publishToStackdriver,
    this.saveFindings,
  });

  GooglePrivacyDlpV2Action.fromJson(core.Map _json)
      : this(
          jobNotificationEmails: _json.containsKey('jobNotificationEmails')
              ? GooglePrivacyDlpV2JobNotificationEmails.fromJson(
                  _json['jobNotificationEmails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pubSub: _json.containsKey('pubSub')
              ? GooglePrivacyDlpV2PublishToPubSub.fromJson(
                  _json['pubSub'] as core.Map<core.String, core.dynamic>)
              : null,
          publishFindingsToCloudDataCatalog: _json
                  .containsKey('publishFindingsToCloudDataCatalog')
              ? GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.fromJson(
                  _json['publishFindingsToCloudDataCatalog']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishSummaryToCscc: _json.containsKey('publishSummaryToCscc')
              ? GooglePrivacyDlpV2PublishSummaryToCscc.fromJson(
                  _json['publishSummaryToCscc']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishToStackdriver: _json.containsKey('publishToStackdriver')
              ? GooglePrivacyDlpV2PublishToStackdriver.fromJson(
                  _json['publishToStackdriver']
                      as core.Map<core.String, core.dynamic>)
              : null,
          saveFindings: _json.containsKey('saveFindings')
              ? GooglePrivacyDlpV2SaveFindings.fromJson(
                  _json['saveFindings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

/// Request message for ActivateJobTrigger.
typedef GooglePrivacyDlpV2ActivateJobTriggerRequest = $Empty;

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

  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(core.Map _json)
      : this(
          categoricalStatsResult: _json.containsKey('categoricalStatsResult')
              ? GooglePrivacyDlpV2CategoricalStatsResult.fromJson(
                  _json['categoricalStatsResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deltaPresenceEstimationResult:
              _json.containsKey('deltaPresenceEstimationResult')
                  ? GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(
                      _json['deltaPresenceEstimationResult']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kAnonymityResult: _json.containsKey('kAnonymityResult')
              ? GooglePrivacyDlpV2KAnonymityResult.fromJson(
                  _json['kAnonymityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kMapEstimationResult: _json.containsKey('kMapEstimationResult')
              ? GooglePrivacyDlpV2KMapEstimationResult.fromJson(
                  _json['kMapEstimationResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lDiversityResult: _json.containsKey('lDiversityResult')
              ? GooglePrivacyDlpV2LDiversityResult.fromJson(
                  _json['lDiversityResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          numericalStatsResult: _json.containsKey('numericalStatsResult')
              ? GooglePrivacyDlpV2NumericalStatsResult.fromJson(
                  _json['numericalStatsResult']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedOptions: _json.containsKey('requestedOptions')
              ? GooglePrivacyDlpV2RequestedRiskAnalysisOptions.fromJson(
                  _json['requestedOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedPrivacyMetric: _json.containsKey('requestedPrivacyMetric')
              ? GooglePrivacyDlpV2PrivacyMetric.fromJson(
                  _json['requestedPrivacyMetric']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestedSourceTable: _json.containsKey('requestedSourceTable')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  _json['requestedSourceTable']
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

  GooglePrivacyDlpV2AuxiliaryTable.fromJson(core.Map _json)
      : this(
          quasiIds: _json.containsKey('quasiIds')
              ? (_json['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2QuasiIdField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relativeFrequency: _json.containsKey('relativeFrequency')
              ? GooglePrivacyDlpV2FieldId.fromJson(_json['relativeFrequency']
                  as core.Map<core.String, core.dynamic>)
              : null,
          table: _json.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  _json['table'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quasiIds != null) 'quasiIds': quasiIds!,
        if (relativeFrequency != null) 'relativeFrequency': relativeFrequency!,
        if (table != null) 'table': table!,
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

  GooglePrivacyDlpV2BigQueryField.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          table: _json.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  _json['table'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2BigQueryKey.fromJson(core.Map _json)
      : this(
          rowNumber: _json.containsKey('rowNumber')
              ? _json['rowNumber'] as core.String
              : null,
          tableReference: _json.containsKey('tableReference')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(_json['tableReference']
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
  /// no findings.
  core.List<GooglePrivacyDlpV2FieldId>? excludedFields;

  /// Table fields that may uniquely identify a row within the table.
  ///
  /// When `actions.saveFindings.outputConfig.table` is specified, the values of
  /// columns specified here are available in the output table under
  /// `location.content_locations.record_location.record_key.id_values`. Nested
  /// fields such as `person.birthdate.year` are allowed.
  core.List<GooglePrivacyDlpV2FieldId>? identifyingFields;

  /// Limit scanning only to these fields.
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
  /// be used in conjunction with TimespanConfig.
  core.int? rowsLimitPercent;

  ///
  /// Possible string values are:
  /// - "SAMPLE_METHOD_UNSPECIFIED"
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

  GooglePrivacyDlpV2BigQueryOptions.fromJson(core.Map _json)
      : this(
          excludedFields: _json.containsKey('excludedFields')
              ? (_json['excludedFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          identifyingFields: _json.containsKey('identifyingFields')
              ? (_json['identifyingFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includedFields: _json.containsKey('includedFields')
              ? (_json['includedFields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rowsLimit: _json.containsKey('rowsLimit')
              ? _json['rowsLimit'] as core.String
              : null,
          rowsLimitPercent: _json.containsKey('rowsLimitPercent')
              ? _json['rowsLimitPercent'] as core.int
              : null,
          sampleMethod: _json.containsKey('sampleMethod')
              ? _json['sampleMethod'] as core.String
              : null,
          tableReference: _json.containsKey('tableReference')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(_json['tableReference']
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

  GooglePrivacyDlpV2BigQueryTable.fromJson(core.Map _json)
      : this(
          datasetId: _json.containsKey('datasetId')
              ? _json['datasetId'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetId != null) 'datasetId': datasetId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
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

  GooglePrivacyDlpV2BoundingBox.fromJson(core.Map _json)
      : this(
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          left: _json.containsKey('left') ? _json['left'] as core.int : null,
          top: _json.containsKey('top') ? _json['top'] as core.int : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
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

  GooglePrivacyDlpV2Bucket.fromJson(core.Map _json)
      : this(
          max: _json.containsKey('max')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['max'] as core.Map<core.String, core.dynamic>)
              : null,
          min: _json.containsKey('min')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['min'] as core.Map<core.String, core.dynamic>)
              : null,
          replacementValue: _json.containsKey('replacementValue')
              ? GooglePrivacyDlpV2Value.fromJson(_json['replacementValue']
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
/// https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
class GooglePrivacyDlpV2BucketingConfig {
  /// Set of buckets.
  ///
  /// Ranges must be non-overlapping.
  core.List<GooglePrivacyDlpV2Bucket>? buckets;

  GooglePrivacyDlpV2BucketingConfig({
    this.buckets,
  });

  GooglePrivacyDlpV2BucketingConfig.fromJson(core.Map _json)
      : this(
          buckets: _json.containsKey('buckets')
              ? (_json['buckets'] as core.List)
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

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  GooglePrivacyDlpV2ByteContentItem.fromJson(core.Map _json)
      : this(
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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

  GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2CategoricalStatsHistogramBucket.fromJson(core.Map _json)
      : this(
          bucketSize: _json.containsKey('bucketSize')
              ? _json['bucketSize'] as core.String
              : null,
          bucketValueCount: _json.containsKey('bucketValueCount')
              ? _json['bucketValueCount'] as core.String
              : null,
          bucketValues: _json.containsKey('bucketValues')
              ? (_json['bucketValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2ValueFrequency.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueFrequencyLowerBound:
              _json.containsKey('valueFrequencyLowerBound')
                  ? _json['valueFrequencyLowerBound'] as core.String
                  : null,
          valueFrequencyUpperBound:
              _json.containsKey('valueFrequencyUpperBound')
                  ? _json['valueFrequencyUpperBound'] as core.String
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

  GooglePrivacyDlpV2CategoricalStatsResult.fromJson(core.Map _json)
      : this(
          valueFrequencyHistogramBuckets:
              _json.containsKey('valueFrequencyHistogramBuckets')
                  ? (_json['valueFrequencyHistogramBuckets'] as core.List)
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
  /// count towards this tally.
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

  GooglePrivacyDlpV2CharacterMaskConfig.fromJson(core.Map _json)
      : this(
          charactersToIgnore: _json.containsKey('charactersToIgnore')
              ? (_json['charactersToIgnore'] as core.List)
                  .map((value) => GooglePrivacyDlpV2CharsToIgnore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maskingCharacter: _json.containsKey('maskingCharacter')
              ? _json['maskingCharacter'] as core.String
              : null,
          numberToMask: _json.containsKey('numberToMask')
              ? _json['numberToMask'] as core.int
              : null,
          reverseOrder: _json.containsKey('reverseOrder')
              ? _json['reverseOrder'] as core.bool
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

  GooglePrivacyDlpV2CharsToIgnore.fromJson(core.Map _json)
      : this(
          charactersToSkip: _json.containsKey('charactersToSkip')
              ? _json['charactersToSkip'] as core.String
              : null,
          commonCharactersToIgnore:
              _json.containsKey('commonCharactersToIgnore')
                  ? _json['commonCharactersToIgnore'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (charactersToSkip != null) 'charactersToSkip': charactersToSkip!,
        if (commonCharactersToIgnore != null)
          'commonCharactersToIgnore': commonCharactersToIgnore!,
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

  GooglePrivacyDlpV2CloudStorageFileSet.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

/// Options defining a file or a set of files within a Google Cloud Storage
/// bucket.
class GooglePrivacyDlpV2CloudStorageOptions {
  /// Max number of bytes to scan from a file.
  ///
  /// If a scanned file's size is bigger than this value then the rest of the
  /// bytes are omitted. Only one of bytes_limit_per_file and
  /// bytes_limit_per_file_percent can be specified. Cannot be set if
  /// de-identification is requested.
  core.String? bytesLimitPerFile;

  /// Max percentage of bytes to scan from a file.
  ///
  /// The rest are omitted. The number of bytes scanned is rounded down. Must be
  /// between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to
  /// 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can
  /// be specified. Cannot be set if de-identification is requested.
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

  ///
  /// Possible string values are:
  /// - "SAMPLE_METHOD_UNSPECIFIED"
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

  GooglePrivacyDlpV2CloudStorageOptions.fromJson(core.Map _json)
      : this(
          bytesLimitPerFile: _json.containsKey('bytesLimitPerFile')
              ? _json['bytesLimitPerFile'] as core.String
              : null,
          bytesLimitPerFilePercent:
              _json.containsKey('bytesLimitPerFilePercent')
                  ? _json['bytesLimitPerFilePercent'] as core.int
                  : null,
          fileSet: _json.containsKey('fileSet')
              ? GooglePrivacyDlpV2FileSet.fromJson(
                  _json['fileSet'] as core.Map<core.String, core.dynamic>)
              : null,
          fileTypes: _json.containsKey('fileTypes')
              ? (_json['fileTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          filesLimitPercent: _json.containsKey('filesLimitPercent')
              ? _json['filesLimitPercent'] as core.int
              : null,
          sampleMethod: _json.containsKey('sampleMethod')
              ? _json['sampleMethod'] as core.String
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
  /// A url representing a file or path (no wildcards) in Cloud Storage.
  ///
  /// Example: gs://\[BUCKET_NAME\]/dictionary.txt
  core.String? path;

  GooglePrivacyDlpV2CloudStoragePath({
    this.path,
  });

  GooglePrivacyDlpV2CloudStoragePath.fromJson(core.Map _json)
      : this(
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
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

  GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(core.Map _json)
      : this(
          bucketName: _json.containsKey('bucketName')
              ? _json['bucketName'] as core.String
              : null,
          excludeRegex: _json.containsKey('excludeRegex')
              ? (_json['excludeRegex'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeRegex: _json.containsKey('includeRegex')
              ? (_json['includeRegex'] as core.List)
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

  GooglePrivacyDlpV2Color.fromJson(core.Map _json)
      : this(
          blue: _json.containsKey('blue')
              ? (_json['blue'] as core.num).toDouble()
              : null,
          green: _json.containsKey('green')
              ? (_json['green'] as core.num).toDouble()
              : null,
          red: _json.containsKey('red')
              ? (_json['red'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blue != null) 'blue': blue!,
        if (green != null) 'green': green!,
        if (red != null) 'red': red!,
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

  GooglePrivacyDlpV2Condition.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          operator: _json.containsKey('operator')
              ? _json['operator'] as core.String
              : null,
          value: _json.containsKey('value')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2Conditions.fromJson(core.Map _json)
      : this(
          conditions: _json.containsKey('conditions')
              ? (_json['conditions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Condition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
      };
}

/// Represents a container that may contain DLP findings.
///
/// Examples of a container include a file, table, or database record.
class GooglePrivacyDlpV2Container {
  /// A string representation of the full container name.
  ///
  /// Examples: - BigQuery: 'Project:DataSetId.TableId' - Google Cloud Storage:
  /// 'gs://Bucket/folders/filename.txt'
  core.String? fullPath;

  /// Project where the finding was found.
  ///
  /// Can be different from the project that owns the finding.
  core.String? projectId;

  /// The rest of the path after the root.
  ///
  /// Examples: - For BigQuery table `project_id:dataset_id.table_id`, the
  /// relative path is `table_id` - Google Cloud Storage file
  /// `gs://bucket/folder/filename.txt`, the relative path is
  /// `folder/filename.txt`
  core.String? relativePath;

  /// The root of the container.
  ///
  /// Examples: - For BigQuery table `project_id:dataset_id.table_id`, the root
  /// is `dataset_id` - For Google Cloud Storage file
  /// `gs://bucket/folder/filename.txt`, the root is `gs://bucket`
  core.String? rootPath;

  /// Container type, for example BigQuery or Google Cloud Storage.
  core.String? type;

  /// Findings container modification timestamp, if applicable.
  ///
  /// For Google Cloud Storage contains last file modification timestamp. For
  /// BigQuery table contains last_modified_time property. For Datastore - not
  /// populated.
  core.String? updateTime;

  /// Findings container version, if available ("generation" for Google Cloud
  /// Storage).
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

  GooglePrivacyDlpV2Container.fromJson(core.Map _json)
      : this(
          fullPath: _json.containsKey('fullPath')
              ? _json['fullPath'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          relativePath: _json.containsKey('relativePath')
              ? _json['relativePath'] as core.String
              : null,
          rootPath: _json.containsKey('rootPath')
              ? _json['rootPath'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
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

/// Container structure for the content to inspect.
class GooglePrivacyDlpV2ContentItem {
  /// Content data to inspect or redact.
  ///
  /// Replaces `type` and `data`.
  GooglePrivacyDlpV2ByteContentItem? byteItem;

  /// Structured content for inspection.
  ///
  /// See https://cloud.google.com/dlp/docs/inspecting-text#inspecting_a_table
  /// to learn more.
  GooglePrivacyDlpV2Table? table;

  /// String data to inspect or redact.
  core.String? value;

  GooglePrivacyDlpV2ContentItem({
    this.byteItem,
    this.table,
    this.value,
  });

  GooglePrivacyDlpV2ContentItem.fromJson(core.Map _json)
      : this(
          byteItem: _json.containsKey('byteItem')
              ? GooglePrivacyDlpV2ByteContentItem.fromJson(
                  _json['byteItem'] as core.Map<core.String, core.dynamic>)
              : null,
          table: _json.containsKey('table')
              ? GooglePrivacyDlpV2Table.fromJson(
                  _json['table'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
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
  /// could be absent if the embedded object has no string identifier (for an
  /// example an image contained within a document).
  core.String? containerName;

  /// Findings container modification timestamp, if applicable.
  ///
  /// For Google Cloud Storage contains last file modification timestamp. For
  /// BigQuery table contains last_modified_time property. For Datastore - not
  /// populated.
  core.String? containerTimestamp;

  /// Findings container version, if available ("generation" for Google Cloud
  /// Storage).
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

  GooglePrivacyDlpV2ContentLocation.fromJson(core.Map _json)
      : this(
          containerName: _json.containsKey('containerName')
              ? _json['containerName'] as core.String
              : null,
          containerTimestamp: _json.containsKey('containerTimestamp')
              ? _json['containerTimestamp'] as core.String
              : null,
          containerVersion: _json.containsKey('containerVersion')
              ? _json['containerVersion'] as core.String
              : null,
          documentLocation: _json.containsKey('documentLocation')
              ? GooglePrivacyDlpV2DocumentLocation.fromJson(
                  _json['documentLocation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          imageLocation: _json.containsKey('imageLocation')
              ? GooglePrivacyDlpV2ImageLocation.fromJson(
                  _json['imageLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          metadataLocation: _json.containsKey('metadataLocation')
              ? GooglePrivacyDlpV2MetadataLocation.fromJson(
                  _json['metadataLocation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          recordLocation: _json.containsKey('recordLocation')
              ? GooglePrivacyDlpV2RecordLocation.fromJson(
                  _json['recordLocation']
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

  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(core.Map _json)
      : this(
          deidentifyTemplate: _json.containsKey('deidentifyTemplate')
              ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                  _json['deidentifyTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          templateId: _json.containsKey('templateId')
              ? _json['templateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
        if (locationId != null) 'locationId': locationId!,
        if (templateId != null) 'templateId': templateId!,
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

  GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(core.Map _json)
      : this(
          inspectJob: _json.containsKey('inspectJob')
              ? GooglePrivacyDlpV2InspectJobConfig.fromJson(
                  _json['inspectJob'] as core.Map<core.String, core.dynamic>)
              : null,
          jobId:
              _json.containsKey('jobId') ? _json['jobId'] as core.String : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          riskJob: _json.containsKey('riskJob')
              ? GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(
                  _json['riskJob'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(core.Map _json)
      : this(
          inspectTemplate: _json.containsKey('inspectTemplate')
              ? GooglePrivacyDlpV2InspectTemplate.fromJson(
                  _json['inspectTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          templateId: _json.containsKey('templateId')
              ? _json['templateId'] as core.String
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

  GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(core.Map _json)
      : this(
          jobTrigger: _json.containsKey('jobTrigger')
              ? GooglePrivacyDlpV2JobTrigger.fromJson(
                  _json['jobTrigger'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          triggerId: _json.containsKey('triggerId')
              ? _json['triggerId'] as core.String
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

  GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          storedInfoTypeId: _json.containsKey('storedInfoTypeId')
              ? _json['storedInfoTypeId'] as core.String
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
  /// `InfoTypeTransformation` is applied to both structured and non-structured
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

  GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cryptoKey: _json.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  _json['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
          surrogateInfoType: _json.containsKey('surrogateInfoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(_json['surrogateInfoType']
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
/// https://cloud.google.com/dlp/docs/pseudonymization to learn more.
class GooglePrivacyDlpV2CryptoHashConfig {
  /// The key used by the hash function.
  GooglePrivacyDlpV2CryptoKey? cryptoKey;

  GooglePrivacyDlpV2CryptoHashConfig({
    this.cryptoKey,
  });

  GooglePrivacyDlpV2CryptoHashConfig.fromJson(core.Map _json)
      : this(
          cryptoKey: _json.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  _json['cryptoKey'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2CryptoKey.fromJson(core.Map _json)
      : this(
          kmsWrapped: _json.containsKey('kmsWrapped')
              ? GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(
                  _json['kmsWrapped'] as core.Map<core.String, core.dynamic>)
              : null,
          transient: _json.containsKey('transient')
              ? GooglePrivacyDlpV2TransientCryptoKey.fromJson(
                  _json['transient'] as core.Map<core.String, core.dynamic>)
              : null,
          unwrapped: _json.containsKey('unwrapped')
              ? GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(
                  _json['unwrapped'] as core.Map<core.String, core.dynamic>)
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
/// https://cloud.google.com/dlp/docs/pseudonymization to learn more. Note: We
/// recommend using CryptoDeterministicConfig for all use cases which do not
/// require preserving the input alphabet space and size, plus warrant
/// referential integrity.
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
  /// `InfoTypeTransformation` is applied to both structured and non-structured
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
  /// \[`SurrogateType`\](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype).
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

  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(core.Map _json)
      : this(
          commonAlphabet: _json.containsKey('commonAlphabet')
              ? _json['commonAlphabet'] as core.String
              : null,
          context: _json.containsKey('context')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cryptoKey: _json.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  _json['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
          customAlphabet: _json.containsKey('customAlphabet')
              ? _json['customAlphabet'] as core.String
              : null,
          radix: _json.containsKey('radix') ? _json['radix'] as core.int : null,
          surrogateInfoType: _json.containsKey('surrogateInfoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(_json['surrogateInfoType']
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
  /// - "VERY_UNLIKELY" : Few matching elements.
  /// - "UNLIKELY"
  /// - "POSSIBLE" : Some matching elements.
  /// - "LIKELY"
  /// - "VERY_LIKELY" : Many matching elements.
  core.String? likelihood;

  /// Regular expression based CustomInfoType.
  GooglePrivacyDlpV2Regex? regex;

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
    this.storedType,
    this.surrogateType,
  });

  GooglePrivacyDlpV2CustomInfoType.fromJson(core.Map _json)
      : this(
          detectionRules: _json.containsKey('detectionRules')
              ? (_json['detectionRules'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DetectionRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dictionary: _json.containsKey('dictionary')
              ? GooglePrivacyDlpV2Dictionary.fromJson(
                  _json['dictionary'] as core.Map<core.String, core.dynamic>)
              : null,
          exclusionType: _json.containsKey('exclusionType')
              ? _json['exclusionType'] as core.String
              : null,
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          likelihood: _json.containsKey('likelihood')
              ? _json['likelihood'] as core.String
              : null,
          regex: _json.containsKey('regex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  _json['regex'] as core.Map<core.String, core.dynamic>)
              : null,
          storedType: _json.containsKey('storedType')
              ? GooglePrivacyDlpV2StoredType.fromJson(
                  _json['storedType'] as core.Map<core.String, core.dynamic>)
              : null,
          surrogateType: _json.containsKey('surrogateType')
              ? GooglePrivacyDlpV2SurrogateType.fromJson(
                  _json['surrogateType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectionRules != null) 'detectionRules': detectionRules!,
        if (dictionary != null) 'dictionary': dictionary!,
        if (exclusionType != null) 'exclusionType': exclusionType!,
        if (infoType != null) 'infoType': infoType!,
        if (likelihood != null) 'likelihood': likelihood!,
        if (regex != null) 'regex': regex!,
        if (storedType != null) 'storedType': storedType!,
        if (surrogateType != null) 'surrogateType': surrogateType!,
      };
}

/// Record key for a finding in Cloud Datastore.
class GooglePrivacyDlpV2DatastoreKey {
  /// Datastore entity key.
  GooglePrivacyDlpV2Key? entityKey;

  GooglePrivacyDlpV2DatastoreKey({
    this.entityKey,
  });

  GooglePrivacyDlpV2DatastoreKey.fromJson(core.Map _json)
      : this(
          entityKey: _json.containsKey('entityKey')
              ? GooglePrivacyDlpV2Key.fromJson(
                  _json['entityKey'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2DatastoreOptions.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind')
              ? GooglePrivacyDlpV2KindExpression.fromJson(
                  _json['kind'] as core.Map<core.String, core.dynamic>)
              : null,
          partitionId: _json.containsKey('partitionId')
              ? GooglePrivacyDlpV2PartitionId.fromJson(
                  _json['partitionId'] as core.Map<core.String, core.dynamic>)
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
/// See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.
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

  GooglePrivacyDlpV2DateShiftConfig.fromJson(core.Map _json)
      : this(
          context: _json.containsKey('context')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cryptoKey: _json.containsKey('cryptoKey')
              ? GooglePrivacyDlpV2CryptoKey.fromJson(
                  _json['cryptoKey'] as core.Map<core.String, core.dynamic>)
              : null,
          lowerBoundDays: _json.containsKey('lowerBoundDays')
              ? _json['lowerBoundDays'] as core.int
              : null,
          upperBoundDays: _json.containsKey('upperBoundDays')
              ? _json['upperBoundDays'] as core.int
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

  GooglePrivacyDlpV2DateTime.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? GoogleTypeDate.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          dayOfWeek: _json.containsKey('dayOfWeek')
              ? _json['dayOfWeek'] as core.String
              : null,
          time: _json.containsKey('time')
              ? GoogleTypeTimeOfDay.fromJson(
                  _json['time'] as core.Map<core.String, core.dynamic>)
              : null,
          timeZone: _json.containsKey('timeZone')
              ? GooglePrivacyDlpV2TimeZone.fromJson(
                  _json['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (time != null) 'time': time!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// The configuration that controls how the data will change.
class GooglePrivacyDlpV2DeidentifyConfig {
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
    this.infoTypeTransformations,
    this.recordTransformations,
    this.transformationErrorHandling,
  });

  GooglePrivacyDlpV2DeidentifyConfig.fromJson(core.Map _json)
      : this(
          infoTypeTransformations: _json.containsKey('infoTypeTransformations')
              ? GooglePrivacyDlpV2InfoTypeTransformations.fromJson(
                  _json['infoTypeTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          recordTransformations: _json.containsKey('recordTransformations')
              ? GooglePrivacyDlpV2RecordTransformations.fromJson(
                  _json['recordTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transformationErrorHandling:
              _json.containsKey('transformationErrorHandling')
                  ? GooglePrivacyDlpV2TransformationErrorHandling.fromJson(
                      _json['transformationErrorHandling']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoTypeTransformations != null)
          'infoTypeTransformations': infoTypeTransformations!,
        if (recordTransformations != null)
          'recordTransformations': recordTransformations!,
        if (transformationErrorHandling != null)
          'transformationErrorHandling': transformationErrorHandling!,
      };
}

/// Request to de-identify a list of items.
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
  /// Will be treated as text.
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

  GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(core.Map _json)
      : this(
          deidentifyConfig: _json.containsKey('deidentifyConfig')
              ? GooglePrivacyDlpV2DeidentifyConfig.fromJson(
                  _json['deidentifyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deidentifyTemplateName: _json.containsKey('deidentifyTemplateName')
              ? _json['deidentifyTemplateName'] as core.String
              : null,
          inspectConfig: _json.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  _json['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: _json.containsKey('inspectTemplateName')
              ? _json['inspectTemplateName'] as core.String
              : null,
          item: _json.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
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

  GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(core.Map _json)
      : this(
          item: _json.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
          overview: _json.containsKey('overview')
              ? GooglePrivacyDlpV2TransformationOverview.fromJson(
                  _json['overview'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
        if (overview != null) 'overview': overview!,
      };
}

/// DeidentifyTemplates contains instructions on how to de-identify content.
///
/// See https://cloud.google.com/dlp/docs/concepts-templates to learn more.
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

  GooglePrivacyDlpV2DeidentifyTemplate.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deidentifyConfig: _json.containsKey('deidentifyConfig')
              ? GooglePrivacyDlpV2DeidentifyConfig.fromJson(
                  _json['deidentifyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

  GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(core.Map _json)
      : this(
          auxiliaryTables: _json.containsKey('auxiliaryTables')
              ? (_json['auxiliaryTables'] as core.List)
                  .map((value) => GooglePrivacyDlpV2StatisticalTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quasiIds: _json.containsKey('quasiIds')
              ? (_json['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2QuasiId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
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
      core.Map _json)
      : this(
          bucketSize: _json.containsKey('bucketSize')
              ? _json['bucketSize'] as core.String
              : null,
          bucketValueCount: _json.containsKey('bucketValueCount')
              ? _json['bucketValueCount'] as core.String
              : null,
          bucketValues: _json.containsKey('bucketValues')
              ? (_json['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxProbability: _json.containsKey('maxProbability')
              ? (_json['maxProbability'] as core.num).toDouble()
              : null,
          minProbability: _json.containsKey('minProbability')
              ? (_json['minProbability'] as core.num).toDouble()
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
      core.Map _json)
      : this(
          estimatedProbability: _json.containsKey('estimatedProbability')
              ? (_json['estimatedProbability'] as core.num).toDouble()
              : null,
          quasiIdsValues: _json.containsKey('quasiIdsValues')
              ? (_json['quasiIdsValues'] as core.List)
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

  GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(core.Map _json)
      : this(
          deltaPresenceEstimationHistogram: _json
                  .containsKey('deltaPresenceEstimationHistogram')
              ? (_json['deltaPresenceEstimationHistogram'] as core.List)
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

  GooglePrivacyDlpV2DetectionRule.fromJson(core.Map _json)
      : this(
          hotwordRule: _json.containsKey('hotwordRule')
              ? GooglePrivacyDlpV2HotwordRule.fromJson(
                  _json['hotwordRule'] as core.Map<core.String, core.dynamic>)
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
/// [limits](https://cloud.google.com/dlp/limits) page contains details about
/// the size limits of dictionaries. For dictionaries that do not fit within
/// these constraints, consider using `LargeCustomDictionaryConfig` in the
/// `StoredInfoType` API.
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

  GooglePrivacyDlpV2Dictionary.fromJson(core.Map _json)
      : this(
          cloudStoragePath: _json.containsKey('cloudStoragePath')
              ? GooglePrivacyDlpV2CloudStoragePath.fromJson(
                  _json['cloudStoragePath']
                      as core.Map<core.String, core.dynamic>)
              : null,
          wordList: _json.containsKey('wordList')
              ? GooglePrivacyDlpV2WordList.fromJson(
                  _json['wordList'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudStoragePath != null) 'cloudStoragePath': cloudStoragePath!,
        if (wordList != null) 'wordList': wordList!,
      };
}

/// Combines all of the information about a DLP job.
class GooglePrivacyDlpV2DlpJob {
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
  /// - "CANCELED" : The job was canceled before it could complete.
  /// - "FAILED" : The job had an error and did not complete.
  /// - "ACTIVE" : The job is currently accepting findings via hybridInspect. A
  /// hybrid job in ACTIVE state may continue to have findings added to it
  /// through calling of hybridInspect. After the job has finished no more calls
  /// to hybridInspect may be made. ACTIVE jobs can transition to DONE.
  core.String? state;

  /// The type of job.
  /// Possible string values are:
  /// - "DLP_JOB_TYPE_UNSPECIFIED" : Defaults to INSPECT_JOB.
  /// - "INSPECT_JOB" : The job inspected Google Cloud for sensitive data.
  /// - "RISK_ANALYSIS_JOB" : The job executed a Risk Analysis computation.
  core.String? type;

  GooglePrivacyDlpV2DlpJob({
    this.createTime,
    this.endTime,
    this.errors,
    this.inspectDetails,
    this.jobTriggerName,
    this.name,
    this.riskDetails,
    this.startTime,
    this.state,
    this.type,
  });

  GooglePrivacyDlpV2DlpJob.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectDetails: _json.containsKey('inspectDetails')
              ? GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(
                  _json['inspectDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          jobTriggerName: _json.containsKey('jobTriggerName')
              ? _json['jobTriggerName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          riskDetails: _json.containsKey('riskDetails')
              ? GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(
                  _json['riskDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (errors != null) 'errors': errors!,
        if (inspectDetails != null) 'inspectDetails': inspectDetails!,
        if (jobTriggerName != null) 'jobTriggerName': jobTriggerName!,
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

  GooglePrivacyDlpV2DocumentLocation.fromJson(core.Map _json)
      : this(
          fileOffset: _json.containsKey('fileOffset')
              ? _json['fileOffset'] as core.String
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

  GooglePrivacyDlpV2EntityId.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
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
  core.List<core.String>? timestamps;

  GooglePrivacyDlpV2Error({
    this.details,
    this.timestamps,
  });

  GooglePrivacyDlpV2Error.fromJson(core.Map _json)
      : this(
          details: _json.containsKey('details')
              ? GoogleRpcStatus.fromJson(
                  _json['details'] as core.Map<core.String, core.dynamic>)
              : null,
          timestamps: _json.containsKey('timestamps')
              ? (_json['timestamps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (timestamps != null) 'timestamps': timestamps!,
      };
}

/// List of exclude infoTypes.
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

  GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(core.Map _json)
      : this(
          infoTypes: _json.containsKey('infoTypes')
              ? (_json['infoTypes'] as core.List)
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
    this.excludeInfoTypes,
    this.matchingType,
    this.regex,
  });

  GooglePrivacyDlpV2ExclusionRule.fromJson(core.Map _json)
      : this(
          dictionary: _json.containsKey('dictionary')
              ? GooglePrivacyDlpV2Dictionary.fromJson(
                  _json['dictionary'] as core.Map<core.String, core.dynamic>)
              : null,
          excludeInfoTypes: _json.containsKey('excludeInfoTypes')
              ? GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(
                  _json['excludeInfoTypes']
                      as core.Map<core.String, core.dynamic>)
              : null,
          matchingType: _json.containsKey('matchingType')
              ? _json['matchingType'] as core.String
              : null,
          regex: _json.containsKey('regex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  _json['regex'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dictionary != null) 'dictionary': dictionary!,
        if (excludeInfoTypes != null) 'excludeInfoTypes': excludeInfoTypes!,
        if (matchingType != null) 'matchingType': matchingType!,
        if (regex != null) 'regex': regex!,
      };
}

/// An expression, consisting or an operator and conditions.
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

  GooglePrivacyDlpV2Expressions.fromJson(core.Map _json)
      : this(
          conditions: _json.containsKey('conditions')
              ? GooglePrivacyDlpV2Conditions.fromJson(
                  _json['conditions'] as core.Map<core.String, core.dynamic>)
              : null,
          logicalOperator: _json.containsKey('logicalOperator')
              ? _json['logicalOperator'] as core.String
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

  GooglePrivacyDlpV2FieldId.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
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

  GooglePrivacyDlpV2FieldTransformation.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? GooglePrivacyDlpV2RecordCondition.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          infoTypeTransformations: _json.containsKey('infoTypeTransformations')
              ? GooglePrivacyDlpV2InfoTypeTransformations.fromJson(
                  _json['infoTypeTransformations']
                      as core.Map<core.String, core.dynamic>)
              : null,
          primitiveTransformation: _json.containsKey('primitiveTransformation')
              ? GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
                  _json['primitiveTransformation']
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

  GooglePrivacyDlpV2FileSet.fromJson(core.Map _json)
      : this(
          regexFileSet: _json.containsKey('regexFileSet')
              ? GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(
                  _json['regexFileSet'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
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
  /// - "VERY_UNLIKELY" : Few matching elements.
  /// - "UNLIKELY"
  /// - "POSSIBLE" : Some matching elements.
  /// - "LIKELY"
  /// - "VERY_LIKELY" : Many matching elements.
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

  GooglePrivacyDlpV2Finding.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          findingId: _json.containsKey('findingId')
              ? _json['findingId'] as core.String
              : null,
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          jobCreateTime: _json.containsKey('jobCreateTime')
              ? _json['jobCreateTime'] as core.String
              : null,
          jobName: _json.containsKey('jobName')
              ? _json['jobName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          likelihood: _json.containsKey('likelihood')
              ? _json['likelihood'] as core.String
              : null,
          location: _json.containsKey('location')
              ? GooglePrivacyDlpV2Location.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          quote:
              _json.containsKey('quote') ? _json['quote'] as core.String : null,
          quoteInfo: _json.containsKey('quoteInfo')
              ? GooglePrivacyDlpV2QuoteInfo.fromJson(
                  _json['quoteInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
          triggerName: _json.containsKey('triggerName')
              ? _json['triggerName'] as core.String
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
/// This is not used for de-identification or data profiling.
class GooglePrivacyDlpV2FindingLimits {
  /// Configuration of findings limit given for specified infoTypes.
  core.List<GooglePrivacyDlpV2InfoTypeLimit>? maxFindingsPerInfoType;

  /// Max number of findings that will be returned for each item scanned.
  ///
  /// When set within `InspectJobConfig`, the maximum returned is 2000
  /// regardless if this is set higher. When set within `InspectContentRequest`,
  /// this field is ignored.
  core.int? maxFindingsPerItem;

  /// Max number of findings that will be returned per request/job.
  ///
  /// When set within `InspectContentRequest`, the maximum returned is 2000
  /// regardless if this is set higher.
  core.int? maxFindingsPerRequest;

  GooglePrivacyDlpV2FindingLimits({
    this.maxFindingsPerInfoType,
    this.maxFindingsPerItem,
    this.maxFindingsPerRequest,
  });

  GooglePrivacyDlpV2FindingLimits.fromJson(core.Map _json)
      : this(
          maxFindingsPerInfoType: _json.containsKey('maxFindingsPerInfoType')
              ? (_json['maxFindingsPerInfoType'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeLimit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxFindingsPerItem: _json.containsKey('maxFindingsPerItem')
              ? _json['maxFindingsPerItem'] as core.int
              : null,
          maxFindingsPerRequest: _json.containsKey('maxFindingsPerRequest')
              ? _json['maxFindingsPerRequest'] as core.int
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
/// https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
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

  GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(core.Map _json)
      : this(
          bucketSize: _json.containsKey('bucketSize')
              ? (_json['bucketSize'] as core.num).toDouble()
              : null,
          lowerBound: _json.containsKey('lowerBound')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['lowerBound'] as core.Map<core.String, core.dynamic>)
              : null,
          upperBound: _json.containsKey('upperBound')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['upperBound'] as core.Map<core.String, core.dynamic>)
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

  /// Proximity of the finding within which the entire hotword must reside.
  ///
  /// The total length of the window cannot exceed 1000 characters. Note that
  /// the finding itself will be included in the window, so that hotwords may be
  /// used to match substrings of the finding itself. For example, the certainty
  /// of a phone number regex "\(\d{3}\) \d{3}-\d{4}" could be adjusted upwards
  /// if the area code is known to be the local area code of a company office
  /// using the hotword regex "\(xxx\)", where "xxx" is the area code in
  /// question.
  GooglePrivacyDlpV2Proximity? proximity;

  GooglePrivacyDlpV2HotwordRule({
    this.hotwordRegex,
    this.likelihoodAdjustment,
    this.proximity,
  });

  GooglePrivacyDlpV2HotwordRule.fromJson(core.Map _json)
      : this(
          hotwordRegex: _json.containsKey('hotwordRegex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  _json['hotwordRegex'] as core.Map<core.String, core.dynamic>)
              : null,
          likelihoodAdjustment: _json.containsKey('likelihoodAdjustment')
              ? GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(
                  _json['likelihoodAdjustment']
                      as core.Map<core.String, core.dynamic>)
              : null,
          proximity: _json.containsKey('proximity')
              ? GooglePrivacyDlpV2Proximity.fromJson(
                  _json['proximity'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2HybridContentItem.fromJson(core.Map _json)
      : this(
          findingDetails: _json.containsKey('findingDetails')
              ? GooglePrivacyDlpV2HybridFindingDetails.fromJson(
                  _json['findingDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          item: _json.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2HybridFindingDetails.fromJson(core.Map _json)
      : this(
          containerDetails: _json.containsKey('containerDetails')
              ? GooglePrivacyDlpV2Container.fromJson(_json['containerDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fileOffset: _json.containsKey('fileOffset')
              ? _json['fileOffset'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          rowOffset: _json.containsKey('rowOffset')
              ? _json['rowOffset'] as core.String
              : null,
          tableOptions: _json.containsKey('tableOptions')
              ? GooglePrivacyDlpV2TableOptions.fromJson(
                  _json['tableOptions'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2HybridInspectDlpJobRequest.fromJson(core.Map _json)
      : this(
          hybridItem: _json.containsKey('hybridItem')
              ? GooglePrivacyDlpV2HybridContentItem.fromJson(
                  _json['hybridItem'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2HybridInspectJobTriggerRequest.fromJson(core.Map _json)
      : this(
          hybridItem: _json.containsKey('hybridItem')
              ? GooglePrivacyDlpV2HybridContentItem.fromJson(
                  _json['hybridItem'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2HybridInspectStatistics.fromJson(core.Map _json)
      : this(
          abortedCount: _json.containsKey('abortedCount')
              ? _json['abortedCount'] as core.String
              : null,
          pendingCount: _json.containsKey('pendingCount')
              ? _json['pendingCount'] as core.String
              : null,
          processedCount: _json.containsKey('processedCount')
              ? _json['processedCount'] as core.String
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

  GooglePrivacyDlpV2HybridOptions.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          requiredFindingLabelKeys:
              _json.containsKey('requiredFindingLabelKeys')
                  ? (_json['requiredFindingLabelKeys'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          tableOptions: _json.containsKey('tableOptions')
              ? GooglePrivacyDlpV2TableOptions.fromJson(
                  _json['tableOptions'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2ImageLocation.fromJson(core.Map _json)
      : this(
          boundingBoxes: _json.containsKey('boundingBoxes')
              ? (_json['boundingBoxes'] as core.List)
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

  GooglePrivacyDlpV2ImageRedactionConfig.fromJson(core.Map _json)
      : this(
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          redactAllText: _json.containsKey('redactAllText')
              ? _json['redactAllText'] as core.bool
              : null,
          redactionColor: _json.containsKey('redactionColor')
              ? GooglePrivacyDlpV2Color.fromJson(_json['redactionColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infoType != null) 'infoType': infoType!,
        if (redactAllText != null) 'redactAllText': redactAllText!,
        if (redactionColor != null) 'redactionColor': redactionColor!,
      };
}

/// Type of information detected by the API.
class GooglePrivacyDlpV2InfoType {
  /// Name of the information type.
  ///
  /// Either a name of your choosing when creating a CustomInfoType, or one of
  /// the names listed at https://cloud.google.com/dlp/docs/infotypes-reference
  /// when specifying a built-in type. When sending Cloud DLP results to Data
  /// Catalog, infoType names should conform to the pattern
  /// `[A-Za-z0-9$-_]{1,64}`.
  core.String? name;

  /// Optional version name for this InfoType.
  core.String? version;

  GooglePrivacyDlpV2InfoType({
    this.name,
    this.version,
  });

  GooglePrivacyDlpV2InfoType.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// InfoType description.
class GooglePrivacyDlpV2InfoTypeDescription {
  /// Description of the infotype.
  ///
  /// Translated when language is provided in the request.
  core.String? description;

  /// Human readable form of the infoType name.
  core.String? displayName;

  /// Internal name of the infoType.
  core.String? name;

  /// Which parts of the API supports this InfoType.
  core.List<core.String>? supportedBy;

  GooglePrivacyDlpV2InfoTypeDescription({
    this.description,
    this.displayName,
    this.name,
    this.supportedBy,
  });

  GooglePrivacyDlpV2InfoTypeDescription.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          supportedBy: _json.containsKey('supportedBy')
              ? (_json['supportedBy'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (supportedBy != null) 'supportedBy': supportedBy!,
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

  GooglePrivacyDlpV2InfoTypeLimit.fromJson(core.Map _json)
      : this(
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          maxFindings: _json.containsKey('maxFindings')
              ? _json['maxFindings'] as core.int
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

  GooglePrivacyDlpV2InfoTypeStats.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
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

  GooglePrivacyDlpV2InfoTypeTransformation.fromJson(core.Map _json)
      : this(
          infoTypes: _json.containsKey('infoTypes')
              ? (_json['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          primitiveTransformation: _json.containsKey('primitiveTransformation')
              ? GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
                  _json['primitiveTransformation']
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

  GooglePrivacyDlpV2InfoTypeTransformations.fromJson(core.Map _json)
      : this(
          transformations: _json.containsKey('transformations')
              ? (_json['transformations'] as core.List)
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
  /// See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn
  /// more.
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
  /// listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no
  /// InfoTypes or CustomInfoTypes are specified in a request, the system may
  /// automatically choose what detectors to run. By default this may be all
  /// types, but may change over time as detectors are updated. If you need
  /// precise control and predictability as to what detectors are run you should
  /// specify specific InfoTypes listed in the reference, otherwise a default
  /// list will be used, which may change over time.
  core.List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Configuration to control the number of findings returned.
  ///
  /// This is not used for data profiling.
  GooglePrivacyDlpV2FindingLimits? limits;

  /// Only returns findings equal or above this threshold.
  ///
  /// The default is POSSIBLE. See https://cloud.google.com/dlp/docs/likelihood
  /// to learn more.
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Default value; same as POSSIBLE.
  /// - "VERY_UNLIKELY" : Few matching elements.
  /// - "UNLIKELY"
  /// - "POSSIBLE" : Some matching elements.
  /// - "LIKELY"
  /// - "VERY_LIKELY" : Many matching elements.
  core.String? minLikelihood;

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
    this.ruleSet,
  });

  GooglePrivacyDlpV2InspectConfig.fromJson(core.Map _json)
      : this(
          contentOptions: _json.containsKey('contentOptions')
              ? (_json['contentOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customInfoTypes: _json.containsKey('customInfoTypes')
              ? (_json['customInfoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2CustomInfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          excludeInfoTypes: _json.containsKey('excludeInfoTypes')
              ? _json['excludeInfoTypes'] as core.bool
              : null,
          includeQuote: _json.containsKey('includeQuote')
              ? _json['includeQuote'] as core.bool
              : null,
          infoTypes: _json.containsKey('infoTypes')
              ? (_json['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limits: _json.containsKey('limits')
              ? GooglePrivacyDlpV2FindingLimits.fromJson(
                  _json['limits'] as core.Map<core.String, core.dynamic>)
              : null,
          minLikelihood: _json.containsKey('minLikelihood')
              ? _json['minLikelihood'] as core.String
              : null,
          ruleSet: _json.containsKey('ruleSet')
              ? (_json['ruleSet'] as core.List)
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

  GooglePrivacyDlpV2InspectContentRequest.fromJson(core.Map _json)
      : this(
          inspectConfig: _json.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  _json['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: _json.containsKey('inspectTemplateName')
              ? _json['inspectTemplateName'] as core.String
              : null,
          item: _json.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
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

  GooglePrivacyDlpV2InspectContentResponse.fromJson(core.Map _json)
      : this(
          result: _json.containsKey('result')
              ? GooglePrivacyDlpV2InspectResult.fromJson(
                  _json['result'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(core.Map _json)
      : this(
          requestedOptions: _json.containsKey('requestedOptions')
              ? GooglePrivacyDlpV2RequestedOptions.fromJson(
                  _json['requestedOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          result: _json.containsKey('result')
              ? GooglePrivacyDlpV2Result.fromJson(
                  _json['result'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2InspectJobConfig.fromJson(core.Map _json)
      : this(
          actions: _json.containsKey('actions')
              ? (_json['actions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectConfig: _json.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  _json['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: _json.containsKey('inspectTemplateName')
              ? _json['inspectTemplateName'] as core.String
              : null,
          storageConfig: _json.containsKey('storageConfig')
              ? GooglePrivacyDlpV2StorageConfig.fromJson(
                  _json['storageConfig'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2InspectResult.fromJson(core.Map _json)
      : this(
          findings: _json.containsKey('findings')
              ? (_json['findings'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Finding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          findingsTruncated: _json.containsKey('findingsTruncated')
              ? _json['findingsTruncated'] as core.bool
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
/// See https://cloud.google.com/dlp/docs/concepts-templates to learn more.
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

  GooglePrivacyDlpV2InspectTemplate.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          inspectConfig: _json.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  _json['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

  GooglePrivacyDlpV2InspectionRule.fromJson(core.Map _json)
      : this(
          exclusionRule: _json.containsKey('exclusionRule')
              ? GooglePrivacyDlpV2ExclusionRule.fromJson(
                  _json['exclusionRule'] as core.Map<core.String, core.dynamic>)
              : null,
          hotwordRule: _json.containsKey('hotwordRule')
              ? GooglePrivacyDlpV2HotwordRule.fromJson(
                  _json['hotwordRule'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2InspectionRuleSet.fromJson(core.Map _json)
      : this(
          infoTypes: _json.containsKey('infoTypes')
              ? (_json['infoTypes'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rules: _json.containsKey('rules')
              ? (_json['rules'] as core.List)
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

/// Enable email notification to project owners and editors on jobs's
/// completion/failure.
typedef GooglePrivacyDlpV2JobNotificationEmails = $Empty;

/// Contains a configuration to make dlp api calls on a repeating basis.
///
/// See https://cloud.google.com/dlp/docs/concepts-job-triggers to learn more.
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

  GooglePrivacyDlpV2JobTrigger.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inspectJob: _json.containsKey('inspectJob')
              ? GooglePrivacyDlpV2InspectJobConfig.fromJson(
                  _json['inspectJob'] as core.Map<core.String, core.dynamic>)
              : null,
          lastRunTime: _json.containsKey('lastRunTime')
              ? _json['lastRunTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          triggers: _json.containsKey('triggers')
              ? (_json['triggers'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Trigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

  GooglePrivacyDlpV2KAnonymityConfig.fromJson(core.Map _json)
      : this(
          entityId: _json.containsKey('entityId')
              ? GooglePrivacyDlpV2EntityId.fromJson(
                  _json['entityId'] as core.Map<core.String, core.dynamic>)
              : null,
          quasiIds: _json.containsKey('quasiIds')
              ? (_json['quasiIds'] as core.List)
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

  GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(core.Map _json)
      : this(
          equivalenceClassSize: _json.containsKey('equivalenceClassSize')
              ? _json['equivalenceClassSize'] as core.String
              : null,
          quasiIdsValues: _json.containsKey('quasiIdsValues')
              ? (_json['quasiIdsValues'] as core.List)
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

  GooglePrivacyDlpV2KAnonymityHistogramBucket.fromJson(core.Map _json)
      : this(
          bucketSize: _json.containsKey('bucketSize')
              ? _json['bucketSize'] as core.String
              : null,
          bucketValueCount: _json.containsKey('bucketValueCount')
              ? _json['bucketValueCount'] as core.String
              : null,
          bucketValues: _json.containsKey('bucketValues')
              ? (_json['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          equivalenceClassSizeLowerBound:
              _json.containsKey('equivalenceClassSizeLowerBound')
                  ? _json['equivalenceClassSizeLowerBound'] as core.String
                  : null,
          equivalenceClassSizeUpperBound:
              _json.containsKey('equivalenceClassSizeUpperBound')
                  ? _json['equivalenceClassSizeUpperBound'] as core.String
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

  GooglePrivacyDlpV2KAnonymityResult.fromJson(core.Map _json)
      : this(
          equivalenceClassHistogramBuckets:
              _json.containsKey('equivalenceClassHistogramBuckets')
                  ? (_json['equivalenceClassHistogramBuckets'] as core.List)
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

  GooglePrivacyDlpV2KMapEstimationConfig.fromJson(core.Map _json)
      : this(
          auxiliaryTables: _json.containsKey('auxiliaryTables')
              ? (_json['auxiliaryTables'] as core.List)
                  .map((value) => GooglePrivacyDlpV2AuxiliaryTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quasiIds: _json.containsKey('quasiIds')
              ? (_json['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2TaggedField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
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

  GooglePrivacyDlpV2KMapEstimationHistogramBucket.fromJson(core.Map _json)
      : this(
          bucketSize: _json.containsKey('bucketSize')
              ? _json['bucketSize'] as core.String
              : null,
          bucketValueCount: _json.containsKey('bucketValueCount')
              ? _json['bucketValueCount'] as core.String
              : null,
          bucketValues: _json.containsKey('bucketValues')
              ? (_json['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxAnonymity: _json.containsKey('maxAnonymity')
              ? _json['maxAnonymity'] as core.String
              : null,
          minAnonymity: _json.containsKey('minAnonymity')
              ? _json['minAnonymity'] as core.String
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

  GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(core.Map _json)
      : this(
          estimatedAnonymity: _json.containsKey('estimatedAnonymity')
              ? _json['estimatedAnonymity'] as core.String
              : null,
          quasiIdsValues: _json.containsKey('quasiIdsValues')
              ? (_json['quasiIdsValues'] as core.List)
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

  GooglePrivacyDlpV2KMapEstimationResult.fromJson(core.Map _json)
      : this(
          kMapEstimationHistogram: _json.containsKey('kMapEstimationHistogram')
              ? (_json['kMapEstimationHistogram'] as core.List)
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

  GooglePrivacyDlpV2Key.fromJson(core.Map _json)
      : this(
          partitionId: _json.containsKey('partitionId')
              ? GooglePrivacyDlpV2PartitionId.fromJson(
                  _json['partitionId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: _json.containsKey('path')
              ? (_json['path'] as core.List)
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
/// [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
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

  set wrappedKeyAsBytes(core.List<core.int> _bytes) {
    wrappedKey =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GooglePrivacyDlpV2KmsWrappedCryptoKey({
    this.cryptoKeyName,
    this.wrappedKey,
  });

  GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(core.Map _json)
      : this(
          cryptoKeyName: _json.containsKey('cryptoKeyName')
              ? _json['cryptoKeyName'] as core.String
              : null,
          wrappedKey: _json.containsKey('wrappedKey')
              ? _json['wrappedKey'] as core.String
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

  GooglePrivacyDlpV2LDiversityConfig.fromJson(core.Map _json)
      : this(
          quasiIds: _json.containsKey('quasiIds')
              ? (_json['quasiIds'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sensitiveAttribute: _json.containsKey('sensitiveAttribute')
              ? GooglePrivacyDlpV2FieldId.fromJson(_json['sensitiveAttribute']
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

  GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(core.Map _json)
      : this(
          equivalenceClassSize: _json.containsKey('equivalenceClassSize')
              ? _json['equivalenceClassSize'] as core.String
              : null,
          numDistinctSensitiveValues:
              _json.containsKey('numDistinctSensitiveValues')
                  ? _json['numDistinctSensitiveValues'] as core.String
                  : null,
          quasiIdsValues: _json.containsKey('quasiIdsValues')
              ? (_json['quasiIdsValues'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          topSensitiveValues: _json.containsKey('topSensitiveValues')
              ? (_json['topSensitiveValues'] as core.List)
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

  GooglePrivacyDlpV2LDiversityHistogramBucket.fromJson(core.Map _json)
      : this(
          bucketSize: _json.containsKey('bucketSize')
              ? _json['bucketSize'] as core.String
              : null,
          bucketValueCount: _json.containsKey('bucketValueCount')
              ? _json['bucketValueCount'] as core.String
              : null,
          bucketValues: _json.containsKey('bucketValues')
              ? (_json['bucketValues'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sensitiveValueFrequencyLowerBound:
              _json.containsKey('sensitiveValueFrequencyLowerBound')
                  ? _json['sensitiveValueFrequencyLowerBound'] as core.String
                  : null,
          sensitiveValueFrequencyUpperBound:
              _json.containsKey('sensitiveValueFrequencyUpperBound')
                  ? _json['sensitiveValueFrequencyUpperBound'] as core.String
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

  GooglePrivacyDlpV2LDiversityResult.fromJson(core.Map _json)
      : this(
          sensitiveValueFrequencyHistogramBuckets: _json
                  .containsKey('sensitiveValueFrequencyHistogramBuckets')
              ? (_json['sensitiveValueFrequencyHistogramBuckets'] as core.List)
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
/// [limits](https://cloud.google.com/dlp/limits) page.
///
/// The artifacts of dictionary creation are stored in the specified Google
/// Cloud Storage location. Consider using `CustomInfoType.Dictionary` for
/// smaller dictionaries that satisfy the size requirements.
class GooglePrivacyDlpV2LargeCustomDictionaryConfig {
  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  GooglePrivacyDlpV2BigQueryField? bigQueryField;

  /// Set of files containing newline-delimited lists of dictionary phrases.
  GooglePrivacyDlpV2CloudStorageFileSet? cloudStorageFileSet;

  /// Location to store dictionary artifacts in Google Cloud Storage.
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

  GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(core.Map _json)
      : this(
          bigQueryField: _json.containsKey('bigQueryField')
              ? GooglePrivacyDlpV2BigQueryField.fromJson(
                  _json['bigQueryField'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudStorageFileSet: _json.containsKey('cloudStorageFileSet')
              ? GooglePrivacyDlpV2CloudStorageFileSet.fromJson(
                  _json['cloudStorageFileSet']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outputPath: _json.containsKey('outputPath')
              ? GooglePrivacyDlpV2CloudStoragePath.fromJson(
                  _json['outputPath'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(core.Map _json)
      : this(
          approxNumPhrases: _json.containsKey('approxNumPhrases')
              ? _json['approxNumPhrases'] as core.String
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
  /// - "VERY_UNLIKELY" : Few matching elements.
  /// - "UNLIKELY"
  /// - "POSSIBLE" : Some matching elements.
  /// - "LIKELY"
  /// - "VERY_LIKELY" : Many matching elements.
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

  GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(core.Map _json)
      : this(
          fixedLikelihood: _json.containsKey('fixedLikelihood')
              ? _json['fixedLikelihood'] as core.String
              : null,
          relativeLikelihood: _json.containsKey('relativeLikelihood')
              ? _json['relativeLikelihood'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedLikelihood != null) 'fixedLikelihood': fixedLikelihood!,
        if (relativeLikelihood != null)
          'relativeLikelihood': relativeLikelihood!,
      };
}

/// Response message for ListDeidentifyTemplates.
class GooglePrivacyDlpV2ListDeidentifyTemplatesResponse {
  /// List of deidentify templates, up to page_size in
  /// ListDeidentifyTemplatesRequest.
  core.List<GooglePrivacyDlpV2DeidentifyTemplate>? deidentifyTemplates;

  /// If the next page is available then the next page token to be used in
  /// following ListDeidentifyTemplates request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse({
    this.deidentifyTemplates,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(core.Map _json)
      : this(
          deidentifyTemplates: _json.containsKey('deidentifyTemplates')
              ? (_json['deidentifyTemplates'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplates != null)
          'deidentifyTemplates': deidentifyTemplates!,
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

  GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(core.Map _json)
      : this(
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => GooglePrivacyDlpV2DlpJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(core.Map _json)
      : this(
          infoTypes: _json.containsKey('infoTypes')
              ? (_json['infoTypes'] as core.List)
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

  /// If the next page is available then the next page token to be used in
  /// following ListInspectTemplates request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListInspectTemplatesResponse({
    this.inspectTemplates,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(core.Map _json)
      : this(
          inspectTemplates: _json.containsKey('inspectTemplates')
              ? (_json['inspectTemplates'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InspectTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  /// If the next page is available then the next page token to be used in
  /// following ListJobTriggers request.
  core.String? nextPageToken;

  GooglePrivacyDlpV2ListJobTriggersResponse({
    this.jobTriggers,
    this.nextPageToken,
  });

  GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(core.Map _json)
      : this(
          jobTriggers: _json.containsKey('jobTriggers')
              ? (_json['jobTriggers'] as core.List)
                  .map((value) => GooglePrivacyDlpV2JobTrigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobTriggers != null) 'jobTriggers': jobTriggers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListStoredInfoTypes.
class GooglePrivacyDlpV2ListStoredInfoTypesResponse {
  /// If the next page is available then the next page token to be used in
  /// following ListStoredInfoTypes request.
  core.String? nextPageToken;

  /// List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest.
  core.List<GooglePrivacyDlpV2StoredInfoType>? storedInfoTypes;

  GooglePrivacyDlpV2ListStoredInfoTypesResponse({
    this.nextPageToken,
    this.storedInfoTypes,
  });

  GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          storedInfoTypes: _json.containsKey('storedInfoTypes')
              ? (_json['storedInfoTypes'] as core.List)
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

  GooglePrivacyDlpV2Location.fromJson(core.Map _json)
      : this(
          byteRange: _json.containsKey('byteRange')
              ? GooglePrivacyDlpV2Range.fromJson(
                  _json['byteRange'] as core.Map<core.String, core.dynamic>)
              : null,
          codepointRange: _json.containsKey('codepointRange')
              ? GooglePrivacyDlpV2Range.fromJson(_json['codepointRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          container: _json.containsKey('container')
              ? GooglePrivacyDlpV2Container.fromJson(
                  _json['container'] as core.Map<core.String, core.dynamic>)
              : null,
          contentLocations: _json.containsKey('contentLocations')
              ? (_json['contentLocations'] as core.List)
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

  GooglePrivacyDlpV2MetadataLocation.fromJson(core.Map _json)
      : this(
          storageLabel: _json.containsKey('storageLabel')
              ? GooglePrivacyDlpV2StorageMetadataLabel.fromJson(
                  _json['storageLabel'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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

  GooglePrivacyDlpV2NumericalStatsConfig.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2NumericalStatsResult.fromJson(core.Map _json)
      : this(
          maxValue: _json.containsKey('maxValue')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: _json.containsKey('minValue')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['minValue'] as core.Map<core.String, core.dynamic>)
              : null,
          quantileValues: _json.containsKey('quantileValues')
              ? (_json['quantileValues'] as core.List)
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
  /// - "GCS_COLUMNS" : Schema tailored to findings from scanning Google Cloud
  /// Storage.
  /// - "DATASTORE_COLUMNS" : Schema tailored to findings from scanning Google
  /// Datastore.
  /// - "BIG_QUERY_COLUMNS" : Schema tailored to findings from scanning Google
  /// BigQuery.
  /// - "ALL_COLUMNS" : Schema containing all columns.
  core.String? outputSchema;

  /// Store findings in an existing table or a new table in an existing dataset.
  ///
  /// If table_id is not set a new one will be generated for you with the
  /// following format: dlp_googleapis_yyyy_mm_dd_\[dlp_job_id\]. Pacific
  /// timezone will be used for generating the date details. For Inspect, each
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

  GooglePrivacyDlpV2OutputStorageConfig.fromJson(core.Map _json)
      : this(
          outputSchema: _json.containsKey('outputSchema')
              ? _json['outputSchema'] as core.String
              : null,
          table: _json.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  _json['table'] as core.Map<core.String, core.dynamic>)
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
typedef GooglePrivacyDlpV2PartitionId = $PartitionId;

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete. If neither is set, the
/// element is incomplete.
typedef GooglePrivacyDlpV2PathElement = $PathElement;

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

  GooglePrivacyDlpV2PrimitiveTransformation.fromJson(core.Map _json)
      : this(
          bucketingConfig: _json.containsKey('bucketingConfig')
              ? GooglePrivacyDlpV2BucketingConfig.fromJson(
                  _json['bucketingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          characterMaskConfig: _json.containsKey('characterMaskConfig')
              ? GooglePrivacyDlpV2CharacterMaskConfig.fromJson(
                  _json['characterMaskConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cryptoDeterministicConfig:
              _json.containsKey('cryptoDeterministicConfig')
                  ? GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(
                      _json['cryptoDeterministicConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          cryptoHashConfig: _json.containsKey('cryptoHashConfig')
              ? GooglePrivacyDlpV2CryptoHashConfig.fromJson(
                  _json['cryptoHashConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cryptoReplaceFfxFpeConfig:
              _json.containsKey('cryptoReplaceFfxFpeConfig')
                  ? GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(
                      _json['cryptoReplaceFfxFpeConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          dateShiftConfig: _json.containsKey('dateShiftConfig')
              ? GooglePrivacyDlpV2DateShiftConfig.fromJson(
                  _json['dateShiftConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fixedSizeBucketingConfig:
              _json.containsKey('fixedSizeBucketingConfig')
                  ? GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(
                      _json['fixedSizeBucketingConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          redactConfig: _json.containsKey('redactConfig')
              ? GooglePrivacyDlpV2RedactConfig.fromJson(
                  _json['redactConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          replaceConfig: _json.containsKey('replaceConfig')
              ? GooglePrivacyDlpV2ReplaceValueConfig.fromJson(
                  _json['replaceConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          replaceDictionaryConfig: _json.containsKey('replaceDictionaryConfig')
              ? GooglePrivacyDlpV2ReplaceDictionaryConfig.fromJson(
                  _json['replaceDictionaryConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          replaceWithInfoTypeConfig:
              _json.containsKey('replaceWithInfoTypeConfig')
                  ? GooglePrivacyDlpV2ReplaceWithInfoTypeConfig.fromJson(
                      _json['replaceWithInfoTypeConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          timePartConfig: _json.containsKey('timePartConfig')
              ? GooglePrivacyDlpV2TimePartConfig.fromJson(
                  _json['timePartConfig']
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

  GooglePrivacyDlpV2PrivacyMetric.fromJson(core.Map _json)
      : this(
          categoricalStatsConfig: _json.containsKey('categoricalStatsConfig')
              ? GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(
                  _json['categoricalStatsConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deltaPresenceEstimationConfig:
              _json.containsKey('deltaPresenceEstimationConfig')
                  ? GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(
                      _json['deltaPresenceEstimationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kAnonymityConfig: _json.containsKey('kAnonymityConfig')
              ? GooglePrivacyDlpV2KAnonymityConfig.fromJson(
                  _json['kAnonymityConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          kMapEstimationConfig: _json.containsKey('kMapEstimationConfig')
              ? GooglePrivacyDlpV2KMapEstimationConfig.fromJson(
                  _json['kMapEstimationConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lDiversityConfig: _json.containsKey('lDiversityConfig')
              ? GooglePrivacyDlpV2LDiversityConfig.fromJson(
                  _json['lDiversityConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          numericalStatsConfig: _json.containsKey('numericalStatsConfig')
              ? GooglePrivacyDlpV2NumericalStatsConfig.fromJson(
                  _json['numericalStatsConfig']
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

/// Message for specifying a window around a finding to apply a detection rule.
class GooglePrivacyDlpV2Proximity {
  /// Number of characters after the finding to consider.
  core.int? windowAfter;

  /// Number of characters before the finding to consider.
  core.int? windowBefore;

  GooglePrivacyDlpV2Proximity({
    this.windowAfter,
    this.windowBefore,
  });

  GooglePrivacyDlpV2Proximity.fromJson(core.Map _json)
      : this(
          windowAfter: _json.containsKey('windowAfter')
              ? _json['windowAfter'] as core.int
              : null,
          windowBefore: _json.containsKey('windowBefore')
              ? _json['windowBefore'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (windowAfter != null) 'windowAfter': windowAfter!,
        if (windowBefore != null) 'windowBefore': windowBefore!,
      };
}

/// Publish findings of a DlpJob to Data Catalog.
///
/// Labels summarizing the results of the DlpJob will be applied to the entry
/// for the resource scanned in Data Catalog. Any labels previously written by
/// another DlpJob will be deleted. InfoType naming patterns are strictly
/// enforced when using this feature. Note that the findings will be persisted
/// in Data Catalog storage and are governed by Data Catalog service-specific
/// policy, see https://cloud.google.com/terms/service-terms Only a single
/// instance of this action can be specified and only allowed if all resources
/// being scanned are BigQuery tables. Compatible with: Inspect
typedef GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = $Empty;

/// Publish the result summary of a DlpJob to the Cloud Security Command Center
/// (CSCC Alpha).
///
/// This action is only available for projects which are parts of an
/// organization and whitelisted for the alpha Cloud Security Command Center.
/// The action will publish count of finding instances and their info types. The
/// summary of findings will be persisted in CSCC and are governed by CSCC
/// service-specific policy, see https://cloud.google.com/terms/service-terms
/// Only a single instance of this action can be specified. Compatible with:
/// Inspect
typedef GooglePrivacyDlpV2PublishSummaryToCscc = $Empty;

/// Publish a message into given Pub/Sub topic when DlpJob has completed.
///
/// The message contains a single field, `DlpJobName`, which is equal to the
/// finished job's
/// \[`DlpJob.name`\](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.dlpJobs#DlpJob).
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

  GooglePrivacyDlpV2PublishToPubSub.fromJson(core.Map _json)
      : this(
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
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

  GooglePrivacyDlpV2QuasiId.fromJson(core.Map _json)
      : this(
          customTag: _json.containsKey('customTag')
              ? _json['customTag'] as core.String
              : null,
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          inferred: _json.containsKey('inferred')
              ? GoogleProtobufEmpty.fromJson(
                  _json['inferred'] as core.Map<core.String, core.dynamic>)
              : null,
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2QuasiIdField.fromJson(core.Map _json)
      : this(
          customTag: _json.containsKey('customTag')
              ? _json['customTag'] as core.String
              : null,
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2QuasiIdentifierField.fromJson(core.Map _json)
      : this(
          customTag: _json.containsKey('customTag')
              ? _json['customTag'] as core.String
              : null,
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2QuoteInfo.fromJson(core.Map _json)
      : this(
          dateTime: _json.containsKey('dateTime')
              ? GooglePrivacyDlpV2DateTime.fromJson(
                  _json['dateTime'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2Range.fromJson(core.Map _json)
      : this(
          end: _json.containsKey('end') ? _json['end'] as core.String : null,
          start:
              _json.containsKey('start') ? _json['start'] as core.String : null,
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

  GooglePrivacyDlpV2RecordCondition.fromJson(core.Map _json)
      : this(
          expressions: _json.containsKey('expressions')
              ? GooglePrivacyDlpV2Expressions.fromJson(
                  _json['expressions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expressions != null) 'expressions': expressions!,
      };
}

/// Message for a unique key indicating a record that contains a finding.
class GooglePrivacyDlpV2RecordKey {
  GooglePrivacyDlpV2BigQueryKey? bigQueryKey;
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

  GooglePrivacyDlpV2RecordKey.fromJson(core.Map _json)
      : this(
          bigQueryKey: _json.containsKey('bigQueryKey')
              ? GooglePrivacyDlpV2BigQueryKey.fromJson(
                  _json['bigQueryKey'] as core.Map<core.String, core.dynamic>)
              : null,
          datastoreKey: _json.containsKey('datastoreKey')
              ? GooglePrivacyDlpV2DatastoreKey.fromJson(
                  _json['datastoreKey'] as core.Map<core.String, core.dynamic>)
              : null,
          idValues: _json.containsKey('idValues')
              ? (_json['idValues'] as core.List)
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

  GooglePrivacyDlpV2RecordLocation.fromJson(core.Map _json)
      : this(
          fieldId: _json.containsKey('fieldId')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['fieldId'] as core.Map<core.String, core.dynamic>)
              : null,
          recordKey: _json.containsKey('recordKey')
              ? GooglePrivacyDlpV2RecordKey.fromJson(
                  _json['recordKey'] as core.Map<core.String, core.dynamic>)
              : null,
          tableLocation: _json.containsKey('tableLocation')
              ? GooglePrivacyDlpV2TableLocation.fromJson(
                  _json['tableLocation'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2RecordSuppression.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? GooglePrivacyDlpV2RecordCondition.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2RecordTransformations.fromJson(core.Map _json)
      : this(
          fieldTransformations: _json.containsKey('fieldTransformations')
              ? (_json['fieldTransformations'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2FieldTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          recordSuppressions: _json.containsKey('recordSuppressions')
              ? (_json['recordSuppressions'] as core.List)
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

  GooglePrivacyDlpV2RedactImageRequest.fromJson(core.Map _json)
      : this(
          byteItem: _json.containsKey('byteItem')
              ? GooglePrivacyDlpV2ByteContentItem.fromJson(
                  _json['byteItem'] as core.Map<core.String, core.dynamic>)
              : null,
          imageRedactionConfigs: _json.containsKey('imageRedactionConfigs')
              ? (_json['imageRedactionConfigs'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2ImageRedactionConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includeFindings: _json.containsKey('includeFindings')
              ? _json['includeFindings'] as core.bool
              : null,
          inspectConfig: _json.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  _json['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
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

  set redactedImageAsBytes(core.List<core.int> _bytes) {
    redactedImage =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GooglePrivacyDlpV2RedactImageResponse({
    this.extractedText,
    this.inspectResult,
    this.redactedImage,
  });

  GooglePrivacyDlpV2RedactImageResponse.fromJson(core.Map _json)
      : this(
          extractedText: _json.containsKey('extractedText')
              ? _json['extractedText'] as core.String
              : null,
          inspectResult: _json.containsKey('inspectResult')
              ? GooglePrivacyDlpV2InspectResult.fromJson(
                  _json['inspectResult'] as core.Map<core.String, core.dynamic>)
              : null,
          redactedImage: _json.containsKey('redactedImage')
              ? _json['redactedImage'] as core.String
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

  GooglePrivacyDlpV2Regex.fromJson(core.Map _json)
      : this(
          groupIndexes: _json.containsKey('groupIndexes')
              ? (_json['groupIndexes'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          pattern: _json.containsKey('pattern')
              ? _json['pattern'] as core.String
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

  GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(core.Map _json)
      : this(
          inspectConfig: _json.containsKey('inspectConfig')
              ? GooglePrivacyDlpV2InspectConfig.fromJson(
                  _json['inspectConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          inspectTemplateName: _json.containsKey('inspectTemplateName')
              ? _json['inspectTemplateName'] as core.String
              : null,
          item: _json.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          reidentifyConfig: _json.containsKey('reidentifyConfig')
              ? GooglePrivacyDlpV2DeidentifyConfig.fromJson(
                  _json['reidentifyConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          reidentifyTemplateName: _json.containsKey('reidentifyTemplateName')
              ? _json['reidentifyTemplateName'] as core.String
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

/// Results of re-identifying a item.
class GooglePrivacyDlpV2ReidentifyContentResponse {
  /// The re-identified item.
  GooglePrivacyDlpV2ContentItem? item;

  /// An overview of the changes that were made to the `item`.
  GooglePrivacyDlpV2TransformationOverview? overview;

  GooglePrivacyDlpV2ReidentifyContentResponse({
    this.item,
    this.overview,
  });

  GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(core.Map _json)
      : this(
          item: _json.containsKey('item')
              ? GooglePrivacyDlpV2ContentItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
          overview: _json.containsKey('overview')
              ? GooglePrivacyDlpV2TransformationOverview.fromJson(
                  _json['overview'] as core.Map<core.String, core.dynamic>)
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
  /// The [limits](https://cloud.google.com/dlp/limits) page contains details
  /// about the size limits of dictionaries.
  GooglePrivacyDlpV2WordList? wordList;

  GooglePrivacyDlpV2ReplaceDictionaryConfig({
    this.wordList,
  });

  GooglePrivacyDlpV2ReplaceDictionaryConfig.fromJson(core.Map _json)
      : this(
          wordList: _json.containsKey('wordList')
              ? GooglePrivacyDlpV2WordList.fromJson(
                  _json['wordList'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2ReplaceValueConfig.fromJson(core.Map _json)
      : this(
          newValue: _json.containsKey('newValue')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['newValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newValue != null) 'newValue': newValue!,
      };
}

/// Replace each matching finding with the name of the info_type.
typedef GooglePrivacyDlpV2ReplaceWithInfoTypeConfig = $Empty;

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

  GooglePrivacyDlpV2RequestedOptions.fromJson(core.Map _json)
      : this(
          jobConfig: _json.containsKey('jobConfig')
              ? GooglePrivacyDlpV2InspectJobConfig.fromJson(
                  _json['jobConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          snapshotInspectTemplate: _json.containsKey('snapshotInspectTemplate')
              ? GooglePrivacyDlpV2InspectTemplate.fromJson(
                  _json['snapshotInspectTemplate']
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

  GooglePrivacyDlpV2RequestedRiskAnalysisOptions.fromJson(core.Map _json)
      : this(
          jobConfig: _json.containsKey('jobConfig')
              ? GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(
                  _json['jobConfig'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2Result.fromJson(core.Map _json)
      : this(
          hybridStats: _json.containsKey('hybridStats')
              ? GooglePrivacyDlpV2HybridInspectStatistics.fromJson(
                  _json['hybridStats'] as core.Map<core.String, core.dynamic>)
              : null,
          infoTypeStats: _json.containsKey('infoTypeStats')
              ? (_json['infoTypeStats'] as core.List)
                  .map((value) => GooglePrivacyDlpV2InfoTypeStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          processedBytes: _json.containsKey('processedBytes')
              ? _json['processedBytes'] as core.String
              : null,
          totalEstimatedBytes: _json.containsKey('totalEstimatedBytes')
              ? _json['totalEstimatedBytes'] as core.String
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
/// See https://cloud.google.com/dlp/docs/concepts-risk-analysis to learn more.
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

  GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(core.Map _json)
      : this(
          actions: _json.containsKey('actions')
              ? (_json['actions'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          privacyMetric: _json.containsKey('privacyMetric')
              ? GooglePrivacyDlpV2PrivacyMetric.fromJson(
                  _json['privacyMetric'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceTable: _json.containsKey('sourceTable')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  _json['sourceTable'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2Row.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
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

  GooglePrivacyDlpV2SaveFindings.fromJson(core.Map _json)
      : this(
          outputConfig: _json.containsKey('outputConfig')
              ? GooglePrivacyDlpV2OutputStorageConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputConfig != null) 'outputConfig': outputConfig!,
      };
}

/// Schedule for inspect job triggers.
class GooglePrivacyDlpV2Schedule {
  /// With this option a job is started a regular periodic basis.
  ///
  /// For example: every day (86400 seconds). A scheduled start time will be
  /// skipped if the previous execution has not ended when its scheduled time
  /// occurs. This value must be set to a time duration greater than or equal to
  /// 1 day and can be no longer than 60 days.
  core.String? recurrencePeriodDuration;

  GooglePrivacyDlpV2Schedule({
    this.recurrencePeriodDuration,
  });

  GooglePrivacyDlpV2Schedule.fromJson(core.Map _json)
      : this(
          recurrencePeriodDuration:
              _json.containsKey('recurrencePeriodDuration')
                  ? _json['recurrencePeriodDuration'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recurrencePeriodDuration != null)
          'recurrencePeriodDuration': recurrencePeriodDuration!,
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

  GooglePrivacyDlpV2StatisticalTable.fromJson(core.Map _json)
      : this(
          quasiIds: _json.containsKey('quasiIds')
              ? (_json['quasiIds'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2QuasiIdentifierField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relativeFrequency: _json.containsKey('relativeFrequency')
              ? GooglePrivacyDlpV2FieldId.fromJson(_json['relativeFrequency']
                  as core.Map<core.String, core.dynamic>)
              : null,
          table: _json.containsKey('table')
              ? GooglePrivacyDlpV2BigQueryTable.fromJson(
                  _json['table'] as core.Map<core.String, core.dynamic>)
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

  /// Google Cloud Storage options.
  GooglePrivacyDlpV2CloudStorageOptions? cloudStorageOptions;

  /// Google Cloud Datastore options.
  GooglePrivacyDlpV2DatastoreOptions? datastoreOptions;

  /// Hybrid inspection options.
  GooglePrivacyDlpV2HybridOptions? hybridOptions;
  GooglePrivacyDlpV2TimespanConfig? timespanConfig;

  GooglePrivacyDlpV2StorageConfig({
    this.bigQueryOptions,
    this.cloudStorageOptions,
    this.datastoreOptions,
    this.hybridOptions,
    this.timespanConfig,
  });

  GooglePrivacyDlpV2StorageConfig.fromJson(core.Map _json)
      : this(
          bigQueryOptions: _json.containsKey('bigQueryOptions')
              ? GooglePrivacyDlpV2BigQueryOptions.fromJson(
                  _json['bigQueryOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cloudStorageOptions: _json.containsKey('cloudStorageOptions')
              ? GooglePrivacyDlpV2CloudStorageOptions.fromJson(
                  _json['cloudStorageOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          datastoreOptions: _json.containsKey('datastoreOptions')
              ? GooglePrivacyDlpV2DatastoreOptions.fromJson(
                  _json['datastoreOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hybridOptions: _json.containsKey('hybridOptions')
              ? GooglePrivacyDlpV2HybridOptions.fromJson(
                  _json['hybridOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          timespanConfig: _json.containsKey('timespanConfig')
              ? GooglePrivacyDlpV2TimespanConfig.fromJson(
                  _json['timespanConfig']
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
  core.String? key;

  GooglePrivacyDlpV2StorageMetadataLabel({
    this.key,
  });

  GooglePrivacyDlpV2StorageMetadataLabel.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
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

  GooglePrivacyDlpV2StoredInfoType.fromJson(core.Map _json)
      : this(
          currentVersion: _json.containsKey('currentVersion')
              ? GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(
                  _json['currentVersion']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pendingVersions: _json.containsKey('pendingVersions')
              ? (_json['pendingVersions'] as core.List)
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
/// https://cloud.google.com/dlp/docs/creating-custom-infotypes.
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

  GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          dictionary: _json.containsKey('dictionary')
              ? GooglePrivacyDlpV2Dictionary.fromJson(
                  _json['dictionary'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          largeCustomDictionary: _json.containsKey('largeCustomDictionary')
              ? GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(
                  _json['largeCustomDictionary']
                      as core.Map<core.String, core.dynamic>)
              : null,
          regex: _json.containsKey('regex')
              ? GooglePrivacyDlpV2Regex.fromJson(
                  _json['regex'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(core.Map _json)
      : this(
          largeCustomDictionary: _json.containsKey('largeCustomDictionary')
              ? GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(
                  _json['largeCustomDictionary']
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
  /// dictionaries is put in the user's Google Cloud Storage bucket, and if this
  /// data is modified or deleted by the user or another system, the dictionary
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

  GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => GooglePrivacyDlpV2Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stats: _json.containsKey('stats')
              ? GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(
                  _json['stats'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2StoredType.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
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

  GooglePrivacyDlpV2SummaryResult.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          details: _json.containsKey('details')
              ? _json['details'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (count != null) 'count': count!,
        if (details != null) 'details': details!,
      };
}

/// Message for detecting output from deidentification transformations such as
/// \[`CryptoReplaceFfxFpeConfig`\](https://cloud.google.com/dlp/docs/reference/rest/v2/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig).
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
/// https://cloud.google.com/dlp/docs/inspecting-structured-text#inspecting_a_table
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

  GooglePrivacyDlpV2Table.fromJson(core.Map _json)
      : this(
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.List)
                  .map((value) => GooglePrivacyDlpV2FieldId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
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

  GooglePrivacyDlpV2TableLocation.fromJson(core.Map _json)
      : this(
          rowIndex: _json.containsKey('rowIndex')
              ? _json['rowIndex'] as core.String
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

  GooglePrivacyDlpV2TableOptions.fromJson(core.Map _json)
      : this(
          identifyingFields: _json.containsKey('identifyingFields')
              ? (_json['identifyingFields'] as core.List)
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

  GooglePrivacyDlpV2TaggedField.fromJson(core.Map _json)
      : this(
          customTag: _json.containsKey('customTag')
              ? _json['customTag'] as core.String
              : null,
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          inferred: _json.containsKey('inferred')
              ? GoogleProtobufEmpty.fromJson(
                  _json['inferred'] as core.Map<core.String, core.dynamic>)
              : null,
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2TimePartConfig.fromJson(core.Map _json)
      : this(
          partToExtract: _json.containsKey('partToExtract')
              ? _json['partToExtract'] as core.String
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

  GooglePrivacyDlpV2TimeZone.fromJson(core.Map _json)
      : this(
          offsetMinutes: _json.containsKey('offsetMinutes')
              ? _json['offsetMinutes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offsetMinutes != null) 'offsetMinutes': offsetMinutes!,
      };
}

/// Configuration of the timespan of the items to include in scanning.
///
/// Currently only supported when inspecting Google Cloud Storage and BigQuery.
class GooglePrivacyDlpV2TimespanConfig {
  /// When the job is started by a JobTrigger we will automatically figure out a
  /// valid start_time to avoid scanning files that have not been modified since
  /// the last time the JobTrigger executed.
  ///
  /// This will be based on the time of the execution of the last run of the
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
  /// Used for data sources like Datastore and BigQuery. For BigQuery: If this
  /// value is not specified and the table was modified between the given start
  /// and end times, the entire table will be scanned. If this value is
  /// specified, then rows are filtered based on the given start and end times.
  /// Rows with a `NULL` value in the provided BigQuery column are skipped.
  /// Valid data types of the provided BigQuery column are: `INTEGER`, `DATE`,
  /// `TIMESTAMP`, and `DATETIME`. For Datastore: If this value is specified,
  /// then entities are filtered based on the given start and end times. If an
  /// entity does not contain the provided timestamp property or contains empty
  /// or invalid values, then it is included. Valid data types of the provided
  /// timestamp property are: `TIMESTAMP`.
  GooglePrivacyDlpV2FieldId? timestampField;

  GooglePrivacyDlpV2TimespanConfig({
    this.enableAutoPopulationOfTimespanConfig,
    this.endTime,
    this.startTime,
    this.timestampField,
  });

  GooglePrivacyDlpV2TimespanConfig.fromJson(core.Map _json)
      : this(
          enableAutoPopulationOfTimespanConfig:
              _json.containsKey('enableAutoPopulationOfTimespanConfig')
                  ? _json['enableAutoPopulationOfTimespanConfig'] as core.bool
                  : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          timestampField: _json.containsKey('timestampField')
              ? GooglePrivacyDlpV2FieldId.fromJson(_json['timestampField']
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

  GooglePrivacyDlpV2TransformationErrorHandling.fromJson(core.Map _json)
      : this(
          leaveUntransformed: _json.containsKey('leaveUntransformed')
              ? GooglePrivacyDlpV2LeaveUntransformed.fromJson(
                  _json['leaveUntransformed']
                      as core.Map<core.String, core.dynamic>)
              : null,
          throwError: _json.containsKey('throwError')
              ? GooglePrivacyDlpV2ThrowError.fromJson(
                  _json['throwError'] as core.Map<core.String, core.dynamic>)
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

  GooglePrivacyDlpV2TransformationOverview.fromJson(core.Map _json)
      : this(
          transformationSummaries: _json.containsKey('transformationSummaries')
              ? (_json['transformationSummaries'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2TransformationSummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transformedBytes: _json.containsKey('transformedBytes')
              ? _json['transformedBytes'] as core.String
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

  GooglePrivacyDlpV2TransformationSummary.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? GooglePrivacyDlpV2FieldId.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldTransformations: _json.containsKey('fieldTransformations')
              ? (_json['fieldTransformations'] as core.List)
                  .map((value) =>
                      GooglePrivacyDlpV2FieldTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          infoType: _json.containsKey('infoType')
              ? GooglePrivacyDlpV2InfoType.fromJson(
                  _json['infoType'] as core.Map<core.String, core.dynamic>)
              : null,
          recordSuppress: _json.containsKey('recordSuppress')
              ? GooglePrivacyDlpV2RecordSuppression.fromJson(
                  _json['recordSuppress']
                      as core.Map<core.String, core.dynamic>)
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => GooglePrivacyDlpV2SummaryResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transformation: _json.containsKey('transformation')
              ? GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
                  _json['transformation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          transformedBytes: _json.containsKey('transformedBytes')
              ? _json['transformedBytes'] as core.String
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

  GooglePrivacyDlpV2TransientCryptoKey.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
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

  GooglePrivacyDlpV2Trigger.fromJson(core.Map _json)
      : this(
          manual: _json.containsKey('manual')
              ? GooglePrivacyDlpV2Manual.fromJson(
                  _json['manual'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: _json.containsKey('schedule')
              ? GooglePrivacyDlpV2Schedule.fromJson(
                  _json['schedule'] as core.Map<core.String, core.dynamic>)
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

  set keyAsBytes(core.List<core.int> _bytes) {
    key =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  GooglePrivacyDlpV2UnwrappedCryptoKey({
    this.key,
  });

  GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
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

  GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(core.Map _json)
      : this(
          deidentifyTemplate: _json.containsKey('deidentifyTemplate')
              ? GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
                  _json['deidentifyTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deidentifyTemplate != null)
          'deidentifyTemplate': deidentifyTemplate!,
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

  GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(core.Map _json)
      : this(
          inspectTemplate: _json.containsKey('inspectTemplate')
              ? GooglePrivacyDlpV2InspectTemplate.fromJson(
                  _json['inspectTemplate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
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

  GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(core.Map _json)
      : this(
          jobTrigger: _json.containsKey('jobTrigger')
              ? GooglePrivacyDlpV2JobTrigger.fromJson(
                  _json['jobTrigger'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
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

  GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
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

  GooglePrivacyDlpV2Value.fromJson(core.Map _json)
      : this(
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValue: _json.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  _json['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          dayOfWeekValue: _json.containsKey('dayOfWeekValue')
              ? _json['dayOfWeekValue'] as core.String
              : null,
          floatValue: _json.containsKey('floatValue')
              ? (_json['floatValue'] as core.num).toDouble()
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.String
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
          timeValue: _json.containsKey('timeValue')
              ? GoogleTypeTimeOfDay.fromJson(
                  _json['timeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          timestampValue: _json.containsKey('timestampValue')
              ? _json['timestampValue'] as core.String
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

  GooglePrivacyDlpV2ValueFrequency.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          value: _json.containsKey('value')
              ? GooglePrivacyDlpV2Value.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (value != null) 'value': value!,
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

  GooglePrivacyDlpV2WordList.fromJson(core.Map _json)
      : this(
          words: _json.containsKey('words')
              ? (_json['words'] as core.List)
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
