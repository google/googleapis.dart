// Copyright 2026 Google LLC
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

/// Curation Partners API - v1
///
/// Curation partners API is an externally available HTTP API for curators to
/// programmatically manage their data segments and curated packages used by ad
/// agencies.
///
/// For more information, see
/// <https://developers.google.com/authorized-buyers/curation/apis/guides/curationpartners/overview>
///
/// Create an instance of [CurationPartnersApi] to access these resources:
///
/// - [CuratorsResource]
///   - [CuratorsCuratedPackagesResource]
///   - [CuratorsDataSegmentsResource]
///   - [CuratorsReportsResource]
///     - [CuratorsReportsOperationsResource]
///     - [CuratorsReportsResultsResource]
/// - [MediaPlannersResource]
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

/// Curation partners API is an externally available HTTP API for curators to
/// programmatically manage their data segments and curated packages used by ad
/// agencies.
class CurationPartnersApi {
  /// See, create, edit, and delete data entities in your Curation account.
  static const curationPartnersScope =
      'https://www.googleapis.com/auth/curation-partners';

  final commons.ApiRequester _requester;

  CuratorsResource get curators => CuratorsResource(_requester);
  MediaPlannersResource get mediaPlanners => MediaPlannersResource(_requester);

  CurationPartnersApi(
    http.Client client, {
    core.String rootUrl = 'https://curationpartners.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class CuratorsResource {
  final commons.ApiRequester _requester;

  CuratorsCuratedPackagesResource get curatedPackages =>
      CuratorsCuratedPackagesResource(_requester);
  CuratorsDataSegmentsResource get dataSegments =>
      CuratorsDataSegmentsResource(_requester);
  CuratorsReportsResource get reports => CuratorsReportsResource(_requester);

  CuratorsResource(commons.ApiRequester client) : _requester = client;
}

class CuratorsCuratedPackagesResource {
  final commons.ApiRequester _requester;

  CuratorsCuratedPackagesResource(commons.ApiRequester client)
    : _requester = client;

  /// Activates an existing curated package.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the curated package to activate. Format:
  /// `curators/{accountId}/curatedPackages/{curatedPackageId}`
  /// Value must have pattern `^curators/\[^/\]+/curatedPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CuratedPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CuratedPackage> activate(
    ActivateCuratedPackageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CuratedPackage.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new curated package.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent curator account where this curated package
  /// will be created. Format: `curators/{accountId}`
  /// Value must have pattern `^curators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CuratedPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CuratedPackage> create(
    CuratedPackage request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/curatedPackages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CuratedPackage.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deactivates an existing curated package.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the curated package to deactivate. Format:
  /// `curators/{accountId}/curatedPackages/{curatedPackageId}`
  /// Value must have pattern `^curators/\[^/\]+/curatedPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CuratedPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CuratedPackage> deactivate(
    DeactivateCuratedPackageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CuratedPackage.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a curated package given its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the curated package to retrieve. Format:
  /// `curators/{accountId}/curatedPackages/{curatedPackageId}`
  /// Value must have pattern `^curators/\[^/\]+/curatedPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CuratedPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CuratedPackage> get(
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
    return CuratedPackage.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists curated packages owned by the specified curator.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent curator account which owns this collection
  /// of curated packages. Format: `curators/{accountId}`
  /// Value must have pattern `^curators/\[^/\]+$`.
  ///
  /// [filter] - Optional. Optional query string using the \[Cloud API list
  /// filtering syntax\](/authorized-buyers/apis/guides/list-filters). Supported
  /// columns for filtering are: * displayName * createTime * updateTime * state
  /// * feeCpm.currencyCode * feeCpm.units * feeCpm.nanos *
  /// floorPriceCpm.currencyCode * floorPriceCpm.units * floorPriceCpm.nanos
  ///
  /// [pageSize] - Optional. Requested page size. The server may return fewer
  /// results than requested. Max allowed page size is 500. If unspecified, the
  /// server will default to 500.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListCuratedPackages` call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCuratedPackagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCuratedPackagesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/curatedPackages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCuratedPackagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing curated package.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The unique resource name for the curated package.
  /// Format: `curators/{accountId}/curatedPackages/{curatedPackageId}`
  /// Value must have pattern `^curators/\[^/\]+/curatedPackages/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. List of fields to be updated. If empty or
  /// unspecified, the service will update all fields populated in the update
  /// request excluding the output only fields and primitive fields with default
  /// value. Note that explicit field mask is required in order to reset a
  /// primitive field back to its default value, for example, false for boolean
  /// fields, 0 for integer fields. A special field mask consisting of a single
  /// path "*" can be used to indicate full replacement (the equivalent of PUT
  /// method), updatable fields unset or unspecified in the input will be
  /// cleared or set to default value. Output only fields will be ignored
  /// regardless of the value of updateMask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CuratedPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CuratedPackage> patch(
    CuratedPackage request,
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
    return CuratedPackage.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CuratorsDataSegmentsResource {
  final commons.ApiRequester _requester;

  CuratorsDataSegmentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Activates a data segment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of data segment to activate. Format:
  /// `curators/{accountId}/dataSegments/{curatorDataSegmentId}`
  /// Value must have pattern `^curators/\[^/\]+/dataSegments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSegment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSegment> activate(
    ActivateDataSegmentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DataSegment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a data segment owned by the listed curator.
  ///
  /// The data segment will be created in the `ACTIVE` state, meaning it will be
  /// immediately available for buyers to use in preferred deals, private
  /// auction deals, and auction packages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this data segment will be
  /// created. Format: `curators/{accountId}`
  /// Value must have pattern `^curators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSegment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSegment> create(
    DataSegment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataSegments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DataSegment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deactivates a data segment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of data segment to deactivate. Format:
  /// `curators/{accountId}/dataSegments/{curatorDataSegmentId}`
  /// Value must have pattern `^curators/\[^/\]+/dataSegments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSegment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSegment> deactivate(
    DeactivateDataSegmentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DataSegment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a data segment given its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of data segment to get. Format:
  /// `curators/{accountId}/dataSegments/{curatorDataSegmentId}`
  /// Value must have pattern `^curators/\[^/\]+/dataSegments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSegment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSegment> get(
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
    return DataSegment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List the data segments owned by a curator.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent curator that can access the data
  /// segment. Format: `curators/{accountId}`
  /// Value must have pattern `^curators/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. The server may return fewer
  /// results than requested. Max allowed page size is 500. If unspecified, the
  /// server will default to 500.
  ///
  /// [pageToken] - Optional. The page token as returned.
  /// ListDataSegmentsResponse.nextPageToken
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataSegmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataSegmentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataSegments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDataSegmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a data segment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The unique identifier for the data
  /// segment. Account ID corresponds to the account ID that created the
  /// segment. Format:
  /// `curators/{curatorAccountId}/dataSegments/{curatorDataSegmentId}`
  /// Value must have pattern `^curators/\[^/\]+/dataSegments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. List of fields to be updated. If empty or
  /// unspecified, the service will update all fields populated in the update
  /// request excluding the output only fields and primitive fields with default
  /// value. Note that explicit field mask is required in order to reset a
  /// primitive field back to its default value, for example, false for boolean
  /// fields, 0 for integer fields. A special field mask consisting of a single
  /// path "*" can be used to indicate full replacement(the equivalent of PUT
  /// method), updatable fields unset or unspecified in the input will be
  /// cleared or set to default value. Output only fields will be ignored
  /// regardless of the value of updateMask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSegment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSegment> patch(
    DataSegment request,
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
    return DataSegment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CuratorsReportsResource {
  final commons.ApiRequester _requester;

  CuratorsReportsOperationsResource get operations =>
      CuratorsReportsOperationsResource(_requester);
  CuratorsReportsResultsResource get results =>
      CuratorsReportsResultsResource(_requester);

  CuratorsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a `Report` object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this `Report` will be
  /// created. Format: `curators/{account_id}`
  /// Value must have pattern `^curators/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> create(
    Report request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Report` object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the report to delete. Format:
  /// `curators/{account_id}/reports/{report_id}`
  /// Value must have pattern `^curators/\[^/\]+/reports/\[^/\]+$`.
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

  /// Retrieves a `Report` object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the report. Format:
  /// `curators/{account_id}/reports/{report_id}`
  /// Value must have pattern `^curators/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `Report` objects.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of reports.
  /// Format: `curators/{account_id}`
  /// Value must have pattern `^curators/\[^/\]+$`.
  ///
  /// [filter] - Optional. Expression to filter the response. See syntax details
  /// at https://developers.google.com/ad-manager/api/beta/filters
  ///
  /// [orderBy] - Optional. Expression to specify sorting order. See syntax
  /// details at https://developers.google.com/ad-manager/api/beta/filters#order
  ///
  /// [pageSize] - Optional. The maximum number of `Reports` to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// `Reports` will be returned. The maximum value is 1000; values greater than
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListReports` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListReports` must match the
  /// call that provided the page token.
  ///
  /// [skip] - Optional. Number of individual resources to skip while
  /// paginating.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReportsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.int? skip,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'skip': ?skip == null ? null : ['${skip}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `Report` object.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the report. Report resource name
  /// have the form: `curators/{account_id}/reports/{report_id}`
  /// Value must have pattern `^curators/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> patch(
    Report request,
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
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Initiates the execution of an existing report asynchronously.
  ///
  /// Users can get the report by polling this operation using
  /// `OperationsService.GetOperation`. Poll every 5 seconds initially, with an
  /// exponential backoff. Once a report is complete, the operation will contain
  /// a `RunReportResponse` in its response field containing a report_result
  /// that can be passed to the `FetchReportResultRows` method to retrieve the
  /// report data.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The report to run. Format:
  /// `curators/{account_id}/reports/{report_id}`
  /// Value must have pattern `^curators/\[^/\]+/reports/\[^/\]+$`.
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
  async.Future<Operation> run(
    RunReportRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CuratorsReportsOperationsResource {
  final commons.ApiRequester _requester;

  CuratorsReportsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^curators/\[^/\]+/reports/\[^/\]+/operations/\[^/\]+$`.
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
}

class CuratorsReportsResultsResource {
  final commons.ApiRequester _requester;

  CuratorsReportsResultsResource(commons.ApiRequester client)
    : _requester = client;

  /// Returns the result rows from a completed report.
  ///
  /// The caller must have previously called `RunReport` and waited for that
  /// operation to complete. The rows will be returned according to the order
  /// specified by the `sorts` member of the report definition.
  ///
  /// Request parameters:
  ///
  /// [name] - The report result being fetched. Format:
  /// `curators/{account_id}/reports/{report_id}/results/{report_result_id}`
  /// Value must have pattern
  /// `^curators/\[^/\]+/reports/\[^/\]+/results/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of rows to return. The service
  /// may return fewer than this value. If unspecified, at most 1,000 rows will
  /// be returned. The maximum value is 10,000; values greater than 10,000 will
  /// be reduced to 10,000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `FetchReportResultRows` call. Provide this to retrieve the second and
  /// subsequent batches of rows.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchReportResultRowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchReportResultRowsResponse> fetchRows(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchRows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchReportResultRowsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MediaPlannersResource {
  final commons.ApiRequester _requester;

  MediaPlannersResource(commons.ApiRequester client) : _requester = client;

  /// Lists all media planner accounts that the caller has access to.
  ///
  /// For curators, this will return all media planners that have accepted
  /// curator terms. For other accounts, attempting to list media planners will
  /// return an error.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional query string using the \[Cloud API list filtering
  /// syntax\](/authorized-buyers/apis/guides/list-filters). Supported columns
  /// for filtering are: * `name` * `displayName` * `ancestorNames`
  ///
  /// [pageSize] - The maximum number of media planners to return. If
  /// unspecified, at most 100 media planners will be returned. The maximum
  /// value is 500; values above 500 will be coerced to 500.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.This value is received from a previous `ListMediaPlanners`
  /// call in ListMediaPlannersResponse.nextPageToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMediaPlannersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMediaPlannersResponse> list({
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

    const url_ = 'v1/mediaPlanners';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMediaPlannersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Settings for controlling access to a curated package.
class AccessControlSettings {
  /// The list of media planners that are explicitly granted access to the
  /// curated package.
  ///
  /// Eligible media planners can be found in the mediaPlanners.list method.
  /// Only a single media planner may be allowlisted at this time. Format:
  /// `mediaPlanners/{mediaPlannerAccountId}`
  ///
  /// Required. Immutable.
  core.List<core.String>? allowlistedMediaPlanners;

  AccessControlSettings({this.allowlistedMediaPlanners});

  AccessControlSettings.fromJson(core.Map json_)
    : this(
        allowlistedMediaPlanners:
            (json_['allowlistedMediaPlanners'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowlistedMediaPlanners = this.allowlistedMediaPlanners;
    return {'allowlistedMediaPlanners': ?allowlistedMediaPlanners};
  }
}

/// Request message for ActivateCuratedPackage.
typedef ActivateCuratedPackageRequest = $Empty;

/// Request message for activating a data segment
typedef ActivateDataSegmentRequest = $Empty;

/// Represents size of a single ad slot, or a creative.
typedef AdSize = $AdSize;

/// Generic targeting used for targeting dimensions that contains a list of
/// included and excluded numeric IDs.
///
/// This cannot be filtered using list filter syntax.
typedef CriteriaTargeting = $CriteriaTargeting;

/// Represents a curated package of inventory created and managed by a Curator.
class CuratedPackage {
  /// Settings for controlling access to the curated package.
  ///
  /// Access to this curated package is limited to the allowlisted media
  /// planners and the creator. Buyers and bidders can not be allowlisted for or
  /// have direct access to this resource.
  ///
  /// Required.
  AccessControlSettings? accessSettings;

  /// The timestamp when the curated package was created.
  ///
  /// Can be used to filter the response of the curatedPackages.list method.
  ///
  /// Output only.
  core.String? createTime;

  /// The visibility of the combined curation package fee and data segment fees
  /// (the total curation fee).
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "CURATION_FEE_VISIBILITY_UNSPECIFIED" : The total curation fee
  /// visibility is unspecified.
  /// - "DISCLOSED" : The total curation fee is visible to all buyers. This is
  /// the default value if not set.
  /// - "NON_DISCLOSED" : The total curation fee is not visible to all buyers.
  core.String? curationFeeVisibility;

  /// A description of the curated package, provided by the curator.
  ///
  /// Optional.
  core.String? description;

  /// The display name assigned to the curated package by the curator.
  ///
  /// Can be used to filter the response of the curatedPackages.list method.
  ///
  /// Required.
  core.String? displayName;

  /// The CPM fee charged by the curator to buyers using this curated package.
  ///
  /// Can be used to filter the response of the curatedPackages.list method.
  ///
  /// Optional.
  Money? feeCpm;

  /// The minimum CPM a buyer has to bid to participate in auctions for
  /// inventory in this curated package.
  ///
  /// Can be used to filter the response of the curatedPackages.list method.
  ///
  /// Optional.
  Money? floorPriceCpm;

  /// The fee will be charged as a percentage of the impression cost,
  /// represented in millipercent.
  ///
  /// For example, 1% is represented as 1000.
  ///
  /// Optional.
  core.String? millipercentOfMediaFee;

  /// Identifier.
  ///
  /// The unique resource name for the curated package. Format:
  /// `curators/{accountId}/curatedPackages/{curatedPackageId}`
  core.String? name;

  /// The state of the curated package.
  ///
  /// Can be used to filter the response of the curatedPackages.list method.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "ACTIVE" : The curated package is active.
  /// - "INACTIVE" : The curated package is inactive.
  core.String? state;

  /// Targeting criteria for the curated package.
  ///
  /// Optional.
  PackageTargeting? targeting;

  /// The timestamp when the curated package was last updated.
  ///
  /// Can be used to filter the response of the curatedPackages.list method.
  ///
  /// Output only.
  core.String? updateTime;

  CuratedPackage({
    this.accessSettings,
    this.createTime,
    this.curationFeeVisibility,
    this.description,
    this.displayName,
    this.feeCpm,
    this.floorPriceCpm,
    this.millipercentOfMediaFee,
    this.name,
    this.state,
    this.targeting,
    this.updateTime,
  });

  CuratedPackage.fromJson(core.Map json_)
    : this(
        accessSettings: json_.containsKey('accessSettings')
            ? AccessControlSettings.fromJson(
                json_['accessSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        curationFeeVisibility: json_['curationFeeVisibility'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        feeCpm: json_.containsKey('feeCpm')
            ? Money.fromJson(
                json_['feeCpm'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        floorPriceCpm: json_.containsKey('floorPriceCpm')
            ? Money.fromJson(
                json_['floorPriceCpm'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        millipercentOfMediaFee: json_['millipercentOfMediaFee'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        targeting: json_.containsKey('targeting')
            ? PackageTargeting.fromJson(
                json_['targeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessSettings = this.accessSettings;
    final createTime = this.createTime;
    final curationFeeVisibility = this.curationFeeVisibility;
    final description = this.description;
    final displayName = this.displayName;
    final feeCpm = this.feeCpm;
    final floorPriceCpm = this.floorPriceCpm;
    final millipercentOfMediaFee = this.millipercentOfMediaFee;
    final name = this.name;
    final state = this.state;
    final targeting = this.targeting;
    final updateTime = this.updateTime;
    return {
      'accessSettings': ?accessSettings,
      'createTime': ?createTime,
      'curationFeeVisibility': ?curationFeeVisibility,
      'description': ?description,
      'displayName': ?displayName,
      'feeCpm': ?feeCpm,
      'floorPriceCpm': ?floorPriceCpm,
      'millipercentOfMediaFee': ?millipercentOfMediaFee,
      'name': ?name,
      'state': ?state,
      'targeting': ?targeting,
      'updateTime': ?updateTime,
    };
  }
}

/// Defines an identifier for a segment of inventory that can be targeted by
/// curators or media planners in the deals or auction packages UI.
///
/// Curation of inventory is done by curators on external platforms. -- Next ID:
/// 9 --
class DataSegment {
  /// A fixed fee charged per thousand impressions.
  ///
  /// Once set, the currency code cannot be changed.
  ///
  /// Optional.
  Money? cpmFee;

  /// Time the data segment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The fee will be charged as a percentage of the impression cost,
  /// represented in millipercent.
  ///
  /// For example, 1% is represented as 1000.
  ///
  /// Optional.
  core.String? millipercentOfMediaFee;

  /// Identifier.
  ///
  /// The unique identifier for the data segment. Account ID corresponds to the
  /// account ID that created the segment. Format:
  /// `curators/{curatorAccountId}/dataSegments/{curatorDataSegmentId}`
  ///
  /// Immutable.
  core.String? name;

  /// The state of the data segment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value.
  /// - "ACTIVE" : The data segment is active.
  /// - "INACTIVE" : The data segment is inactive.
  /// - "SUSPENDED" : The data segment is suspended and cannot be activated.
  core.String? state;

  /// Time the data segment was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The ID of the User List wrapped by this Data Segment.
  ///
  /// Curators with a linked Data Partner account can create a data segment that
  /// wraps a user list owned by the linked Data Partner account. User lists can
  /// be uploaded and managed using the
  /// [Data Manager API](https://developers.google.com/data-manager/api/data-partners/audiences).
  /// Linking a user list to a data segment lets you define a segment of
  /// inventory that is based on an audience you create.
  ///
  /// Optional. Immutable.
  core.String? userListId;

  DataSegment({
    this.cpmFee,
    this.createTime,
    this.millipercentOfMediaFee,
    this.name,
    this.state,
    this.updateTime,
    this.userListId,
  });

  DataSegment.fromJson(core.Map json_)
    : this(
        cpmFee: json_.containsKey('cpmFee')
            ? Money.fromJson(
                json_['cpmFee'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        millipercentOfMediaFee: json_['millipercentOfMediaFee'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cpmFee = this.cpmFee;
    final createTime = this.createTime;
    final millipercentOfMediaFee = this.millipercentOfMediaFee;
    final name = this.name;
    final state = this.state;
    final updateTime = this.updateTime;
    final userListId = this.userListId;
    return {
      'cpmFee': ?cpmFee,
      'createTime': ?createTime,
      'millipercentOfMediaFee': ?millipercentOfMediaFee,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
      'userListId': ?userListId,
    };
  }
}

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
typedef Date = $Date;

/// A date range for a report.
class DateRange {
  /// A fixed date range.
  FixedDateRange? fixed;

  /// A relative date range.
  /// Possible string values are:
  /// - "RELATIVE_DATE_RANGE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TODAY" : The date the report is run.
  /// - "YESTERDAY" : The date a day before the date that the report is run.
  /// - "THIS_WEEK_TO_DATE" : From the beginning of the calendar week in which
  /// the up to and including the day the report is run.
  /// - "THIS_WEEK_TO_YESTERDAY" : From the beginning of the calendar week in
  /// which the report is run, up to and including the day before the report is
  /// run.
  /// - "THIS_MONTH_TO_DATE" : From the beginning of the calendar month in which
  /// the report is run, to up to and including the day the report is run.
  /// - "THIS_MONTH_TO_YESTERDAY" : From the beginning of the calendar month in
  /// which the report is run, up to and including the day before the report is
  /// run.
  /// - "THIS_QUARTER_TO_DATE" : From the beginning of the calendar quarter in
  /// which the report is run, up to and including the day the report is run.
  /// - "THIS_QUARTER_TO_YESTERDAY" : From the beginning of the calendar quarter
  /// in which the report is run, up to and including the day before the report
  /// is run.
  /// - "THIS_YEAR_TO_DATE" : From the beginning of the calendar year in which
  /// the report is run, to up to and including the day the report is run.
  /// - "THIS_YEAR_TO_YESTERDAY" : From the beginning of the calendar year in
  /// which the report is run, to up to and including the day before the report
  /// is run.
  /// - "LAST_WEEK" : The entire previous calendar week, Monday to Sunday
  /// (inclusive), preceding the calendar week the report is run.
  /// - "LAST_WEEK_STARTING_SUNDAY" : The entire previous calendar week, Sunday
  /// to Saturday (inclusive), preceding the calendar week the report is run.
  /// - "LAST_MONTH" : The entire previous calendar month preceding the calendar
  /// month the report is run.
  /// - "LAST_QUARTER" : The entire previous calendar quarter preceding the
  /// calendar quarter the report is run.
  /// - "LAST_YEAR" : The entire previous calendar year preceding the calendar
  /// year the report is run.
  /// - "LAST_7_DAYS" : The 7 days preceding the day the report is run.
  /// - "LAST_30_DAYS" : The 30 days preceding the day the report is run.
  /// - "LAST_60_DAYS" : The 60 days preceding the day the report is run.
  /// - "LAST_90_DAYS" : The 90 days preceding the day the report is run.
  /// - "LAST_93_DAYS" : The 93 days preceding the day the report is run.
  /// - "LAST_180_DAYS" : The 180 days preceding the day the report is run.
  /// - "LAST_360_DAYS" : The 360 days preceding the day the report is run.
  /// - "LAST_365_DAYS" : The 365 days preceding the day the report is run.
  /// - "LAST_3_MONTHS" : The entire previous 3 calendar months preceding the
  /// calendar month the report is run.
  /// - "LAST_6_MONTHS" : The entire previous 6 calendar months preceding the
  /// calendar month the report is run.
  /// - "LAST_12_MONTHS" : The entire previous 12 calendar months preceding the
  /// calendar month the report is run.
  /// - "ALL_AVAILABLE" : From 3 years before the report is run, to the day
  /// before the report is run, inclusive.
  core.String? relative;

  DateRange({this.fixed, this.relative});

  DateRange.fromJson(core.Map json_)
    : this(
        fixed: json_.containsKey('fixed')
            ? FixedDateRange.fromJson(
                json_['fixed'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        relative: json_['relative'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fixed = this.fixed;
    final relative = this.relative;
    return {'fixed': ?fixed, 'relative': ?relative};
  }
}

/// Request message for DeactivateCuratedPackage.
typedef DeactivateCuratedPackageRequest = $Empty;

/// Request message for deactivating a data segment
typedef DeactivateDataSegmentRequest = $Empty;

/// A list of double values.
typedef DoubleList = $DoubleList;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response message for the fetch report result rows endpoint.
class FetchReportResultRowsResponse {
  /// The computed fixed date ranges this report includes.
  ///
  /// Only returned with the first page of results (when page_token is not
  /// included in the request).
  core.List<FixedDateRange>? dateRanges;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Up to `page_size` rows of report data.
  core.List<Row>? rows;

  /// The time at which the report was scheduled to run.
  ///
  /// For non-scheduled reports, this is the time at which the report was
  /// requested to be run.
  core.String? runTime;

  /// The total number of rows available from this report.
  ///
  /// Useful for pagination. Only returned with the first page of results (when
  /// page_token is not included in the request).
  core.int? totalRowCount;

  FetchReportResultRowsResponse({
    this.dateRanges,
    this.nextPageToken,
    this.rows,
    this.runTime,
    this.totalRowCount,
  });

  FetchReportResultRowsResponse.fromJson(core.Map json_)
    : this(
        dateRanges: (json_['dateRanges'] as core.List?)
            ?.map(
              (value) => FixedDateRange.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        rows: (json_['rows'] as core.List?)
            ?.map(
              (value) =>
                  Row.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        runTime: json_['runTime'] as core.String?,
        totalRowCount: json_['totalRowCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateRanges = this.dateRanges;
    final nextPageToken = this.nextPageToken;
    final rows = this.rows;
    final runTime = this.runTime;
    final totalRowCount = this.totalRowCount;
    return {
      'dateRanges': ?dateRanges,
      'nextPageToken': ?nextPageToken,
      'rows': ?rows,
      'runTime': ?runTime,
      'totalRowCount': ?totalRowCount,
    };
  }
}

/// A dimension or a metric in a report.
class Field {
  /// The dimension this field represents.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value. This value is unused.
  /// - "ADVERTISER_DOMAIN" : The domain of the advertiser.
  /// - "COUNTRY" : Display name of a country.
  /// - "CURATION_DATA_SEGMENT_ID" : The ID of the data segment created by a
  /// curator.
  /// - "CURATION_DATA_SEGMENT_RESPONSE_STATUS" : The response status of the
  /// data segment requests in the Real-time curation. Refer to
  /// https://developers.google.com/authorized-buyers/curation/get-started/start
  /// for details.
  /// - "CURATION_DATA_SEGMENT_RESPONSE_STATUS_NAME" : The localized display
  /// name of the response status of the data segment requests in the Real-time
  /// curation. Refer to
  /// https://developers.google.com/authorized-buyers/curation/get-started/start
  /// for details.
  /// - "CURATOR_FEE_TYPE" : The type of curation service (e.g. packaging or
  /// data segment).
  /// - "DATE" : Date.
  /// - "DEAL_ID" : Deal ID.
  /// - "DEAL_NAME" : Deal name.
  /// - "DETECTED_ADVERTISER_NAME" : Display name of the detected advertiser.
  /// - "DSP_NAME" : Display name of the DSP.
  /// - "DSP_SEAT_ID" : DSP Seat ID.
  /// - "ENVIRONMENT" : The user device and container environment where the
  /// impression originates. Supported values are "app" and "web".
  /// - "ENVIRONMENT_NAME" : The localized display name of the user device and
  /// container environment where the impression originates. Supported values
  /// are "app" and "web".
  /// - "HOLDING_COMPANY_NAME" : Display name of the holding company.
  /// - "HOUR" : Hour.
  /// - "MOBILE_APP_ID" : Mobile App ID.
  /// - "MOBILE_APP_NAME" : Mobile App Name.
  /// - "MOBILE_OS" : Mobile operating system.
  /// - "MONTH" : Month.
  /// - "PACKAGE_FEE_VISIBILITY" : The visibility of the package fee (e.g.
  /// disclosed or non-disclosed).
  /// - "PLATFORM" : Platform, e.g. "desktop" vs. "mobile".
  /// - "PUBLISHER_DOMAIN" : Publisher domain.
  /// - "PUBLISHER_ID" : Publisher identifier.
  /// - "PUBLISHER_NAME" : Publisher name.
  /// - "WEEK" : Week.
  core.String? dimension;

  /// The metric this field represents.
  /// Possible string values are:
  /// - "METRIC_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE_VIEW_MEASURABILITY_RATE" : Active View measurability rate.
  /// - "ACTIVE_VIEW_MEASURABLE" : Active View measurable.
  /// - "ACTIVE_VIEW_VIEWABILITY_RATE" : Active view viewability rate.
  /// - "ACTIVE_VIEW_VIEWABLE" : Active View viewable imps.
  /// - "AUCTIONS_WON" : Auctions won.
  /// - "BIDS" : Bids.
  /// - "BIDS_IN_AUCTION" : Bids in auction.
  /// - "BID_REQUESTS" : Bid requests.
  /// - "CLICKS" : Clicks.
  /// - "CURATION_PARTNER_FEE" : Curator fee. This will be redacted to 0.00 if
  /// the package's visibility is set to non-disclosed. Use the
  /// PACKAGE_FEE_VISIBILITY dimension to check if the package's fee is
  /// disclosed.
  /// - "DATA_SEGMENT_REQUESTS" : Number of data segment requests sent in the
  /// Real-time curation.
  /// - "IMPRESSIONS" : Impressions.
  /// - "SPEND" : Spend in reporting currency specified in the request. Defaults
  /// to USD.
  core.String? metric;

  Field({this.dimension, this.metric});

  Field.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        metric: json_['metric'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final metric = this.metric;
    return {'dimension': ?dimension, 'metric': ?metric};
  }
}

/// A filter on a specific field.
class FieldFilter {
  /// The field to filter on.
  ///
  /// Required.
  Field? field;

  /// The operation of this filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IN" : For scalar operands, checks if the operand is in the set of
  /// provided filter values. For list operands, checks if any element in the
  /// operand is in the set of provided filter values. Default value.
  /// - "NOT_IN" : For scalar operands, checks that the operand is not in the
  /// set of provided filter values. For list operands, checks that none of the
  /// elements in the operand is in the set of provided filter values.
  /// - "CONTAINS" : For scalar string operands, checks if the operand contains
  /// any of the provided filter substrings. For string list operands, checks if
  /// any string in the operand contains any of the provided filter substrings.
  /// - "NOT_CONTAINS" : For scalar string operands, checks that the operand
  /// contains none of the provided filter substrings. For string list operands,
  /// checks that none of the strings in the operand contain none of the
  /// provided filter substrings.
  /// - "LESS_THAN" : Operand is less than the provided filter value.
  /// - "LESS_THAN_EQUALS" : Operand is less than or equal to provided filter
  /// value.
  /// - "GREATER_THAN" : Operand is greater than provided filter value.
  /// - "GREATER_THAN_EQUALS" : Operand is greater than or equal to provided
  /// filter value.
  /// - "BETWEEN" : Operand is between provided filter values.
  /// - "MATCHES" : Operand matches against a regular expression or set of
  /// regular expressions (one must match).
  /// - "NOT_MATCHES" : Operand negative matches against a regular expression or
  /// set of regular expressions (none must match).
  core.String? operation;

  /// Values to filter to.
  ///
  /// Required.
  core.List<ReportValue>? values;

  FieldFilter({this.field, this.operation, this.values});

  FieldFilter.fromJson(core.Map json_)
    : this(
        field: json_.containsKey('field')
            ? Field.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operation: json_['operation'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => ReportValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    final operation = this.operation;
    final values = this.values;
    return {'field': ?field, 'operation': ?operation, 'values': ?values};
  }
}

/// A filter over one or more fields.
class Filter {
  /// A list of filters whose results are AND-ed.
  FilterList? andFilter;

  /// A filter on a single field.
  FieldFilter? fieldFilter;

  /// A filter whose result is negated.
  Filter? notFilter;

  /// A list of filters whose results are OR-ed.
  FilterList? orFilter;

  Filter({this.andFilter, this.fieldFilter, this.notFilter, this.orFilter});

  Filter.fromJson(core.Map json_)
    : this(
        andFilter: json_.containsKey('andFilter')
            ? FilterList.fromJson(
                json_['andFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldFilter: json_.containsKey('fieldFilter')
            ? FieldFilter.fromJson(
                json_['fieldFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        notFilter: json_.containsKey('notFilter')
            ? Filter.fromJson(
                json_['notFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        orFilter: json_.containsKey('orFilter')
            ? FilterList.fromJson(
                json_['orFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final andFilter = this.andFilter;
    final fieldFilter = this.fieldFilter;
    final notFilter = this.notFilter;
    final orFilter = this.orFilter;
    return {
      'andFilter': ?andFilter,
      'fieldFilter': ?fieldFilter,
      'notFilter': ?notFilter,
      'orFilter': ?orFilter,
    };
  }
}

/// A list of filters.
class FilterList {
  /// A list of filters.
  ///
  /// Required.
  core.List<Filter>? filters;

  FilterList({this.filters});

  FilterList.fromJson(core.Map json_)
    : this(
        filters: (json_['filters'] as core.List?)
            ?.map(
              (value) =>
                  Filter.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filters = this.filters;
    return {'filters': ?filters};
  }
}

/// A date range between two fixed dates (inclusive of end date).
class FixedDateRange {
  /// The end date (inclusive) of this date range.
  ///
  /// Required.
  Date? endDate;

  /// The start date of this date range.
  ///
  /// Required.
  Date? startDate;

  FixedDateRange({this.endDate, this.startDate});

  FixedDateRange.fromJson(core.Map json_)
    : this(
        endDate: json_.containsKey('endDate')
            ? Date.fromJson(
                json_['endDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startDate: json_.containsKey('startDate')
            ? Date.fromJson(
                json_['startDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endDate = this.endDate;
    final startDate = this.startDate;
    return {'endDate': ?endDate, 'startDate': ?startDate};
  }
}

/// A list of integer values.
typedef IntList = $IntList;

/// Response message for ListCuratedPackages.
class ListCuratedPackagesResponse {
  /// The list of curated packages.
  core.List<CuratedPackage>? curatedPackages;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListCuratedPackagesRequest.pageToken field in the
  /// subsequent call to `ListCuratedPackages` method to retrieve the next page
  /// of results. If empty, then there are no more results.
  core.String? nextPageToken;

  ListCuratedPackagesResponse({this.curatedPackages, this.nextPageToken});

  ListCuratedPackagesResponse.fromJson(core.Map json_)
    : this(
        curatedPackages: (json_['curatedPackages'] as core.List?)
            ?.map(
              (value) => CuratedPackage.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final curatedPackages = this.curatedPackages;
    final nextPageToken = this.nextPageToken;
    return {
      'curatedPackages': ?curatedPackages,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for listing data segments.
class ListDataSegmentsResponse {
  /// The list of data segments.
  core.List<DataSegment>? dataSegments;

  /// Continuation token for fetching the next page of results.
  ///
  /// Pass this value in the ListDataSegmentsRequest.pageToken field in the
  /// subsequent call to the `ListDataSegments` method to retrieve the next page
  /// of results.
  core.String? nextPageToken;

  ListDataSegmentsResponse({this.dataSegments, this.nextPageToken});

  ListDataSegmentsResponse.fromJson(core.Map json_)
    : this(
        dataSegments: (json_['dataSegments'] as core.List?)
            ?.map(
              (value) => DataSegment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSegments = this.dataSegments;
    final nextPageToken = this.nextPageToken;
    return {'dataSegments': ?dataSegments, 'nextPageToken': ?nextPageToken};
  }
}

/// A response containing media planner account information.
class ListMediaPlannersResponse {
  /// List of media planners.
  core.List<MediaPlanner>? mediaPlanners;

  /// A token which can be passed to a subsequent call to the ListMediaPlanners
  /// method to retrieve the next page of results in
  /// ListMediaPlannersRequest.page_token.
  core.String? nextPageToken;

  ListMediaPlannersResponse({this.mediaPlanners, this.nextPageToken});

  ListMediaPlannersResponse.fromJson(core.Map json_)
    : this(
        mediaPlanners: (json_['mediaPlanners'] as core.List?)
            ?.map(
              (value) => MediaPlanner.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mediaPlanners = this.mediaPlanners;
    final nextPageToken = this.nextPageToken;
    return {'mediaPlanners': ?mediaPlanners, 'nextPageToken': ?nextPageToken};
  }
}

/// Response object for `ListReportsResponse` containing matching `Report`
/// objects.
class ListReportsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The `Report` objects from the specified network.
  core.List<Report>? reports;

  /// Total number of `Report` objects.
  ///
  /// If a filter was included in the request, this reflects the total number
  /// after the filtering is applied. `total_size` won't be calculated in the
  /// response unless it has been included in a response field mask. The
  /// response field mask can be provided to the method by using the URL
  /// parameter `$fields` or `fields`, or by using the HTTP/gRPC header
  /// `X-Goog-FieldMask`. For more information, see
  /// https://developers.google.com/ad-manager/api/beta/field-masks
  core.int? totalSize;

  ListReportsResponse({this.nextPageToken, this.reports, this.totalSize});

  ListReportsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        reports: (json_['reports'] as core.List?)
            ?.map(
              (value) =>
                  Report.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final reports = this.reports;
    final totalSize = this.totalSize;
    return {
      'nextPageToken': ?nextPageToken,
      'reports': ?reports,
      'totalSize': ?totalSize,
    };
  }
}

/// Represents a media planner account.
class MediaPlanner {
  /// Account ID of the media planner.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? accountId;

  /// The ancestor names of the media planner.
  ///
  /// Format: `mediaPlanners/{mediaPlannerAccountId}`. Can be used to filter the
  /// response of the mediaPlanners.list method.
  ///
  /// Output only.
  core.List<core.String>? ancestorNames;

  /// The display name of the media planner.
  ///
  /// Can be used to filter the response of the mediaPlanners.list method.
  ///
  /// Output only.
  core.String? displayName;

  /// Identifier.
  ///
  /// The unique resource name of the media planner. Format:
  /// `mediaPlanners/{mediaPlannerAccountId}`. Can be used to filter the
  /// response of the mediaPlanners.list method.
  core.String? name;

  MediaPlanner({
    this.accountId,
    this.ancestorNames,
    this.displayName,
    this.name,
  });

  MediaPlanner.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        ancestorNames: (json_['ancestorNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final ancestorNames = this.ancestorNames;
    final displayName = this.displayName;
    final name = this.name;
    return {
      'accountId': ?accountId,
      'ancestorNames': ?ancestorNames,
      'displayName': ?displayName,
      'name': ?name,
    };
  }
}

/// Contains all metric values requested for a single date range and set of
/// column dimension values (returned in the columns field of the response).
///
/// The order of the metrics in each field corresponds to the order of the
/// metrics specified in the request.
class MetricValueGroup {
  /// Data for the PRIMARY MetricValueType.
  core.List<ReportValue>? primaryValues;

  MetricValueGroup({this.primaryValues});

  MetricValueGroup.fromJson(core.Map json_)
    : this(
        primaryValues: (json_['primaryValues'] as core.List?)
            ?.map(
              (value) => ReportValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final primaryValues = this.primaryValues;
    return {'primaryValues': ?primaryValues};
  }
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

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

/// Represents targeting about where the ads can appear, for example, certain
/// sites or mobile applications.
///
/// Different placement targeting types will be logically OR'ed.
class PackagePlacementTargeting {
  /// The list of targeted mobile app categories.
  ///
  /// Optional.
  core.List<core.String>? includedMobileAppCategoryTargeting;

  /// The list of targeted or excluded mobile application IDs that publishers
  /// own.
  ///
  /// Currently, only Android and Apple apps are supported. Android App ID, for
  /// example, com.google.android.apps.maps, can be found in Google Play Store
  /// URL. iOS App ID (which is a number) can be found at the end of iTunes
  /// store URL. First party mobile applications is either included or excluded.
  ///
  /// Optional.
  StringTargetingDimension? mobileAppTargeting;

  /// The list of targeted or excluded URLs.
  ///
  /// The domains should have the http/https stripped (for example, google.com),
  /// and can contain a max of 5 paths per url.
  ///
  /// Optional.
  StringTargetingDimension? uriTargeting;

  PackagePlacementTargeting({
    this.includedMobileAppCategoryTargeting,
    this.mobileAppTargeting,
    this.uriTargeting,
  });

  PackagePlacementTargeting.fromJson(core.Map json_)
    : this(
        includedMobileAppCategoryTargeting:
            (json_['includedMobileAppCategoryTargeting'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        mobileAppTargeting: json_.containsKey('mobileAppTargeting')
            ? StringTargetingDimension.fromJson(
                json_['mobileAppTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        uriTargeting: json_.containsKey('uriTargeting')
            ? StringTargetingDimension.fromJson(
                json_['uriTargeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final includedMobileAppCategoryTargeting =
        this.includedMobileAppCategoryTargeting;
    final mobileAppTargeting = this.mobileAppTargeting;
    final uriTargeting = this.uriTargeting;
    return {
      'includedMobileAppCategoryTargeting': ?includedMobileAppCategoryTargeting,
      'mobileAppTargeting': ?mobileAppTargeting,
      'uriTargeting': ?uriTargeting,
    };
  }
}

/// Represents targeting about publisher provided signals.
///
/// Different publisher provided signals types will be logically OR'ed.
class PackagePublisherProvidedSignalsTargeting {
  /// The list of targeted or excluded audience IDs.
  ///
  /// Based off of IAB Audience Taxonomy version 1.1
  /// (https://github.com/InteractiveAdvertisingBureau/Taxonomies/blob/main/Audience%20Taxonomies/Audience%20Taxonomy%201.1.tsv)
  ///
  /// Optional.
  TaxonomyTargeting? audienceTargeting;

  /// The list of targeted or excluded content IDs.
  ///
  /// Based off of IAB Content Taxonomy version 2.2
  /// (https://github.com/InteractiveAdvertisingBureau/Taxonomies/blob/main/Content%20Taxonomies/Content%20Taxonomy%202.2.tsv)
  ///
  /// Optional.
  TaxonomyTargeting? contentTargeting;

  /// The list of targeted and excluded video and audio signals IDs.
  ///
  /// These are additional signals supported by publisher provided signals.
  ///
  /// Optional.
  StringTargetingDimension? videoAndAudioSignalsTargeting;

  PackagePublisherProvidedSignalsTargeting({
    this.audienceTargeting,
    this.contentTargeting,
    this.videoAndAudioSignalsTargeting,
  });

  PackagePublisherProvidedSignalsTargeting.fromJson(core.Map json_)
    : this(
        audienceTargeting: json_.containsKey('audienceTargeting')
            ? TaxonomyTargeting.fromJson(
                json_['audienceTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        contentTargeting: json_.containsKey('contentTargeting')
            ? TaxonomyTargeting.fromJson(
                json_['contentTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        videoAndAudioSignalsTargeting:
            json_.containsKey('videoAndAudioSignalsTargeting')
            ? StringTargetingDimension.fromJson(
                json_['videoAndAudioSignalsTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceTargeting = this.audienceTargeting;
    final contentTargeting = this.contentTargeting;
    final videoAndAudioSignalsTargeting = this.videoAndAudioSignalsTargeting;
    return {
      'audienceTargeting': ?audienceTargeting,
      'contentTargeting': ?contentTargeting,
      'videoAndAudioSignalsTargeting': ?videoAndAudioSignalsTargeting,
    };
  }
}

/// Targeting criteria for curated and auction packages.
class PackageTargeting {
  /// The geo criteria IDs to be included or excluded as defined in
  /// https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv.
  ///
  /// If unset, inventory will be targeted regardless of geo.
  ///
  /// Optional.
  CriteriaTargeting? geoTargeting;

  /// The targeted accelerated mobile page type.
  ///
  /// If unset, inventory will be targeted regardless of AMP status.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACCELERATED_MOBILE_PAGE_TYPE_UNSPECIFIED" : Default value. Should not
  /// be used in targeting specifications.
  /// - "ACCELERATED_MOBILE_PAGE_TYPE_NON_AMP" : Targets inventory on standard
  /// web pages not using any AMP framework.
  /// - "ACCELERATED_MOBILE_PAGE_TYPE_AMP" : Targets inventory on pages built
  /// using the core AMP HTML framework.
  /// - "ACCELERATED_MOBILE_PAGE_TYPE_AMP_STORY" : Targets inventory on pages
  /// using the AMP Story (STAMP) format, which is optimized for visual
  /// storytelling (e.g., tappable full-screen experiences).
  core.String? includedAcceleratedMobilePageType;

  /// The list of ad sizes to target.
  ///
  /// If unset, inventory will be targeted regardless of ad size. Curated
  /// packages supports `PIXEL` and `INTERSTITIAL` ad sizes.
  ///
  /// Optional.
  core.List<AdSize>? includedAdSizes;

  /// The included list of targeted authorized seller statuses.
  ///
  /// If empty, inventory will be targeted regardless of seller status.
  ///
  /// Optional.
  core.List<core.String>? includedAuthorizedSellerStatuses;

  /// The creative format to target.
  ///
  /// If unset, all creative markup types are targeted.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CREATIVE_FORMAT_UNSPECIFIED" : Default value. Should not be used in
  /// targeting specifications.
  /// - "CREATIVE_FORMAT_DISPLAY" : Targets ad slots intended for HTML display
  /// creatives.
  /// - "CREATIVE_FORMAT_VIDEO" : Targets ad slots intended for video creatives.
  /// - "CREATIVE_FORMAT_AUDIO" : Targets ad slots intended for audio creatives.
  core.String? includedCreativeFormat;

  /// The active data segments to be targeted.
  ///
  /// If unset, inventory will be targeted regardless of data segments. Format:
  /// `curators/{account_id}/dataSegments/{data_segment_id}`
  ///
  /// Optional.
  core.List<core.String>? includedDataSegments;

  /// The list of included device types to target.
  ///
  /// If empty, all device types are targeted.
  ///
  /// Optional.
  core.List<core.String>? includedDeviceTypes;

  /// The environment to target.
  ///
  /// If unspecified, all environments are targeted.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : Default value. Should not be used in
  /// targeting specifications.
  /// - "ENVIRONMENT_SITE" : Targets inventory rendered within an ad-supported
  /// website.
  /// - "ENVIRONMENT_APP" : Targets inventory within a mobile application.
  core.String? includedEnvironment;

  /// The targeted native inventory types.
  ///
  /// If empty, inventory will be targeted regardless of native inventory type.
  ///
  /// Optional.
  core.List<core.String>? includedNativeInventoryTypes;

  /// The list of targeted open measurement types.
  ///
  /// If empty, inventory will be targeted regardless of Open Measurement
  /// support.
  ///
  /// Optional.
  core.List<core.String>? includedOpenMeasurementTypes;

  /// The list of targeted restricted categories.
  ///
  /// If empty, inventory will be targeted regardless of restricted categories.
  ///
  /// Optional.
  core.List<core.String>? includedRestrictedCategories;

  /// The targeted rewarded type.
  ///
  /// If unset, inventory will be targeted regardless of rewarded type.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "REWARDED_TYPE_UNSPECIFIED" : Default value. Should not be used in
  /// targeting specifications.
  /// - "REWARDED_TYPE_NON_REWARDED" : Targets inventory that does NOT offer an
  /// explicit reward to the user for watching or interacting with the ad.
  /// - "REWARDED_TYPE_REWARDED" : Targets inventory that offers a reward to the
  /// user in exchange for watching or engaging with the ad.
  core.String? includedRewardedType;

  /// The languages to target.
  ///
  /// If unset, inventory will be targeted regardless of language. See
  /// https://developers.google.com/google-ads/api/data/codes-formats#languages
  /// for the list of supported language codes.
  ///
  /// Optional.
  StringTargetingDimension? languageTargeting;

  /// The targeted minimum predicted click through rate, ranging in values \[10,
  /// 10000\] (0.01% - 10%).
  ///
  /// A value of 50 means that the configuration will only match adslots for
  /// which we predict at least 0.05% click through rate. An unset value
  /// indicates inventory will be targeted regardless of predicted click through
  /// rate.
  ///
  /// Optional.
  core.String? minimumPredictedClickThroughRatePercentageMillis;

  /// The targeted minimum predicted viewability percentage.
  ///
  /// This value must be a multiple of 10 between 10 and 90 (inclusive). For
  /// example, 10 is valid, but 0, 15, and 100 are not. A value of 10 means that
  /// the configuration will only match adslots for which we predict at least
  /// 10% viewability. An unset value indicates inventory will be targeted
  /// regardless of predicted viewability.
  ///
  /// Optional.
  core.String? minimumPredictedViewabilityPercentage;

  /// Placement targeting information, for example, URL, mobile applications.
  ///
  /// Optional.
  PackagePlacementTargeting? placementTargeting;

  /// The publisher provided signals to target.
  ///
  /// If unset, inventory will be targeted regardless of publisher provided
  /// signals.
  ///
  /// Optional.
  PackagePublisherProvidedSignalsTargeting? publisherProvidedSignalsTargeting;

  /// The targeted publishers.
  ///
  /// If unset, inventory will be targeted regardless of publisher. Publishers
  /// are identified by their publisher ID from ads.txt / app-ads.txt. See
  /// https://iabtechlab.com/ads-txt/ and https://iabtechlab.com/app-ads-txt/
  /// for more details.
  ///
  /// Optional.
  StringTargetingDimension? publisherTargeting;

  /// The verticals included or excluded as defined in
  /// https://developers.google.com/authorized-buyers/rtb/downloads/publisher-verticals.
  ///
  /// If unset, inventory will be targeted regardless of vertical.
  ///
  /// Optional.
  CriteriaTargeting? verticalTargeting;

  /// Video specific targeting criteria.
  ///
  /// Optional.
  PackageVideoTargeting? videoTargeting;

  PackageTargeting({
    this.geoTargeting,
    this.includedAcceleratedMobilePageType,
    this.includedAdSizes,
    this.includedAuthorizedSellerStatuses,
    this.includedCreativeFormat,
    this.includedDataSegments,
    this.includedDeviceTypes,
    this.includedEnvironment,
    this.includedNativeInventoryTypes,
    this.includedOpenMeasurementTypes,
    this.includedRestrictedCategories,
    this.includedRewardedType,
    this.languageTargeting,
    this.minimumPredictedClickThroughRatePercentageMillis,
    this.minimumPredictedViewabilityPercentage,
    this.placementTargeting,
    this.publisherProvidedSignalsTargeting,
    this.publisherTargeting,
    this.verticalTargeting,
    this.videoTargeting,
  });

  PackageTargeting.fromJson(core.Map json_)
    : this(
        geoTargeting: json_.containsKey('geoTargeting')
            ? CriteriaTargeting.fromJson(
                json_['geoTargeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        includedAcceleratedMobilePageType:
            json_['includedAcceleratedMobilePageType'] as core.String?,
        includedAdSizes: (json_['includedAdSizes'] as core.List?)
            ?.map(
              (value) =>
                  AdSize.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        includedAuthorizedSellerStatuses:
            (json_['includedAuthorizedSellerStatuses'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedCreativeFormat: json_['includedCreativeFormat'] as core.String?,
        includedDataSegments: (json_['includedDataSegments'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        includedDeviceTypes: (json_['includedDeviceTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        includedEnvironment: json_['includedEnvironment'] as core.String?,
        includedNativeInventoryTypes:
            (json_['includedNativeInventoryTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedOpenMeasurementTypes:
            (json_['includedOpenMeasurementTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedRestrictedCategories:
            (json_['includedRestrictedCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedRewardedType: json_['includedRewardedType'] as core.String?,
        languageTargeting: json_.containsKey('languageTargeting')
            ? StringTargetingDimension.fromJson(
                json_['languageTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        minimumPredictedClickThroughRatePercentageMillis:
            json_['minimumPredictedClickThroughRatePercentageMillis']
                as core.String?,
        minimumPredictedViewabilityPercentage:
            json_['minimumPredictedViewabilityPercentage'] as core.String?,
        placementTargeting: json_.containsKey('placementTargeting')
            ? PackagePlacementTargeting.fromJson(
                json_['placementTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        publisherProvidedSignalsTargeting:
            json_.containsKey('publisherProvidedSignalsTargeting')
            ? PackagePublisherProvidedSignalsTargeting.fromJson(
                json_['publisherProvidedSignalsTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        publisherTargeting: json_.containsKey('publisherTargeting')
            ? StringTargetingDimension.fromJson(
                json_['publisherTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        verticalTargeting: json_.containsKey('verticalTargeting')
            ? CriteriaTargeting.fromJson(
                json_['verticalTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        videoTargeting: json_.containsKey('videoTargeting')
            ? PackageVideoTargeting.fromJson(
                json_['videoTargeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final geoTargeting = this.geoTargeting;
    final includedAcceleratedMobilePageType =
        this.includedAcceleratedMobilePageType;
    final includedAdSizes = this.includedAdSizes;
    final includedAuthorizedSellerStatuses =
        this.includedAuthorizedSellerStatuses;
    final includedCreativeFormat = this.includedCreativeFormat;
    final includedDataSegments = this.includedDataSegments;
    final includedDeviceTypes = this.includedDeviceTypes;
    final includedEnvironment = this.includedEnvironment;
    final includedNativeInventoryTypes = this.includedNativeInventoryTypes;
    final includedOpenMeasurementTypes = this.includedOpenMeasurementTypes;
    final includedRestrictedCategories = this.includedRestrictedCategories;
    final includedRewardedType = this.includedRewardedType;
    final languageTargeting = this.languageTargeting;
    final minimumPredictedClickThroughRatePercentageMillis =
        this.minimumPredictedClickThroughRatePercentageMillis;
    final minimumPredictedViewabilityPercentage =
        this.minimumPredictedViewabilityPercentage;
    final placementTargeting = this.placementTargeting;
    final publisherProvidedSignalsTargeting =
        this.publisherProvidedSignalsTargeting;
    final publisherTargeting = this.publisherTargeting;
    final verticalTargeting = this.verticalTargeting;
    final videoTargeting = this.videoTargeting;
    return {
      'geoTargeting': ?geoTargeting,
      'includedAcceleratedMobilePageType': ?includedAcceleratedMobilePageType,
      'includedAdSizes': ?includedAdSizes,
      'includedAuthorizedSellerStatuses': ?includedAuthorizedSellerStatuses,
      'includedCreativeFormat': ?includedCreativeFormat,
      'includedDataSegments': ?includedDataSegments,
      'includedDeviceTypes': ?includedDeviceTypes,
      'includedEnvironment': ?includedEnvironment,
      'includedNativeInventoryTypes': ?includedNativeInventoryTypes,
      'includedOpenMeasurementTypes': ?includedOpenMeasurementTypes,
      'includedRestrictedCategories': ?includedRestrictedCategories,
      'includedRewardedType': ?includedRewardedType,
      'languageTargeting': ?languageTargeting,
      'minimumPredictedClickThroughRatePercentageMillis':
          ?minimumPredictedClickThroughRatePercentageMillis,
      'minimumPredictedViewabilityPercentage':
          ?minimumPredictedViewabilityPercentage,
      'placementTargeting': ?placementTargeting,
      'publisherProvidedSignalsTargeting': ?publisherProvidedSignalsTargeting,
      'publisherTargeting': ?publisherTargeting,
      'verticalTargeting': ?verticalTargeting,
      'videoTargeting': ?videoTargeting,
    };
  }
}

/// Video specific targeting criteria.
class PackageVideoTargeting {
  /// The targeted video delivery method.
  ///
  /// If unset, inventory will be targeted regardless of video delivery method.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CONTENT_DELIVERY_METHOD_UNSPECIFIED" : Default value. Should not be
  /// used in targeting specifications.
  /// - "CONTENT_DELIVERY_METHOD_STREAMING" : Targets video content that is
  /// being broadcast live.
  /// - "CONTENT_DELIVERY_METHOD_PROGRESSIVE" : Targets video content that is
  /// transferred incrementally as client's playback requires.
  core.String? includedContentDeliveryMethod;

  /// The targeted maximum video ad duration.
  ///
  /// If unset, inventory will be targeted regardless of maximum video ad
  /// duration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MAXIMUM_VIDEO_AD_DURATION_UNSPECIFIED" : Default value. Should not be
  /// used in targeting specifications.
  /// - "MAXIMUM_VIDEO_AD_DURATION_FIFTEEN_SECONDS" : Applies to video ads with
  /// a duration up to 15 seconds (0 \< duration \<= 15s).
  /// - "MAXIMUM_VIDEO_AD_DURATION_TWENTY_SECONDS" : Applies to video ads with a
  /// duration up to 20 seconds (0 \< duration \<= 20s).
  /// - "MAXIMUM_VIDEO_AD_DURATION_THIRTY_SECONDS" : Applies to video ads with a
  /// duration up to 30 seconds (0 \< duration \<= 30s).
  /// - "MAXIMUM_VIDEO_AD_DURATION_SIXTY_SECONDS" : Applies to video ads with a
  /// duration up to 60 seconds (0 \< duration \<= 60s).
  /// - "MAXIMUM_VIDEO_AD_DURATION_NINETY_SECONDS" : Applies to video ads with a
  /// duration up to 90 seconds (0 \< duration \<= 90s).
  /// - "MAXIMUM_VIDEO_AD_DURATION_ONE_HUNDRED_TWENTY_SECONDS" : Applies to
  /// video ads with a duration up to 120 seconds (0 \< duration \<= 120s).
  core.String? includedMaximumAdDurationTargeting;

  /// The list of targeted video mime types using the IANA published MIME type
  /// strings (https://www.iana.org/assignments/media-types/media-types.xhtml).
  ///
  /// If empty, inventory will be targeted regardless of video mime type.
  ///
  /// Optional.
  core.List<core.String>? includedMimeTypes;

  /// The list of targeted video playback methods.
  ///
  /// If empty, inventory will be targeted regardless of video playback method.
  ///
  /// Optional.
  core.List<core.String>? includedPlaybackMethods;

  /// The targeted video player size.
  ///
  /// If unset, inventory will be targeted regardless of video player size.
  ///
  /// Optional.
  VideoPlayerSizeTargeting? includedPlayerSizeTargeting;

  /// The targeted video ad position types.
  ///
  /// If empty, inventory will be targeted regardless of video ad position type.
  ///
  /// Optional.
  core.List<core.String>? includedPositionTypes;

  /// The targeted minimum predicted completion rate percentage.
  ///
  /// This value must be a multiple of 10 between 10 and 90 (inclusive). For
  /// example, 10 is valid, but 0, 15, and 100 are not. A value of 10 means that
  /// the configuration will only match adslots for which we predict at least
  /// 10% completion rate. An unset value indicates inventory will be targeted
  /// regardless of predicted completion rate.
  ///
  /// Optional.
  core.String? minimumPredictedCompletionRatePercentage;

  /// The targeted video plcmt types.
  ///
  /// If unset, inventory will be targeted regardless of video plcmt type.
  ///
  /// Optional.
  VideoPlcmtTargeting? plcmtTargeting;

  PackageVideoTargeting({
    this.includedContentDeliveryMethod,
    this.includedMaximumAdDurationTargeting,
    this.includedMimeTypes,
    this.includedPlaybackMethods,
    this.includedPlayerSizeTargeting,
    this.includedPositionTypes,
    this.minimumPredictedCompletionRatePercentage,
    this.plcmtTargeting,
  });

  PackageVideoTargeting.fromJson(core.Map json_)
    : this(
        includedContentDeliveryMethod:
            json_['includedContentDeliveryMethod'] as core.String?,
        includedMaximumAdDurationTargeting:
            json_['includedMaximumAdDurationTargeting'] as core.String?,
        includedMimeTypes: (json_['includedMimeTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        includedPlaybackMethods:
            (json_['includedPlaybackMethods'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includedPlayerSizeTargeting:
            json_.containsKey('includedPlayerSizeTargeting')
            ? VideoPlayerSizeTargeting.fromJson(
                json_['includedPlayerSizeTargeting']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        includedPositionTypes: (json_['includedPositionTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        minimumPredictedCompletionRatePercentage:
            json_['minimumPredictedCompletionRatePercentage'] as core.String?,
        plcmtTargeting: json_.containsKey('plcmtTargeting')
            ? VideoPlcmtTargeting.fromJson(
                json_['plcmtTargeting'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final includedContentDeliveryMethod = this.includedContentDeliveryMethod;
    final includedMaximumAdDurationTargeting =
        this.includedMaximumAdDurationTargeting;
    final includedMimeTypes = this.includedMimeTypes;
    final includedPlaybackMethods = this.includedPlaybackMethods;
    final includedPlayerSizeTargeting = this.includedPlayerSizeTargeting;
    final includedPositionTypes = this.includedPositionTypes;
    final minimumPredictedCompletionRatePercentage =
        this.minimumPredictedCompletionRatePercentage;
    final plcmtTargeting = this.plcmtTargeting;
    return {
      'includedContentDeliveryMethod': ?includedContentDeliveryMethod,
      'includedMaximumAdDurationTargeting': ?includedMaximumAdDurationTargeting,
      'includedMimeTypes': ?includedMimeTypes,
      'includedPlaybackMethods': ?includedPlaybackMethods,
      'includedPlayerSizeTargeting': ?includedPlayerSizeTargeting,
      'includedPositionTypes': ?includedPositionTypes,
      'minimumPredictedCompletionRatePercentage':
          ?minimumPredictedCompletionRatePercentage,
      'plcmtTargeting': ?plcmtTargeting,
    };
  }
}

/// The `Report` resource.
class Report {
  /// The instant this report was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name for the report.
  ///
  /// Optional.
  core.String? displayName;

  /// The locale of this report.
  ///
  /// Locale is set from the user's locale at the time of the request. Locale
  /// can't be modified.
  ///
  /// Output only.
  core.String? locale;

  /// Identifier.
  ///
  /// The resource name of the report. Report resource name have the form:
  /// `curators/{account_id}/reports/{report_id}`
  core.String? name;

  /// The report definition of the report.
  ///
  /// Required.
  ReportDefinition? reportDefinition;

  /// Report ID.
  ///
  /// Output only.
  core.String? reportId;

  /// The instant this report was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Report({
    this.createTime,
    this.displayName,
    this.locale,
    this.name,
    this.reportDefinition,
    this.reportId,
    this.updateTime,
  });

  Report.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        locale: json_['locale'] as core.String?,
        name: json_['name'] as core.String?,
        reportDefinition: json_.containsKey('reportDefinition')
            ? ReportDefinition.fromJson(
                json_['reportDefinition']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        reportId: json_['reportId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final locale = this.locale;
    final name = this.name;
    final reportDefinition = this.reportDefinition;
    final reportId = this.reportId;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'locale': ?locale,
      'name': ?name,
      'reportDefinition': ?reportDefinition,
      'reportId': ?reportId,
      'updateTime': ?updateTime,
    };
  }
}

/// The definition of how a report should be run.
class ReportDefinition {
  /// The ISO 4217 currency code for this report.
  ///
  /// Defaults to account currency code if not specified.
  ///
  /// Optional.
  core.String? currencyCode;

  /// The primary date range of this report.
  ///
  /// Required.
  DateRange? dateRange;

  /// The list of dimensions to report on.
  ///
  /// If empty, the report will have no dimensions, and any metrics will be
  /// totals.
  ///
  /// Required.
  core.List<core.String>? dimensions;

  /// The filters for this report.
  ///
  /// Optional.
  core.List<Filter>? filters;

  /// The list of metrics to report on.
  ///
  /// If empty, the report will have no metrics.
  ///
  /// Required.
  core.List<core.String>? metrics;

  /// Default sorts to apply to this report.
  ///
  /// Optional.
  core.List<Sort>? sorts;

  /// If time_zone_source is PROVIDED, this is the time zone to use for this
  /// report.
  ///
  /// Leave empty for any other time zone source. Time zone in IANA format. For
  /// example, "America/New_York".
  ///
  /// Optional.
  core.String? timeZone;

  /// Where to get the time zone for this report.
  ///
  /// Defaults to using the Pacific time zone (PT). If source is PROVIDED, the
  /// time_zone field in the report definition must also set a time zone.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TIME_ZONE_SOURCE_UNSPECIFIED" : Unspecified default value.
  /// - "AD_EXCHANGE" : Use the Pacific time zone(PT).
  /// - "UTC" : Use UTC time zone.
  /// - "PROVIDED" : Use the time zone provided in the
  /// ReportDefinition.time_zone field. Reports may take longer to run since the
  /// dates are dynamically calculated at request time.
  core.String? timeZoneSource;

  ReportDefinition({
    this.currencyCode,
    this.dateRange,
    this.dimensions,
    this.filters,
    this.metrics,
    this.sorts,
    this.timeZone,
    this.timeZoneSource,
  });

  ReportDefinition.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        dateRange: json_.containsKey('dateRange')
            ? DateRange.fromJson(
                json_['dateRange'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dimensions: (json_['dimensions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        filters: (json_['filters'] as core.List?)
            ?.map(
              (value) =>
                  Filter.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        metrics: (json_['metrics'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sorts: (json_['sorts'] as core.List?)
            ?.map(
              (value) =>
                  Sort.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        timeZone: json_['timeZone'] as core.String?,
        timeZoneSource: json_['timeZoneSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    final dateRange = this.dateRange;
    final dimensions = this.dimensions;
    final filters = this.filters;
    final metrics = this.metrics;
    final sorts = this.sorts;
    final timeZone = this.timeZone;
    final timeZoneSource = this.timeZoneSource;
    return {
      'currencyCode': ?currencyCode,
      'dateRange': ?dateRange,
      'dimensions': ?dimensions,
      'filters': ?filters,
      'metrics': ?metrics,
      'sorts': ?sorts,
      'timeZone': ?timeZone,
      'timeZoneSource': ?timeZoneSource,
    };
  }
}

/// Represents a single value in a report.
class ReportValue {
  /// For boolean values.
  core.bool? boolValue;

  /// For bytes values.
  core.String? bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue!);

  set bytesValueAsBytes(core.List<core.int> bytes_) {
    bytesValue = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// For lists of double values.
  DoubleList? doubleListValue;

  /// For double values.
  core.double? doubleValue;

  /// For lists of integer values.
  IntList? intListValue;

  /// For integer values.
  core.String? intValue;

  /// For lists of string values.
  StringList? stringListValue;

  /// For string values.
  core.String? stringValue;

  ReportValue({
    this.boolValue,
    this.bytesValue,
    this.doubleListValue,
    this.doubleValue,
    this.intListValue,
    this.intValue,
    this.stringListValue,
    this.stringValue,
  });

  ReportValue.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        bytesValue: json_['bytesValue'] as core.String?,
        doubleListValue: json_.containsKey('doubleListValue')
            ? DoubleList.fromJson(
                json_['doubleListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        intListValue: json_.containsKey('intListValue')
            ? IntList.fromJson(
                json_['intListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        intValue: json_['intValue'] as core.String?,
        stringListValue: json_.containsKey('stringListValue')
            ? StringList.fromJson(
                json_['stringListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final bytesValue = this.bytesValue;
    final doubleListValue = this.doubleListValue;
    final doubleValue = this.doubleValue;
    final intListValue = this.intListValue;
    final intValue = this.intValue;
    final stringListValue = this.stringListValue;
    final stringValue = this.stringValue;
    return {
      'boolValue': ?boolValue,
      'bytesValue': ?bytesValue,
      'doubleListValue': ?doubleListValue,
      'doubleValue': ?doubleValue,
      'intListValue': ?intListValue,
      'intValue': ?intValue,
      'stringListValue': ?stringListValue,
      'stringValue': ?stringValue,
    };
  }
}

/// A row of report data.
class Row {
  /// The order of the dimension values is the same as the order of the
  /// dimensions specified in the request.
  core.List<ReportValue>? dimensionValues;

  /// The length of the metric_value_groups field will be equal to the length of
  /// the date_ranges field in the fetch response.
  ///
  /// The metric_value_groups field is ordered such that each index corresponds
  /// to the date_range at the same index. For example, given date_ranges \[x,
  /// y\], metric_value_groups will have a length of two. The first entry in
  /// metric_value_groups represents the metrics for date x and the second entry
  /// in metric_value_groups represents the metrics for date y.
  core.List<MetricValueGroup>? metricValueGroups;

  Row({this.dimensionValues, this.metricValueGroups});

  Row.fromJson(core.Map json_)
    : this(
        dimensionValues: (json_['dimensionValues'] as core.List?)
            ?.map(
              (value) => ReportValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        metricValueGroups: (json_['metricValueGroups'] as core.List?)
            ?.map(
              (value) => MetricValueGroup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimensionValues = this.dimensionValues;
    final metricValueGroups = this.metricValueGroups;
    return {
      'dimensionValues': ?dimensionValues,
      'metricValueGroups': ?metricValueGroups,
    };
  }
}

/// Request message for a running a report.
typedef RunReportRequest = $Empty;

/// Represents a sorting in a report.
class Sort {
  /// The sort order.
  ///
  /// If true the sort will be descending.
  ///
  /// Optional.
  core.bool? descending;

  /// A field (dimension or metric) to sort by.
  ///
  /// Required.
  Field? field;

  Sort({this.descending, this.field});

  Sort.fromJson(core.Map json_)
    : this(
        descending: json_['descending'] as core.bool?,
        field: json_.containsKey('field')
            ? Field.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final descending = this.descending;
    final field = this.field;
    return {'descending': ?descending, 'field': ?field};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// A list of string values.
typedef StringList = $StringList01;

/// Generic targeting with string values.
class StringTargetingDimension {
  /// How the items in this list should be targeted.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SELECTION_TYPE_UNSPECIFIED" : Unspecified selection type. Should not be
  /// used.
  /// - "SELECTION_TYPE_INCLUDE" : The values in the targeting dimension are
  /// included.
  /// - "SELECTION_TYPE_EXCLUDE" : The values in the targeting dimension are
  /// excluded.
  core.String? selectionType;

  /// The values specified.
  ///
  /// Required.
  core.List<core.String>? values;

  StringTargetingDimension({this.selectionType, this.values});

  StringTargetingDimension.fromJson(core.Map json_)
    : this(
        selectionType: json_['selectionType'] as core.String?,
        values: (json_['values'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final selectionType = this.selectionType;
    final values = this.values;
    return {'selectionType': ?selectionType, 'values': ?values};
  }
}

/// Defines targeting criteria for handling the IAB audience and content
/// Taxonomy ID space.
class TaxonomyTargeting {
  /// The list of excluded content taxonomy IDs.
  ///
  /// Optional.
  core.List<core.String>? excludedTaxonomyIds;

  /// The list of targeted content taxonomy IDs.
  ///
  /// Optional.
  core.List<core.String>? targetedTaxonomyIds;

  TaxonomyTargeting({this.excludedTaxonomyIds, this.targetedTaxonomyIds});

  TaxonomyTargeting.fromJson(core.Map json_)
    : this(
        excludedTaxonomyIds: (json_['excludedTaxonomyIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        targetedTaxonomyIds: (json_['targetedTaxonomyIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final excludedTaxonomyIds = this.excludedTaxonomyIds;
    final targetedTaxonomyIds = this.targetedTaxonomyIds;
    return {
      'excludedTaxonomyIds': ?excludedTaxonomyIds,
      'targetedTaxonomyIds': ?targetedTaxonomyIds,
    };
  }
}

/// Represents the size of the video player that can be targeted.
///
/// Both width and height are required to be set to non-zero values.
class VideoPlayerSizeTargeting {
  /// The minimum height of the video player in pixels.
  ///
  /// Required.
  core.String? minimumHeight;

  /// The minimum width of the video player in pixels.
  ///
  /// Required.
  core.String? minimumWidth;

  VideoPlayerSizeTargeting({this.minimumHeight, this.minimumWidth});

  VideoPlayerSizeTargeting.fromJson(core.Map json_)
    : this(
        minimumHeight: json_['minimumHeight'] as core.String?,
        minimumWidth: json_['minimumWidth'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minimumHeight = this.minimumHeight;
    final minimumWidth = this.minimumWidth;
    return {'minimumHeight': ?minimumHeight, 'minimumWidth': ?minimumWidth};
  }
}

/// Defines targeting criteria based on the video placement type, often
/// corresponding to the IAB OpenRTB 'plcmt' field.
class VideoPlcmtTargeting {
  /// The selection type for the list of video plcmts.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SELECTION_TYPE_UNSPECIFIED" : Unspecified selection type. Should not be
  /// used.
  /// - "SELECTION_TYPE_INCLUDE" : The values in the targeting dimension are
  /// included.
  /// - "SELECTION_TYPE_EXCLUDE" : The values in the targeting dimension are
  /// excluded.
  core.String? selectionType;

  /// The list of targeted video plcmts types.
  ///
  /// If empty, inventory will be targeted regardless of video plcmt type.
  ///
  /// Required.
  core.List<core.String>? videoPlcmtTypes;

  VideoPlcmtTargeting({this.selectionType, this.videoPlcmtTypes});

  VideoPlcmtTargeting.fromJson(core.Map json_)
    : this(
        selectionType: json_['selectionType'] as core.String?,
        videoPlcmtTypes: (json_['videoPlcmtTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final selectionType = this.selectionType;
    final videoPlcmtTypes = this.videoPlcmtTypes;
    return {
      'selectionType': ?selectionType,
      'videoPlcmtTypes': ?videoPlcmtTypes,
    };
  }
}
