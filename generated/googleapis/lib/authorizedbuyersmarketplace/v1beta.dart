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

/// Authorized Buyers Marketplace API - v1beta
///
/// The Authorized Buyers Marketplace API lets buyers programmatically discover
/// inventory; propose, retrieve and negotiate deals with publishers.
///
/// For more information, see
/// <https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/>
///
/// Create an instance of [AuthorizedBuyersMarketplaceApi] to access these
/// resources:
///
/// - [CuratorsResource]
///   - [CuratorsDataSegmentsResource]
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

/// The Authorized Buyers Marketplace API lets buyers programmatically discover
/// inventory; propose, retrieve and negotiate deals with publishers.
class AuthorizedBuyersMarketplaceApi {
  /// See, create, edit, and delete your Authorized Buyers Marketplace entities.
  static const authorizedBuyersMarketplaceScope =
      'https://www.googleapis.com/auth/authorized-buyers-marketplace';

  final commons.ApiRequester _requester;

  CuratorsResource get curators => CuratorsResource(_requester);

  AuthorizedBuyersMarketplaceApi(
    http.Client client, {
    core.String rootUrl = 'https://authorizedbuyersmarketplace.googleapis.com/',
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

  CuratorsDataSegmentsResource get dataSegments =>
      CuratorsDataSegmentsResource(_requester);

  CuratorsResource(commons.ApiRequester client) : _requester = client;
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
  /// [name] - Required. Name of data segment to activate. v1alpha format:
  /// `buyers/{accountId}/dataSegments/{curatorDataSegmentId}` v1beta format:
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':activate';

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
  /// created. v1alpha format: `buyers/{accountId}` v1beta format:
  /// `curators/{accountId}`
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/dataSegments';

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
  /// [name] - Required. Name of data segment to deactivate. v1alpha format:
  /// `buyers/{accountId}/dataSegments/{curatorDataSegmentId}` v1beta format:
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':deactivate';

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
  /// [name] - Required. Name of data segment to get. v1alpha format:
  /// `buyers/{accountId}/dataSegments/{curatorDataSegmentId}` v1beta format:
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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
  /// segment. v1alpha format: `buyers/{accountId}` v1beta format:
  /// `curators/{accountId}`
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/dataSegments';

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
  /// segment. v1alpha format:
  /// `buyers/{accountId}/dataSegments/{curatorDataSegmentId}` v1beta format:
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
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

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

/// Request message for activating a data segment
typedef ActivateDataSegmentRequest = $Empty;

/// Defines an identifier for a segment of inventory that can be targeted by
/// curators or media planners in the deals or auction packages UI.
///
/// Curation of inventory is done by curators on external platforms.
class DataSegment {
  /// This will be charged when other accounts use this data segment.
  ///
  /// For example, when other accounts add this data segment to a deal or
  /// auction package. Once set, the currency code cannot be changed.
  ///
  /// Required.
  Money? cpmFee;

  /// Time the data segment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The unique identifier for the data segment. Account ID corresponds to the
  /// account ID that created the segment. v1alpha format:
  /// `buyers/{accountId}/dataSegments/{curatorDataSegmentId}` v1beta format:
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
  core.String? state;

  /// Time the data segment was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  DataSegment({
    this.cpmFee,
    this.createTime,
    this.name,
    this.state,
    this.updateTime,
  });

  DataSegment.fromJson(core.Map json_)
    : this(
        cpmFee:
            json_.containsKey('cpmFee')
                ? Money.fromJson(
                  json_['cpmFee'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cpmFee != null) 'cpmFee': cpmFee!,
    if (createTime != null) 'createTime': createTime!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Request message for deactivating a data segment
typedef DeactivateDataSegmentRequest = $Empty;

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
        dataSegments:
            (json_['dataSegments'] as core.List?)
                ?.map(
                  (value) => DataSegment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataSegments != null) 'dataSegments': dataSegments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;
