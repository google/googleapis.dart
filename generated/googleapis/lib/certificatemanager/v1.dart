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

/// Certificate Manager API - v1
///
/// For more information, see <https://cloud.google.com/certificate-manager>
///
/// Create an instance of [CertificateManagerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCertificateMapsResource]
///       - [ProjectsLocationsCertificateMapsCertificateMapEntriesResource]
///     - [ProjectsLocationsCertificatesResource]
///     - [ProjectsLocationsDnsAuthorizationsResource]
///     - [ProjectsLocationsOperationsResource]
library certificatemanager.v1;

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

class CertificateManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CertificateManagerApi(http.Client client,
      {core.String rootUrl = 'https://certificatemanager.googleapis.com/',
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

  ProjectsLocationsCertificateMapsResource get certificateMaps =>
      ProjectsLocationsCertificateMapsResource(_requester);
  ProjectsLocationsCertificatesResource get certificates =>
      ProjectsLocationsCertificatesResource(_requester);
  ProjectsLocationsDnsAuthorizationsResource get dnsAuthorizations =>
      ProjectsLocationsDnsAuthorizationsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificateMapsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateMapsCertificateMapEntriesResource
      get certificateMapEntries =>
          ProjectsLocationsCertificateMapsCertificateMapEntriesResource(
              _requester);

  ProjectsLocationsCertificateMapsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new CertificateMap in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the certificate map. Must be
  /// in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [certificateMapId] - Required. A user-provided name of the certificate
  /// map.
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
  async.Future<Operation> create(
    CertificateMap request,
    core.String parent, {
    core.String? certificateMapId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateMapId != null) 'certificateMapId': [certificateMapId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/certificateMaps';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single CertificateMap.
  ///
  /// A Certificate Map can't be deleted if it contains Certificate Map Entries.
  /// Remove all the entries from the map before calling this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the certificate map to delete. Must be in the
  /// format `projects / * /locations / * /certificateMaps / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single CertificateMap.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the certificate map to describe. Must be in
  /// the format `projects / * /locations / * /certificateMaps / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CertificateMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CertificateMap> get(
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
    return CertificateMap.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateMaps in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the certificate
  /// maps should be listed, specified in the format `projects / * /locations /
  /// * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the Certificates Maps returned.
  ///
  /// [orderBy] - A list of Certificate Map field names used to specify the
  /// order of the returned results. The default sorting order is ascending. To
  /// specify descending order for a field, add a suffix " desc".
  ///
  /// [pageSize] - Maximum number of certificate maps to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListCertificateMapsResponse`. Indicates that this is a continuation of a
  /// prior `ListCertificateMaps` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificateMapsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificateMapsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/certificateMaps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCertificateMapsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a CertificateMap.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A user-defined name of the Certificate Map. Certificate Map names
  /// must be unique globally and match pattern `projects / * /locations / *
  /// /certificateMaps / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
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
    CertificateMap request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificateMapsCertificateMapEntriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificateMapsCertificateMapEntriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new CertificateMapEntry in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the certificate map entry.
  /// Must be in the format `projects / * /locations / * /certificateMaps / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+$`.
  ///
  /// [certificateMapEntryId] - Required. A user-provided name of the
  /// certificate map entry.
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
  async.Future<Operation> create(
    CertificateMapEntry request,
    core.String parent, {
    core.String? certificateMapEntryId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateMapEntryId != null)
        'certificateMapEntryId': [certificateMapEntryId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateMapEntries';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single CertificateMapEntry.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the certificate map entry to delete. Must be
  /// in the format `projects / * /locations / * /certificateMaps / *
  /// /certificateMapEntries / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+/certificateMapEntries/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single CertificateMapEntry.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the certificate map entry to describe. Must
  /// be in the format `projects / * /locations / * /certificateMaps / *
  /// /certificateMapEntries / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+/certificateMapEntries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CertificateMapEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CertificateMapEntry> get(
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
    return CertificateMapEntry.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CertificateMapEntries in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project, location and certificate map from which
  /// the certificate map entries should be listed, specified in the format
  /// `projects / * /locations / * /certificateMaps / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the returned Certificate Map
  /// Entries.
  ///
  /// [orderBy] - A list of Certificate Map Entry field names used to specify
  /// the order of the returned results. The default sorting order is ascending.
  /// To specify descending order for a field, add a suffix " desc".
  ///
  /// [pageSize] - Maximum number of certificate map entries to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// certificate map entries will be returned. The maximum value is 1000;
  /// values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListCertificateMapEntriesResponse`. Indicates that this is a continuation
  /// of a prior `ListCertificateMapEntries` call, and that the system should
  /// return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificateMapEntriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificateMapEntriesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/certificateMapEntries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCertificateMapEntriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a CertificateMapEntry.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A user-defined name of the Certificate Map Entry. Certificate Map
  /// Entry names must be unique globally and match pattern `projects / *
  /// /locations / * /certificateMaps / * /certificateMapEntries / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificateMaps/\[^/\]+/certificateMapEntries/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
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
    CertificateMapEntry request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCertificatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCertificatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Certificate in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the certificate. Must be in
  /// the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [certificateId] - Required. A user-provided name of the certificate.
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
  async.Future<Operation> create(
    Certificate request,
    core.String parent, {
    core.String? certificateId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (certificateId != null) 'certificateId': [certificateId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Certificate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the certificate to delete. Must be in the
  /// format `projects / * /locations / * /certificates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificates/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Certificate.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the certificate to describe. Must be in the
  /// format `projects / * /locations / * /certificates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Certificate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Certificate> get(
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
    return Certificate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Certificates in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the certificate
  /// should be listed, specified in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the Certificates returned.
  ///
  /// [orderBy] - A list of Certificate field names used to specify the order of
  /// the returned results. The default sorting order is ascending. To specify
  /// descending order for a field, add a suffix " desc".
  ///
  /// [pageSize] - Maximum number of certificates to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListCertificatesResponse`.
  /// Indicates that this is a continuation of a prior `ListCertificates` call,
  /// and that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCertificatesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/certificates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCertificatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A user-defined name of the certificate. Certificate names must be
  /// unique globally and match pattern `projects / * /locations / *
  /// /certificates / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/certificates/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
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
    Certificate request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDnsAuthorizationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDnsAuthorizationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DnsAuthorization in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the dns authorization. Must be
  /// in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dnsAuthorizationId] - Required. A user-provided name of the dns
  /// authorization.
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
  async.Future<Operation> create(
    DnsAuthorization request,
    core.String parent, {
    core.String? dnsAuthorizationId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (dnsAuthorizationId != null)
        'dnsAuthorizationId': [dnsAuthorizationId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dnsAuthorizations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single DnsAuthorization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the dns authorization to delete. Must be in
  /// the format `projects / * /locations / * /dnsAuthorizations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dnsAuthorizations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single DnsAuthorization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the dns authorization to describe. Must be in
  /// the format `projects / * /locations / * /dnsAuthorizations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dnsAuthorizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsAuthorization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsAuthorization> get(
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
    return DnsAuthorization.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DnsAuthorizations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the dns
  /// authorizations should be listed, specified in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter expression to restrict the Dns Authorizations returned.
  ///
  /// [orderBy] - A list of Dns Authorization field names used to specify the
  /// order of the returned results. The default sorting order is ascending. To
  /// specify descending order for a field, add a suffix " desc".
  ///
  /// [pageSize] - Maximum number of dns authorizations to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListDnsAuthorizationsResponse`. Indicates that this is a continuation of
  /// a prior `ListDnsAuthorizations` call, and that the system should return
  /// the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDnsAuthorizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDnsAuthorizationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/dnsAuthorizations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDnsAuthorizationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a DnsAuthorization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A user-defined name of the dns authorization. DnsAuthorization
  /// names must be unique globally and match pattern `projects / * /locations /
  /// * /dnsAuthorizations / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dnsAuthorizations/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
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
    DnsAuthorization request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// State of the latest attempt to authorize a domain for certificate issuance.
class AuthorizationAttemptInfo {
  /// Human readable explanation for reaching the state.
  ///
  /// Provided to help address the configuration issues. Not guaranteed to be
  /// stable. For programmatic access use Reason enum.
  core.String? details;

  /// Domain name of the authorization attempt.
  core.String? domain;

  /// Reason for failure of the authorization attempt for the domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_REASON_UNSPECIFIED"
  /// - "CONFIG" : There was a problem with the user's DNS or load balancer
  /// configuration for this domain.
  /// - "CAA" : Certificate issuance forbidden by an explicit CAA record for the
  /// domain or a failure to check CAA records for the domain.
  /// - "RATE_LIMITED" : Reached a CA or internal rate-limit for the domain,
  /// e.g. for certificates per top-level private domain.
  core.String? failureReason;

  /// State of the domain for managed certificate issuance.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "AUTHORIZING" : Certificate provisioning for this domain is under way.
  /// GCP will attempt to authorize the domain.
  /// - "AUTHORIZED" : A managed certificate can be provisioned, no issues for
  /// this domain.
  /// - "FAILED" : Attempt to authorize the domain failed. This prevents the
  /// Managed Certificate from being issued. See `failure_reason` and `details`
  /// fields for more information.
  core.String? state;

  AuthorizationAttemptInfo({
    this.details,
    this.domain,
    this.failureReason,
    this.state,
  });

  AuthorizationAttemptInfo.fromJson(core.Map _json)
      : this(
          details: _json.containsKey('details')
              ? _json['details'] as core.String
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          failureReason: _json.containsKey('failureReason')
              ? _json['failureReason'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (domain != null) 'domain': domain!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (state != null) 'state': state!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Defines TLS certificate.
class Certificate {
  /// The creation timestamp of a Certificate.
  ///
  /// Output only.
  core.String? createTime;

  /// One or more paragraphs of text description of a certificate.
  core.String? description;

  /// The expiry timestamp of a Certificate.
  ///
  /// Output only.
  core.String? expireTime;

  /// Set of labels associated with a Certificate.
  core.Map<core.String, core.String>? labels;

  /// If set, contains configuration and state of a managed certificate.
  ManagedCertificate? managed;

  /// A user-defined name of the certificate.
  ///
  /// Certificate names must be unique globally and match pattern `projects / *
  /// /locations / * /certificates / * `.
  core.String? name;

  /// The PEM-encoded certificate chain.
  ///
  /// Output only.
  core.String? pemCertificate;

  /// The list of Subject Alternative Names of dnsName type defined in the
  /// certificate (see RFC 5280 4.2.1.6).
  ///
  /// Managed certificates that haven't been provisioned yet have this field
  /// populated with a value of the managed.domains field.
  ///
  /// Output only.
  core.List<core.String>? sanDnsnames;

  /// The scope of the certificate.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "DEFAULT" : Certificates with default scope are served from core Google
  /// data centers. If unsure, choose this option.
  /// - "EDGE_CACHE" : Certificates with scope EDGE_CACHE are special-purposed
  /// certificates, served from non-core Google data centers.
  core.String? scope;

  /// If set, defines data of a self-managed certificate.
  SelfManagedCertificate? selfManaged;

  /// The last update timestamp of a Certificate.
  ///
  /// Output only.
  core.String? updateTime;

  Certificate({
    this.createTime,
    this.description,
    this.expireTime,
    this.labels,
    this.managed,
    this.name,
    this.pemCertificate,
    this.sanDnsnames,
    this.scope,
    this.selfManaged,
    this.updateTime,
  });

  Certificate.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          managed: _json.containsKey('managed')
              ? ManagedCertificate.fromJson(
                  _json['managed'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pemCertificate: _json.containsKey('pemCertificate')
              ? _json['pemCertificate'] as core.String
              : null,
          sanDnsnames: _json.containsKey('sanDnsnames')
              ? (_json['sanDnsnames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          selfManaged: _json.containsKey('selfManaged')
              ? SelfManagedCertificate.fromJson(
                  _json['selfManaged'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (labels != null) 'labels': labels!,
        if (managed != null) 'managed': managed!,
        if (name != null) 'name': name!,
        if (pemCertificate != null) 'pemCertificate': pemCertificate!,
        if (sanDnsnames != null) 'sanDnsnames': sanDnsnames!,
        if (scope != null) 'scope': scope!,
        if (selfManaged != null) 'selfManaged': selfManaged!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Defines a collection of certificate configurations.
class CertificateMap {
  /// The creation timestamp of a Certificate Map.
  ///
  /// Output only.
  core.String? createTime;

  /// One or more paragraphs of text description of a certificate map.
  core.String? description;

  /// A list of GCLB targets which use this Certificate Map.
  ///
  /// Output only.
  core.List<GclbTarget>? gclbTargets;

  /// Set of labels associated with a Certificate Map.
  core.Map<core.String, core.String>? labels;

  /// A user-defined name of the Certificate Map.
  ///
  /// Certificate Map names must be unique globally and match pattern `projects
  /// / * /locations / * /certificateMaps / * `.
  core.String? name;

  /// The update timestamp of a Certificate Map.
  ///
  /// Output only.
  core.String? updateTime;

  CertificateMap({
    this.createTime,
    this.description,
    this.gclbTargets,
    this.labels,
    this.name,
    this.updateTime,
  });

  CertificateMap.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          gclbTargets: _json.containsKey('gclbTargets')
              ? (_json['gclbTargets'] as core.List)
                  .map((value) => GclbTarget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
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
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (gclbTargets != null) 'gclbTargets': gclbTargets!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Defines a certificate map entry.
class CertificateMapEntry {
  /// A set of Certificates defines for the given `hostname`.
  ///
  /// There can be defined up to fifteen certificates in each Certificate Map
  /// Entry. Each certificate must match pattern `projects / * /locations / *
  /// /certificates / * `.
  core.List<core.String>? certificates;

  /// The creation timestamp of a Certificate Map Entry.
  ///
  /// Output only.
  core.String? createTime;

  /// One or more paragraphs of text description of a certificate map entry.
  core.String? description;

  /// A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression
  /// (`*.example.com`) for a set of hostnames with common suffix.
  ///
  /// Used as Server Name Indication (SNI) for selecting a proper certificate.
  core.String? hostname;

  /// Set of labels associated with a Certificate Map Entry.
  core.Map<core.String, core.String>? labels;

  /// A predefined matcher for particular cases, other than SNI selection.
  /// Possible string values are:
  /// - "MATCHER_UNSPECIFIED" : A matcher has't been recognized.
  /// - "PRIMARY" : A primary certificate that is served when SNI wasn't
  /// specified in the request or SNI couldn't be found in the map.
  core.String? matcher;

  /// A user-defined name of the Certificate Map Entry.
  ///
  /// Certificate Map Entry names must be unique globally and match pattern
  /// `projects / * /locations / * /certificateMaps / * /certificateMapEntries /
  /// * `.
  core.String? name;

  /// A serving state of this Certificate Map Entry.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVING_STATE_UNSPECIFIED" : The status is undefined.
  /// - "ACTIVE" : The configuration is serving.
  /// - "PENDING" : Update is in progress. Some frontends may serve this
  /// configuration.
  core.String? state;

  /// The update timestamp of a Certificate Map Entry.
  ///
  /// Output only.
  core.String? updateTime;

  CertificateMapEntry({
    this.certificates,
    this.createTime,
    this.description,
    this.hostname,
    this.labels,
    this.matcher,
    this.name,
    this.state,
    this.updateTime,
  });

  CertificateMapEntry.fromJson(core.Map _json)
      : this(
          certificates: _json.containsKey('certificates')
              ? (_json['certificates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          hostname: _json.containsKey('hostname')
              ? _json['hostname'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          matcher: _json.containsKey('matcher')
              ? _json['matcher'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null) 'certificates': certificates!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (hostname != null) 'hostname': hostname!,
        if (labels != null) 'labels': labels!,
        if (matcher != null) 'matcher': matcher!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A DnsAuthorization resource describes a way to perform domain authorization
/// for certificate issuance.
class DnsAuthorization {
  /// The creation timestamp of a DnsAuthorization.
  ///
  /// Output only.
  core.String? createTime;

  /// One or more paragraphs of text description of a DnsAuthorization.
  core.String? description;

  /// DNS Resource Record that needs to be added to DNS configuration.
  ///
  /// Output only.
  DnsResourceRecord? dnsResourceRecord;

  /// A domain which is being authorized.
  ///
  /// A DnsAuthorization resource covers a single domain and its wildcard, e.g.
  /// authorization for `example.com` can be used to issue certificates for
  /// `example.com` and `*.example.com`.
  ///
  /// Required. Immutable.
  core.String? domain;

  /// Set of labels associated with a DnsAuthorization.
  core.Map<core.String, core.String>? labels;

  /// A user-defined name of the dns authorization.
  ///
  /// DnsAuthorization names must be unique globally and match pattern `projects
  /// / * /locations / * /dnsAuthorizations / * `.
  core.String? name;

  /// The last update timestamp of a DnsAuthorization.
  ///
  /// Output only.
  core.String? updateTime;

  DnsAuthorization({
    this.createTime,
    this.description,
    this.dnsResourceRecord,
    this.domain,
    this.labels,
    this.name,
    this.updateTime,
  });

  DnsAuthorization.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          dnsResourceRecord: _json.containsKey('dnsResourceRecord')
              ? DnsResourceRecord.fromJson(_json['dnsResourceRecord']
                  as core.Map<core.String, core.dynamic>)
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
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
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (dnsResourceRecord != null) 'dnsResourceRecord': dnsResourceRecord!,
        if (domain != null) 'domain': domain!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The structure describing the DNS Resource Record that needs to be added to
/// DNS configuration for the authorization to be usable by certificate.
class DnsResourceRecord {
  /// Data of the DNS Resource Record.
  ///
  /// Output only.
  core.String? data;

  /// Fully qualified name of the DNS Resource Record.
  ///
  /// e.g. `_acme-challenge.example.com`
  ///
  /// Output only.
  core.String? name;

  /// Type of the DNS Resource Record.
  ///
  /// Currently always set to "CNAME".
  ///
  /// Output only.
  core.String? type;

  DnsResourceRecord({
    this.data,
    this.name,
    this.type,
  });

  DnsResourceRecord.fromJson(core.Map _json)
      : this(
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
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

/// Describes a Target Proxy which uses this Certificate Map.
class GclbTarget {
  /// IP configurations for this Target Proxy where the Certificate Map is
  /// serving.
  core.List<IpConfig>? ipConfigs;

  /// A name must be in the format `projects / * /locations / *
  /// /targetHttpsProxies / * `.
  core.String? targetHttpsProxy;

  /// A name must be in the format `projects / * /locations / *
  /// /targetSslProxies / * `.
  core.String? targetSslProxy;

  GclbTarget({
    this.ipConfigs,
    this.targetHttpsProxy,
    this.targetSslProxy,
  });

  GclbTarget.fromJson(core.Map _json)
      : this(
          ipConfigs: _json.containsKey('ipConfigs')
              ? (_json['ipConfigs'] as core.List)
                  .map((value) => IpConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          targetHttpsProxy: _json.containsKey('targetHttpsProxy')
              ? _json['targetHttpsProxy'] as core.String
              : null,
          targetSslProxy: _json.containsKey('targetSslProxy')
              ? _json['targetSslProxy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipConfigs != null) 'ipConfigs': ipConfigs!,
        if (targetHttpsProxy != null) 'targetHttpsProxy': targetHttpsProxy!,
        if (targetSslProxy != null) 'targetSslProxy': targetSslProxy!,
      };
}

/// Defines IP configuration where this Certificate Map is serving.
class IpConfig {
  /// An external IP address.
  core.String? ipAddress;

  /// Ports.
  core.List<core.int>? ports;

  IpConfig({
    this.ipAddress,
    this.ports,
  });

  IpConfig.fromJson(core.Map _json)
      : this(
          ipAddress: _json.containsKey('ipAddress')
              ? _json['ipAddress'] as core.String
              : null,
          ports: _json.containsKey('ports')
              ? (_json['ports'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (ports != null) 'ports': ports!,
      };
}

/// Response for the `ListCertificateMapEntries` method.
class ListCertificateMapEntriesResponse {
  /// A list of certificate map entries for the parent resource.
  core.List<CertificateMapEntry>? certificateMapEntries;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificateMapEntriesResponse({
    this.certificateMapEntries,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificateMapEntriesResponse.fromJson(core.Map _json)
      : this(
          certificateMapEntries: _json.containsKey('certificateMapEntries')
              ? (_json['certificateMapEntries'] as core.List)
                  .map((value) => CertificateMapEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateMapEntries != null)
          'certificateMapEntries': certificateMapEntries!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for the `ListCertificateMaps` method.
class ListCertificateMapsResponse {
  /// A list of certificate maps for the parent resource.
  core.List<CertificateMap>? certificateMaps;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificateMapsResponse({
    this.certificateMaps,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificateMapsResponse.fromJson(core.Map _json)
      : this(
          certificateMaps: _json.containsKey('certificateMaps')
              ? (_json['certificateMaps'] as core.List)
                  .map((value) => CertificateMap.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificateMaps != null) 'certificateMaps': certificateMaps!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for the `ListCertificates` method.
class ListCertificatesResponse {
  /// A list of certificates for the parent resource.
  core.List<Certificate>? certificates;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// A list of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCertificatesResponse({
    this.certificates,
    this.nextPageToken,
    this.unreachable,
  });

  ListCertificatesResponse.fromJson(core.Map _json)
      : this(
          certificates: _json.containsKey('certificates')
              ? (_json['certificates'] as core.List)
                  .map((value) => Certificate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificates != null) 'certificates': certificates!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for the `ListDnsAuthorizations` method.
class ListDnsAuthorizationsResponse {
  /// A list of dns authorizations for the parent resource.
  core.List<DnsAuthorization>? dnsAuthorizations;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDnsAuthorizationsResponse({
    this.dnsAuthorizations,
    this.nextPageToken,
    this.unreachable,
  });

  ListDnsAuthorizationsResponse.fromJson(core.Map _json)
      : this(
          dnsAuthorizations: _json.containsKey('dnsAuthorizations')
              ? (_json['dnsAuthorizations'] as core.List)
                  .map((value) => DnsAuthorization.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsAuthorizations != null) 'dnsAuthorizations': dnsAuthorizations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Configuration and state of a Managed Certificate.
///
/// Certificate Manager provisions and renews Managed Certificates
/// automatically, for as long as it's authorized to do so.
class ManagedCertificate {
  /// Detailed state of the latest authorization attempt for each domain
  /// specified for managed certificate resource.
  ///
  /// Output only.
  core.List<AuthorizationAttemptInfo>? authorizationAttemptInfo;

  /// Authorizations that will be used for performing domain authorization.
  ///
  /// Immutable.
  core.List<core.String>? dnsAuthorizations;

  /// The domains for which a managed SSL certificate will be generated.
  ///
  /// Wildcard domains are only supported with DNS challenge resolution.
  ///
  /// Immutable.
  core.List<core.String>? domains;

  /// Information about issues with provisioning a Managed Certificate.
  ProvisioningIssue? provisioningIssue;

  /// State of the managed certificate resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "PROVISIONING" : Certificate Manager attempts to provision or renew the
  /// certificate. If the process takes longer than expected, consult the
  /// `provisioning_issue` field.
  /// - "FAILED" : Multiple certificate provisioning attempts failed and
  /// Certificate Manager gave up. To try again, delete and create a new managed
  /// Certificate resource. For details see the `provisioning_issue` field.
  /// - "ACTIVE" : The certificate management is working, and a certificate has
  /// been provisioned.
  core.String? state;

  ManagedCertificate({
    this.authorizationAttemptInfo,
    this.dnsAuthorizations,
    this.domains,
    this.provisioningIssue,
    this.state,
  });

  ManagedCertificate.fromJson(core.Map _json)
      : this(
          authorizationAttemptInfo:
              _json.containsKey('authorizationAttemptInfo')
                  ? (_json['authorizationAttemptInfo'] as core.List)
                      .map((value) => AuthorizationAttemptInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          dnsAuthorizations: _json.containsKey('dnsAuthorizations')
              ? (_json['dnsAuthorizations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          domains: _json.containsKey('domains')
              ? (_json['domains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          provisioningIssue: _json.containsKey('provisioningIssue')
              ? ProvisioningIssue.fromJson(_json['provisioningIssue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizationAttemptInfo != null)
          'authorizationAttemptInfo': authorizationAttemptInfo!,
        if (dnsAuthorizations != null) 'dnsAuthorizations': dnsAuthorizations!,
        if (domains != null) 'domains': domains!,
        if (provisioningIssue != null) 'provisioningIssue': provisioningIssue!,
        if (state != null) 'state': state!,
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

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

/// Information about issues with provisioning a Managed Certificate.
class ProvisioningIssue {
  /// Human readable explanation about the issue.
  ///
  /// Provided to help address the configuration issues. Not guaranteed to be
  /// stable. For programmatic access use Reason enum.
  core.String? details;

  /// Reason for provisioning failures.
  /// Possible string values are:
  /// - "REASON_UNSPECIFIED"
  /// - "AUTHORIZATION_ISSUE" : Certificate provisioning failed due to an issue
  /// with one or more of the domains on the certificate. For details of which
  /// domains failed, consult the `authorization_attempt_info` field.
  /// - "RATE_LIMITED" : Exceeded Certificate Authority quotas or internal rate
  /// limits of the system. Provisioning may take longer to complete.
  core.String? reason;

  ProvisioningIssue({
    this.details,
    this.reason,
  });

  ProvisioningIssue.fromJson(core.Map _json)
      : this(
          details: _json.containsKey('details')
              ? _json['details'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (reason != null) 'reason': reason!,
      };
}

/// Certificate data for a SelfManaged Certificate.
///
/// SelfManaged Certificates are uploaded by the user. Updating such
/// certificates before they expire remains the user's responsibility.
class SelfManagedCertificate {
  /// Input only.
  ///
  /// The PEM-encoded certificate chain. Leaf certificate comes first, followed
  /// by intermediate ones if any.
  core.String? pemCertificate;

  /// Input only.
  ///
  /// The PEM-encoded private key of the leaf certificate.
  core.String? pemPrivateKey;

  SelfManagedCertificate({
    this.pemCertificate,
    this.pemPrivateKey,
  });

  SelfManagedCertificate.fromJson(core.Map _json)
      : this(
          pemCertificate: _json.containsKey('pemCertificate')
              ? _json['pemCertificate'] as core.String
              : null,
          pemPrivateKey: _json.containsKey('pemPrivateKey')
              ? _json['pemPrivateKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pemCertificate != null) 'pemCertificate': pemCertificate!,
        if (pemPrivateKey != null) 'pemPrivateKey': pemPrivateKey!,
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
