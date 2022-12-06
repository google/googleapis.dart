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

/// Display & Video 360 API - v2
///
/// Display & Video 360 API allows users to automate complex Display & Video 360
/// workflows, such as creating insertion orders and setting targeting options
/// for individual line items.
///
/// For more information, see <https://developers.google.com/display-video/>
///
/// Create an instance of [DisplayVideoApi] to access these resources:
///
/// - [AdvertisersResource]
///   - [AdvertisersAssetsResource]
///   - [AdvertisersCampaignsResource]
///     - [AdvertisersCampaignsTargetingTypesResource]
/// - [AdvertisersCampaignsTargetingTypesAssignedTargetingOptionsResource]
///   - [AdvertisersChannelsResource]
///     - [AdvertisersChannelsSitesResource]
///   - [AdvertisersCreativesResource]
///   - [AdvertisersInsertionOrdersResource]
///     - [AdvertisersInsertionOrdersTargetingTypesResource]
/// - [AdvertisersInsertionOrdersTargetingTypesAssignedTargetingOptionsResource]
///   - [AdvertisersInvoicesResource]
///   - [AdvertisersLineItemsResource]
///     - [AdvertisersLineItemsTargetingTypesResource]
/// - [AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource]
///   - [AdvertisersLocationListsResource]
///     - [AdvertisersLocationListsAssignedLocationsResource]
///   - [AdvertisersManualTriggersResource]
///   - [AdvertisersNegativeKeywordListsResource]
///     - [AdvertisersNegativeKeywordListsNegativeKeywordsResource]
///   - [AdvertisersTargetingTypesResource]
///     - [AdvertisersTargetingTypesAssignedTargetingOptionsResource]
/// - [CombinedAudiencesResource]
/// - [CustomBiddingAlgorithmsResource]
///   - [CustomBiddingAlgorithmsScriptsResource]
/// - [CustomListsResource]
/// - [FirstAndThirdPartyAudiencesResource]
/// - [FloodlightGroupsResource]
/// - [GoogleAudiencesResource]
/// - [GuaranteedOrdersResource]
/// - [InventorySourceGroupsResource]
///   - [InventorySourceGroupsAssignedInventorySourcesResource]
/// - [InventorySourcesResource]
/// - [MediaResource]
/// - [PartnersResource]
///   - [PartnersChannelsResource]
///     - [PartnersChannelsSitesResource]
///   - [PartnersTargetingTypesResource]
///     - [PartnersTargetingTypesAssignedTargetingOptionsResource]
/// - [SdfdownloadtasksResource]
///   - [SdfdownloadtasksOperationsResource]
/// - [TargetingTypesResource]
///   - [TargetingTypesTargetingOptionsResource]
/// - [UsersResource]
library displayvideo.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Display & Video 360 API allows users to automate complex Display & Video 360
/// workflows, such as creating insertion orders and setting targeting options
/// for individual line items.
class DisplayVideoApi {
  /// Create, see, edit, and permanently delete your Display & Video 360
  /// entities and reports
  static const displayVideoScope =
      'https://www.googleapis.com/auth/display-video';

  /// Create, see, and edit Display & Video 360 Campaign entities and see
  /// billing invoices
  static const displayVideoMediaplanningScope =
      'https://www.googleapis.com/auth/display-video-mediaplanning';

  /// Private Service:
  /// https://www.googleapis.com/auth/display-video-user-management
  static const displayVideoUserManagementScope =
      'https://www.googleapis.com/auth/display-video-user-management';

  /// View and manage your reports in DoubleClick Bid Manager
  static const doubleclickbidmanagerScope =
      'https://www.googleapis.com/auth/doubleclickbidmanager';

  final commons.ApiRequester _requester;

  AdvertisersResource get advertisers => AdvertisersResource(_requester);
  CombinedAudiencesResource get combinedAudiences =>
      CombinedAudiencesResource(_requester);
  CustomBiddingAlgorithmsResource get customBiddingAlgorithms =>
      CustomBiddingAlgorithmsResource(_requester);
  CustomListsResource get customLists => CustomListsResource(_requester);
  FirstAndThirdPartyAudiencesResource get firstAndThirdPartyAudiences =>
      FirstAndThirdPartyAudiencesResource(_requester);
  FloodlightGroupsResource get floodlightGroups =>
      FloodlightGroupsResource(_requester);
  GoogleAudiencesResource get googleAudiences =>
      GoogleAudiencesResource(_requester);
  GuaranteedOrdersResource get guaranteedOrders =>
      GuaranteedOrdersResource(_requester);
  InventorySourceGroupsResource get inventorySourceGroups =>
      InventorySourceGroupsResource(_requester);
  InventorySourcesResource get inventorySources =>
      InventorySourcesResource(_requester);
  MediaResource get media => MediaResource(_requester);
  PartnersResource get partners => PartnersResource(_requester);
  SdfdownloadtasksResource get sdfdownloadtasks =>
      SdfdownloadtasksResource(_requester);
  TargetingTypesResource get targetingTypes =>
      TargetingTypesResource(_requester);
  UsersResource get users => UsersResource(_requester);

  DisplayVideoApi(http.Client client,
      {core.String rootUrl = 'https://displayvideo.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AdvertisersResource {
  final commons.ApiRequester _requester;

  AdvertisersAssetsResource get assets => AdvertisersAssetsResource(_requester);
  AdvertisersCampaignsResource get campaigns =>
      AdvertisersCampaignsResource(_requester);
  AdvertisersChannelsResource get channels =>
      AdvertisersChannelsResource(_requester);
  AdvertisersCreativesResource get creatives =>
      AdvertisersCreativesResource(_requester);
  AdvertisersInsertionOrdersResource get insertionOrders =>
      AdvertisersInsertionOrdersResource(_requester);
  AdvertisersInvoicesResource get invoices =>
      AdvertisersInvoicesResource(_requester);
  AdvertisersLineItemsResource get lineItems =>
      AdvertisersLineItemsResource(_requester);
  AdvertisersLocationListsResource get locationLists =>
      AdvertisersLocationListsResource(_requester);
  AdvertisersManualTriggersResource get manualTriggers =>
      AdvertisersManualTriggersResource(_requester);
  AdvertisersNegativeKeywordListsResource get negativeKeywordLists =>
      AdvertisersNegativeKeywordListsResource(_requester);
  AdvertisersTargetingTypesResource get targetingTypes =>
      AdvertisersTargetingTypesResource(_requester);

  AdvertisersResource(commons.ApiRequester client) : _requester = client;

  /// Audits an advertiser.
  ///
  /// Returns the counts of used entities per resource type under the advertiser
  /// provided. Used entities count towards their respective resource limit. See
  /// https://support.google.com/displayvideo/answer/6071450.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to audit.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [readMask] - Optional. The specific fields to return. If no mask is
  /// specified, all fields in the response proto will be filled. Valid values
  /// are: * usedLineItemsCount * usedInsertionOrdersCount * usedCampaignsCount
  /// * channelsCount * negativelyTargetedChannelsCount *
  /// negativeKeywordListsCount * adGroupCriteriaCount * campaignCriteriaCount
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuditAdvertiserResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuditAdvertiserResponse> audit(
    core.String advertiserId, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + ':audit';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AuditAdvertiserResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new advertiser.
  ///
  /// Returns the newly created advertiser if successful. This method can take
  /// up to 180 seconds to complete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> create(
    Advertiser request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/advertisers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an advertiser.
  ///
  /// Deleting an advertiser will delete all of its child resources, for
  /// example, campaigns, insertion orders and line items. A deleted advertiser
  /// cannot be recovered.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser we need to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' + core.Uri.encodeFull('$advertiserId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Edits targeting options under a single advertiser.
  ///
  /// The operation will delete the assigned targeting options provided in
  /// BulkEditAdvertiserAssignedTargetingOptionsRequest.delete_requests and then
  /// create the assigned targeting options provided in
  /// BulkEditAdvertiserAssignedTargetingOptionsRequest.create_requests .
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditAdvertiserAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditAdvertiserAssignedTargetingOptionsResponse>
      editAssignedTargetingOptions(
    BulkEditAdvertiserAssignedTargetingOptionsRequest request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        ':editAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditAdvertiserAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an advertiser.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> get(
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' + core.Uri.encodeFull('$advertiserId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists advertisers that are accessible to the current user.
  ///
  /// The order is defined by the order_by parameter. A single partner_id is
  /// required. Cross-partner listing is not supported.
  ///
  /// Request parameters:
  ///
  /// [filter] - Allows filtering by advertiser properties. Supported syntax: *
  /// Filter expressions are made up of one or more restrictions. * Restrictions
  /// can be combined by `AND` or `OR` logical operators. A sequence of
  /// restrictions implicitly uses `AND`. * A restriction has the form of
  /// `{field} {operator} {value}`. * The operator used on `updateTime` must be
  /// `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN OR EQUAL TO (<=)`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: - `advertiserId` -
  /// `displayName` - `entityStatus` - `updateTime` (input in ISO 8601 format,
  /// or YYYY-MM-DDTHH:MM:SSZ) Examples: * All active advertisers under a
  /// partner: `entityStatus="ENTITY_STATUS_ACTIVE"` * All advertisers with an
  /// update time less than or equal to `2020-11-04T18:54:47Z (format of ISO
  /// 8601)`: `updateTime<="2020-11-04T18:54:47Z"` * All advertisers with an
  /// update time greater than or equal to `2020-11-04T18:54:47Z (format of ISO
  /// 8601)`: `updateTime>="2020-11-04T18:54:47Z"` The length of this field
  /// should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `entityStatus` * `updateTime` The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix "desc" should be added to the field name. For example, `displayName
  /// desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListAdvertisers` method. If not specified, the first
  /// page of results will be returned.
  ///
  /// [partnerId] - Required. The ID of the partner that the fetched advertisers
  /// should all belong to. The system only supports listing advertisers for one
  /// partner at a time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdvertisersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdvertisersResponse> list({
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/advertisers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdvertisersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists assigned targeting options of an advertiser across targeting types.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator
  /// `OR`.. * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: - `targetingType`
  /// Examples: * targetingType with value TARGETING_TYPE_CHANNEL
  /// `targetingType="TARGETING_TYPE_CHANNEL"` The length of this field should
  /// be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `targetingType` (default) The default sorting order is ascending. To
  /// specify descending order for a field, a suffix "desc" should be added to
  /// the field name. Example: `targetingType desc`.
  ///
  /// [pageSize] - Requested page size. The size must be an integer between `1`
  /// and `5000`. If unspecified, the default is '5000'. Returns error code
  /// `INVALID_ARGUMENT` if an invalid value is specified.
  ///
  /// [pageToken] - A token that lets the client fetch the next page of results.
  /// Typically, this is the value of next_page_token returned from the previous
  /// call to `BulkListAdvertiserAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkListAdvertiserAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkListAdvertiserAssignedTargetingOptionsResponse>
      listAssignedTargetingOptions(
    core.String advertiserId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        ':listAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BulkListAdvertiserAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing advertiser.
  ///
  /// Returns the updated advertiser if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser. Assigned by
  /// the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> patch(
    Advertiser request,
    core.String advertiserId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' + core.Uri.encodeFull('$advertiserId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersAssetsResource {
  final commons.ApiRequester _requester;

  AdvertisersAssetsResource(commons.ApiRequester client) : _requester = client;

  /// Uploads an asset.
  ///
  /// Returns the ID of the newly uploaded asset if successful. The asset file
  /// size should be no more than 10 MB for images, 200 MB for ZIP files, and 1
  /// GB for videos. Must be used within the \[multipart media upload
  /// process\](/display-video/api/guides/how-tos/upload#multipart). Examples
  /// using provided client libraries can be found in our \[Creating Creatives
  /// guide\](/display-video/api/guides/creating-creatives/overview#upload_an_asset).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this asset belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [CreateAssetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateAssetResponse> upload(
    CreateAssetRequest request,
    core.String advertiserId, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/assets';
    } else {
      url_ = '/upload/v2/advertisers/' +
          core.Uri.encodeFull('$advertiserId') +
          '/assets';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return CreateAssetResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersCampaignsResource {
  final commons.ApiRequester _requester;

  AdvertisersCampaignsTargetingTypesResource get targetingTypes =>
      AdvertisersCampaignsTargetingTypesResource(_requester);

  AdvertisersCampaignsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new campaign.
  ///
  /// Returns the newly created campaign if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the campaign
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> create(
    Campaign request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/campaigns';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a campaign.
  ///
  /// A deleted campaign cannot be recovered. The campaign should be archived
  /// first, i.e. set entity_status to `ENTITY_STATUS_ARCHIVED`, to be able to
  /// delete it.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser this campaign belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [campaignId] - The ID of the campaign we need to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String campaignId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/campaigns/' +
        core.Uri.encodeFull('$campaignId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a campaign.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this campaign belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [campaignId] - Required. The ID of the campaign to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> get(
    core.String advertiserId,
    core.String campaignId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/campaigns/' +
        core.Uri.encodeFull('$campaignId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists campaigns in an advertiser.
  ///
  /// The order is defined by the order_by parameter. If a filter by
  /// entity_status is not specified, campaigns with `ENTITY_STATUS_ARCHIVED`
  /// will not be included in the results.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser to list campaigns for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by campaign properties. Supported syntax: *
  /// Filter expressions are made up of one or more restrictions. * Restrictions
  /// can be combined by `AND` or `OR` logical operators. A sequence of
  /// restrictions implicitly uses `AND`. * A restriction has the form of
  /// `{field} {operator} {value}`. * The operator used on `updateTime` must be
  /// `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN OR EQUAL TO (<=)`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: - `campaignId` -
  /// `displayName` - `entityStatus` - `updateTime` (input in ISO 8601 format,
  /// or YYYY-MM-DDTHH:MM:SSZ) Examples: * All `ENTITY_STATUS_ACTIVE` or
  /// `ENTITY_STATUS_PAUSED` campaigns under an advertiser:
  /// `(entityStatus="ENTITY_STATUS_ACTIVE" OR
  /// entityStatus="ENTITY_STATUS_PAUSED")` * All campaigns with an update time
  /// less than or equal to `2020-11-04T18:54:47Z (format of ISO 8601)`:
  /// `updateTime<="2020-11-04T18:54:47Z"` * All campaigns with an update time
  /// greater than or equal to `2020-11-04T18:54:47Z (format of ISO 8601)`:
  /// `updateTime>="2020-11-04T18:54:47Z"` The length of this field should be no
  /// more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `entityStatus` * `updateTime` The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix "desc" should be added to the field name. Example: `displayName
  /// desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCampaigns` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCampaignsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCampaignsResponse> list(
    core.String advertiserId, {
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
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/campaigns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCampaignsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists assigned targeting options of a campaign across targeting types.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the campaign belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [campaignId] - Required. The ID of the campaign to list assigned targeting
  /// options for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`
  /// on the same field. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `EQUALS (=)`. * Supported fields: -
  /// `targetingType` - `inheritance` Examples: * AssignedTargetingOptions of
  /// targeting type TARGETING_TYPE_LANGUAGE or TARGETING_TYPE_GENDER
  /// `targetingType="TARGETING_TYPE_LANGUAGE" OR
  /// targetingType="TARGETING_TYPE_GENDER"` * AssignedTargetingOptions with
  /// inheritance status of NOT_INHERITED or INHERITED_FROM_PARTNER
  /// `inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `targetingType` (default) The default sorting order is ascending. To
  /// specify descending order for a field, a suffix "desc" should be added to
  /// the field name. Example: `targetingType desc`.
  ///
  /// [pageSize] - Requested page size. The size must be an integer between `1`
  /// and `5000`. If unspecified, the default is `5000`. Returns error code
  /// `INVALID_ARGUMENT` if an invalid value is specified.
  ///
  /// [pageToken] - A token that lets the client fetch the next page of results.
  /// Typically, this is the value of next_page_token returned from the previous
  /// call to `BulkListCampaignAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkListCampaignAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkListCampaignAssignedTargetingOptionsResponse>
      listAssignedTargetingOptions(
    core.String advertiserId,
    core.String campaignId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/campaigns/' +
        core.Uri.encodeFull('$campaignId') +
        ':listAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BulkListCampaignAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing campaign.
  ///
  /// Returns the updated campaign if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the campaign
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [campaignId] - Output only. The unique ID of the campaign. Assigned by the
  /// system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> patch(
    Campaign request,
    core.String advertiserId,
    core.String campaignId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/campaigns/' +
        core.Uri.encodeFull('$campaignId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersCampaignsTargetingTypesResource {
  final commons.ApiRequester _requester;

  AdvertisersCampaignsTargetingTypesAssignedTargetingOptionsResource
      get assignedTargetingOptions =>
          AdvertisersCampaignsTargetingTypesAssignedTargetingOptionsResource(
              _requester);

  AdvertisersCampaignsTargetingTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class AdvertisersCampaignsTargetingTypesAssignedTargetingOptionsResource {
  final commons.ApiRequester _requester;

  AdvertisersCampaignsTargetingTypesAssignedTargetingOptionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets a single targeting option assigned to a campaign.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the campaign belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [campaignId] - Required. The ID of the campaign the assigned targeting
  /// option belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` *
  /// `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` *
  /// `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` *
  /// `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_EXCHANGE` *
  /// `TARGETING_TYPE_GENDER` * `TARGETING_TYPE_GEO_REGION` *
  /// `TARGETING_TYPE_HOUSEHOLD_INCOME` * `TARGETING_TYPE_INVENTORY_SOURCE` *
  /// `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `TARGETING_TYPE_LANGUAGE` *
  /// `TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_SUB_EXCHANGE` * `TARGETING_TYPE_THIRD_PARTY_VERIFIER` *
  /// `TARGETING_TYPE_VIEWABILITY`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. An identifier unique to the
  /// targeting type in this campaign that identifies the assigned targeting
  /// option being requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> get(
    core.String advertiserId,
    core.String campaignId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/campaigns/' +
        core.Uri.encodeFull('$campaignId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the targeting options assigned to a campaign for a specified
  /// targeting type.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the campaign belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [campaignId] - Required. The ID of the campaign to list assigned targeting
  /// options for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of assigned targeting
  /// options to list. Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` *
  /// `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` *
  /// `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` *
  /// `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_EXCHANGE` *
  /// `TARGETING_TYPE_GENDER` * `TARGETING_TYPE_GEO_REGION` *
  /// `TARGETING_TYPE_HOUSEHOLD_INCOME` * `TARGETING_TYPE_INVENTORY_SOURCE` *
  /// `TARGETING_TYPE_INVENTORY_SOURCE_GROUP` * `TARGETING_TYPE_LANGUAGE` *
  /// `TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_SUB_EXCHANGE` * `TARGETING_TYPE_THIRD_PARTY_VERIFIER` *
  /// `TARGETING_TYPE_VIEWABILITY`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: -
  /// `assignedTargetingOptionId` - `inheritance` Examples: *
  /// AssignedTargetingOptions with ID 1 or 2 `assignedTargetingOptionId="1" OR
  /// assignedTargetingOptionId="2"` * AssignedTargetingOptions with inheritance
  /// status of NOT_INHERITED or INHERITED_FROM_PARTNER
  /// `inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedTargetingOptionId` (default) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `assignedTargetingOptionId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `5000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCampaignAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCampaignAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCampaignAssignedTargetingOptionsResponse> list(
    core.String advertiserId,
    core.String campaignId,
    core.String targetingType, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/campaigns/' +
        core.Uri.encodeFull('$campaignId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCampaignAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersChannelsResource {
  final commons.ApiRequester _requester;

  AdvertisersChannelsSitesResource get sites =>
      AdvertisersChannelsSitesResource(_requester);

  AdvertisersChannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new channel.
  ///
  /// Returns the newly created channel if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the created channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [partnerId] - The ID of the partner that owns the created channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String advertiserId, {
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/channels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a channel for a partner or advertiser.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the fetched channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [channelId] - Required. The ID of the channel to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [partnerId] - The ID of the partner that owns the fetched channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(
    core.String advertiserId,
    core.String channelId, {
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists channels for a partner or advertiser.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the channels.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by channel fields. Supported syntax: * Filter
  /// expressions for channel currently can only contain at most one *
  /// restriction. * A restriction has the form of `{field} {operator} {value}`.
  /// * The operator must be `CONTAINS (:)`. * Supported fields: - `displayName`
  /// Examples: * All channels for which the display name contains "google":
  /// `displayName : "google"`. The length of this field should be no more than
  /// 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `channelId` The default sorting order is
  /// ascending. To specify descending order for a field, a suffix " desc"
  /// should be added to the field name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListChannels` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that owns the channels.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
    core.String advertiserId, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/channels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChannelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a channel.
  ///
  /// Returns the updated channel if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the created channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [channelId] - Output only. The unique ID of the channel. Assigned by the
  /// system.
  ///
  /// [partnerId] - The ID of the partner that owns the created channel.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String advertiserId,
    core.String channelId, {
    core.String? partnerId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/channels/' +
        commons.escapeVariable('$channelId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersChannelsSitesResource {
  final commons.ApiRequester _requester;

  AdvertisersChannelsSitesResource(commons.ApiRequester client)
      : _requester = client;

  /// Bulk edits sites under a single channel.
  ///
  /// The operation will delete the sites provided in
  /// BulkEditSitesRequest.deleted_sites and then create the sites provided in
  /// BulkEditSitesRequest.created_sites.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel to which the sites
  /// belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditSitesResponse> bulkEdit(
    BulkEditSitesRequest request,
    core.String advertiserId,
    core.String channelId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites:bulkEdit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a site in a channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel in which the site
  /// will be created.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> create(
    Site request,
    core.String advertiserId,
    core.String channelId, {
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a site from a channel.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel to which the site
  /// belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [urlOrAppId] - Required. The URL or app ID of the site to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
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
    core.String advertiserId,
    core.String channelId,
    core.String urlOrAppId, {
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites/' +
        core.Uri.encodeFull('$urlOrAppId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists sites in a channel.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [channelId] - Required. The ID of the parent channel to which the
  /// requested sites belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by site fields. Supported syntax: * Filter
  /// expressions for site currently can only contain at most one * restriction.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `CONTAINS (:)`. * Supported fields: - `urlOrAppId`
  /// Examples: * All sites for which the URL or app ID contains "google":
  /// `urlOrAppId : "google"`
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `urlOrAppId` (default) The default sorting order is ascending. To specify
  /// descending order for a field, a suffix " desc" should be added to the
  /// field name. Example: `urlOrAppId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `10000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListSites` method. If not specified, the first page of
  /// results will be returned.
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSitesResponse> list(
    core.String advertiserId,
    core.String channelId, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces all of the sites under a single channel.
  ///
  /// The operation will replace the sites under a channel with the sites
  /// provided in ReplaceSitesRequest.new_sites.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel whose sites will be
  /// replaced.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReplaceSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReplaceSitesResponse> replace(
    ReplaceSitesRequest request,
    core.String advertiserId,
    core.String channelId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites:replace';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReplaceSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersCreativesResource {
  final commons.ApiRequester _requester;

  AdvertisersCreativesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new creative.
  ///
  /// Returns the newly created creative if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the creative
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> create(
    Creative request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/creatives';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a creative.
  ///
  /// Returns error code `NOT_FOUND` if the creative does not exist. The
  /// creative should be archived first, i.e. set entity_status to
  /// `ENTITY_STATUS_ARCHIVED`, before it can be deleted.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser this creative belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [creativeId] - The ID of the creative to be deleted.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/creatives/' +
        core.Uri.encodeFull('$creativeId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a creative.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this creative belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [creativeId] - Required. The ID of the creative to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> get(
    core.String advertiserId,
    core.String creativeId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/creatives/' +
        core.Uri.encodeFull('$creativeId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists creatives in an advertiser.
  ///
  /// The order is defined by the order_by parameter. If a filter by
  /// entity_status is not specified, creatives with `ENTITY_STATUS_ARCHIVED`
  /// will not be included in the results.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to list creatives for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by creative properties. Supported syntax: *
  /// Filter expressions are made up of one or more restrictions. * Restriction
  /// for the same field must be combined by `OR`. * Restriction for different
  /// fields must be combined by `AND`. * Between `(` and `)` there can only be
  /// restrictions combined by `OR` for the same field. * A restriction has the
  /// form of `{field} {operator} {value}`. * The operator must be `EQUALS (=)`
  /// for the following fields: - `entityStatus` - `creativeType`. -
  /// `dimensions` - `minDuration` - `maxDuration` - `approvalStatus` -
  /// `exchangeReviewStatus` - `dynamic` - `creativeId` * The operator must be
  /// `HAS (:)` for the following fields: - `lineItemIds` * The operator must be
  /// `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN OR EQUAL TO (<=)` for the
  /// following fields: - `updateTime` (input in ISO 8601 format, or
  /// YYYY-MM-DDTHH:MM:SSZ) * For `entityStatus`, `minDuration`, `maxDuration`,
  /// `updateTime`, and `dynamic`, there may be at most one restriction. * For
  /// `dimensions`, the value is in the form of `"{width}x{height}"`. * For
  /// `exchangeReviewStatus`, the value is in the form of
  /// `{exchange}-{reviewStatus}`. * For `minDuration` and `maxDuration`, the
  /// value is in the form of `"{duration}s"`. Only seconds are supported with
  /// millisecond granularity. * For `updateTime`, a creative resource's field
  /// value reflects the last time that a creative has been updated, which
  /// includes updates made by the system (e.g. creative review updates). *
  /// There may be multiple `lineItemIds` restrictions in order to search
  /// against multiple possible line item IDs. * There may be multiple
  /// `creativeId` restrictions in order to search against multiple possible
  /// creative IDs. Examples: * All native creatives:
  /// `creativeType="CREATIVE_TYPE_NATIVE"` * All active creatives with 300x400
  /// or 50x100 dimensions: `entityStatus="ENTITY_STATUS_ACTIVE" AND
  /// (dimensions="300x400" OR dimensions="50x100")` * All dynamic creatives
  /// that are approved by AdX or AppNexus, with a minimum duration of 5 seconds
  /// and 200ms. `dynamic="true" AND minDuration="5.2s" AND
  /// (exchangeReviewStatus="EXCHANGE_GOOGLE_AD_MANAGER-REVIEW_STATUS_APPROVED"
  /// OR exchangeReviewStatus="EXCHANGE_APPNEXUS-REVIEW_STATUS_APPROVED")` * All
  /// video creatives that are associated with line item ID 1 or 2:
  /// `creativeType="CREATIVE_TYPE_VIDEO" AND (lineItemIds:1 OR lineItemIds:2)`
  /// * Find creatives by multiple creative IDs: `creativeId=1 OR creativeId=2`
  /// * All creatives with an update time greater than or equal to
  /// `2020-11-04T18:54:47Z (format of ISO 8601)`:
  /// `updateTime>="2020-11-04T18:54:47Z"` The length of this field should be no
  /// more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `creativeId` (default) * `createTime` * `mediaDuration` * `dimensions`
  /// (sorts by width first, then by height) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `createTime desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCreatives` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativesResponse> list(
    core.String advertiserId, {
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
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/creatives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCreativesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative.
  ///
  /// Returns the updated creative if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the creative
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [creativeId] - Output only. The unique ID of the creative. Assigned by the
  /// system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> patch(
    Creative request,
    core.String advertiserId,
    core.String creativeId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/creatives/' +
        core.Uri.encodeFull('$creativeId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersInsertionOrdersResource {
  final commons.ApiRequester _requester;

  AdvertisersInsertionOrdersTargetingTypesResource get targetingTypes =>
      AdvertisersInsertionOrdersTargetingTypesResource(_requester);

  AdvertisersInsertionOrdersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new insertion order.
  ///
  /// Returns the newly created insertion order if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the
  /// insertion order belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InsertionOrder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InsertionOrder> create(
    InsertionOrder request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InsertionOrder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an insertion order.
  ///
  /// Returns error code `NOT_FOUND` if the insertion order does not exist. The
  /// insertion order should be archived first, i.e. set entity_status to
  /// `ENTITY_STATUS_ARCHIVED`, to be able to delete it.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser this insertion order belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - The ID of the insertion order to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String insertionOrderId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an insertion order.
  ///
  /// Returns error code `NOT_FOUND` if the insertion order does not exist.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this insertion order
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Required. The ID of the insertion order to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InsertionOrder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InsertionOrder> get(
    core.String advertiserId,
    core.String insertionOrderId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InsertionOrder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists insertion orders in an advertiser.
  ///
  /// The order is defined by the order_by parameter. If a filter by
  /// entity_status is not specified, insertion orders with
  /// `ENTITY_STATUS_ARCHIVED` will not be included in the results.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to list insertion
  /// orders for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by insertion order properties. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by `AND` or `OR` logical operators. A
  /// sequence of restrictions implicitly uses `AND`. * A restriction has the
  /// form of `{field} {operator} {value}`. * The operator used on
  /// `budget.budget_segments.date_range.end_date` must be LESS THAN (\<). * The
  /// operator used on `updateTime` must be `GREATER THAN OR EQUAL TO (>=)` or
  /// `LESS THAN OR EQUAL TO (<=)`. * The operators used on all other fields
  /// must be `EQUALS (=)`. * Supported fields: - `campaignId` - `displayName` -
  /// `entityStatus` - `budget.budget_segments.date_range.end_date` (input as
  /// YYYY-MM-DD) - `updateTime` (input in ISO 8601 format, or
  /// YYYY-MM-DDTHH:MM:SSZ) Examples: * All insertion orders under a campaign:
  /// `campaignId="1234"` * All `ENTITY_STATUS_ACTIVE` or `ENTITY_STATUS_PAUSED`
  /// insertion orders under an advertiser:
  /// `(entityStatus="ENTITY_STATUS_ACTIVE" OR
  /// entityStatus="ENTITY_STATUS_PAUSED")` * All insertion orders whose budget
  /// segments' dates end before March 28, 2019:
  /// `budget.budget_segments.date_range.end_date<"2019-03-28"` * All insertion
  /// orders with an update time less than or equal to `2020-11-04T18:54:47Z
  /// (format of ISO 8601)`: `updateTime<="2020-11-04T18:54:47Z"` * All
  /// insertion orders with an update time greater than or equal to
  /// `2020-11-04T18:54:47Z (format of ISO 8601)`:
  /// `updateTime>="2020-11-04T18:54:47Z"` The length of this field should be no
  /// more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// "displayName" (default) * "entityStatus" * "updateTime" The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix "desc" should be added to the field name. Example: `displayName
  /// desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `100`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListInsertionOrders` method. If not specified, the first
  /// page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInsertionOrdersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInsertionOrdersResponse> list(
    core.String advertiserId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInsertionOrdersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists assigned targeting options of an insertion order across targeting
  /// types.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the insertion order
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Required. The ID of the insertion order to list
  /// assigned targeting options for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`
  /// on the same field. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `EQUALS (=)`. * Supported fields: -
  /// `targetingType` - `inheritance` Examples: * AssignedTargetingOptions of
  /// targeting type TARGETING_TYPE_PROXIMITY_LOCATION_LIST or
  /// TARGETING_TYPE_CHANNEL
  /// `targetingType="TARGETING_TYPE_PROXIMITY_LOCATION_LIST" OR
  /// targetingType="TARGETING_TYPE_CHANNEL"` * AssignedTargetingOptions with
  /// inheritance status of NOT_INHERITED or INHERITED_FROM_PARTNER
  /// `inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `targetingType` (default) The default sorting order is ascending. To
  /// specify descending order for a field, a suffix "desc" should be added to
  /// the field name. Example: `targetingType desc`.
  ///
  /// [pageSize] - Requested page size. The size must be an integer between `1`
  /// and `5000`. If unspecified, the default is `5000`. Returns error code
  /// `INVALID_ARGUMENT` if an invalid value is specified.
  ///
  /// [pageToken] - A token that lets the client fetch the next page of results.
  /// Typically, this is the value of next_page_token returned from the previous
  /// call to `BulkListInsertionOrderAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkListInsertionOrderAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkListInsertionOrderAssignedTargetingOptionsResponse>
      listAssignedTargetingOptions(
    core.String advertiserId,
    core.String insertionOrderId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId') +
        ':listAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BulkListInsertionOrderAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing insertion order.
  ///
  /// Returns the updated insertion order if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the
  /// insertion order belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Output only. The unique ID of the insertion order.
  /// Assigned by the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InsertionOrder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InsertionOrder> patch(
    InsertionOrder request,
    core.String advertiserId,
    core.String insertionOrderId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return InsertionOrder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersInsertionOrdersTargetingTypesResource {
  final commons.ApiRequester _requester;

  AdvertisersInsertionOrdersTargetingTypesAssignedTargetingOptionsResource
      get assignedTargetingOptions =>
          AdvertisersInsertionOrdersTargetingTypesAssignedTargetingOptionsResource(
              _requester);

  AdvertisersInsertionOrdersTargetingTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class AdvertisersInsertionOrdersTargetingTypesAssignedTargetingOptionsResource {
  final commons.ApiRequester _requester;

  AdvertisersInsertionOrdersTargetingTypesAssignedTargetingOptionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Assigns a targeting option to an insertion order.
  ///
  /// Returns the assigned targeting option if successful. Supported targeting
  /// types: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_BROWSER` *
  /// `TARGETING_TYPE_CATEGORY` * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DEVICE_MAKE_MODEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_GENDER` *
  /// `TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` *
  /// `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OPERATING_SYSTEM`
  /// * `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_VIEWABILITY`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the insertion order
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Required. The ID of the insertion order the assigned
  /// targeting option will belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` *
  /// `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_CATEGORY` *
  /// `TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_GENDER` *
  /// `TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` *
  /// `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OPERATING_SYSTEM`
  /// * `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_VIEWABILITY`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> create(
    AssignedTargetingOption request,
    core.String advertiserId,
    core.String insertionOrderId,
    core.String targetingType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an assigned targeting option from an insertion order.
  ///
  /// Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` *
  /// `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_CATEGORY` *
  /// `TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_GENDER` *
  /// `TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` *
  /// `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OPERATING_SYSTEM`
  /// * `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_VIEWABILITY`
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the insertion order
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Required. The ID of the insertion order the assigned
  /// targeting option belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` *
  /// `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_CATEGORY` *
  /// `TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_GENDER` *
  /// `TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` *
  /// `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OPERATING_SYSTEM`
  /// * `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_VIEWABILITY`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. The ID of the assigned targeting
  /// option to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String insertionOrderId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single targeting option assigned to an insertion order.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the insertion order
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Required. The ID of the insertion order the assigned
  /// targeting option belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option.
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. An identifier unique to the
  /// targeting type in this insertion order that identifies the assigned
  /// targeting option being requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> get(
    core.String advertiserId,
    core.String insertionOrderId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the targeting options assigned to an insertion order.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the insertion order
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [insertionOrderId] - Required. The ID of the insertion order to list
  /// assigned targeting options for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of assigned targeting
  /// options to list.
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: -
  /// `assignedTargetingOptionId` - `inheritance` Examples: *
  /// AssignedTargetingOptions with ID 1 or 2 `assignedTargetingOptionId="1" OR
  /// assignedTargetingOptionId="2"` * AssignedTargetingOptions with inheritance
  /// status of NOT_INHERITED or INHERITED_FROM_PARTNER
  /// `inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedTargetingOptionId` (default) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `assignedTargetingOptionId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `5000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListInsertionOrderAssignedTargetingOptions` method. If
  /// not specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInsertionOrderAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInsertionOrderAssignedTargetingOptionsResponse> list(
    core.String advertiserId,
    core.String insertionOrderId,
    core.String targetingType, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/insertionOrders/' +
        core.Uri.encodeFull('$insertionOrderId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInsertionOrderAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersInvoicesResource {
  final commons.ApiRequester _requester;

  AdvertisersInvoicesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists invoices posted for an advertiser in a given month.
  ///
  /// Invoices generated by billing profiles with a "Partner" invoice level are
  /// not retrievable through this method.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to list invoices for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [issueMonth] - The month to list the invoices for. If not set, the request
  /// will retrieve invoices for the previous month. Must be in the format
  /// YYYYMM.
  ///
  /// [loiSapinInvoiceType] - Select type of invoice to retrieve for Loi Sapin
  /// advertisers. Only applicable to Loi Sapin advertisers. Will be ignored
  /// otherwise.
  /// Possible string values are:
  /// - "LOI_SAPIN_INVOICE_TYPE_UNSPECIFIED" : Value is not specified.
  /// - "LOI_SAPIN_INVOICE_TYPE_MEDIA" : Invoices with Media cost.
  /// - "LOI_SAPIN_INVOICE_TYPE_PLATFORM" : Invoices with Platform fee.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListInvoices` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInvoicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInvoicesResponse> list(
    core.String advertiserId, {
    core.String? issueMonth,
    core.String? loiSapinInvoiceType,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issueMonth != null) 'issueMonth': [issueMonth],
      if (loiSapinInvoiceType != null)
        'loiSapinInvoiceType': [loiSapinInvoiceType],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/invoices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInvoicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the invoice currency used by an advertiser in a given month.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to lookup currency
  /// for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [invoiceMonth] - Month for which the currency is needed. If not set, the
  /// request will return existing currency settings for the advertiser. Must be
  /// in the format YYYYMM.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupInvoiceCurrencyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupInvoiceCurrencyResponse> lookupInvoiceCurrency(
    core.String advertiserId, {
    core.String? invoiceMonth,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (invoiceMonth != null) 'invoiceMonth': [invoiceMonth],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/invoices:lookupInvoiceCurrency';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupInvoiceCurrencyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersLineItemsResource {
  final commons.ApiRequester _requester;

  AdvertisersLineItemsTargetingTypesResource get targetingTypes =>
      AdvertisersLineItemsTargetingTypesResource(_requester);

  AdvertisersLineItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Bulk edits targeting options under multiple line items.
  ///
  /// The operation will delete the assigned targeting options provided in
  /// BulkEditAssignedTargetingOptionsRequest.delete_requests and then create
  /// the assigned targeting options provided in
  /// BulkEditAssignedTargetingOptionsRequest.create_requests. Requests to this
  /// endpoint cannot be made concurrently with the following requests updating
  /// the same line item: * BulkUpdate * UpdateLineItem *
  /// CreateLineItemAssignedTargetingOption *
  /// DeleteLineItemAssignedTargetingOption
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line items belong
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditAssignedTargetingOptionsResponse>
      bulkEditAssignedTargetingOptions(
    BulkEditAssignedTargetingOptionsRequest request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems:bulkEditAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists assigned targeting options for multiple line items across targeting
  /// types.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line items belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`
  /// on the same field. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `EQUALS (=)`. * Supported fields: -
  /// `targetingType` - `inheritance` Examples: * AssignedTargetingOptions of
  /// targeting type TARGETING_TYPE_PROXIMITY_LOCATION_LIST or
  /// TARGETING_TYPE_CHANNEL
  /// `targetingType="TARGETING_TYPE_PROXIMITY_LOCATION_LIST" OR
  /// targetingType="TARGETING_TYPE_CHANNEL"` * AssignedTargetingOptions with
  /// inheritance status of NOT_INHERITED or INHERITED_FROM_PARTNER
  /// `inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [lineItemIds] - Required. The IDs of the line items to list assigned
  /// targeting options for.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `lineItemId` (default) * `assignedTargetingOption.targetingType` The
  /// default sorting order is ascending. To specify descending order for a
  /// field, a suffix "desc" should be added to the field name. Example:
  /// `targetingType desc`.
  ///
  /// [pageSize] - Requested page size. The size must be an integer between `1`
  /// and `5000`. If unspecified, the default is '5000'. Returns error code
  /// `INVALID_ARGUMENT` if an invalid value is specified.
  ///
  /// [pageToken] - A token that lets the client fetch the next page of results.
  /// Typically, this is the value of next_page_token returned from the previous
  /// call to the `BulkListAssignedTargetingOptions` method. If not specified,
  /// the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkListAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkListAssignedTargetingOptionsResponse>
      bulkListAssignedTargetingOptions(
    core.String advertiserId, {
    core.String? filter,
    core.List<core.String>? lineItemIds,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (lineItemIds != null) 'lineItemIds': lineItemIds,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems:bulkListAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BulkListAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates multiple line items.
  ///
  /// Requests to this endpoint cannot be made concurrently with the following
  /// requests updating the same line item: * BulkEditAssignedTargetingOptions *
  /// UpdateLineItem * CreateLineItemAssignedTargetingOption *
  /// DeleteLineItemAssignedTargetingOption
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkUpdateLineItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkUpdateLineItemsResponse> bulkUpdate(
    BulkUpdateLineItemsRequest request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems:bulkUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkUpdateLineItemsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new line item.
  ///
  /// Returns the newly created line item if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the line
  /// item belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LineItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LineItem> create(
    LineItem request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/lineItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LineItem.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a line item.
  ///
  /// Returns error code `NOT_FOUND` if the line item does not exist. The line
  /// item should be archived first, i.e. set entity_status to
  /// `ENTITY_STATUS_ARCHIVED`, to be able to delete it.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser this line item belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - The ID of the line item to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String lineItemId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Duplicates a line item.
  ///
  /// Returns the ID of the created line item if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Required. The ID of the line item to duplicate.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DuplicateLineItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DuplicateLineItemResponse> duplicate(
    DuplicateLineItemRequest request,
    core.String advertiserId,
    core.String lineItemId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId') +
        ':duplicate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DuplicateLineItemResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new line item with settings (including targeting) inherited from
  /// the insertion order and an `ENTITY_STATUS_DRAFT` entity_status.
  ///
  /// Returns the newly created line item if successful. There are default
  /// values based on the three fields: * The insertion order's
  /// insertion_order_type * The insertion order's automation_type * The given
  /// line_item_type
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LineItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LineItem> generateDefault(
    GenerateDefaultLineItemRequest request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems:generateDefault';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LineItem.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a line item.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Required. The ID of the line item to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LineItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LineItem> get(
    core.String advertiserId,
    core.String lineItemId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LineItem.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists line items in an advertiser.
  ///
  /// The order is defined by the order_by parameter. If a filter by
  /// entity_status is not specified, line items with `ENTITY_STATUS_ARCHIVED`
  /// will not be included in the results.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser to list line items
  /// for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by line item properties. Supported syntax: *
  /// Filter expressions are made up of one or more restrictions. * Restrictions
  /// can be combined by `AND` or `OR` logical operators. A sequence of
  /// restrictions implicitly uses `AND`. * A restriction has the form of
  /// `{field} {operator} {value}`. * The operator used on
  /// `flight.dateRange.endDate` must be LESS THAN (\<). * The operator used on
  /// `updateTime` must be `GREATER THAN OR EQUAL TO (>=)` or `LESS THAN OR
  /// EQUAL TO (<=)`. * The operator used on `warningMessages` must be `HAS
  /// (:)`. * The operators used on all other fields must be `EQUALS (=)`. *
  /// Supported properties: - `campaignId` - `displayName` - `insertionOrderId`
  /// - `entityStatus` - `lineItemId` - `lineItemType` -
  /// `flight.dateRange.endDate` (input formatted as YYYY-MM-DD) -
  /// `warningMessages` - `flight.triggerId` - `updateTime` (input in ISO 8601
  /// format, or YYYY-MM-DDTHH:MM:SSZ) - `targetedChannelId` -
  /// `targetedNegativeKeywordListId` Examples: * All line items under an
  /// insertion order: `insertionOrderId="1234"` * All `ENTITY_STATUS_ACTIVE` or
  /// `ENTITY_STATUS_PAUSED` and `LINE_ITEM_TYPE_DISPLAY_DEFAULT` line items
  /// under an advertiser: `(entityStatus="ENTITY_STATUS_ACTIVE" OR
  /// entityStatus="ENTITY_STATUS_PAUSED") AND
  /// lineItemType="LINE_ITEM_TYPE_DISPLAY_DEFAULT"` * All line items whose
  /// flight dates end before March 28, 2019:
  /// `flight.dateRange.endDate<"2019-03-28"` * All line items that have
  /// `NO_VALID_CREATIVE` in `warningMessages`:
  /// `warningMessages:"NO_VALID_CREATIVE"` * All line items with an update time
  /// less than or equal to `2020-11-04T18:54:47Z (format of ISO 8601)`:
  /// `updateTime<="2020-11-04T18:54:47Z"` * All line items with an update time
  /// greater than or equal to `2020-11-04T18:54:47Z (format of ISO 8601)`:
  /// `updateTime>="2020-11-04T18:54:47Z"` * All line items that are using both
  /// the specified channel and specified negative keyword list in their
  /// targeting: `targetedNegativeKeywordListId=789 AND targetedChannelId=12345`
  /// The length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `entityStatus` * `flight.dateRange.endDate` *
  /// `updateTime` The default sorting order is ascending. To specify descending
  /// order for a field, a suffix "desc" should be added to the field name.
  /// Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListLineItems` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLineItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLineItemsResponse> list(
    core.String advertiserId, {
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
        'v2/advertisers/' + core.Uri.encodeFull('$advertiserId') + '/lineItems';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLineItemsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing line item.
  ///
  /// Returns the updated line item if successful. Requests to this endpoint
  /// cannot be made concurrently with the following requests updating the same
  /// line item: * BulkEditAssignedTargetingOptions * BulkUpdateLineItems *
  /// CreateLineItemAssignedTargetingOption *
  /// DeleteLineItemAssignedTargetingOption
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Output only. The unique ID of the advertiser the line
  /// item belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Output only. The unique ID of the line item. Assigned by
  /// the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LineItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LineItem> patch(
    LineItem request,
    core.String advertiserId,
    core.String lineItemId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return LineItem.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersLineItemsTargetingTypesResource {
  final commons.ApiRequester _requester;

  AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource
      get assignedTargetingOptions =>
          AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource(
              _requester);

  AdvertisersLineItemsTargetingTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource {
  final commons.ApiRequester _requester;

  AdvertisersLineItemsTargetingTypesAssignedTargetingOptionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Assigns a targeting option to a line item.
  ///
  /// Returns the assigned targeting option if successful. Requests to this
  /// endpoint cannot be made concurrently with the following requests updating
  /// the same line item: * BulkEditAssignedTargetingOptions * BulkUpdate *
  /// UpdateLineItem * DeleteLineItemAssignedTargetingOption
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Required. The ID of the line item the assigned targeting
  /// option will belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option.
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> create(
    AssignedTargetingOption request,
    core.String advertiserId,
    core.String lineItemId,
    core.String targetingType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an assigned targeting option from a line item.
  ///
  /// Requests to this endpoint cannot be made concurrently with the following
  /// requests updating the same line item: * BulkEditAssignedTargetingOptions *
  /// BulkUpdate * UpdateLineItem * CreateLineItemAssignedTargetingOption
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Required. The ID of the line item the assigned targeting
  /// option belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option.
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. The ID of the assigned targeting
  /// option to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String lineItemId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single targeting option assigned to a line item.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Required. The ID of the line item the assigned targeting
  /// option belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option.
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. An identifier unique to the
  /// targeting type in this line item that identifies the assigned targeting
  /// option being requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> get(
    core.String advertiserId,
    core.String lineItemId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the targeting options assigned to a line item.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser the line item belongs
  /// to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [lineItemId] - Required. The ID of the line item to list assigned
  /// targeting options for.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of assigned targeting
  /// options to list.
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: -
  /// `assignedTargetingOptionId` - `inheritance` Examples: *
  /// AssignedTargetingOptions with ID 1 or 2 `assignedTargetingOptionId="1" OR
  /// assignedTargetingOptionId="2"` * AssignedTargetingOptions with inheritance
  /// status of NOT_INHERITED or INHERITED_FROM_PARTNER
  /// `inheritance="NOT_INHERITED" OR inheritance="INHERITED_FROM_PARTNER"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedTargetingOptionId` (default) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `assignedTargetingOptionId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `5000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListLineItemAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLineItemAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLineItemAssignedTargetingOptionsResponse> list(
    core.String advertiserId,
    core.String lineItemId,
    core.String targetingType, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/lineItems/' +
        core.Uri.encodeFull('$lineItemId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLineItemAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersLocationListsResource {
  final commons.ApiRequester _requester;

  AdvertisersLocationListsAssignedLocationsResource get assignedLocations =>
      AdvertisersLocationListsAssignedLocationsResource(_requester);

  AdvertisersLocationListsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new location list.
  ///
  /// Returns the newly created location list if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// location list belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LocationList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LocationList> create(
    LocationList request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/locationLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LocationList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a location list.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// fetched location list belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [locationListId] - Required. The ID of the location list to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LocationList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LocationList> get(
    core.String advertiserId,
    core.String locationListId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/locationLists/' +
        core.Uri.encodeFull('$locationListId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LocationList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists location lists based on a given advertiser id.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// fetched location lists belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by location list fields. Supported syntax: *
  /// Filter expressions are made up of one or more restrictions. * Restrictions
  /// can be combined by `AND` or `OR` logical operators. A sequence of
  /// restrictions implicitly uses `AND`. * A restriction has the form of
  /// `{field} {operator} {value}`. * The operator must be `EQUALS (=)`. *
  /// Supported fields: - `locationType` Examples: * All regional location list:
  /// `locationType="TARGETING_LOCATION_TYPE_REGIONAL"` * All proximity location
  /// list: `locationType="TARGETING_LOCATION_TYPE_PROXIMITY"`
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `locationListId` (default) * `displayName` The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. Defaults
  /// to `100` if not set. Returns error code `INVALID_ARGUMENT` if an invalid
  /// value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListLocationLists` method. If not specified, the first
  /// page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationListsResponse> list(
    core.String advertiserId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/locationLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationListsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a location list.
  ///
  /// Returns the updated location list if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// location lists belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [locationListId] - Output only. The unique ID of the location list.
  /// Assigned by the system.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LocationList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LocationList> patch(
    LocationList request,
    core.String advertiserId,
    core.String locationListId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/locationLists/' +
        commons.escapeVariable('$locationListId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return LocationList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersLocationListsAssignedLocationsResource {
  final commons.ApiRequester _requester;

  AdvertisersLocationListsAssignedLocationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Bulk edits multiple assignments between locations and a single location
  /// list.
  ///
  /// The operation will delete the assigned locations provided in
  /// BulkEditAssignedLocationsRequest.deleted_assigned_locations and then
  /// create the assigned locations provided in
  /// BulkEditAssignedLocationsRequest.created_assigned_locations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// location list belongs.
  ///
  /// [locationListId] - Required. The ID of the location list to which these
  /// assignments are assigned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditAssignedLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditAssignedLocationsResponse> bulkEdit(
    BulkEditAssignedLocationsRequest request,
    core.String advertiserId,
    core.String locationListId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/locationLists/' +
        core.Uri.encodeFull('$locationListId') +
        '/assignedLocations:bulkEdit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditAssignedLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an assignment between a location and a location list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// location list belongs.
  ///
  /// [locationListId] - Required. The ID of the location list for which the
  /// assignment will be created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedLocation> create(
    AssignedLocation request,
    core.String advertiserId,
    core.String locationListId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/locationLists/' +
        commons.escapeVariable('$locationListId') +
        '/assignedLocations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AssignedLocation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the assignment between a location and a location list.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// location list belongs.
  ///
  /// [locationListId] - Required. The ID of the location list to which this
  /// assignment is assigned.
  ///
  /// [assignedLocationId] - Required. The ID of the assigned location to
  /// delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String locationListId,
    core.String assignedLocationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/locationLists/' +
        commons.escapeVariable('$locationListId') +
        '/assignedLocations/' +
        core.Uri.encodeFull('$assignedLocationId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists locations assigned to a location list.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// location list belongs.
  ///
  /// [locationListId] - Required. The ID of the location list to which these
  /// assignments are assigned.
  ///
  /// [filter] - Allows filtering by location list assignment fields. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by the logical operator `OR`. * A restriction
  /// has the form of `{field} {operator} {value}`. * The operator must be
  /// `EQUALS (=)`. * Supported fields: - `assignedLocationId` The length of
  /// this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedLocationId` (default) The default sorting order is ascending. To
  /// specify descending order for a field, a suffix " desc" should be added to
  /// the field name. Example: `assignedLocationId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListAssignedLocations` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssignedLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssignedLocationsResponse> list(
    core.String advertiserId,
    core.String locationListId, {
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

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/locationLists/' +
        commons.escapeVariable('$locationListId') +
        '/assignedLocations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssignedLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersManualTriggersResource {
  final commons.ApiRequester _requester;

  AdvertisersManualTriggersResource(commons.ApiRequester client)
      : _requester = client;

  /// Activates a manual trigger.
  ///
  /// Each activation of the manual trigger must be at least 5 minutes apart,
  /// otherwise an error will be returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser that the manual
  /// trigger belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [triggerId] - Required. The ID of the manual trigger to activate.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManualTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManualTrigger> activate(
    ActivateManualTriggerRequest request,
    core.String advertiserId,
    core.String triggerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/manualTriggers/' +
        core.Uri.encodeFull('$triggerId') +
        ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ManualTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new manual trigger.
  ///
  /// Returns the newly created manual trigger if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. Immutable. The unique ID of the advertiser that
  /// the manual trigger belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManualTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManualTrigger> create(
    ManualTrigger request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/manualTriggers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ManualTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deactivates a manual trigger.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser that the manual
  /// trigger belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [triggerId] - Required. The ID of the manual trigger to deactivate.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManualTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManualTrigger> deactivate(
    DeactivateManualTriggerRequest request,
    core.String advertiserId,
    core.String triggerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/manualTriggers/' +
        core.Uri.encodeFull('$triggerId') +
        ':deactivate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ManualTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a manual trigger.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser this manual trigger
  /// belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [triggerId] - Required. The ID of the manual trigger to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManualTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManualTrigger> get(
    core.String advertiserId,
    core.String triggerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/manualTriggers/' +
        core.Uri.encodeFull('$triggerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ManualTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists manual triggers that are accessible to the current user for a given
  /// advertiser ID.
  ///
  /// The order is defined by the order_by parameter. A single advertiser_id is
  /// required.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser that the fetched
  /// manual triggers belong to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by manual trigger properties. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by `AND` or `OR` logical operators. A
  /// sequence of restrictions implicitly uses `AND`. * A restriction has the
  /// form of `{field} {operator} {value}`. * The operator must be `EQUALS (=)`.
  /// * Supported fields: - `displayName` - `state` Examples: * All active
  /// manual triggers under an advertiser: `state="ACTIVE"` The length of this
  /// field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `state` The default sorting order is ascending.
  /// To specify descending order for a field, a suffix "desc" should be added
  /// to the field name. For example, `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListManualTriggers` method. If not specified, the first
  /// page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListManualTriggersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListManualTriggersResponse> list(
    core.String advertiserId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/manualTriggers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListManualTriggersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a manual trigger.
  ///
  /// Returns the updated manual trigger if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. Immutable. The unique ID of the advertiser that
  /// the manual trigger belongs to.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [triggerId] - Output only. The unique ID of the manual trigger.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManualTrigger].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManualTrigger> patch(
    ManualTrigger request,
    core.String advertiserId,
    core.String triggerId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/manualTriggers/' +
        core.Uri.encodeFull('$triggerId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ManualTrigger.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersNegativeKeywordListsResource {
  final commons.ApiRequester _requester;

  AdvertisersNegativeKeywordListsNegativeKeywordsResource
      get negativeKeywords =>
          AdvertisersNegativeKeywordListsNegativeKeywordsResource(_requester);

  AdvertisersNegativeKeywordListsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new negative keyword list.
  ///
  /// Returns the newly created negative keyword list if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// negative keyword list will belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NegativeKeywordList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NegativeKeywordList> create(
    NegativeKeywordList request,
    core.String advertiserId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/negativeKeywordLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NegativeKeywordList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a negative keyword list given an advertiser ID and a negative
  /// keyword list ID.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// negative keyword list belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [negativeKeywordListId] - Required. The ID of the negative keyword list to
  /// delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String negativeKeywordListId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a negative keyword list given an advertiser ID and a negative keyword
  /// list ID.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// fetched negative keyword list belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [negativeKeywordListId] - Required. The ID of the negative keyword list to
  /// fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NegativeKeywordList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NegativeKeywordList> get(
    core.String advertiserId,
    core.String negativeKeywordListId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NegativeKeywordList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists negative keyword lists based on a given advertiser id.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// fetched negative keyword lists belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. Defaults
  /// to `100` if not set. Returns error code `INVALID_ARGUMENT` if an invalid
  /// value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListNegativeKeywordLists` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNegativeKeywordListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNegativeKeywordListsResponse> list(
    core.String advertiserId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/negativeKeywordLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNegativeKeywordListsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a negative keyword list.
  ///
  /// Returns the updated negative keyword list if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// negative keyword list belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [negativeKeywordListId] - Output only. The unique ID of the negative
  /// keyword list. Assigned by the system.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NegativeKeywordList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NegativeKeywordList> patch(
    NegativeKeywordList request,
    core.String advertiserId,
    core.String negativeKeywordListId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/negativeKeywordLists/' +
        commons.escapeVariable('$negativeKeywordListId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return NegativeKeywordList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersNegativeKeywordListsNegativeKeywordsResource {
  final commons.ApiRequester _requester;

  AdvertisersNegativeKeywordListsNegativeKeywordsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Bulk edits negative keywords in a single negative keyword list.
  ///
  /// The operation will delete the negative keywords provided in
  /// BulkEditNegativeKeywordsRequest.deleted_negative_keywords and then create
  /// the negative keywords provided in
  /// BulkEditNegativeKeywordsRequest.created_negative_keywords. This operation
  /// is guaranteed to be atomic and will never result in a partial success or
  /// partial failure.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// parent negative keyword list belongs.
  ///
  /// [negativeKeywordListId] - Required. The ID of the parent negative keyword
  /// list to which the negative keywords belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditNegativeKeywordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditNegativeKeywordsResponse> bulkEdit(
    BulkEditNegativeKeywordsRequest request,
    core.String advertiserId,
    core.String negativeKeywordListId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId') +
        '/negativeKeywords:bulkEdit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditNegativeKeywordsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a negative keyword in a negative keyword list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// parent negative keyword list belongs.
  ///
  /// [negativeKeywordListId] - Required. The ID of the parent negative keyword
  /// list in which the negative keyword will be created.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NegativeKeyword].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NegativeKeyword> create(
    NegativeKeyword request,
    core.String advertiserId,
    core.String negativeKeywordListId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId') +
        '/negativeKeywords';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return NegativeKeyword.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a negative keyword from a negative keyword list.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// parent negative keyword list belongs.
  ///
  /// [negativeKeywordListId] - Required. The ID of the parent negative keyword
  /// list to which the negative keyword belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [keywordValue] - Required. The keyword value of the negative keyword to
  /// delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String negativeKeywordListId,
    core.String keywordValue, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId') +
        '/negativeKeywords/' +
        core.Uri.encodeFull('$keywordValue');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists negative keywords in a negative keyword list.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// parent negative keyword list belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [negativeKeywordListId] - Required. The ID of the parent negative keyword
  /// list to which the requested negative keywords belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - Allows filtering by negative keyword fields. Supported syntax:
  /// * Filter expressions for negative keyword currently can only contain at
  /// most one * restriction. * A restriction has the form of `{field}
  /// {operator} {value}`. * The operator must be `CONTAINS (:)`. * Supported
  /// fields: - `keywordValue` Examples: * All negative keywords for which the
  /// keyword value contains "google": `keywordValue : "google"`
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `keywordValue` (default) The default sorting order is ascending. To
  /// specify descending order for a field, a suffix " desc" should be added to
  /// the field name. Example: `keywordValue desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `1000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListNegativeKeywords` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNegativeKeywordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNegativeKeywordsResponse> list(
    core.String advertiserId,
    core.String negativeKeywordListId, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId') +
        '/negativeKeywords';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNegativeKeywordsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces all negative keywords in a single negative keyword list.
  ///
  /// The operation will replace the keywords in a negative keyword list with
  /// keywords provided in ReplaceNegativeKeywordsRequest.new_negative_keywords.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the DV360 advertiser to which the
  /// parent negative keyword list belongs.
  ///
  /// [negativeKeywordListId] - Required. The ID of the parent negative keyword
  /// list to which the negative keywords belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReplaceNegativeKeywordsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReplaceNegativeKeywordsResponse> replace(
    ReplaceNegativeKeywordsRequest request,
    core.String advertiserId,
    core.String negativeKeywordListId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        commons.escapeVariable('$advertiserId') +
        '/negativeKeywordLists/' +
        core.Uri.encodeFull('$negativeKeywordListId') +
        '/negativeKeywords:replace';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReplaceNegativeKeywordsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersTargetingTypesResource {
  final commons.ApiRequester _requester;

  AdvertisersTargetingTypesAssignedTargetingOptionsResource
      get assignedTargetingOptions =>
          AdvertisersTargetingTypesAssignedTargetingOptionsResource(_requester);

  AdvertisersTargetingTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class AdvertisersTargetingTypesAssignedTargetingOptionsResource {
  final commons.ApiRequester _requester;

  AdvertisersTargetingTypesAssignedTargetingOptionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Assigns a targeting option to an advertiser.
  ///
  /// Returns the assigned targeting option if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> create(
    AssignedTargetingOption request,
    core.String advertiserId,
    core.String targetingType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an assigned targeting option from an advertiser.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. The ID of the assigned targeting
  /// option to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String advertiserId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single targeting option assigned to an advertiser.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. An identifier unique to the
  /// targeting type in this advertiser that identifies the assigned targeting
  /// option being requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> get(
    core.String advertiserId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the targeting options assigned to an advertiser.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of assigned targeting
  /// options to list. Supported targeting types: * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: -
  /// `assignedTargetingOptionId` Examples: * AssignedTargetingOption with ID
  /// 123456 `assignedTargetingOptionId="123456"` The length of this field
  /// should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedTargetingOptionId` (default) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `assignedTargetingOptionId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `5000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListAdvertiserAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdvertiserAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdvertiserAssignedTargetingOptionsResponse> list(
    core.String advertiserId,
    core.String targetingType, {
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

    final url_ = 'v2/advertisers/' +
        core.Uri.encodeFull('$advertiserId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdvertiserAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CombinedAudiencesResource {
  final commons.ApiRequester _requester;

  CombinedAudiencesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a combined audience.
  ///
  /// Request parameters:
  ///
  /// [combinedAudienceId] - Required. The ID of the combined audience to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the fetched
  /// combined audience.
  ///
  /// [partnerId] - The ID of the partner that has access to the fetched
  /// combined audience.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CombinedAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CombinedAudience> get(
    core.String combinedAudienceId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/combinedAudiences/' + core.Uri.encodeFull('$combinedAudienceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CombinedAudience.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists combined audiences.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the fetched
  /// combined audiences.
  ///
  /// [filter] - Allows filtering by combined audience fields. Supported syntax:
  /// * Filter expressions for combined audiences currently can only contain at
  /// most one restriction. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `CONTAINS (:)`. * Supported fields: -
  /// `displayName` Examples: * All combined audiences for which the display
  /// name contains "Google": `displayName : "Google"`. The length of this field
  /// should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `combinedAudienceId` (default) * `displayName` The default sorting order
  /// is ascending. To specify descending order for a field, a suffix "desc"
  /// should be added to the field name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCombinedAudiences` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the fetched
  /// combined audiences.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCombinedAudiencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCombinedAudiencesResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/combinedAudiences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCombinedAudiencesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomBiddingAlgorithmsResource {
  final commons.ApiRequester _requester;

  CustomBiddingAlgorithmsScriptsResource get scripts =>
      CustomBiddingAlgorithmsScriptsResource(_requester);

  CustomBiddingAlgorithmsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new custom bidding algorithm.
  ///
  /// Returns the newly created custom bidding algorithm if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomBiddingAlgorithm].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomBiddingAlgorithm> create(
    CustomBiddingAlgorithm request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/customBiddingAlgorithms';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomBiddingAlgorithm.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a custom bidding algorithm.
  ///
  /// Request parameters:
  ///
  /// [customBiddingAlgorithmId] - Required. The ID of the custom bidding
  /// algorithm to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the DV360 partner that has access to the custom
  /// bidding algorithm.
  ///
  /// [partnerId] - The ID of the DV360 partner that has access to the custom
  /// bidding algorithm.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomBiddingAlgorithm].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomBiddingAlgorithm> get(
    core.String customBiddingAlgorithmId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customBiddingAlgorithms/' +
        core.Uri.encodeFull('$customBiddingAlgorithmId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomBiddingAlgorithm.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists custom bidding algorithms that are accessible to the current user
  /// and can be used in bidding stratgies.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the DV360 advertiser that has access to the
  /// custom bidding algorithm.
  ///
  /// [filter] - Allows filtering by custom bidding algorithm fields. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by `AND`. A sequence of restrictions *
  /// implicitly uses `AND`. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `CONTAINS (:)` or `EQUALS (=)`. * The
  /// operator must be `CONTAINS (:)` for the following field: - `displayName` *
  /// The operator must be `EQUALS (=)` for the following field: -
  /// `customBiddingAlgorithmType` * For `displayName`, the value is a string.
  /// We return all custom bidding algorithms whose display_name contains such
  /// string. * For `customBiddingAlgorithmType`, the value is a string. We
  /// return all algorithms whose custom_bidding_algorithm_type is equal to the
  /// given type. Examples: * All custom bidding algorithms for which the
  /// display name contains "politics": `displayName:politics`. * All custom
  /// bidding algorithms for which the type is "SCRIPT_BASED":
  /// `customBiddingAlgorithmType=SCRIPT_BASED` The length of this field should
  /// be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) The default sorting order is ascending. To specify
  /// descending order for a field, a suffix "desc" should be added to the field
  /// name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCustomBiddingAlgorithms` method. If not specified,
  /// the first page of results will be returned.
  ///
  /// [partnerId] - The ID of the DV360 partner that has access to the custom
  /// bidding algorithm.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomBiddingAlgorithmsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomBiddingAlgorithmsResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/customBiddingAlgorithms';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomBiddingAlgorithmsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing custom bidding algorithm.
  ///
  /// Returns the updated custom bidding algorithm if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customBiddingAlgorithmId] - Output only. The unique ID of the custom
  /// bidding algorithm. Assigned by the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomBiddingAlgorithm].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomBiddingAlgorithm> patch(
    CustomBiddingAlgorithm request,
    core.String customBiddingAlgorithmId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customBiddingAlgorithms/' +
        core.Uri.encodeFull('$customBiddingAlgorithmId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomBiddingAlgorithm.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a custom bidding script reference object for a script file.
  ///
  /// The resulting reference object provides a resource path to which the
  /// script file should be uploaded. This reference object should be included
  /// in when creating a new custom bidding script object.
  ///
  /// Request parameters:
  ///
  /// [customBiddingAlgorithmId] - Required. The ID of the custom bidding
  /// algorithm owns the script.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent custom
  /// bidding algorithm.
  ///
  /// [partnerId] - The ID of the partner that owns the parent custom bidding
  /// algorithm. Only this partner will have write access to this custom bidding
  /// script.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomBiddingScriptRef].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomBiddingScriptRef> uploadScript(
    core.String customBiddingAlgorithmId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customBiddingAlgorithms/' +
        core.Uri.encodeFull('$customBiddingAlgorithmId') +
        ':uploadScript';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomBiddingScriptRef.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomBiddingAlgorithmsScriptsResource {
  final commons.ApiRequester _requester;

  CustomBiddingAlgorithmsScriptsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new custom bidding script.
  ///
  /// Returns the newly created script if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customBiddingAlgorithmId] - Required. The ID of the custom bidding
  /// algorithm that owns the script.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent custom
  /// bidding algorithm.
  ///
  /// [partnerId] - The ID of the partner that owns the parent custom bidding
  /// algorithm. Only this partner will have write access to this custom bidding
  /// script.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomBiddingScript].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomBiddingScript> create(
    CustomBiddingScript request,
    core.String customBiddingAlgorithmId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customBiddingAlgorithms/' +
        core.Uri.encodeFull('$customBiddingAlgorithmId') +
        '/scripts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomBiddingScript.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a custom bidding script.
  ///
  /// Request parameters:
  ///
  /// [customBiddingAlgorithmId] - Required. The ID of the custom bidding
  /// algorithm owns the script.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [customBiddingScriptId] - Required. The ID of the custom bidding script to
  /// fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent custom
  /// bidding algorithm.
  ///
  /// [partnerId] - The ID of the partner that owns the parent custom bidding
  /// algorithm. Only this partner will have write access to this custom bidding
  /// script.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomBiddingScript].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomBiddingScript> get(
    core.String customBiddingAlgorithmId,
    core.String customBiddingScriptId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customBiddingAlgorithms/' +
        core.Uri.encodeFull('$customBiddingAlgorithmId') +
        '/scripts/' +
        core.Uri.encodeFull('$customBiddingScriptId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomBiddingScript.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists custom bidding scripts that belong to the given algorithm.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [customBiddingAlgorithmId] - Required. The ID of the custom bidding
  /// algorithm owns the script.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent custom
  /// bidding algorithm.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `createTime desc` (default) The default sorting order is descending. To
  /// specify ascending order for a field, the suffix "desc" should be removed.
  /// Example: `createTime`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCustomBiddingScripts` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that owns the parent custom bidding
  /// algorithm. Only this partner will have write access to this custom bidding
  /// script.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomBiddingScriptsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomBiddingScriptsResponse> list(
    core.String customBiddingAlgorithmId, {
    core.String? advertiserId,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customBiddingAlgorithms/' +
        core.Uri.encodeFull('$customBiddingAlgorithmId') +
        '/scripts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomBiddingScriptsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomListsResource {
  final commons.ApiRequester _requester;

  CustomListsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a custom list.
  ///
  /// Request parameters:
  ///
  /// [customListId] - Required. The ID of the custom list to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the DV360 advertiser that has access to the
  /// fetched custom lists.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomList> get(
    core.String customListId, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/customLists/' + core.Uri.encodeFull('$customListId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists custom lists.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the DV360 advertiser that has access to the
  /// fetched custom lists.
  ///
  /// [filter] - Allows filtering by custom list fields. Supported syntax: *
  /// Filter expressions for custom lists currently can only contain at most one
  /// restriction. * A restriction has the form of `{field} {operator} {value}`.
  /// * The operator must be `CONTAINS (:)`. * Supported fields: - `displayName`
  /// Examples: * All custom lists for which the display name contains "Google":
  /// `displayName : "Google"`. The length of this field should be no more than
  /// 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `customListId` (default) * `displayName` The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListCustomLists` method. If not specified, the first
  /// page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomListsResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/customLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomListsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FirstAndThirdPartyAudiencesResource {
  final commons.ApiRequester _requester;

  FirstAndThirdPartyAudiencesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a FirstAndThirdPartyAudience.
  ///
  /// Only supported for the following audience_type: *
  /// `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - Required. The ID of the advertiser under whom the
  /// FirstAndThirdPartyAudience will be created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirstAndThirdPartyAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirstAndThirdPartyAudience> create(
    FirstAndThirdPartyAudience request, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/firstAndThirdPartyAudiences';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FirstAndThirdPartyAudience.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the member list of a Customer Match audience.
  ///
  /// Only supported for the following audience_type: *
  /// `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [firstAndThirdPartyAudienceId] - Required. The ID of the Customer Match
  /// FirstAndThirdPartyAudience whose members will be edited.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EditCustomerMatchMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EditCustomerMatchMembersResponse> editCustomerMatchMembers(
    EditCustomerMatchMembersRequest request,
    core.String firstAndThirdPartyAudienceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/firstAndThirdPartyAudiences/' +
        core.Uri.encodeFull('$firstAndThirdPartyAudienceId') +
        ':editCustomerMatchMembers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EditCustomerMatchMembersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a first and third party audience.
  ///
  /// Request parameters:
  ///
  /// [firstAndThirdPartyAudienceId] - Required. The ID of the first and third
  /// party audience to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the fetched
  /// first and third party audience.
  ///
  /// [partnerId] - The ID of the partner that has access to the fetched first
  /// and third party audience.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirstAndThirdPartyAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirstAndThirdPartyAudience> get(
    core.String firstAndThirdPartyAudienceId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/firstAndThirdPartyAudiences/' +
        core.Uri.encodeFull('$firstAndThirdPartyAudienceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FirstAndThirdPartyAudience.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists first and third party audiences.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the fetched
  /// first and third party audiences.
  ///
  /// [filter] - Allows filtering by first and third party audience fields.
  /// Supported syntax: * Filter expressions for first and third party audiences
  /// currently can only contain at most one restriction. * A restriction has
  /// the form of `{field} {operator} {value}`. * The operator must be `CONTAINS
  /// (:)`. * Supported fields: - `displayName` Examples: * All first and third
  /// party audiences for which the display name contains "Google": `displayName
  /// : "Google"`. The length of this field should be no more than 500
  /// characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `firstAndThirdPartyAudienceId` (default) * `displayName` The default
  /// sorting order is ascending. To specify descending order for a field, a
  /// suffix "desc" should be added to the field name. Example: `displayName
  /// desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListFirstAndThirdPartyAudiences` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the fetched first
  /// and third party audiences.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFirstAndThirdPartyAudiencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFirstAndThirdPartyAudiencesResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/firstAndThirdPartyAudiences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFirstAndThirdPartyAudiencesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing FirstAndThirdPartyAudience.
  ///
  /// Only supported for the following audience_type: *
  /// `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [firstAndThirdPartyAudienceId] - Output only. The unique ID of the first
  /// and third party audience. Assigned by the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - Required. The ID of the owner advertiser of the updated
  /// FirstAndThirdPartyAudience.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  /// Updates are only supported for the following fields: * `displayName` *
  /// `description` * `membershipDurationDays`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirstAndThirdPartyAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirstAndThirdPartyAudience> patch(
    FirstAndThirdPartyAudience request,
    core.String firstAndThirdPartyAudienceId, {
    core.String? advertiserId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/firstAndThirdPartyAudiences/' +
        core.Uri.encodeFull('$firstAndThirdPartyAudienceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FirstAndThirdPartyAudience.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FloodlightGroupsResource {
  final commons.ApiRequester _requester;

  FloodlightGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a Floodlight group.
  ///
  /// Request parameters:
  ///
  /// [floodlightGroupId] - Required. The ID of the Floodlight group to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [partnerId] - Required. The partner context by which the Floodlight group
  /// is being accessed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightGroup> get(
    core.String floodlightGroupId, {
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/floodlightGroups/' + core.Uri.encodeFull('$floodlightGroupId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Floodlight group.
  ///
  /// Returns the updated Floodlight group if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [floodlightGroupId] - Output only. The unique ID of the Floodlight group.
  /// Assigned by the system.
  ///
  /// [partnerId] - Required. The partner context by which the Floodlight group
  /// is being accessed.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightGroup> patch(
    FloodlightGroup request,
    core.String floodlightGroupId, {
    core.String? partnerId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/floodlightGroups/' + commons.escapeVariable('$floodlightGroupId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GoogleAudiencesResource {
  final commons.ApiRequester _requester;

  GoogleAudiencesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a Google audience.
  ///
  /// Request parameters:
  ///
  /// [googleAudienceId] - Required. The ID of the Google audience to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the fetched
  /// Google audience.
  ///
  /// [partnerId] - The ID of the partner that has access to the fetched Google
  /// audience.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAudience> get(
    core.String googleAudienceId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/googleAudiences/' + core.Uri.encodeFull('$googleAudienceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAudience.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Google audiences.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the fetched
  /// Google audiences.
  ///
  /// [filter] - Allows filtering by Google audience fields. Supported syntax: *
  /// Filter expressions for Google audiences currently can only contain at most
  /// one restriction. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `CONTAINS (:)`. * Supported fields: -
  /// `displayName` Examples: * All Google audiences for which the display name
  /// contains "Google": `displayName : "Google"`. The length of this field
  /// should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `googleAudienceId` (default) * `displayName` The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListGoogleAudiences` method. If not specified, the first
  /// page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the fetched Google
  /// audiences.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoogleAudiencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoogleAudiencesResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/googleAudiences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoogleAudiencesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GuaranteedOrdersResource {
  final commons.ApiRequester _requester;

  GuaranteedOrdersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new guaranteed order.
  ///
  /// Returns the newly created guaranteed order if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that the request is being made
  /// within.
  ///
  /// [partnerId] - The ID of the partner that the request is being made within.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuaranteedOrder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuaranteedOrder> create(
    GuaranteedOrder request, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/guaranteedOrders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GuaranteedOrder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Edits read advertisers of a guaranteed order.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [guaranteedOrderId] - Required. The ID of the guaranteed order to edit.
  /// The ID is of the format `{exchange}-{legacy_guaranteed_order_id}`
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EditGuaranteedOrderReadAccessorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EditGuaranteedOrderReadAccessorsResponse>
      editGuaranteedOrderReadAccessors(
    EditGuaranteedOrderReadAccessorsRequest request,
    core.String guaranteedOrderId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/guaranteedOrders/' +
        core.Uri.encodeFull('$guaranteedOrderId') +
        ':editGuaranteedOrderReadAccessors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EditGuaranteedOrderReadAccessorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a guaranteed order.
  ///
  /// Request parameters:
  ///
  /// [guaranteedOrderId] - Required. The ID of the guaranteed order to fetch.
  /// The ID is of the format `{exchange}-{legacy_guaranteed_order_id}`
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the
  /// guaranteed order.
  ///
  /// [partnerId] - The ID of the partner that has access to the guaranteed
  /// order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuaranteedOrder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuaranteedOrder> get(
    core.String guaranteedOrderId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/guaranteedOrders/' + core.Uri.encodeFull('$guaranteedOrderId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GuaranteedOrder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists guaranteed orders that are accessible to the current user.
  ///
  /// The order is defined by the order_by parameter. If a filter by
  /// entity_status is not specified, guaranteed orders with entity status
  /// `ENTITY_STATUS_ARCHIVED` will not be included in the results.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the
  /// guaranteed order.
  ///
  /// [filter] - Allows filtering by guaranteed order properties. * Filter
  /// expressions are made up of one or more restrictions. * Restrictions can be
  /// combined by `AND` or `OR` logical operators. A sequence of restrictions
  /// implicitly uses `AND`. * A restriction has the form of `{field} {operator}
  /// {value}`. * The operator must be `EQUALS (=)`. * Supported fields: -
  /// `guaranteed_order_id` - `exchange` - `display_name` -
  /// `status.entityStatus` Examples: * All active guaranteed orders:
  /// `status.entityStatus="ENTITY_STATUS_ACTIVE"` * Guaranteed orders belonging
  /// to Google Ad Manager or Rubicon exchanges:
  /// `exchange="EXCHANGE_GOOGLE_AD_MANAGER" OR exchange="EXCHANGE_RUBICON"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) The default sorting order is ascending. To specify
  /// descending order for a field, a suffix "desc" should be added to the field
  /// name. For example, `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListGuaranteedOrders` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the guaranteed
  /// order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGuaranteedOrdersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGuaranteedOrdersResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/guaranteedOrders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGuaranteedOrdersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing guaranteed order.
  ///
  /// Returns the updated guaranteed order if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [guaranteedOrderId] - Output only. The unique identifier of the guaranteed
  /// order. The guaranteed order IDs have the format
  /// `{exchange}-{legacy_guaranteed_order_id}`.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that the request is being made
  /// within.
  ///
  /// [partnerId] - The ID of the partner that the request is being made within.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuaranteedOrder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuaranteedOrder> patch(
    GuaranteedOrder request,
    core.String guaranteedOrderId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/guaranteedOrders/' + core.Uri.encodeFull('$guaranteedOrderId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GuaranteedOrder.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InventorySourceGroupsResource {
  final commons.ApiRequester _requester;

  InventorySourceGroupsAssignedInventorySourcesResource
      get assignedInventorySources =>
          InventorySourceGroupsAssignedInventorySourcesResource(_requester);

  InventorySourceGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new inventory source group.
  ///
  /// Returns the newly created inventory source group if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that owns the inventory source
  /// group. The parent partner will not have access to this group.
  ///
  /// [partnerId] - The ID of the partner that owns the inventory source group.
  /// Only this partner will have write access to this group. Only advertisers
  /// to which this group is explicitly shared will have read access to this
  /// group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySourceGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySourceGroup> create(
    InventorySourceGroup request, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/inventorySourceGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InventorySourceGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an inventory source group.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Required. The ID of the inventory source group
  /// to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the inventory source
  /// group. The parent partner does not have access to this group.
  ///
  /// [partnerId] - The ID of the partner that owns the inventory source group.
  /// Only this partner has write access to this group.
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
    core.String inventorySourceGroupId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        core.Uri.encodeFull('$inventorySourceGroupId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an inventory source group.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Required. The ID of the inventory source group
  /// to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the inventory
  /// source group. If an inventory source group is partner-owned, only
  /// advertisers to which the group is explicitly shared can access the group.
  ///
  /// [partnerId] - The ID of the partner that has access to the inventory
  /// source group. A partner cannot access an advertiser-owned inventory source
  /// group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySourceGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySourceGroup> get(
    core.String inventorySourceGroupId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        core.Uri.encodeFull('$inventorySourceGroupId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InventorySourceGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists inventory source groups that are accessible to the current user.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the inventory
  /// source group. If an inventory source group is partner-owned, only
  /// advertisers to which the group is explicitly shared can access the group.
  ///
  /// [filter] - Allows filtering by inventory source group properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: -
  /// `inventorySourceGroupId` The length of this field should be no more than
  /// 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `inventorySourceGroupId` The default sorting
  /// order is ascending. To specify descending order for a field, a suffix
  /// "desc" should be added to the field name. For example, `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListInventorySources` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the inventory
  /// source group. A partner cannot access advertiser-owned inventory source
  /// groups.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInventorySourceGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInventorySourceGroupsResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/inventorySourceGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInventorySourceGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an inventory source group.
  ///
  /// Returns the updated inventory source group if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Output only. The unique ID of the inventory
  /// source group. Assigned by the system.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the inventory source
  /// group. The parent partner does not have access to this group.
  ///
  /// [partnerId] - The ID of the partner that owns the inventory source group.
  /// Only this partner has write access to this group.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySourceGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySourceGroup> patch(
    InventorySourceGroup request,
    core.String inventorySourceGroupId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        commons.escapeVariable('$inventorySourceGroupId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return InventorySourceGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InventorySourceGroupsAssignedInventorySourcesResource {
  final commons.ApiRequester _requester;

  InventorySourceGroupsAssignedInventorySourcesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Bulk edits multiple assignments between inventory sources and a single
  /// inventory source group.
  ///
  /// The operation will delete the assigned inventory sources provided in
  /// BulkEditAssignedInventorySourcesRequest.deleted_assigned_inventory_sources
  /// and then create the assigned inventory sources provided in
  /// BulkEditAssignedInventorySourcesRequest.created_assigned_inventory_sources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Required. The ID of the inventory source group
  /// to which the assignments are assigned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditAssignedInventorySourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditAssignedInventorySourcesResponse> bulkEdit(
    BulkEditAssignedInventorySourcesRequest request,
    core.String inventorySourceGroupId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        core.Uri.encodeFull('$inventorySourceGroupId') +
        '/assignedInventorySources:bulkEdit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditAssignedInventorySourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an assignment between an inventory source and an inventory source
  /// group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Required. The ID of the inventory source group
  /// to which the assignment will be assigned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent inventory
  /// source group. The parent partner will not have access to this assigned
  /// inventory source.
  ///
  /// [partnerId] - The ID of the partner that owns the parent inventory source
  /// group. Only this partner will have write access to this assigned inventory
  /// source.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedInventorySource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedInventorySource> create(
    AssignedInventorySource request,
    core.String inventorySourceGroupId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        core.Uri.encodeFull('$inventorySourceGroupId') +
        '/assignedInventorySources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AssignedInventorySource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the assignment between an inventory source and an inventory source
  /// group.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Required. The ID of the inventory source group
  /// to which this assignment is assigned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [assignedInventorySourceId] - Required. The ID of the assigned inventory
  /// source to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent inventory
  /// source group. The parent partner does not have access to this assigned
  /// inventory source.
  ///
  /// [partnerId] - The ID of the partner that owns the parent inventory source
  /// group. Only this partner has write access to this assigned inventory
  /// source.
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
    core.String inventorySourceGroupId,
    core.String assignedInventorySourceId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        core.Uri.encodeFull('$inventorySourceGroupId') +
        '/assignedInventorySources/' +
        core.Uri.encodeFull('$assignedInventorySourceId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists inventory sources assigned to an inventory source group.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceGroupId] - Required. The ID of the inventory source group
  /// to which these assignments are assigned.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the
  /// assignment. If the parent inventory source group is partner-owned, only
  /// advertisers to which the parent group is explicitly shared can access the
  /// assigned inventory source.
  ///
  /// [filter] - Allows filtering by assigned inventory source fields. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by the logical operator `OR`. * A restriction
  /// has the form of `{field} {operator} {value}`. * The operator must be
  /// `EQUALS (=)`. * Supported fields: - `assignedInventorySourceId` The length
  /// of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedInventorySourceId` (default) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix " desc"
  /// should be added to the field name. Example: `assignedInventorySourceId
  /// desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `100`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListAssignedInventorySources` method. If not specified,
  /// the first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the assignment. If
  /// the parent inventory source group is advertiser-owned, the assignment
  /// cannot be accessed via a partner.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssignedInventorySourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssignedInventorySourcesResponse> list(
    core.String inventorySourceGroupId, {
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySourceGroups/' +
        core.Uri.encodeFull('$inventorySourceGroupId') +
        '/assignedInventorySources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAssignedInventorySourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InventorySourcesResource {
  final commons.ApiRequester _requester;

  InventorySourcesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new inventory source.
  ///
  /// Returns the newly created inventory source if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that the request is being made
  /// within.
  ///
  /// [partnerId] - The ID of the partner that the request is being made within.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySource> create(
    InventorySource request, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/inventorySources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InventorySource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Edits read/write accessors of an inventory source.
  ///
  /// Returns the updated read_write_accessors for the inventory source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceId] - Required. The ID of inventory source to update.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySourceAccessors].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySourceAccessors> editInventorySourceReadWriteAccessors(
    EditInventorySourceReadWriteAccessorsRequest request,
    core.String inventorySourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/inventorySources/' +
        core.Uri.encodeFull('$inventorySourceId') +
        ':editInventorySourceReadWriteAccessors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InventorySourceAccessors.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an inventory source.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceId] - Required. The ID of the inventory source to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [partnerId] - Required. The ID of the DV360 partner to which the fetched
  /// inventory source is permissioned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySource> get(
    core.String inventorySourceId, {
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/inventorySources/' + core.Uri.encodeFull('$inventorySourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InventorySource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists inventory sources that are accessible to the current user.
  ///
  /// The order is defined by the order_by parameter. If a filter by
  /// entity_status is not specified, inventory sources with entity status
  /// `ENTITY_STATUS_ARCHIVED` will not be included in the results.
  ///
  /// Request parameters:
  ///
  /// [advertiserId] - The ID of the advertiser that has access to the inventory
  /// source.
  ///
  /// [filter] - Allows filtering by inventory source properties. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by `AND` or `OR` logical operators. A
  /// sequence of restrictions implicitly uses `AND`. * A restriction has the
  /// form of `{field} {operator} {value}`. * The operator must be `EQUALS (=)`.
  /// * Supported fields: - `status.entityStatus` - `commitment` -
  /// `deliveryMethod` - `rateDetails.rateType` - `exchange` Examples: * All
  /// active inventory sources: `status.entityStatus="ENTITY_STATUS_ACTIVE"` *
  /// Inventory sources belonging to Google Ad Manager or Rubicon exchanges:
  /// `exchange="EXCHANGE_GOOGLE_AD_MANAGER" OR exchange="EXCHANGE_RUBICON"` The
  /// length of this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) The default sorting order is ascending. To specify
  /// descending order for a field, a suffix "desc" should be added to the field
  /// name. For example, `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListInventorySources` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [partnerId] - The ID of the partner that has access to the inventory
  /// source.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInventorySourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInventorySourcesResponse> list({
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? partnerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (partnerId != null) 'partnerId': [partnerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/inventorySources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInventorySourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing inventory source.
  ///
  /// Returns the updated inventory source if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [inventorySourceId] - Output only. The unique ID of the inventory source.
  /// Assigned by the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that the request is being made
  /// within.
  ///
  /// [partnerId] - The ID of the partner that the request is being made within.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventorySource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventorySource> patch(
    InventorySource request,
    core.String inventorySourceId, {
    core.String? advertiserId,
    core.String? partnerId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (partnerId != null) 'partnerId': [partnerId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/inventorySources/' + core.Uri.encodeFull('$inventorySourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return InventorySource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Downloads media.
  ///
  /// Download is supported on the URI `/download/{resource_name=**}?alt=media.`
  /// **Note**: Download requests will not be successful without including
  /// `alt=media` query string.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded. See
  /// ReadRequest.resource_name.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [GoogleBytestreamMedia] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String resourceName, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'download/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return GoogleBytestreamMedia.fromJson(
          response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Uploads media.
  ///
  /// Upload is supported on the URI
  /// `/upload/media/{resource_name=**}?upload_type=media.` **Note**: Upload
  /// requests will not be successful without including `upload_type=media`
  /// query string.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded. See
  /// ReadRequest.resource_name.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [GoogleBytestreamMedia].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleBytestreamMedia> upload(
    GoogleBytestreamMedia request,
    core.String resourceName, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'media/' + core.Uri.encodeFull('$resourceName');
    } else {
      url_ = '/upload/media/' + core.Uri.encodeFull('$resourceName');
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return GoogleBytestreamMedia.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PartnersResource {
  final commons.ApiRequester _requester;

  PartnersChannelsResource get channels => PartnersChannelsResource(_requester);
  PartnersTargetingTypesResource get targetingTypes =>
      PartnersTargetingTypesResource(_requester);

  PartnersResource(commons.ApiRequester client) : _requester = client;

  /// Edits targeting options under a single partner.
  ///
  /// The operation will delete the assigned targeting options provided in
  /// BulkEditPartnerAssignedTargetingOptionsRequest.deleteRequests and then
  /// create the assigned targeting options provided in
  /// BulkEditPartnerAssignedTargetingOptionsRequest.createRequests .
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - Required. The ID of the partner.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditPartnerAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditPartnerAssignedTargetingOptionsResponse>
      editAssignedTargetingOptions(
    BulkEditPartnerAssignedTargetingOptionsRequest request,
    core.String partnerId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        ':editAssignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditPartnerAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a partner.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - Required. The ID of the partner to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Partner].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Partner> get(
    core.String partnerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' + core.Uri.encodeFull('$partnerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Partner.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists partners that are accessible to the current user.
  ///
  /// The order is defined by the order_by parameter.
  ///
  /// Request parameters:
  ///
  /// [filter] - Allows filtering by partner properties. Supported syntax: *
  /// Filter expressions are made up of one or more restrictions. * Restrictions
  /// can be combined by `AND` or `OR` logical operators. A sequence of
  /// restrictions implicitly uses `AND`. * A restriction has the form of
  /// `{field} {operator} {value}`. * The operator must be `EQUALS (=)`. *
  /// Supported fields: - `entityStatus` Examples: * All active partners:
  /// `entityStatus="ENTITY_STATUS_ACTIVE"` The length of this field should be
  /// no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` The default sorting order is ascending. To specify
  /// descending order for a field, a suffix "desc" should be added to the field
  /// name. For example, `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListPartners` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPartnersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPartnersResponse> list({
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

    const url_ = 'v2/partners';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPartnersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PartnersChannelsResource {
  final commons.ApiRequester _requester;

  PartnersChannelsSitesResource get sites =>
      PartnersChannelsSitesResource(_requester);

  PartnersChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new channel.
  ///
  /// Returns the newly created channel if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the created channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the created channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String partnerId, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/partners/' + core.Uri.encodeFull('$partnerId') + '/channels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a channel for a partner or advertiser.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the fetched channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [channelId] - Required. The ID of the channel to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the fetched channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(
    core.String partnerId,
    core.String channelId, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists channels for a partner or advertiser.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the channels.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the channels.
  ///
  /// [filter] - Allows filtering by channel fields. Supported syntax: * Filter
  /// expressions for channel currently can only contain at most one *
  /// restriction. * A restriction has the form of `{field} {operator} {value}`.
  /// * The operator must be `CONTAINS (:)`. * Supported fields: - `displayName`
  /// Examples: * All channels for which the display name contains "google":
  /// `displayName : "google"`. The length of this field should be no more than
  /// 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) * `channelId` The default sorting order is
  /// ascending. To specify descending order for a field, a suffix " desc"
  /// should be added to the field name. Example: `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListChannels` method. If not specified, the first page
  /// of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
    core.String partnerId, {
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/partners/' + core.Uri.encodeFull('$partnerId') + '/channels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChannelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a channel.
  ///
  /// Returns the updated channel if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the created channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [channelId] - Output only. The unique ID of the channel. Assigned by the
  /// system.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the created channel.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String partnerId,
    core.String channelId, {
    core.String? advertiserId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/channels/' +
        commons.escapeVariable('$channelId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PartnersChannelsSitesResource {
  final commons.ApiRequester _requester;

  PartnersChannelsSitesResource(commons.ApiRequester client)
      : _requester = client;

  /// Bulk edits sites under a single channel.
  ///
  /// The operation will delete the sites provided in
  /// BulkEditSitesRequest.deleted_sites and then create the sites provided in
  /// BulkEditSitesRequest.created_sites.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel to which the sites
  /// belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditSitesResponse> bulkEdit(
    BulkEditSitesRequest request,
    core.String partnerId,
    core.String channelId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        commons.escapeVariable('$partnerId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites:bulkEdit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a site in a channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel in which the site
  /// will be created.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> create(
    Site request,
    core.String partnerId,
    core.String channelId, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        commons.escapeVariable('$partnerId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a site from a channel.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel to which the site
  /// belongs.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [urlOrAppId] - Required. The URL or app ID of the site to delete.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
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
    core.String partnerId,
    core.String channelId,
    core.String urlOrAppId, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        commons.escapeVariable('$partnerId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites/' +
        core.Uri.encodeFull('$urlOrAppId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists sites in a channel.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [channelId] - Required. The ID of the parent channel to which the
  /// requested sites belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - The ID of the advertiser that owns the parent channel.
  ///
  /// [filter] - Allows filtering by site fields. Supported syntax: * Filter
  /// expressions for site currently can only contain at most one * restriction.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `CONTAINS (:)`. * Supported fields: - `urlOrAppId`
  /// Examples: * All sites for which the URL or app ID contains "google":
  /// `urlOrAppId : "google"`
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `urlOrAppId` (default) The default sorting order is ascending. To specify
  /// descending order for a field, a suffix " desc" should be added to the
  /// field name. Example: `urlOrAppId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `10000`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListSites` method. If not specified, the first page of
  /// results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSitesResponse> list(
    core.String partnerId,
    core.String channelId, {
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Replaces all of the sites under a single channel.
  ///
  /// The operation will replace the sites under a channel with the sites
  /// provided in ReplaceSitesRequest.new_sites.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - The ID of the partner that owns the parent channel.
  ///
  /// [channelId] - Required. The ID of the parent channel whose sites will be
  /// replaced.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReplaceSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReplaceSitesResponse> replace(
    ReplaceSitesRequest request,
    core.String partnerId,
    core.String channelId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        commons.escapeVariable('$partnerId') +
        '/channels/' +
        core.Uri.encodeFull('$channelId') +
        '/sites:replace';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReplaceSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PartnersTargetingTypesResource {
  final commons.ApiRequester _requester;

  PartnersTargetingTypesAssignedTargetingOptionsResource
      get assignedTargetingOptions =>
          PartnersTargetingTypesAssignedTargetingOptionsResource(_requester);

  PartnersTargetingTypesResource(commons.ApiRequester client)
      : _requester = client;
}

class PartnersTargetingTypesAssignedTargetingOptionsResource {
  final commons.ApiRequester _requester;

  PartnersTargetingTypesAssignedTargetingOptionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Assigns a targeting option to a partner.
  ///
  /// Returns the assigned targeting option if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - Required. The ID of the partner.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_CHANNEL`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> create(
    AssignedTargetingOption request,
    core.String partnerId,
    core.String targetingType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an assigned targeting option from a partner.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - Required. The ID of the partner.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_CHANNEL`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. The ID of the assigned targeting
  /// option to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String partnerId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single targeting option assigned to a partner.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - Required. The ID of the partner.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of this assigned targeting
  /// option. Supported targeting types: * `TARGETING_TYPE_CHANNEL`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [assignedTargetingOptionId] - Required. An identifier unique to the
  /// targeting type in this partner that identifies the assigned targeting
  /// option being requested.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssignedTargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssignedTargetingOption> get(
    core.String partnerId,
    core.String targetingType,
    core.String assignedTargetingOptionId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions/' +
        core.Uri.encodeFull('$assignedTargetingOptionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssignedTargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the targeting options assigned to a partner.
  ///
  /// Request parameters:
  ///
  /// [partnerId] - Required. The ID of the partner.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [targetingType] - Required. Identifies the type of assigned targeting
  /// options to list. Supported targeting types: * `TARGETING_TYPE_CHANNEL`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [filter] - Allows filtering by assigned targeting option properties.
  /// Supported syntax: * Filter expressions are made up of one or more
  /// restrictions. * Restrictions can be combined by the logical operator `OR`.
  /// * A restriction has the form of `{field} {operator} {value}`. * The
  /// operator must be `EQUALS (=)`. * Supported fields: -
  /// `assignedTargetingOptionId` Examples: * AssignedTargetingOption with ID
  /// 123456 `assignedTargetingOptionId="123456"` The length of this field
  /// should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `assignedTargetingOptionId` (default) The default sorting order is
  /// ascending. To specify descending order for a field, a suffix "desc" should
  /// be added to the field name. Example: `assignedTargetingOptionId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListPartnerAssignedTargetingOptions` method. If not
  /// specified, the first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPartnerAssignedTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPartnerAssignedTargetingOptionsResponse> list(
    core.String partnerId,
    core.String targetingType, {
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

    final url_ = 'v2/partners/' +
        core.Uri.encodeFull('$partnerId') +
        '/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/assignedTargetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPartnerAssignedTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SdfdownloadtasksResource {
  final commons.ApiRequester _requester;

  SdfdownloadtasksOperationsResource get operations =>
      SdfdownloadtasksOperationsResource(_requester);

  SdfdownloadtasksResource(commons.ApiRequester client) : _requester = client;

  /// Creates an SDF Download Task.
  ///
  /// Returns an Operation. An SDF Download Task is a long-running, asynchronous
  /// operation. The metadata type of this operation is SdfDownloadTaskMetadata.
  /// If the request is successful, the response type of the operation is
  /// SdfDownloadTask. The response will not include the download files, which
  /// must be retrieved with media.download. The state of operation can be
  /// retrieved with sdfdownloadtask.operations.get. Any errors can be found in
  /// the error.message. Note that error.details is expected to be empty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    CreateSdfDownloadTaskRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/sdfdownloadtasks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SdfdownloadtasksOperationsResource {
  final commons.ApiRequester _requester;

  SdfdownloadtasksOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of an asynchronous SDF download task operation.
  ///
  /// Clients should poll this method at intervals of 30 seconds.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^sdfdownloadtasks/operations/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TargetingTypesResource {
  final commons.ApiRequester _requester;

  TargetingTypesTargetingOptionsResource get targetingOptions =>
      TargetingTypesTargetingOptionsResource(_requester);

  TargetingTypesResource(commons.ApiRequester client) : _requester = client;
}

class TargetingTypesTargetingOptionsResource {
  final commons.ApiRequester _requester;

  TargetingTypesTargetingOptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a single targeting option.
  ///
  /// Request parameters:
  ///
  /// [targetingType] - Required. The type of targeting option to retrieve.
  /// Accepted values are: * `TARGETING_TYPE_APP_CATEGORY` *
  /// `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_GENDER` *
  /// `TARGETING_TYPE_VIDEO_PLAYER_SIZE` *
  /// `TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_PARENTAL_STATUS`
  /// * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` *
  /// `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `TARGETING_TYPE_DEVICE_TYPE`
  /// * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_HOUSEHOLD_INCOME` *
  /// `TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_CARRIER_AND_ISP` *
  /// `TARGETING_TYPE_OPERATING_SYSTEM` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_CATEGORY` *
  /// `TARGETING_TYPE_VIEWABILITY` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` *
  /// `TARGETING_TYPE_LANGUAGE` * `TARGETING_TYPE_GEO_REGION` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_EXCHANGE`
  /// * `TARGETING_TYPE_SUB_EXCHANGE` * `TARGETING_TYPE_NATIVE_CONTENT_POSITION`
  /// * `TARGETING_TYPE_OMID`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [targetingOptionId] - Required. The ID of the of targeting option to
  /// retrieve.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - Required. The Advertiser this request is being made in
  /// the context of.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetingOption].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetingOption> get(
    core.String targetingType,
    core.String targetingOptionId, {
    core.String? advertiserId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/targetingOptions/' +
        core.Uri.encodeFull('$targetingOptionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TargetingOption.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists targeting options of a given type.
  ///
  /// Request parameters:
  ///
  /// [targetingType] - Required. The type of targeting option to be listed.
  /// Accepted values are: * `TARGETING_TYPE_APP_CATEGORY` *
  /// `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_GENDER` *
  /// `TARGETING_TYPE_VIDEO_PLAYER_SIZE` *
  /// `TARGETING_TYPE_USER_REWARDED_CONTENT` * `TARGETING_TYPE_PARENTAL_STATUS`
  /// * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` *
  /// `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION` * `TARGETING_TYPE_DEVICE_TYPE`
  /// * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_HOUSEHOLD_INCOME` *
  /// `TARGETING_TYPE_ON_SCREEN_POSITION` * `TARGETING_TYPE_CARRIER_AND_ISP` *
  /// `TARGETING_TYPE_OPERATING_SYSTEM` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_CATEGORY` *
  /// `TARGETING_TYPE_VIEWABILITY` * `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` *
  /// `TARGETING_TYPE_LANGUAGE` * `TARGETING_TYPE_GEO_REGION` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_EXCHANGE`
  /// * `TARGETING_TYPE_SUB_EXCHANGE` * `TARGETING_TYPE_NATIVE_CONTENT_POSITION`
  /// * `TARGETING_TYPE_OMID`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [advertiserId] - Required. The Advertiser this request is being made in
  /// the context of.
  ///
  /// [filter] - Allows filtering by targeting option properties. Supported
  /// syntax: * Filter expressions are made up of one or more restrictions. *
  /// Restrictions can be combined by `OR` logical operators. * A restriction
  /// has the form of `{field} {operator} {value}`. * The operator must be "="
  /// (equal sign). * Supported fields: - `carrierAndIspDetails.type` -
  /// `geoRegionDetails.geoRegionType` - `targetingOptionId` Examples: * All
  /// `GEO REGION` targeting options that belong to sub type
  /// `GEO_REGION_TYPE_COUNTRY` or `GEO_REGION_TYPE_STATE`:
  /// `geoRegionDetails.geoRegionType="GEO_REGION_TYPE_COUNTRY" OR
  /// geoRegionDetails.geoRegionType="GEO_REGION_TYPE_STATE"` * All `CARRIER AND
  /// ISP` targeting options that belong to sub type
  /// `CARRIER_AND_ISP_TYPE_CARRIER`:
  /// `carrierAndIspDetails.type="CARRIER_AND_ISP_TYPE_CARRIER"`. The length of
  /// this field should be no more than 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `targetingOptionId` (default) The default sorting order is ascending. To
  /// specify descending order for a field, a suffix "desc" should be added to
  /// the field name. Example: `targetingOptionId desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`. Returns error code `INVALID_ARGUMENT`
  /// if an invalid value is specified.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListTargetingOptions` method. If not specified, the
  /// first page of results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTargetingOptionsResponse> list(
    core.String targetingType, {
    core.String? advertiserId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/targetingOptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for targeting options of a given type based on the given search
  /// terms.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [targetingType] - Required. The type of targeting options to retrieve.
  /// Accepted values are: * `TARGETING_TYPE_GEO_REGION` * `TARGETING_TYPE_POI`
  /// * `TARGETING_TYPE_BUSINESS_CHAIN`
  /// Value must have pattern `^\[^/\]+$`.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchTargetingOptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchTargetingOptionsResponse> search(
    SearchTargetingOptionsRequest request,
    core.String targetingType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/targetingTypes/' +
        core.Uri.encodeFull('$targetingType') +
        '/targetingOptions:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchTargetingOptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Bulk edits user roles for a user.
  ///
  /// The operation will delete the assigned user roles provided in
  /// BulkEditAssignedUserRolesRequest.deletedAssignedUserRoles and then assign
  /// the user roles provided in
  /// BulkEditAssignedUserRolesRequest.createdAssignedUserRoles.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - Required. The ID of the user to which the assigned user roles
  /// belong.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkEditAssignedUserRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkEditAssignedUserRolesResponse> bulkEditAssignedUserRoles(
    BulkEditAssignedUserRolesRequest request,
    core.String userId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/users/' +
        core.Uri.encodeFull('$userId') +
        ':bulkEditAssignedUserRoles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkEditAssignedUserRolesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new user.
  ///
  /// Returns the newly created user if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> create(
    User request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user.
  ///
  /// Request parameters:
  ///
  /// [userId] - Required. The ID of the user to delete.
  /// Value must have pattern `^\[^/\]+$`.
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
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/users/' + core.Uri.encodeFull('$userId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a user.
  ///
  /// Request parameters:
  ///
  /// [userId] - Required. The ID of the user to fetch.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/users/' + core.Uri.encodeFull('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists users that are accessible to the current user.
  ///
  /// If two users have user roles on the same partner or advertiser, they can
  /// access each other.
  ///
  /// Request parameters:
  ///
  /// [filter] - Allows filtering by user properties. Supported syntax: * Filter
  /// expressions are made up of one or more restrictions. * Restrictions can be
  /// combined by the logical operator `AND`. * A restriction has the form of
  /// `{field} {operator} {value}`. * The operator must be `CONTAINS (:)` or
  /// `EQUALS (=)`. * The operator must be `CONTAINS (:)` for the following
  /// fields: - `displayName` - `email` * The operator must be `EQUALS (=)` for
  /// the following fields: - `assignedUserRole.userRole` -
  /// `assignedUserRole.partnerId` - `assignedUserRole.advertiserId` -
  /// `assignedUserRole.entityType`: A synthetic field of AssignedUserRole used
  /// for filtering. Identifies the type of entity to which the user role is
  /// assigned. Valid values are `Partner` and `Advertiser`. -
  /// `assignedUserRole.parentPartnerId`: A synthetic field of AssignedUserRole
  /// used for filtering. Identifies the parent partner of the entity to which
  /// the user role is assigned." Examples: * The user with displayName
  /// containing `foo`: `displayName:"foo"` * The user with email containing
  /// `bar`: `email:"bar"` * All users with standard user roles:
  /// `assignedUserRole.userRole="STANDARD"` * All users with user roles for
  /// partner 123: `assignedUserRole.partnerId="123"` * All users with user
  /// roles for advertiser 123: `assignedUserRole.advertiserId="123"` * All
  /// users with partner level user roles: `entityType="PARTNER"` * All users
  /// with user roles for partner 123 and advertisers under partner 123:
  /// `parentPartnerId="123"` The length of this field should be no more than
  /// 500 characters.
  ///
  /// [orderBy] - Field by which to sort the list. Acceptable values are: *
  /// `displayName` (default) The default sorting order is ascending. To specify
  /// descending order for a field, a suffix "desc" should be added to the field
  /// name. For example, `displayName desc`.
  ///
  /// [pageSize] - Requested page size. Must be between `1` and `200`. If
  /// unspecified will default to `100`.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of next_page_token returned from the
  /// previous call to `ListUsers` method. If not specified, the first page of
  /// results will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsersResponse> list({
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

    const url_ = 'v2/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing user.
  ///
  /// Returns the updated user if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - Output only. The unique ID of the user. Assigned by the system.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [updateMask] - Required. The mask to control which fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> patch(
    User request,
    core.String userId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/users/' + core.Uri.encodeFull('$userId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for ManualTriggerService.ActivateManualTrigger.
typedef ActivateManualTriggerRequest = $Empty;

/// Configuration for custom Active View video viewability metrics.
typedef ActiveViewVideoViewabilityMetricConfig
    = $ActiveViewVideoViewabilityMetricConfig;

/// Details of Adloox settings.
typedef Adloox = $Adloox;

/// A single advertiser in Display & Video 360 (DV360).
class Advertiser {
  /// Ad server related settings of the advertiser.
  ///
  /// Required. Immutable.
  AdvertiserAdServerConfig? adServerConfig;

  /// The unique ID of the advertiser.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? advertiserId;

  /// Billing related settings of the advertiser.
  AdvertiserBillingConfig? billingConfig;

  /// Creative related settings of the advertiser.
  ///
  /// Required.
  AdvertiserCreativeConfig? creativeConfig;

  /// Settings that control how advertiser data may be accessed.
  AdvertiserDataAccessConfig? dataAccessConfig;

  /// The display name of the advertiser.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Controls whether or not insertion orders and line items of the advertiser
  /// can spend their budgets and bid on inventory.
  ///
  /// * Accepted values are `ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_PAUSED` and
  /// `ENTITY_STATUS_SCHEDULED_FOR_DELETION`. * If set to
  /// `ENTITY_STATUS_SCHEDULED_FOR_DELETION`, the advertiser will be deleted 30
  /// days from when it was first scheduled for deletion.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// General settings of the advertiser.
  ///
  /// Required.
  AdvertiserGeneralConfig? generalConfig;

  /// Integration details of the advertiser.
  ///
  /// Only integrationCode is currently applicable to advertiser. Other fields
  /// of IntegrationDetails are not supported and will be ignored if provided.
  IntegrationDetails? integrationDetails;

  /// The resource name of the advertiser.
  ///
  /// Output only.
  core.String? name;

  /// The unique ID of the partner that the advertiser belongs to.
  ///
  /// Required. Immutable.
  core.String? partnerId;

  /// Whether integration with Mediaocean (Prisma) is enabled.
  ///
  /// By enabling this, you agree to the following: On behalf of my company, I
  /// authorize Mediaocean (Prisma) to send budget segment plans to Google, and
  /// I authorize Google to send corresponding reporting and invoices from DV360
  /// to Mediaocean for the purposes of budget planning, billing, and
  /// reconciliation for this advertiser.
  core.bool? prismaEnabled;

  /// Targeting settings related to ad serving of the advertiser.
  AdvertiserTargetingConfig? servingConfig;

  /// The timestamp when the advertiser was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  Advertiser({
    this.adServerConfig,
    this.advertiserId,
    this.billingConfig,
    this.creativeConfig,
    this.dataAccessConfig,
    this.displayName,
    this.entityStatus,
    this.generalConfig,
    this.integrationDetails,
    this.name,
    this.partnerId,
    this.prismaEnabled,
    this.servingConfig,
    this.updateTime,
  });

  Advertiser.fromJson(core.Map json_)
      : this(
          adServerConfig: json_.containsKey('adServerConfig')
              ? AdvertiserAdServerConfig.fromJson(json_['adServerConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          billingConfig: json_.containsKey('billingConfig')
              ? AdvertiserBillingConfig.fromJson(
                  json_['billingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          creativeConfig: json_.containsKey('creativeConfig')
              ? AdvertiserCreativeConfig.fromJson(json_['creativeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataAccessConfig: json_.containsKey('dataAccessConfig')
              ? AdvertiserDataAccessConfig.fromJson(json_['dataAccessConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          generalConfig: json_.containsKey('generalConfig')
              ? AdvertiserGeneralConfig.fromJson(
                  json_['generalConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          integrationDetails: json_.containsKey('integrationDetails')
              ? IntegrationDetails.fromJson(json_['integrationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          prismaEnabled: json_.containsKey('prismaEnabled')
              ? json_['prismaEnabled'] as core.bool
              : null,
          servingConfig: json_.containsKey('servingConfig')
              ? AdvertiserTargetingConfig.fromJson(
                  json_['servingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adServerConfig != null) 'adServerConfig': adServerConfig!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (billingConfig != null) 'billingConfig': billingConfig!,
        if (creativeConfig != null) 'creativeConfig': creativeConfig!,
        if (dataAccessConfig != null) 'dataAccessConfig': dataAccessConfig!,
        if (displayName != null) 'displayName': displayName!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (generalConfig != null) 'generalConfig': generalConfig!,
        if (integrationDetails != null)
          'integrationDetails': integrationDetails!,
        if (name != null) 'name': name!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (prismaEnabled != null) 'prismaEnabled': prismaEnabled!,
        if (servingConfig != null) 'servingConfig': servingConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Ad server related settings of an advertiser.
class AdvertiserAdServerConfig {
  /// The configuration for advertisers that use both Campaign Manager 360
  /// (CM360) and third-party ad servers.
  CmHybridConfig? cmHybridConfig;

  /// The configuration for advertisers that use third-party ad servers only.
  ThirdPartyOnlyConfig? thirdPartyOnlyConfig;

  AdvertiserAdServerConfig({
    this.cmHybridConfig,
    this.thirdPartyOnlyConfig,
  });

  AdvertiserAdServerConfig.fromJson(core.Map json_)
      : this(
          cmHybridConfig: json_.containsKey('cmHybridConfig')
              ? CmHybridConfig.fromJson(json_['cmHybridConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          thirdPartyOnlyConfig: json_.containsKey('thirdPartyOnlyConfig')
              ? ThirdPartyOnlyConfig.fromJson(json_['thirdPartyOnlyConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cmHybridConfig != null) 'cmHybridConfig': cmHybridConfig!,
        if (thirdPartyOnlyConfig != null)
          'thirdPartyOnlyConfig': thirdPartyOnlyConfig!,
      };
}

/// Billing related settings of an advertiser.
class AdvertiserBillingConfig {
  /// The ID of a billing profile assigned to the advertiser.
  core.String? billingProfileId;

  AdvertiserBillingConfig({
    this.billingProfileId,
  });

  AdvertiserBillingConfig.fromJson(core.Map json_)
      : this(
          billingProfileId: json_.containsKey('billingProfileId')
              ? json_['billingProfileId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingProfileId != null) 'billingProfileId': billingProfileId!,
      };
}

/// Creatives related settings of an advertiser.
typedef AdvertiserCreativeConfig = $AdvertiserCreativeConfig;

/// Settings that control how advertiser related data may be accessed.
class AdvertiserDataAccessConfig {
  /// Structured Data Files (SDF) settings for the advertiser.
  ///
  /// If not specified, the SDF settings of the parent partner are used.
  AdvertiserSdfConfig? sdfConfig;

  AdvertiserDataAccessConfig({
    this.sdfConfig,
  });

  AdvertiserDataAccessConfig.fromJson(core.Map json_)
      : this(
          sdfConfig: json_.containsKey('sdfConfig')
              ? AdvertiserSdfConfig.fromJson(
                  json_['sdfConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sdfConfig != null) 'sdfConfig': sdfConfig!,
      };
}

/// General settings of an advertiser.
typedef AdvertiserGeneralConfig = $AdvertiserGeneralConfig;

/// Structured Data Files (SDF) settings of an advertiser.
class AdvertiserSdfConfig {
  /// Whether or not this advertiser overrides the SDF configuration of its
  /// parent partner.
  ///
  /// By default, an advertiser inherits the SDF configuration from the parent
  /// partner. To override the partner configuration, set this field to `true`
  /// and provide the new configuration in sdfConfig.
  core.bool? overridePartnerSdfConfig;

  /// The SDF configuration for the advertiser.
  ///
  /// * Required when overridePartnerSdfConfig is `true`. * Output only when
  /// overridePartnerSdfConfig is `false`.
  SdfConfig? sdfConfig;

  AdvertiserSdfConfig({
    this.overridePartnerSdfConfig,
    this.sdfConfig,
  });

  AdvertiserSdfConfig.fromJson(core.Map json_)
      : this(
          overridePartnerSdfConfig:
              json_.containsKey('overridePartnerSdfConfig')
                  ? json_['overridePartnerSdfConfig'] as core.bool
                  : null,
          sdfConfig: json_.containsKey('sdfConfig')
              ? SdfConfig.fromJson(
                  json_['sdfConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (overridePartnerSdfConfig != null)
          'overridePartnerSdfConfig': overridePartnerSdfConfig!,
        if (sdfConfig != null) 'sdfConfig': sdfConfig!,
      };
}

/// Targeting settings related to ad serving of an advertiser.
typedef AdvertiserTargetingConfig = $AdvertiserTargetingConfig;

/// Represents a targetable age range.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_AGE_RANGE`.
class AgeRangeAssignedTargetingOptionDetails {
  /// The age range of an audience.
  ///
  /// We only support targeting a continuous age range of an audience. Thus, the
  /// age range represented in this field can be 1) targeted solely, or, 2) part
  /// of a larger continuous age range. The reach of a continuous age range
  /// targeting can be expanded by also targeting an audience of an unknown age.
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Default value when age range is not specified
  /// in this version. This enum is a placeholder for default value and does not
  /// represent a real age range option.
  /// - "AGE_RANGE_18_24" : The age range of the audience is 18 to 24.
  /// - "AGE_RANGE_25_34" : The age range of the audience is 25 to 34.
  /// - "AGE_RANGE_35_44" : The age range of the audience is 35 to 44.
  /// - "AGE_RANGE_45_54" : The age range of the audience is 45 to 54.
  /// - "AGE_RANGE_55_64" : The age range of the audience is 55 to 64.
  /// - "AGE_RANGE_65_PLUS" : The age range of the audience is 65 and up.
  /// - "AGE_RANGE_UNKNOWN" : The age range of the audience is unknown.
  /// - "AGE_RANGE_18_20" : The age range of the audience is 18 to 20, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_21_24" : The age range of the audience is 21 to 24, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_25_29" : The age range of the audience is 25 to 29, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_30_34" : The age range of the audience is 30 to 34, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_35_39" : The age range of the audience is 35 to 39, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_40_44" : The age range of the audience is 40 to 44, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_45_49" : The age range of the audience is 45 to 49, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_50_54" : The age range of the audience is 50 to 54, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_55_59" : The age range of the audience is 55 to 59, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_60_64" : The age range of the audience is 60 to 64, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  core.String? ageRange;

  AgeRangeAssignedTargetingOptionDetails({
    this.ageRange,
  });

  AgeRangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          ageRange: json_.containsKey('ageRange')
              ? json_['ageRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRange != null) 'ageRange': ageRange!,
      };
}

/// Represents a targetable age range.
///
/// This will be populated in the age_range_details field when targeting_type is
/// `TARGETING_TYPE_AGE_RANGE`.
class AgeRangeTargetingOptionDetails {
  /// The age range of an audience.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Default value when age range is not specified
  /// in this version. This enum is a placeholder for default value and does not
  /// represent a real age range option.
  /// - "AGE_RANGE_18_24" : The age range of the audience is 18 to 24.
  /// - "AGE_RANGE_25_34" : The age range of the audience is 25 to 34.
  /// - "AGE_RANGE_35_44" : The age range of the audience is 35 to 44.
  /// - "AGE_RANGE_45_54" : The age range of the audience is 45 to 54.
  /// - "AGE_RANGE_55_64" : The age range of the audience is 55 to 64.
  /// - "AGE_RANGE_65_PLUS" : The age range of the audience is 65 and up.
  /// - "AGE_RANGE_UNKNOWN" : The age range of the audience is unknown.
  /// - "AGE_RANGE_18_20" : The age range of the audience is 18 to 20, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_21_24" : The age range of the audience is 21 to 24, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_25_29" : The age range of the audience is 25 to 29, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_30_34" : The age range of the audience is 30 to 34, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_35_39" : The age range of the audience is 35 to 39, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_40_44" : The age range of the audience is 40 to 44, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_45_49" : The age range of the audience is 45 to 49, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_50_54" : The age range of the audience is 50 to 54, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_55_59" : The age range of the audience is 55 to 59, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  /// - "AGE_RANGE_60_64" : The age range of the audience is 60 to 64, only
  /// supported for the AdGroup of YouTube Programmatic Reservation line item.
  core.String? ageRange;

  AgeRangeTargetingOptionDetails({
    this.ageRange,
  });

  AgeRangeTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          ageRange: json_.containsKey('ageRange')
              ? json_['ageRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRange != null) 'ageRange': ageRange!,
      };
}

/// Details for assigned app targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_APP`.
typedef AppAssignedTargetingOptionDetails = $AppAssignedTargetingOptionDetails;

/// Details for assigned app category targeting option.
///
/// This will be populated in the app_category_details field of an
/// AssignedTargetingOption when targeting_type is
/// `TARGETING_TYPE_APP_CATEGORY`.
typedef AppCategoryAssignedTargetingOptionDetails
    = $AppCategoryAssignedTargetingOptionDetails;

/// Represents a targetable collection of apps.
///
/// A collection lets you target dynamic groups of related apps that are
/// maintained by the platform, for example `All Apps/Google Play/Games`. This
/// will be populated in the app_category_details field when targeting_type is
/// `TARGETING_TYPE_APP_CATEGORY`.
typedef AppCategoryTargetingOptionDetails = $AppCategoryTargetingOptionDetails;

/// A single asset.
typedef Asset = $Asset;

/// Asset association for the creative.
class AssetAssociation {
  /// The associated asset.
  Asset? asset;

  /// The role of this asset for the creative.
  /// Possible string values are:
  /// - "ASSET_ROLE_UNSPECIFIED" : Asset role is not specified or is unknown in
  /// this version.
  /// - "ASSET_ROLE_MAIN" : The asset is the main asset of the creative.
  /// - "ASSET_ROLE_BACKUP" : The asset is a backup asset of the creative.
  /// - "ASSET_ROLE_POLITE_LOAD" : The asset is a polite load asset of the
  /// creative.
  /// - "ASSET_ROLE_HEADLINE" : Headline of a native creative. The content must
  /// be UTF-8 encoded with a length of no more than 25 characters. This role is
  /// only supported in following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_LONG_HEADLINE" : Long headline of a native creative. The
  /// content must be UTF-8 encoded with a length of no more than 50 characters.
  /// This role is only supported in following creative_type: *
  /// `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_BODY" : Body text of a native creative. The content must be
  /// UTF-8 encoded with a length of no more than 90 characters. This role is
  /// only supported in following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_LONG_BODY" : Long body text of a native creative. The
  /// content must be UTF-8 encoded with a length of no more than 150
  /// characters. This role is only supported in following creative_type: *
  /// `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_CAPTION_URL" : A short, friendly version of the landing page
  /// URL to show in the creative. This URL gives people an idea of where
  /// they'll arrive after they click on the creative. The content must be UTF-8
  /// encoded with a length of no more than 30 characters. For example, if the
  /// landing page URL is 'http://www.example.com/page', the caption URL can be
  /// 'example.com'. The protocol (http://) is optional, but the URL can't
  /// contain spaces or special characters. This role is only supported in
  /// following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_CALL_TO_ACTION" : The text to use on the call-to-action
  /// button of a native creative. The content must be UTF-8 encoded with a
  /// length of no more than 15 characters. This role is only supported in
  /// following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_ADVERTISER_NAME" : The text that identifies the advertiser
  /// or brand name. The content must be UTF-8 encoded with a length of no more
  /// than 25 characters. This role is only supported in following
  /// creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  /// - "ASSET_ROLE_PRICE" : The purchase price of your app in the Google play
  /// store or iOS app store (for example, $5.99). Note that this value is not
  /// automatically synced with the actual value listed in the store. It will
  /// always be the one provided when save the creative. The content must be
  /// UTF-8 encoded with a length of no more than 15 characters. This role is
  /// only supported in following creative_type: *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE`
  /// - "ASSET_ROLE_ANDROID_APP_ID" : The ID of an Android app in the Google
  /// play store. You can find this ID in the App’s Google Play Store URL after
  /// ‘id’. For example, in
  /// https://play.google.com/store/apps/details?id=com.company.appname the
  /// identifier is com.company.appname. This role is only supported in
  /// following creative_type: * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE`
  /// - "ASSET_ROLE_IOS_APP_ID" : The ID of an iOS app in the Apple app store.
  /// This ID number can be found in the Apple App Store URL as the string of
  /// numbers directly after "id". For example, in
  /// https://apps.apple.com/us/app/gmail-email-by-google/id422689480 the ID is
  /// 422689480. This role is only supported in following creative_type: *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE`
  /// - "ASSET_ROLE_RATING" : The rating of an app in the Google play store or
  /// iOS app store. Note that this value is not automatically synced with the
  /// actual rating in the store. It will always be the one provided when save
  /// the creative. This role is only supported in following creative_type: *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE`
  /// - "ASSET_ROLE_ICON" : The icon of a creative. This role is only supported
  /// and required in following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE`
  /// - "ASSET_ROLE_COVER_IMAGE" : The cover image of a native video creative.
  /// This role is only supported and required in following creative_type: *
  /// `CREATIVE_TYPE_VIDEO`
  core.String? role;

  AssetAssociation({
    this.asset,
    this.role,
  });

  AssetAssociation.fromJson(core.Map json_)
      : this(
          asset: json_.containsKey('asset')
              ? Asset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>)
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (role != null) 'role': role!,
      };
}

/// An assignment between a targetable inventory source and an inventory source
/// group.
typedef AssignedInventorySource = $AssignedInventorySource;

/// An assignment between a location list and a relevant targeting option.
///
/// Currently, geo region targeting options are the only supported option for
/// assignment.
typedef AssignedLocation = $AssignedLocation;

/// A single assigned targeting option, which defines the state of a targeting
/// option for an entity with targeting settings.
class AssignedTargetingOption {
  /// Age range details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_AGE_RANGE`.
  AgeRangeAssignedTargetingOptionDetails? ageRangeDetails;

  /// App category details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_APP_CATEGORY`.
  AppCategoryAssignedTargetingOptionDetails? appCategoryDetails;

  /// App details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_APP`.
  AppAssignedTargetingOptionDetails? appDetails;

  /// The unique ID of the assigned targeting option.
  ///
  /// The ID is only unique within a given resource and targeting type. It may
  /// be reused in other contexts.
  ///
  /// Output only.
  core.String? assignedTargetingOptionId;

  /// An alias for the assigned targeting option id field.
  ///
  /// This field is only supported for targeting types with enum targeting
  /// enabled. This value can be used in place of the assignedTargetingOptionId
  /// required for GET and DELETE targeting methods. An alias for the
  /// assignedTargetingOptionId. This value can be used in place of
  /// `assignedTargetingOptionId` when retrieving or deleting existing
  /// targeting. This field will only be supported for all assigned targeting
  /// options of the following targeting types: * `TARGETING_TYPE_AGE_RANGE` *
  /// `TARGETING_TYPE_DEVICE_TYPE` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` *
  /// `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_EXCHANGE` *
  /// `TARGETING_TYPE_GENDER` * `TARGETING_TYPE_HOUSEHOLD_INCOME` *
  /// `TARGETING_TYPE_NATIVE_CONTENT_POSITION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_PARENTAL_STATUS` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` *
  /// `TARGETING_TYPE_VIDEO_PLAYER_SIZE` * `TARGETING_TYPE_VIEWABILITY` This
  /// field is also supported for line item assigned targeting options of the
  /// following targeting types: * `TARGETING_TYPE_CONTENT_INSTREAM_POSITION` *
  /// `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`
  ///
  /// Output only.
  core.String? assignedTargetingOptionIdAlias;

  /// Audience targeting details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_AUDIENCE_GROUP`. You can only target one audience group
  /// option per resource.
  AudienceGroupAssignedTargetingOptionDetails? audienceGroupDetails;

  /// Audio content type details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_AUDIO_CONTENT_TYPE`.
  AudioContentTypeAssignedTargetingOptionDetails? audioContentTypeDetails;

  /// Authorized seller status details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`. You can only target one
  /// authorized seller status option per resource. If a resource doesn't have
  /// an authorized seller status option, all authorized sellers indicated as
  /// DIRECT or RESELLER in the ads.txt file are targeted by default.
  AuthorizedSellerStatusAssignedTargetingOptionDetails?
      authorizedSellerStatusDetails;

  /// Browser details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_BROWSER`.
  BrowserAssignedTargetingOptionDetails? browserDetails;

  /// Business chain details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_BUSINESS_CHAIN`.
  BusinessChainAssignedTargetingOptionDetails? businessChainDetails;

  /// Carrier and ISP details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CARRIER_AND_ISP`.
  CarrierAndIspAssignedTargetingOptionDetails? carrierAndIspDetails;

  /// Category details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CATEGORY`. Targeting a category will also target its
  /// subcategories. If a category is excluded from targeting and a subcategory
  /// is included, the exclusion will take precedence.
  CategoryAssignedTargetingOptionDetails? categoryDetails;

  /// Channel details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CHANNEL`.
  ChannelAssignedTargetingOptionDetails? channelDetails;

  /// Content duration details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CONTENT_DURATION`.
  ContentDurationAssignedTargetingOptionDetails? contentDurationDetails;

  /// Content genre details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CONTENT_GENRE`.
  ContentGenreAssignedTargetingOptionDetails? contentGenreDetails;

  /// Content instream position details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
  ContentInstreamPositionAssignedTargetingOptionDetails?
      contentInstreamPositionDetails;

  /// Content outstream position details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
  ContentOutstreamPositionAssignedTargetingOptionDetails?
      contentOutstreamPositionDetails;

  /// Content duration details.
  ///
  /// This field will be populated when the TargetingType is
  /// `TARGETING_TYPE_CONTENT_STREAM_TYPE`.
  ContentStreamTypeAssignedTargetingOptionDetails? contentStreamTypeDetails;

  /// Day and time details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_DAY_AND_TIME`.
  DayAndTimeAssignedTargetingOptionDetails? dayAndTimeDetails;

  /// Device make and model details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_DEVICE_MAKE_MODEL`.
  DeviceMakeModelAssignedTargetingOptionDetails? deviceMakeModelDetails;

  /// Device Type details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_DEVICE_TYPE`.
  DeviceTypeAssignedTargetingOptionDetails? deviceTypeDetails;

  /// Digital content label details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`. Digital content labels
  /// are targeting exclusions. Advertiser level digital content label
  /// exclusions, if set, are always applied in serving (even though they aren't
  /// visible in resource settings). Resource settings can exclude content
  /// labels in addition to advertiser exclusions, but can't override them. A
  /// line item won't serve if all the digital content labels are excluded.
  DigitalContentLabelAssignedTargetingOptionDetails?
      digitalContentLabelExclusionDetails;

  /// Environment details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_ENVIRONMENT`.
  EnvironmentAssignedTargetingOptionDetails? environmentDetails;

  /// Exchange details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_EXCHANGE`.
  ExchangeAssignedTargetingOptionDetails? exchangeDetails;

  /// Gender details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_GENDER`.
  GenderAssignedTargetingOptionDetails? genderDetails;

  /// Geographic region details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_GEO_REGION`.
  GeoRegionAssignedTargetingOptionDetails? geoRegionDetails;

  /// Household income details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_HOUSEHOLD_INCOME`.
  HouseholdIncomeAssignedTargetingOptionDetails? householdIncomeDetails;

  /// The inheritance status of the assigned targeting option.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INHERITANCE_UNSPECIFIED" : The inheritance is unspecified or unknown.
  /// - "NOT_INHERITED" : The assigned targeting option is not inherited from
  /// higher level entity.
  /// - "INHERITED_FROM_PARTNER" : The assigned targeting option is inherited
  /// from partner targeting settings.
  /// - "INHERITED_FROM_ADVERTISER" : The assigned targeting option is inherited
  /// from advertiser targeting settings.
  core.String? inheritance;

  /// Inventory source details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_INVENTORY_SOURCE`.
  InventorySourceAssignedTargetingOptionDetails? inventorySourceDetails;

  /// Inventory source group details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
  InventorySourceGroupAssignedTargetingOptionDetails?
      inventorySourceGroupDetails;

  /// Keyword details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_KEYWORD`. A maximum of 5000 direct negative keywords can
  /// be assigned to a resource. No limit on number of positive keywords that
  /// can be assigned.
  KeywordAssignedTargetingOptionDetails? keywordDetails;

  /// Language details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_LANGUAGE`.
  LanguageAssignedTargetingOptionDetails? languageDetails;

  /// The resource name for this assigned targeting option.
  ///
  /// Output only.
  core.String? name;

  /// Native content position details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_NATIVE_CONTENT_POSITION`.
  NativeContentPositionAssignedTargetingOptionDetails?
      nativeContentPositionDetails;

  /// Keyword details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`. A maximum of 4 negative keyword
  /// lists can be assigned to a resource.
  NegativeKeywordListAssignedTargetingOptionDetails? negativeKeywordListDetails;

  /// Open Measurement enabled inventory details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_OMID`.
  OmidAssignedTargetingOptionDetails? omidDetails;

  /// On screen position details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_ON_SCREEN_POSITION`.
  OnScreenPositionAssignedTargetingOptionDetails? onScreenPositionDetails;

  /// Operating system details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_OPERATING_SYSTEM`.
  OperatingSystemAssignedTargetingOptionDetails? operatingSystemDetails;

  /// Parental status details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_PARENTAL_STATUS`.
  ParentalStatusAssignedTargetingOptionDetails? parentalStatusDetails;

  /// POI details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_POI`.
  PoiAssignedTargetingOptionDetails? poiDetails;

  /// Proximity location list details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
  ProximityLocationListAssignedTargetingOptionDetails?
      proximityLocationListDetails;

  /// Regional location list details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
  RegionalLocationListAssignedTargetingOptionDetails?
      regionalLocationListDetails;

  /// Sensitive category details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`. Sensitive categories are
  /// targeting exclusions. Advertiser level sensitive category exclusions, if
  /// set, are always applied in serving (even though they aren't visible in
  /// resource settings). Resource settings can exclude sensitive categories in
  /// addition to advertiser exclusions, but can't override them.
  SensitiveCategoryAssignedTargetingOptionDetails?
      sensitiveCategoryExclusionDetails;

  /// Sub-exchange details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_SUB_EXCHANGE`.
  SubExchangeAssignedTargetingOptionDetails? subExchangeDetails;

  /// Identifies the type of this assigned targeting option.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  core.String? targetingType;

  /// Third party verification details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
  ThirdPartyVerifierAssignedTargetingOptionDetails? thirdPartyVerifierDetails;

  /// URL details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_URL`.
  UrlAssignedTargetingOptionDetails? urlDetails;

  /// User rewarded content details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_USER_REWARDED_CONTENT`.
  UserRewardedContentAssignedTargetingOptionDetails? userRewardedContentDetails;

  /// Video player size details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
  VideoPlayerSizeAssignedTargetingOptionDetails? videoPlayerSizeDetails;

  /// Viewability details.
  ///
  /// This field will be populated when the targeting_type is
  /// `TARGETING_TYPE_VIEWABILITY`. You can only target one viewability option
  /// per resource.
  ViewabilityAssignedTargetingOptionDetails? viewabilityDetails;

  AssignedTargetingOption({
    this.ageRangeDetails,
    this.appCategoryDetails,
    this.appDetails,
    this.assignedTargetingOptionId,
    this.assignedTargetingOptionIdAlias,
    this.audienceGroupDetails,
    this.audioContentTypeDetails,
    this.authorizedSellerStatusDetails,
    this.browserDetails,
    this.businessChainDetails,
    this.carrierAndIspDetails,
    this.categoryDetails,
    this.channelDetails,
    this.contentDurationDetails,
    this.contentGenreDetails,
    this.contentInstreamPositionDetails,
    this.contentOutstreamPositionDetails,
    this.contentStreamTypeDetails,
    this.dayAndTimeDetails,
    this.deviceMakeModelDetails,
    this.deviceTypeDetails,
    this.digitalContentLabelExclusionDetails,
    this.environmentDetails,
    this.exchangeDetails,
    this.genderDetails,
    this.geoRegionDetails,
    this.householdIncomeDetails,
    this.inheritance,
    this.inventorySourceDetails,
    this.inventorySourceGroupDetails,
    this.keywordDetails,
    this.languageDetails,
    this.name,
    this.nativeContentPositionDetails,
    this.negativeKeywordListDetails,
    this.omidDetails,
    this.onScreenPositionDetails,
    this.operatingSystemDetails,
    this.parentalStatusDetails,
    this.poiDetails,
    this.proximityLocationListDetails,
    this.regionalLocationListDetails,
    this.sensitiveCategoryExclusionDetails,
    this.subExchangeDetails,
    this.targetingType,
    this.thirdPartyVerifierDetails,
    this.urlDetails,
    this.userRewardedContentDetails,
    this.videoPlayerSizeDetails,
    this.viewabilityDetails,
  });

  AssignedTargetingOption.fromJson(core.Map json_)
      : this(
          ageRangeDetails: json_.containsKey('ageRangeDetails')
              ? AgeRangeAssignedTargetingOptionDetails.fromJson(
                  json_['ageRangeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          appCategoryDetails: json_.containsKey('appCategoryDetails')
              ? AppCategoryAssignedTargetingOptionDetails.fromJson(
                  json_['appCategoryDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          appDetails: json_.containsKey('appDetails')
              ? AppAssignedTargetingOptionDetails.fromJson(
                  json_['appDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          assignedTargetingOptionId:
              json_.containsKey('assignedTargetingOptionId')
                  ? json_['assignedTargetingOptionId'] as core.String
                  : null,
          assignedTargetingOptionIdAlias:
              json_.containsKey('assignedTargetingOptionIdAlias')
                  ? json_['assignedTargetingOptionIdAlias'] as core.String
                  : null,
          audienceGroupDetails: json_.containsKey('audienceGroupDetails')
              ? AudienceGroupAssignedTargetingOptionDetails.fromJson(
                  json_['audienceGroupDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          audioContentTypeDetails: json_.containsKey('audioContentTypeDetails')
              ? AudioContentTypeAssignedTargetingOptionDetails.fromJson(
                  json_['audioContentTypeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          authorizedSellerStatusDetails: json_
                  .containsKey('authorizedSellerStatusDetails')
              ? AuthorizedSellerStatusAssignedTargetingOptionDetails.fromJson(
                  json_['authorizedSellerStatusDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          browserDetails: json_.containsKey('browserDetails')
              ? BrowserAssignedTargetingOptionDetails.fromJson(
                  json_['browserDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          businessChainDetails: json_.containsKey('businessChainDetails')
              ? BusinessChainAssignedTargetingOptionDetails.fromJson(
                  json_['businessChainDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          carrierAndIspDetails: json_.containsKey('carrierAndIspDetails')
              ? CarrierAndIspAssignedTargetingOptionDetails.fromJson(
                  json_['carrierAndIspDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          categoryDetails: json_.containsKey('categoryDetails')
              ? CategoryAssignedTargetingOptionDetails.fromJson(
                  json_['categoryDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          channelDetails: json_.containsKey('channelDetails')
              ? ChannelAssignedTargetingOptionDetails.fromJson(
                  json_['channelDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentDurationDetails: json_.containsKey('contentDurationDetails')
              ? ContentDurationAssignedTargetingOptionDetails.fromJson(
                  json_['contentDurationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentGenreDetails: json_.containsKey('contentGenreDetails')
              ? ContentGenreAssignedTargetingOptionDetails.fromJson(
                  json_['contentGenreDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentInstreamPositionDetails: json_
                  .containsKey('contentInstreamPositionDetails')
              ? ContentInstreamPositionAssignedTargetingOptionDetails.fromJson(
                  json_['contentInstreamPositionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentOutstreamPositionDetails: json_
                  .containsKey('contentOutstreamPositionDetails')
              ? ContentOutstreamPositionAssignedTargetingOptionDetails.fromJson(
                  json_['contentOutstreamPositionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentStreamTypeDetails:
              json_.containsKey('contentStreamTypeDetails')
                  ? ContentStreamTypeAssignedTargetingOptionDetails.fromJson(
                      json_['contentStreamTypeDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          dayAndTimeDetails: json_.containsKey('dayAndTimeDetails')
              ? DayAndTimeAssignedTargetingOptionDetails.fromJson(
                  json_['dayAndTimeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deviceMakeModelDetails: json_.containsKey('deviceMakeModelDetails')
              ? DeviceMakeModelAssignedTargetingOptionDetails.fromJson(
                  json_['deviceMakeModelDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deviceTypeDetails: json_.containsKey('deviceTypeDetails')
              ? DeviceTypeAssignedTargetingOptionDetails.fromJson(
                  json_['deviceTypeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          digitalContentLabelExclusionDetails:
              json_.containsKey('digitalContentLabelExclusionDetails')
                  ? DigitalContentLabelAssignedTargetingOptionDetails.fromJson(
                      json_['digitalContentLabelExclusionDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          environmentDetails: json_.containsKey('environmentDetails')
              ? EnvironmentAssignedTargetingOptionDetails.fromJson(
                  json_['environmentDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          exchangeDetails: json_.containsKey('exchangeDetails')
              ? ExchangeAssignedTargetingOptionDetails.fromJson(
                  json_['exchangeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          genderDetails: json_.containsKey('genderDetails')
              ? GenderAssignedTargetingOptionDetails.fromJson(
                  json_['genderDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          geoRegionDetails: json_.containsKey('geoRegionDetails')
              ? GeoRegionAssignedTargetingOptionDetails.fromJson(
                  json_['geoRegionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          householdIncomeDetails: json_.containsKey('householdIncomeDetails')
              ? HouseholdIncomeAssignedTargetingOptionDetails.fromJson(
                  json_['householdIncomeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inheritance: json_.containsKey('inheritance')
              ? json_['inheritance'] as core.String
              : null,
          inventorySourceDetails: json_.containsKey('inventorySourceDetails')
              ? InventorySourceAssignedTargetingOptionDetails.fromJson(
                  json_['inventorySourceDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inventorySourceGroupDetails:
              json_.containsKey('inventorySourceGroupDetails')
                  ? InventorySourceGroupAssignedTargetingOptionDetails.fromJson(
                      json_['inventorySourceGroupDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          keywordDetails: json_.containsKey('keywordDetails')
              ? KeywordAssignedTargetingOptionDetails.fromJson(
                  json_['keywordDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageDetails: json_.containsKey('languageDetails')
              ? LanguageAssignedTargetingOptionDetails.fromJson(
                  json_['languageDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nativeContentPositionDetails: json_
                  .containsKey('nativeContentPositionDetails')
              ? NativeContentPositionAssignedTargetingOptionDetails.fromJson(
                  json_['nativeContentPositionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          negativeKeywordListDetails:
              json_.containsKey('negativeKeywordListDetails')
                  ? NegativeKeywordListAssignedTargetingOptionDetails.fromJson(
                      json_['negativeKeywordListDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          omidDetails: json_.containsKey('omidDetails')
              ? OmidAssignedTargetingOptionDetails.fromJson(
                  json_['omidDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          onScreenPositionDetails: json_.containsKey('onScreenPositionDetails')
              ? OnScreenPositionAssignedTargetingOptionDetails.fromJson(
                  json_['onScreenPositionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          operatingSystemDetails: json_.containsKey('operatingSystemDetails')
              ? OperatingSystemAssignedTargetingOptionDetails.fromJson(
                  json_['operatingSystemDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          parentalStatusDetails: json_.containsKey('parentalStatusDetails')
              ? ParentalStatusAssignedTargetingOptionDetails.fromJson(
                  json_['parentalStatusDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          poiDetails: json_.containsKey('poiDetails')
              ? PoiAssignedTargetingOptionDetails.fromJson(
                  json_['poiDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          proximityLocationListDetails: json_
                  .containsKey('proximityLocationListDetails')
              ? ProximityLocationListAssignedTargetingOptionDetails.fromJson(
                  json_['proximityLocationListDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          regionalLocationListDetails:
              json_.containsKey('regionalLocationListDetails')
                  ? RegionalLocationListAssignedTargetingOptionDetails.fromJson(
                      json_['regionalLocationListDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          sensitiveCategoryExclusionDetails:
              json_.containsKey('sensitiveCategoryExclusionDetails')
                  ? SensitiveCategoryAssignedTargetingOptionDetails.fromJson(
                      json_['sensitiveCategoryExclusionDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          subExchangeDetails: json_.containsKey('subExchangeDetails')
              ? SubExchangeAssignedTargetingOptionDetails.fromJson(
                  json_['subExchangeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetingType: json_.containsKey('targetingType')
              ? json_['targetingType'] as core.String
              : null,
          thirdPartyVerifierDetails:
              json_.containsKey('thirdPartyVerifierDetails')
                  ? ThirdPartyVerifierAssignedTargetingOptionDetails.fromJson(
                      json_['thirdPartyVerifierDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          urlDetails: json_.containsKey('urlDetails')
              ? UrlAssignedTargetingOptionDetails.fromJson(
                  json_['urlDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          userRewardedContentDetails:
              json_.containsKey('userRewardedContentDetails')
                  ? UserRewardedContentAssignedTargetingOptionDetails.fromJson(
                      json_['userRewardedContentDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          videoPlayerSizeDetails: json_.containsKey('videoPlayerSizeDetails')
              ? VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(
                  json_['videoPlayerSizeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          viewabilityDetails: json_.containsKey('viewabilityDetails')
              ? ViewabilityAssignedTargetingOptionDetails.fromJson(
                  json_['viewabilityDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRangeDetails != null) 'ageRangeDetails': ageRangeDetails!,
        if (appCategoryDetails != null)
          'appCategoryDetails': appCategoryDetails!,
        if (appDetails != null) 'appDetails': appDetails!,
        if (assignedTargetingOptionId != null)
          'assignedTargetingOptionId': assignedTargetingOptionId!,
        if (assignedTargetingOptionIdAlias != null)
          'assignedTargetingOptionIdAlias': assignedTargetingOptionIdAlias!,
        if (audienceGroupDetails != null)
          'audienceGroupDetails': audienceGroupDetails!,
        if (audioContentTypeDetails != null)
          'audioContentTypeDetails': audioContentTypeDetails!,
        if (authorizedSellerStatusDetails != null)
          'authorizedSellerStatusDetails': authorizedSellerStatusDetails!,
        if (browserDetails != null) 'browserDetails': browserDetails!,
        if (businessChainDetails != null)
          'businessChainDetails': businessChainDetails!,
        if (carrierAndIspDetails != null)
          'carrierAndIspDetails': carrierAndIspDetails!,
        if (categoryDetails != null) 'categoryDetails': categoryDetails!,
        if (channelDetails != null) 'channelDetails': channelDetails!,
        if (contentDurationDetails != null)
          'contentDurationDetails': contentDurationDetails!,
        if (contentGenreDetails != null)
          'contentGenreDetails': contentGenreDetails!,
        if (contentInstreamPositionDetails != null)
          'contentInstreamPositionDetails': contentInstreamPositionDetails!,
        if (contentOutstreamPositionDetails != null)
          'contentOutstreamPositionDetails': contentOutstreamPositionDetails!,
        if (contentStreamTypeDetails != null)
          'contentStreamTypeDetails': contentStreamTypeDetails!,
        if (dayAndTimeDetails != null) 'dayAndTimeDetails': dayAndTimeDetails!,
        if (deviceMakeModelDetails != null)
          'deviceMakeModelDetails': deviceMakeModelDetails!,
        if (deviceTypeDetails != null) 'deviceTypeDetails': deviceTypeDetails!,
        if (digitalContentLabelExclusionDetails != null)
          'digitalContentLabelExclusionDetails':
              digitalContentLabelExclusionDetails!,
        if (environmentDetails != null)
          'environmentDetails': environmentDetails!,
        if (exchangeDetails != null) 'exchangeDetails': exchangeDetails!,
        if (genderDetails != null) 'genderDetails': genderDetails!,
        if (geoRegionDetails != null) 'geoRegionDetails': geoRegionDetails!,
        if (householdIncomeDetails != null)
          'householdIncomeDetails': householdIncomeDetails!,
        if (inheritance != null) 'inheritance': inheritance!,
        if (inventorySourceDetails != null)
          'inventorySourceDetails': inventorySourceDetails!,
        if (inventorySourceGroupDetails != null)
          'inventorySourceGroupDetails': inventorySourceGroupDetails!,
        if (keywordDetails != null) 'keywordDetails': keywordDetails!,
        if (languageDetails != null) 'languageDetails': languageDetails!,
        if (name != null) 'name': name!,
        if (nativeContentPositionDetails != null)
          'nativeContentPositionDetails': nativeContentPositionDetails!,
        if (negativeKeywordListDetails != null)
          'negativeKeywordListDetails': negativeKeywordListDetails!,
        if (omidDetails != null) 'omidDetails': omidDetails!,
        if (onScreenPositionDetails != null)
          'onScreenPositionDetails': onScreenPositionDetails!,
        if (operatingSystemDetails != null)
          'operatingSystemDetails': operatingSystemDetails!,
        if (parentalStatusDetails != null)
          'parentalStatusDetails': parentalStatusDetails!,
        if (poiDetails != null) 'poiDetails': poiDetails!,
        if (proximityLocationListDetails != null)
          'proximityLocationListDetails': proximityLocationListDetails!,
        if (regionalLocationListDetails != null)
          'regionalLocationListDetails': regionalLocationListDetails!,
        if (sensitiveCategoryExclusionDetails != null)
          'sensitiveCategoryExclusionDetails':
              sensitiveCategoryExclusionDetails!,
        if (subExchangeDetails != null)
          'subExchangeDetails': subExchangeDetails!,
        if (targetingType != null) 'targetingType': targetingType!,
        if (thirdPartyVerifierDetails != null)
          'thirdPartyVerifierDetails': thirdPartyVerifierDetails!,
        if (urlDetails != null) 'urlDetails': urlDetails!,
        if (userRewardedContentDetails != null)
          'userRewardedContentDetails': userRewardedContentDetails!,
        if (videoPlayerSizeDetails != null)
          'videoPlayerSizeDetails': videoPlayerSizeDetails!,
        if (viewabilityDetails != null)
          'viewabilityDetails': viewabilityDetails!,
      };
}

/// A single assigned user role, which defines a user's authorized interaction
/// with a specified partner or advertiser.
typedef AssignedUserRole = $AssignedUserRole;

/// Assigned audience group targeting option details.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_AUDIENCE_GROUP`. The relation between
/// each group is UNION, except for
/// excluded_first_and_third_party_audience_group and
/// excluded_google_audience_group, of which COMPLEMENT is used as an
/// INTERSECTION with other groups.
class AudienceGroupAssignedTargetingOptionDetails {
  /// The first and third party audience ids and recencies of the excluded first
  /// and third party audience group.
  ///
  /// Used for negative targeting. The COMPLEMENT of the UNION of this group and
  /// other excluded audience groups is used as an INTERSECTION to any positive
  /// audience targeting. All items are logically ‘OR’ of each other.
  FirstAndThirdPartyAudienceGroup? excludedFirstAndThirdPartyAudienceGroup;

  /// The Google audience ids of the excluded Google audience group.
  ///
  /// Used for negative targeting. The COMPLEMENT of the UNION of this group and
  /// other excluded audience groups is used as an INTERSECTION to any positive
  /// audience targeting. Only contains Affinity, In-market and Installed-apps
  /// type Google audiences. All items are logically ‘OR’ of each other.
  GoogleAudienceGroup? excludedGoogleAudienceGroup;

  /// The combined audience ids of the included combined audience group.
  ///
  /// Contains combined audience ids only.
  CombinedAudienceGroup? includedCombinedAudienceGroup;

  /// The custom list ids of the included custom list group.
  ///
  /// Contains custom list ids only.
  CustomListGroup? includedCustomListGroup;

  /// The first and third party audience ids and recencies of included first and
  /// third party audience groups.
  ///
  /// Each first and third party audience group contains first and third party
  /// audience ids only. The relation between each first and third party
  /// audience group is INTERSECTION, and the result is UNION'ed with other
  /// audience groups. Repeated groups with same settings will be ignored.
  core.List<FirstAndThirdPartyAudienceGroup>?
      includedFirstAndThirdPartyAudienceGroups;

  /// The Google audience ids of the included Google audience group.
  ///
  /// Contains Google audience ids only.
  GoogleAudienceGroup? includedGoogleAudienceGroup;

  AudienceGroupAssignedTargetingOptionDetails({
    this.excludedFirstAndThirdPartyAudienceGroup,
    this.excludedGoogleAudienceGroup,
    this.includedCombinedAudienceGroup,
    this.includedCustomListGroup,
    this.includedFirstAndThirdPartyAudienceGroups,
    this.includedGoogleAudienceGroup,
  });

  AudienceGroupAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          excludedFirstAndThirdPartyAudienceGroup:
              json_.containsKey('excludedFirstAndThirdPartyAudienceGroup')
                  ? FirstAndThirdPartyAudienceGroup.fromJson(
                      json_['excludedFirstAndThirdPartyAudienceGroup']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          excludedGoogleAudienceGroup:
              json_.containsKey('excludedGoogleAudienceGroup')
                  ? GoogleAudienceGroup.fromJson(
                      json_['excludedGoogleAudienceGroup']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          includedCombinedAudienceGroup:
              json_.containsKey('includedCombinedAudienceGroup')
                  ? CombinedAudienceGroup.fromJson(
                      json_['includedCombinedAudienceGroup']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          includedCustomListGroup: json_.containsKey('includedCustomListGroup')
              ? CustomListGroup.fromJson(json_['includedCustomListGroup']
                  as core.Map<core.String, core.dynamic>)
              : null,
          includedFirstAndThirdPartyAudienceGroups: json_
                  .containsKey('includedFirstAndThirdPartyAudienceGroups')
              ? (json_['includedFirstAndThirdPartyAudienceGroups'] as core.List)
                  .map((value) => FirstAndThirdPartyAudienceGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          includedGoogleAudienceGroup:
              json_.containsKey('includedGoogleAudienceGroup')
                  ? GoogleAudienceGroup.fromJson(
                      json_['includedGoogleAudienceGroup']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedFirstAndThirdPartyAudienceGroup != null)
          'excludedFirstAndThirdPartyAudienceGroup':
              excludedFirstAndThirdPartyAudienceGroup!,
        if (excludedGoogleAudienceGroup != null)
          'excludedGoogleAudienceGroup': excludedGoogleAudienceGroup!,
        if (includedCombinedAudienceGroup != null)
          'includedCombinedAudienceGroup': includedCombinedAudienceGroup!,
        if (includedCustomListGroup != null)
          'includedCustomListGroup': includedCustomListGroup!,
        if (includedFirstAndThirdPartyAudienceGroups != null)
          'includedFirstAndThirdPartyAudienceGroups':
              includedFirstAndThirdPartyAudienceGroups!,
        if (includedGoogleAudienceGroup != null)
          'includedGoogleAudienceGroup': includedGoogleAudienceGroup!,
      };
}

/// Details for audio content type assigned targeting option.
///
/// This will be populated in the audio_content_type_details field when
/// targeting_type is `TARGETING_TYPE_AUDIO_CONTENT_TYPE`. Explicitly targeting
/// all options is not supported. Remove all audio content type targeting
/// options to achieve this effect.
class AudioContentTypeAssignedTargetingOptionDetails {
  /// The audio content type.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "AUDIO_CONTENT_TYPE_UNSPECIFIED" : Audio content type is not specified
  /// in this version. This enum is a place holder for a default value and does
  /// not represent a real content stream type.
  /// - "AUDIO_CONTENT_TYPE_UNKNOWN" : The audio content type is unknown.
  /// - "AUDIO_CONTENT_TYPE_MUSIC" : The audio content type is music.
  /// - "AUDIO_CONTENT_TYPE_BROADCAST" : The audio content type is broadcast.
  /// - "AUDIO_CONTENT_TYPE_PODCAST" : The audio content type is podcast.
  core.String? audioContentType;

  AudioContentTypeAssignedTargetingOptionDetails({
    this.audioContentType,
  });

  AudioContentTypeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          audioContentType: json_.containsKey('audioContentType')
              ? json_['audioContentType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioContentType != null) 'audioContentType': audioContentType!,
      };
}

/// Represents a targetable audio content type.
///
/// This will be populated in the audio_content_type_details field when
/// targeting_type is `TARGETING_TYPE_AUDIO_CONTENT_TYPE`.
typedef AudioContentTypeTargetingOptionDetails
    = $AudioContentTypeTargetingOptionDetails;

/// The length an audio or a video has been played.
typedef AudioVideoOffset = $AudioVideoOffset;

/// Response message for AdvertiserService.AuditAdvertiser.
typedef AuditAdvertiserResponse = $AuditAdvertiserResponse;

/// Represents an assigned authorized seller status.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
typedef AuthorizedSellerStatusAssignedTargetingOptionDetails
    = $AuthorizedSellerStatusAssignedTargetingOptionDetails;

/// Represents a targetable authorized seller status.
///
/// This will be populated in the authorized_seller_status_details field when
/// targeting_type is `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.
typedef AuthorizedSellerStatusTargetingOptionDetails
    = $AuthorizedSellerStatusTargetingOptionDetails;

/// Settings that control the bid strategy.
///
/// Bid strategy determines the bid price.
class BiddingStrategy {
  /// A strategy that uses a fixed bid price.
  FixedBidStrategy? fixedBid;

  /// A strategy that automatically adjusts the bid to optimize to your
  /// performance goal while spending the full budget.
  ///
  /// At insertion order level, the markup_type of line items cannot be set to
  /// `PARTNER_REVENUE_MODEL_MARKUP_TYPE_CPM`. In addition, when
  /// performance_goal_type is one of: *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_AV_VIEWED` , the line_item_type of
  /// the insertion order line items must be either: *
  /// `LINE_ITEM_TYPE_DISPLAY_DEFAULT` * `LINE_ITEM_TYPE_VIDEO_DEFAULT` , and
  /// when performance_goal_type is either: *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CIVA` *
  /// `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_IVO_TEN` the line_item_type of the
  /// insertion order line items must be `LINE_ITEM_TYPE_VIDEO_DEFAULT`.
  MaximizeSpendBidStrategy? maximizeSpendAutoBid;

  /// A strategy that automatically adjusts the bid to meet or beat a specified
  /// performance goal.
  ///
  /// It is to be used only for a line item entity.
  PerformanceGoalBidStrategy? performanceGoalAutoBid;

  BiddingStrategy({
    this.fixedBid,
    this.maximizeSpendAutoBid,
    this.performanceGoalAutoBid,
  });

  BiddingStrategy.fromJson(core.Map json_)
      : this(
          fixedBid: json_.containsKey('fixedBid')
              ? FixedBidStrategy.fromJson(
                  json_['fixedBid'] as core.Map<core.String, core.dynamic>)
              : null,
          maximizeSpendAutoBid: json_.containsKey('maximizeSpendAutoBid')
              ? MaximizeSpendBidStrategy.fromJson(json_['maximizeSpendAutoBid']
                  as core.Map<core.String, core.dynamic>)
              : null,
          performanceGoalAutoBid: json_.containsKey('performanceGoalAutoBid')
              ? PerformanceGoalBidStrategy.fromJson(
                  json_['performanceGoalAutoBid']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedBid != null) 'fixedBid': fixedBid!,
        if (maximizeSpendAutoBid != null)
          'maximizeSpendAutoBid': maximizeSpendAutoBid!,
        if (performanceGoalAutoBid != null)
          'performanceGoalAutoBid': performanceGoalAutoBid!,
      };
}

/// Details for assigned browser targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_BROWSER`.
typedef BrowserAssignedTargetingOptionDetails
    = $BrowserAssignedTargetingOptionDetails;

/// Represents a targetable browser.
///
/// This will be populated in the browser_details field when targeting_type is
/// `TARGETING_TYPE_BROWSER`.
typedef BrowserTargetingOptionDetails = $BrowserTargetingOptionDetails;

/// Summarized information of an individual campaign budget.
class BudgetSummary {
  /// Corresponds to the external_budget_id of a campaign budget.
  ///
  /// If the value is not set in the campaign budget, this field will be empty.
  core.String? externalBudgetId;

  /// The sum of charges made under this budget before taxes, in micros of the
  /// invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? preTaxAmountMicros;

  /// Relevant client, product, and estimate codes from the Mediaocean Prisma
  /// tool.
  ///
  /// Only applicable for campaign budgets with an external_budget_source of
  /// EXTERNAL_BUDGET_SOURCE_MEDIA_OCEAN.
  PrismaCpeCode? prismaCpeCode;

  /// The amount of tax applied to charges under this budget, in micros of the
  /// invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? taxAmountMicros;

  /// The total sum of charges made under this budget, including tax, in micros
  /// of the invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? totalAmountMicros;

  BudgetSummary({
    this.externalBudgetId,
    this.preTaxAmountMicros,
    this.prismaCpeCode,
    this.taxAmountMicros,
    this.totalAmountMicros,
  });

  BudgetSummary.fromJson(core.Map json_)
      : this(
          externalBudgetId: json_.containsKey('externalBudgetId')
              ? json_['externalBudgetId'] as core.String
              : null,
          preTaxAmountMicros: json_.containsKey('preTaxAmountMicros')
              ? json_['preTaxAmountMicros'] as core.String
              : null,
          prismaCpeCode: json_.containsKey('prismaCpeCode')
              ? PrismaCpeCode.fromJson(
                  json_['prismaCpeCode'] as core.Map<core.String, core.dynamic>)
              : null,
          taxAmountMicros: json_.containsKey('taxAmountMicros')
              ? json_['taxAmountMicros'] as core.String
              : null,
          totalAmountMicros: json_.containsKey('totalAmountMicros')
              ? json_['totalAmountMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalBudgetId != null) 'externalBudgetId': externalBudgetId!,
        if (preTaxAmountMicros != null)
          'preTaxAmountMicros': preTaxAmountMicros!,
        if (prismaCpeCode != null) 'prismaCpeCode': prismaCpeCode!,
        if (taxAmountMicros != null) 'taxAmountMicros': taxAmountMicros!,
        if (totalAmountMicros != null) 'totalAmountMicros': totalAmountMicros!,
      };
}

/// Request message for BulkEditAdvertiserAssignedTargetingOptions.
class BulkEditAdvertiserAssignedTargetingOptionsRequest {
  /// The assigned targeting options to create in batch, specified as a list of
  /// `CreateAssignedTargetingOptionsRequest`.
  ///
  /// Supported targeting types: * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`
  core.List<CreateAssignedTargetingOptionsRequest>? createRequests;

  /// The assigned targeting options to delete in batch, specified as a list of
  /// `DeleteAssignedTargetingOptionsRequest`.
  ///
  /// Supported targeting types: * `TARGETING_TYPE_CHANNEL` *
  /// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_OMID` *
  /// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`
  core.List<DeleteAssignedTargetingOptionsRequest>? deleteRequests;

  BulkEditAdvertiserAssignedTargetingOptionsRequest({
    this.createRequests,
    this.deleteRequests,
  });

  BulkEditAdvertiserAssignedTargetingOptionsRequest.fromJson(core.Map json_)
      : this(
          createRequests: json_.containsKey('createRequests')
              ? (json_['createRequests'] as core.List)
                  .map((value) =>
                      CreateAssignedTargetingOptionsRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deleteRequests: json_.containsKey('deleteRequests')
              ? (json_['deleteRequests'] as core.List)
                  .map((value) =>
                      DeleteAssignedTargetingOptionsRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createRequests != null) 'createRequests': createRequests!,
        if (deleteRequests != null) 'deleteRequests': deleteRequests!,
      };
}

class BulkEditAdvertiserAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options that have been successfully
  /// created.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? createdAssignedTargetingOptions;

  BulkEditAdvertiserAssignedTargetingOptionsResponse({
    this.createdAssignedTargetingOptions,
  });

  BulkEditAdvertiserAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          createdAssignedTargetingOptions:
              json_.containsKey('createdAssignedTargetingOptions')
                  ? (json_['createdAssignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAssignedTargetingOptions != null)
          'createdAssignedTargetingOptions': createdAssignedTargetingOptions!,
      };
}

/// Request message for AssignedInventorySourceService.BulkEdit.
class BulkEditAssignedInventorySourcesRequest {
  /// The ID of the advertiser that owns the parent inventory source group.
  ///
  /// The parent partner does not have access to these assigned inventory
  /// sources.
  core.String? advertiserId;

  /// The assigned inventory sources to create in bulk, specified as a list of
  /// AssignedInventorySources.
  core.List<AssignedInventorySource>? createdAssignedInventorySources;

  /// The IDs of the assigned inventory sources to delete in bulk, specified as
  /// a list of assigned_inventory_source_ids.
  core.List<core.String>? deletedAssignedInventorySources;

  /// The ID of the partner that owns the inventory source group.
  ///
  /// Only this partner has write access to these assigned inventory sources.
  core.String? partnerId;

  BulkEditAssignedInventorySourcesRequest({
    this.advertiserId,
    this.createdAssignedInventorySources,
    this.deletedAssignedInventorySources,
    this.partnerId,
  });

  BulkEditAssignedInventorySourcesRequest.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          createdAssignedInventorySources:
              json_.containsKey('createdAssignedInventorySources')
                  ? (json_['createdAssignedInventorySources'] as core.List)
                      .map((value) => AssignedInventorySource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          deletedAssignedInventorySources:
              json_.containsKey('deletedAssignedInventorySources')
                  ? (json_['deletedAssignedInventorySources'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (createdAssignedInventorySources != null)
          'createdAssignedInventorySources': createdAssignedInventorySources!,
        if (deletedAssignedInventorySources != null)
          'deletedAssignedInventorySources': deletedAssignedInventorySources!,
        if (partnerId != null) 'partnerId': partnerId!,
      };
}

/// Response message for AssignedInventorySourceService.BulkEdit.
class BulkEditAssignedInventorySourcesResponse {
  /// The list of assigned inventory sources that have been successfully
  /// created.
  ///
  /// This list will be absent if empty.
  core.List<AssignedInventorySource>? assignedInventorySources;

  BulkEditAssignedInventorySourcesResponse({
    this.assignedInventorySources,
  });

  BulkEditAssignedInventorySourcesResponse.fromJson(core.Map json_)
      : this(
          assignedInventorySources:
              json_.containsKey('assignedInventorySources')
                  ? (json_['assignedInventorySources'] as core.List)
                      .map((value) => AssignedInventorySource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedInventorySources != null)
          'assignedInventorySources': assignedInventorySources!,
      };
}

/// Request message for AssignedLocationService.BulkEditAssignedLocations.
class BulkEditAssignedLocationsRequest {
  /// The assigned locations to create in bulk, specified as a list of
  /// AssignedLocations.
  core.List<AssignedLocation>? createdAssignedLocations;

  /// The IDs of the assigned locations to delete in bulk, specified as a list
  /// of assigned_location_ids.
  core.List<core.String>? deletedAssignedLocations;

  BulkEditAssignedLocationsRequest({
    this.createdAssignedLocations,
    this.deletedAssignedLocations,
  });

  BulkEditAssignedLocationsRequest.fromJson(core.Map json_)
      : this(
          createdAssignedLocations:
              json_.containsKey('createdAssignedLocations')
                  ? (json_['createdAssignedLocations'] as core.List)
                      .map((value) => AssignedLocation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          deletedAssignedLocations:
              json_.containsKey('deletedAssignedLocations')
                  ? (json_['deletedAssignedLocations'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAssignedLocations != null)
          'createdAssignedLocations': createdAssignedLocations!,
        if (deletedAssignedLocations != null)
          'deletedAssignedLocations': deletedAssignedLocations!,
      };
}

/// Response message for AssignedLocationService.BulkEditAssignedLocations.
class BulkEditAssignedLocationsResponse {
  /// The list of assigned locations that have been successfully created.
  ///
  /// This list will be absent if empty.
  core.List<AssignedLocation>? assignedLocations;

  BulkEditAssignedLocationsResponse({
    this.assignedLocations,
  });

  BulkEditAssignedLocationsResponse.fromJson(core.Map json_)
      : this(
          assignedLocations: json_.containsKey('assignedLocations')
              ? (json_['assignedLocations'] as core.List)
                  .map((value) => AssignedLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedLocations != null) 'assignedLocations': assignedLocations!,
      };
}

/// Request message for BulkEditLineItemsAssignedTargetingOptions.
class BulkEditAssignedTargetingOptionsRequest {
  /// The assigned targeting options to create in batch, specified as a list of
  /// CreateAssignedTargetingOptionsRequest.
  core.List<CreateAssignedTargetingOptionsRequest>? createRequests;

  /// The assigned targeting options to delete in batch, specified as a list of
  /// DeleteAssignedTargetingOptionsRequest.
  core.List<DeleteAssignedTargetingOptionsRequest>? deleteRequests;

  /// The ID of the line items whose targeting is being updated.
  ///
  /// Required.
  core.List<core.String>? lineItemIds;

  BulkEditAssignedTargetingOptionsRequest({
    this.createRequests,
    this.deleteRequests,
    this.lineItemIds,
  });

  BulkEditAssignedTargetingOptionsRequest.fromJson(core.Map json_)
      : this(
          createRequests: json_.containsKey('createRequests')
              ? (json_['createRequests'] as core.List)
                  .map((value) =>
                      CreateAssignedTargetingOptionsRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deleteRequests: json_.containsKey('deleteRequests')
              ? (json_['deleteRequests'] as core.List)
                  .map((value) =>
                      DeleteAssignedTargetingOptionsRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lineItemIds: json_.containsKey('lineItemIds')
              ? (json_['lineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createRequests != null) 'createRequests': createRequests!,
        if (deleteRequests != null) 'deleteRequests': deleteRequests!,
        if (lineItemIds != null) 'lineItemIds': lineItemIds!,
      };
}

class BulkEditAssignedTargetingOptionsResponse {
  /// The error information for each line item that failed to update.
  core.List<Status>? errors;

  /// The IDs of the line items which failed.
  ///
  /// Output only.
  core.List<core.String>? failedLineItemIds;

  /// The IDs of the line items which successfully updated.
  ///
  /// Output only.
  core.List<core.String>? updatedLineItemIds;

  BulkEditAssignedTargetingOptionsResponse({
    this.errors,
    this.failedLineItemIds,
    this.updatedLineItemIds,
  });

  BulkEditAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          failedLineItemIds: json_.containsKey('failedLineItemIds')
              ? (json_['failedLineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updatedLineItemIds: json_.containsKey('updatedLineItemIds')
              ? (json_['updatedLineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (failedLineItemIds != null) 'failedLineItemIds': failedLineItemIds!,
        if (updatedLineItemIds != null)
          'updatedLineItemIds': updatedLineItemIds!,
      };
}

/// Request message for BulkEditAssignedUserRoles.
class BulkEditAssignedUserRolesRequest {
  /// The assigned user roles to create in batch, specified as a list of
  /// AssignedUserRoles.
  core.List<AssignedUserRole>? createdAssignedUserRoles;

  /// The assigned user roles to delete in batch, specified as a list of
  /// assigned_user_role_ids.
  ///
  /// The format of assigned_user_role_id is `entityType-entityid`, for example
  /// `partner-123`.
  core.List<core.String>? deletedAssignedUserRoles;

  BulkEditAssignedUserRolesRequest({
    this.createdAssignedUserRoles,
    this.deletedAssignedUserRoles,
  });

  BulkEditAssignedUserRolesRequest.fromJson(core.Map json_)
      : this(
          createdAssignedUserRoles:
              json_.containsKey('createdAssignedUserRoles')
                  ? (json_['createdAssignedUserRoles'] as core.List)
                      .map((value) => AssignedUserRole.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          deletedAssignedUserRoles:
              json_.containsKey('deletedAssignedUserRoles')
                  ? (json_['deletedAssignedUserRoles'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAssignedUserRoles != null)
          'createdAssignedUserRoles': createdAssignedUserRoles!,
        if (deletedAssignedUserRoles != null)
          'deletedAssignedUserRoles': deletedAssignedUserRoles!,
      };
}

class BulkEditAssignedUserRolesResponse {
  /// The list of assigned user roles that have been successfully created.
  ///
  /// This list will be absent if empty.
  core.List<AssignedUserRole>? createdAssignedUserRoles;

  BulkEditAssignedUserRolesResponse({
    this.createdAssignedUserRoles,
  });

  BulkEditAssignedUserRolesResponse.fromJson(core.Map json_)
      : this(
          createdAssignedUserRoles:
              json_.containsKey('createdAssignedUserRoles')
                  ? (json_['createdAssignedUserRoles'] as core.List)
                      .map((value) => AssignedUserRole.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAssignedUserRoles != null)
          'createdAssignedUserRoles': createdAssignedUserRoles!,
      };
}

/// Request message for NegativeKeywordService.BulkEditNegativeKeywords.
class BulkEditNegativeKeywordsRequest {
  /// The negative keywords to create in batch, specified as a list of
  /// NegativeKeywords.
  core.List<NegativeKeyword>? createdNegativeKeywords;

  /// The negative keywords to delete in batch, specified as a list of
  /// keyword_values.
  core.List<core.String>? deletedNegativeKeywords;

  BulkEditNegativeKeywordsRequest({
    this.createdNegativeKeywords,
    this.deletedNegativeKeywords,
  });

  BulkEditNegativeKeywordsRequest.fromJson(core.Map json_)
      : this(
          createdNegativeKeywords: json_.containsKey('createdNegativeKeywords')
              ? (json_['createdNegativeKeywords'] as core.List)
                  .map((value) => NegativeKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deletedNegativeKeywords: json_.containsKey('deletedNegativeKeywords')
              ? (json_['deletedNegativeKeywords'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdNegativeKeywords != null)
          'createdNegativeKeywords': createdNegativeKeywords!,
        if (deletedNegativeKeywords != null)
          'deletedNegativeKeywords': deletedNegativeKeywords!,
      };
}

/// Response message for NegativeKeywordService.BulkEditNegativeKeywords.
class BulkEditNegativeKeywordsResponse {
  /// The list of negative keywords that have been successfully created.
  ///
  /// This list will be absent if empty.
  core.List<NegativeKeyword>? negativeKeywords;

  BulkEditNegativeKeywordsResponse({
    this.negativeKeywords,
  });

  BulkEditNegativeKeywordsResponse.fromJson(core.Map json_)
      : this(
          negativeKeywords: json_.containsKey('negativeKeywords')
              ? (json_['negativeKeywords'] as core.List)
                  .map((value) => NegativeKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeKeywords != null) 'negativeKeywords': negativeKeywords!,
      };
}

/// Request message for BulkEditPartnerAssignedTargetingOptions.
class BulkEditPartnerAssignedTargetingOptionsRequest {
  /// The assigned targeting options to create in batch, specified as a list of
  /// `CreateAssignedTargetingOptionsRequest`.
  ///
  /// Supported targeting types: * `TARGETING_TYPE_CHANNEL`
  core.List<CreateAssignedTargetingOptionsRequest>? createRequests;

  /// The assigned targeting options to delete in batch, specified as a list of
  /// `DeleteAssignedTargetingOptionsRequest`.
  ///
  /// Supported targeting types: * `TARGETING_TYPE_CHANNEL`
  core.List<DeleteAssignedTargetingOptionsRequest>? deleteRequests;

  BulkEditPartnerAssignedTargetingOptionsRequest({
    this.createRequests,
    this.deleteRequests,
  });

  BulkEditPartnerAssignedTargetingOptionsRequest.fromJson(core.Map json_)
      : this(
          createRequests: json_.containsKey('createRequests')
              ? (json_['createRequests'] as core.List)
                  .map((value) =>
                      CreateAssignedTargetingOptionsRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deleteRequests: json_.containsKey('deleteRequests')
              ? (json_['deleteRequests'] as core.List)
                  .map((value) =>
                      DeleteAssignedTargetingOptionsRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createRequests != null) 'createRequests': createRequests!,
        if (deleteRequests != null) 'deleteRequests': deleteRequests!,
      };
}

class BulkEditPartnerAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options that have been successfully
  /// created.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? createdAssignedTargetingOptions;

  BulkEditPartnerAssignedTargetingOptionsResponse({
    this.createdAssignedTargetingOptions,
  });

  BulkEditPartnerAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          createdAssignedTargetingOptions:
              json_.containsKey('createdAssignedTargetingOptions')
                  ? (json_['createdAssignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdAssignedTargetingOptions != null)
          'createdAssignedTargetingOptions': createdAssignedTargetingOptions!,
      };
}

/// Request message for SiteService.BulkEditSites.
class BulkEditSitesRequest {
  /// The ID of the advertiser that owns the parent channel.
  core.String? advertiserId;

  /// The sites to create in batch, specified as a list of Sites.
  core.List<Site>? createdSites;

  /// The sites to delete in batch, specified as a list of site url_or_app_ids.
  core.List<core.String>? deletedSites;

  /// The ID of the partner that owns the parent channel.
  core.String? partnerId;

  BulkEditSitesRequest({
    this.advertiserId,
    this.createdSites,
    this.deletedSites,
    this.partnerId,
  });

  BulkEditSitesRequest.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          createdSites: json_.containsKey('createdSites')
              ? (json_['createdSites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deletedSites: json_.containsKey('deletedSites')
              ? (json_['deletedSites'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (createdSites != null) 'createdSites': createdSites!,
        if (deletedSites != null) 'deletedSites': deletedSites!,
        if (partnerId != null) 'partnerId': partnerId!,
      };
}

/// Response message for SiteService.BulkEditSites.
class BulkEditSitesResponse {
  /// The list of sites that have been successfully created.
  ///
  /// This list will be absent if empty.
  core.List<Site>? sites;

  BulkEditSitesResponse({
    this.sites,
  });

  BulkEditSitesResponse.fromJson(core.Map json_)
      : this(
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sites != null) 'sites': sites!,
      };
}

class BulkListAdvertiserAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// BulkListAdvertiserAssignedTargetingOptionsRequest to fetch the next page
  /// of results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  BulkListAdvertiserAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  BulkListAdvertiserAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class BulkListAssignedTargetingOptionsResponse {
  /// The list of wrapper objects, each providing an assigned targeting option
  /// and the line item it is assigned to.
  ///
  /// This list will be absent if empty.
  core.List<LineItemAssignedTargetingOption>? lineItemAssignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent call to
  /// `BulkListAssignedTargetingOptions` to fetch the next page of results. This
  /// token will be absent if there are no more
  /// line_item_assigned_targeting_options to return.
  core.String? nextPageToken;

  BulkListAssignedTargetingOptionsResponse({
    this.lineItemAssignedTargetingOptions,
    this.nextPageToken,
  });

  BulkListAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          lineItemAssignedTargetingOptions:
              json_.containsKey('lineItemAssignedTargetingOptions')
                  ? (json_['lineItemAssignedTargetingOptions'] as core.List)
                      .map((value) => LineItemAssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemAssignedTargetingOptions != null)
          'lineItemAssignedTargetingOptions': lineItemAssignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for BulkListCampaignAssignedTargetingOptions.
class BulkListCampaignAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// BulkListCampaignAssignedTargetingOptionsRequest to fetch the next page of
  /// results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  BulkListCampaignAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  BulkListCampaignAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for BulkListInsertionOrderAssignedTargetingOptions.
class BulkListInsertionOrderAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// BulkListInsertionOrderAssignedTargetingOptionsRequest to fetch the next
  /// page of results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  BulkListInsertionOrderAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  BulkListInsertionOrderAssignedTargetingOptionsResponse.fromJson(
      core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for LineItemService.BulkUpdateLineItems.
class BulkUpdateLineItemsRequest {
  /// IDs of line items to update.
  ///
  /// Required.
  core.List<core.String>? lineItemIds;

  /// A line item object containing the fields to be updated and the new values
  /// to assign to all line items specified in line_item_ids."
  ///
  /// Required.
  LineItem? targetLineItem;

  /// A field mask identifying which fields to update.
  ///
  /// Only the following fields are currently supported: * entityStatus
  ///
  /// Required.
  core.String? updateMask;

  BulkUpdateLineItemsRequest({
    this.lineItemIds,
    this.targetLineItem,
    this.updateMask,
  });

  BulkUpdateLineItemsRequest.fromJson(core.Map json_)
      : this(
          lineItemIds: json_.containsKey('lineItemIds')
              ? (json_['lineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetLineItem: json_.containsKey('targetLineItem')
              ? LineItem.fromJson(json_['targetLineItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItemIds != null) 'lineItemIds': lineItemIds!,
        if (targetLineItem != null) 'targetLineItem': targetLineItem!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Response message for LineItemService.BulkUpdateLineItems.
class BulkUpdateLineItemsResponse {
  /// Errors returned by line items that failed to update.
  core.List<Status>? errors;

  /// The IDs of line items that failed to update.
  core.List<core.String>? failedLineItemIds;

  /// The IDs of line items that are skipped for updates.
  ///
  /// For example, unnecessary mutates that will result in effectively no
  /// changes to line items will be skipped and corresponding line item IDs can
  /// be tracked here.
  core.List<core.String>? skippedLineItemIds;

  /// The IDs of successfully updated line items.
  core.List<core.String>? updatedLineItemIds;

  BulkUpdateLineItemsResponse({
    this.errors,
    this.failedLineItemIds,
    this.skippedLineItemIds,
    this.updatedLineItemIds,
  });

  BulkUpdateLineItemsResponse.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          failedLineItemIds: json_.containsKey('failedLineItemIds')
              ? (json_['failedLineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          skippedLineItemIds: json_.containsKey('skippedLineItemIds')
              ? (json_['skippedLineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updatedLineItemIds: json_.containsKey('updatedLineItemIds')
              ? (json_['updatedLineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (failedLineItemIds != null) 'failedLineItemIds': failedLineItemIds!,
        if (skippedLineItemIds != null)
          'skippedLineItemIds': skippedLineItemIds!,
        if (updatedLineItemIds != null)
          'updatedLineItemIds': updatedLineItemIds!,
      };
}

/// Details for assigned Business chain targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.
typedef BusinessChainAssignedTargetingOptionDetails
    = $BusinessChainAssignedTargetingOptionDetails;

/// Search terms for Business Chain targeting options.
///
/// At least one of the field should be populated.
typedef BusinessChainSearchTerms = $BusinessChainSearchTerms;

/// Represents a targetable business chain within a geo region.
///
/// This will be populated in the business_chain_details field when
/// targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.
typedef BusinessChainTargetingOptionDetails
    = $BusinessChainTargetingOptionDetails;

/// A single campaign.
class Campaign {
  /// The unique ID of the advertiser the campaign belongs to.
  ///
  /// Output only.
  core.String? advertiserId;

  /// The list of budgets available to this campaign.
  ///
  /// If this field is not set, the campaign uses an unlimited budget.
  core.List<CampaignBudget>? campaignBudgets;

  /// The planned spend and duration of the campaign.
  ///
  /// Required.
  CampaignFlight? campaignFlight;

  /// The goal of the campaign.
  ///
  /// Required.
  CampaignGoal? campaignGoal;

  /// The unique ID of the campaign.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? campaignId;

  /// The display name of the campaign.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Controls whether or not the insertion orders under this campaign can spend
  /// their budgets and bid on inventory.
  ///
  /// * Accepted values are `ENTITY_STATUS_ACTIVE`, `ENTITY_STATUS_ARCHIVED`,
  /// and `ENTITY_STATUS_PAUSED`. * For CreateCampaign method,
  /// `ENTITY_STATUS_ARCHIVED` is not allowed.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// The frequency cap setting of the campaign.
  ///
  /// Required.
  FrequencyCap? frequencyCap;

  /// The resource name of the campaign.
  ///
  /// Output only.
  core.String? name;

  /// The timestamp when the campaign was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  Campaign({
    this.advertiserId,
    this.campaignBudgets,
    this.campaignFlight,
    this.campaignGoal,
    this.campaignId,
    this.displayName,
    this.entityStatus,
    this.frequencyCap,
    this.name,
    this.updateTime,
  });

  Campaign.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          campaignBudgets: json_.containsKey('campaignBudgets')
              ? (json_['campaignBudgets'] as core.List)
                  .map((value) => CampaignBudget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          campaignFlight: json_.containsKey('campaignFlight')
              ? CampaignFlight.fromJson(json_['campaignFlight']
                  as core.Map<core.String, core.dynamic>)
              : null,
          campaignGoal: json_.containsKey('campaignGoal')
              ? CampaignGoal.fromJson(
                  json_['campaignGoal'] as core.Map<core.String, core.dynamic>)
              : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          frequencyCap: json_.containsKey('frequencyCap')
              ? FrequencyCap.fromJson(
                  json_['frequencyCap'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (campaignBudgets != null) 'campaignBudgets': campaignBudgets!,
        if (campaignFlight != null) 'campaignFlight': campaignFlight!,
        if (campaignGoal != null) 'campaignGoal': campaignGoal!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (displayName != null) 'displayName': displayName!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (frequencyCap != null) 'frequencyCap': frequencyCap!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Settings that control how the campaign budget is allocated.
class CampaignBudget {
  /// The total amount the linked insertion order segments can budget.
  ///
  /// The amount is in micros. Must be greater than 0. For example, 500000000
  /// represents 500 standard units of the currency.
  ///
  /// Required.
  core.String? budgetAmountMicros;

  /// The unique ID of the campaign budget.
  ///
  /// Assigned by the system. Do not set for new budgets. Must be included when
  /// updating or adding budgets to campaign_budgets. Otherwise, a new ID will
  /// be generated and assigned.
  core.String? budgetId;

  /// Specifies whether the budget is measured in currency or impressions.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "BUDGET_UNIT_UNSPECIFIED" : Type value is not specified or is unknown in
  /// this version.
  /// - "BUDGET_UNIT_CURRENCY" : Budgeting in currency amounts.
  /// - "BUDGET_UNIT_IMPRESSIONS" : Budgeting in impression amounts.
  core.String? budgetUnit;

  /// The date range for the campaign budget.
  ///
  /// Linked budget segments may have a different date range. They are resolved
  /// relative to the parent advertiser's time zone. Both `start_date` and
  /// `end_date` must be before the year 2037.
  ///
  /// Required.
  DateRange? dateRange;

  /// The display name of the budget.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The ID identifying this budget to the external source.
  ///
  /// If this field is set and the invoice detail level of the corresponding
  /// billing profile is set to "Budget level PO", all impressions served
  /// against this budget will include this ID on the invoice. Must be unique
  /// under the campaign.
  ///
  /// Immutable.
  core.String? externalBudgetId;

  /// The external source of the budget.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXTERNAL_BUDGET_SOURCE_UNSPECIFIED" : External budget source value is
  /// not specified or unknown in this version.
  /// - "EXTERNAL_BUDGET_SOURCE_NONE" : Budget has no external source.
  /// - "EXTERNAL_BUDGET_SOURCE_MEDIA_OCEAN" : Budget source is Mediaocean.
  core.String? externalBudgetSource;

  /// The ID used to group budgets to be included the same invoice.
  ///
  /// If this field is set and the invoice level of the corresponding billing
  /// profile is set to "Budget invoice grouping ID", all external_budget_id
  /// sharing the same invoice_grouping_id will be grouped in the same invoice.
  ///
  /// Immutable.
  core.String? invoiceGroupingId;

  /// Additional metadata for use by the Mediaocean Prisma tool.
  ///
  /// Required for Mediaocean budgets. Only applicable to prisma_enabled
  /// advertisers.
  PrismaConfig? prismaConfig;

  CampaignBudget({
    this.budgetAmountMicros,
    this.budgetId,
    this.budgetUnit,
    this.dateRange,
    this.displayName,
    this.externalBudgetId,
    this.externalBudgetSource,
    this.invoiceGroupingId,
    this.prismaConfig,
  });

  CampaignBudget.fromJson(core.Map json_)
      : this(
          budgetAmountMicros: json_.containsKey('budgetAmountMicros')
              ? json_['budgetAmountMicros'] as core.String
              : null,
          budgetId: json_.containsKey('budgetId')
              ? json_['budgetId'] as core.String
              : null,
          budgetUnit: json_.containsKey('budgetUnit')
              ? json_['budgetUnit'] as core.String
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          externalBudgetId: json_.containsKey('externalBudgetId')
              ? json_['externalBudgetId'] as core.String
              : null,
          externalBudgetSource: json_.containsKey('externalBudgetSource')
              ? json_['externalBudgetSource'] as core.String
              : null,
          invoiceGroupingId: json_.containsKey('invoiceGroupingId')
              ? json_['invoiceGroupingId'] as core.String
              : null,
          prismaConfig: json_.containsKey('prismaConfig')
              ? PrismaConfig.fromJson(
                  json_['prismaConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (budgetAmountMicros != null)
          'budgetAmountMicros': budgetAmountMicros!,
        if (budgetId != null) 'budgetId': budgetId!,
        if (budgetUnit != null) 'budgetUnit': budgetUnit!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (displayName != null) 'displayName': displayName!,
        if (externalBudgetId != null) 'externalBudgetId': externalBudgetId!,
        if (externalBudgetSource != null)
          'externalBudgetSource': externalBudgetSource!,
        if (invoiceGroupingId != null) 'invoiceGroupingId': invoiceGroupingId!,
        if (prismaConfig != null) 'prismaConfig': prismaConfig!,
      };
}

/// Settings that track the planned spend and duration of a campaign.
class CampaignFlight {
  /// The dates that the campaign is expected to run.
  ///
  /// They are resolved relative to the parent advertiser's time zone. * The
  /// dates specified here will not affect serving. They are used to generate
  /// alerts and warnings. For example, if the flight date of any child
  /// insertion order is outside the range of these dates, the user interface
  /// will show a warning. * `start_date` is required and must be the current
  /// date or later. * `end_date` is optional. If specified, it must be the
  /// `start_date` or later. * Any specified date must be before the year 2037.
  ///
  /// Required.
  DateRange? plannedDates;

  /// The amount the campaign is expected to spend for its given planned_dates.
  ///
  /// This will not limit serving, but will be used for tracking spend in the
  /// DV360 UI. The amount is in micros. Must be greater than or equal to 0. For
  /// example, 500000000 represents 500 standard units of the currency.
  core.String? plannedSpendAmountMicros;

  CampaignFlight({
    this.plannedDates,
    this.plannedSpendAmountMicros,
  });

  CampaignFlight.fromJson(core.Map json_)
      : this(
          plannedDates: json_.containsKey('plannedDates')
              ? DateRange.fromJson(
                  json_['plannedDates'] as core.Map<core.String, core.dynamic>)
              : null,
          plannedSpendAmountMicros:
              json_.containsKey('plannedSpendAmountMicros')
                  ? json_['plannedSpendAmountMicros'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (plannedDates != null) 'plannedDates': plannedDates!,
        if (plannedSpendAmountMicros != null)
          'plannedSpendAmountMicros': plannedSpendAmountMicros!,
      };
}

/// Settings that control the goal of a campaign.
class CampaignGoal {
  /// The type of the campaign goal.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CAMPAIGN_GOAL_TYPE_UNSPECIFIED" : Goal value is not specified or
  /// unknown in this version.
  /// - "CAMPAIGN_GOAL_TYPE_APP_INSTALL" : Drive app installs or engagements.
  /// - "CAMPAIGN_GOAL_TYPE_BRAND_AWARENESS" : Raise awareness of a brand or
  /// product.
  /// - "CAMPAIGN_GOAL_TYPE_OFFLINE_ACTION" : Drive offline or in-store sales.
  /// - "CAMPAIGN_GOAL_TYPE_ONLINE_ACTION" : Drive online action or visits.
  core.String? campaignGoalType;

  /// The performance goal of the campaign.
  ///
  /// Acceptable values for performance_goal_type are: *
  /// `PERFORMANCE_GOAL_TYPE_CPM` * `PERFORMANCE_GOAL_TYPE_CPC` *
  /// `PERFORMANCE_GOAL_TYPE_CPA` * `PERFORMANCE_GOAL_TYPE_CPIAVC` *
  /// `PERFORMANCE_GOAL_TYPE_CTR` * `PERFORMANCE_GOAL_TYPE_VIEWABILITY` *
  /// `PERFORMANCE_GOAL_TYPE_OTHER`
  ///
  /// Required.
  PerformanceGoal? performanceGoal;

  CampaignGoal({
    this.campaignGoalType,
    this.performanceGoal,
  });

  CampaignGoal.fromJson(core.Map json_)
      : this(
          campaignGoalType: json_.containsKey('campaignGoalType')
              ? json_['campaignGoalType'] as core.String
              : null,
          performanceGoal: json_.containsKey('performanceGoal')
              ? PerformanceGoal.fromJson(json_['performanceGoal']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignGoalType != null) 'campaignGoalType': campaignGoalType!,
        if (performanceGoal != null) 'performanceGoal': performanceGoal!,
      };
}

/// Details for assigned carrier and ISP targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_CARRIER_AND_ISP`.
typedef CarrierAndIspAssignedTargetingOptionDetails
    = $CarrierAndIspAssignedTargetingOptionDetails;

/// Represents a targetable carrier or ISP.
///
/// This will be populated in the carrier_and_isp_details field of a
/// TargetingOption when targeting_type is `TARGETING_TYPE_CARRIER_AND_ISP`.
typedef CarrierAndIspTargetingOptionDetails
    = $CarrierAndIspTargetingOptionDetails;

/// Assigned category targeting option details.
///
/// This will be populated in the category_details field when targeting_type is
/// `TARGETING_TYPE_CATEGORY`.
typedef CategoryAssignedTargetingOptionDetails
    = $CategoryAssignedTargetingOptionDetails;

/// Represents a targetable category.
///
/// This will be populated in the category_details field of a TargetingOption
/// when targeting_type is `TARGETING_TYPE_CATEGORY`.
typedef CategoryTargetingOptionDetails = $CategoryTargetingOptionDetails;

/// A single channel.
///
/// Channels are custom groups of related websites and apps.
typedef Channel = $Channel01;

/// Details for assigned channel targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_CHANNEL`.
typedef ChannelAssignedTargetingOptionDetails
    = $ChannelAssignedTargetingOptionDetails;

/// Settings for advertisers that use both Campaign Manager 360 (CM360) and
/// third-party ad servers.
typedef CmHybridConfig = $CmHybridConfig;

/// A Campaign Manager 360 tracking ad.
typedef CmTrackingAd = $CmTrackingAd;

/// Describes a combined audience resource.
typedef CombinedAudience = $CombinedAudience;

/// Details of combined audience group.
///
/// All combined audience targeting settings are logically ‘OR’ of each other.
class CombinedAudienceGroup {
  /// All combined audience targeting settings in combined audience group.
  ///
  /// Repeated settings with same id will be ignored. The number of combined
  /// audience settings should be no more than five, error will be thrown
  /// otherwise.
  ///
  /// Required.
  core.List<CombinedAudienceTargetingSetting>? settings;

  CombinedAudienceGroup({
    this.settings,
  });

  CombinedAudienceGroup.fromJson(core.Map json_)
      : this(
          settings: json_.containsKey('settings')
              ? (json_['settings'] as core.List)
                  .map((value) => CombinedAudienceTargetingSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (settings != null) 'settings': settings!,
      };
}

/// Details of combined audience targeting setting.
typedef CombinedAudienceTargetingSetting = $CombinedAudienceTargetingSetting;

/// Contact information defining a Customer Match audience member.
typedef ContactInfo = $ContactInfo;

/// Wrapper message for a list of contact information defining Customer Match
/// audience members.
class ContactInfoList {
  /// A list of ContactInfo objects defining Customer Match audience members.
  ///
  /// The size of members after splitting the contact_infos mustn't be greater
  /// than 500,000.
  core.List<ContactInfo>? contactInfos;

  ContactInfoList({
    this.contactInfos,
  });

  ContactInfoList.fromJson(core.Map json_)
      : this(
          contactInfos: json_.containsKey('contactInfos')
              ? (json_['contactInfos'] as core.List)
                  .map((value) => ContactInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactInfos != null) 'contactInfos': contactInfos!,
      };
}

/// Details for content duration assigned targeting option.
///
/// This will be populated in the content_duration_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_DURATION`. Explicitly targeting
/// all options is not supported. Remove all content duration targeting options
/// to achieve this effect.
typedef ContentDurationAssignedTargetingOptionDetails
    = $ContentDurationAssignedTargetingOptionDetails;

/// Represents a targetable content duration.
///
/// This will be populated in the content_duration_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_DURATION`.
typedef ContentDurationTargetingOptionDetails
    = $ContentDurationTargetingOptionDetails;

/// Details for content genre assigned targeting option.
///
/// This will be populated in the content_genre_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_GENRE`. Explicitly targeting all
/// options is not supported. Remove all content genre targeting options to
/// achieve this effect.
typedef ContentGenreAssignedTargetingOptionDetails
    = $ContentGenreAssignedTargetingOptionDetails;

/// Represents a targetable content genre.
///
/// This will be populated in the content_genre_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_GENRE`.
typedef ContentGenreTargetingOptionDetails
    = $ContentGenreTargetingOptionDetails;

/// Assigned content instream position targeting option details.
///
/// This will be populated in the content_instream_position_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
class ContentInstreamPositionAssignedTargetingOptionDetails {
  /// The ad type to target.
  ///
  /// Only applicable to insertion order targeting and new line items supporting
  /// the specified ad type will inherit this targeting option by default.
  /// Possible values are: * `AD_TYPE_VIDEO`, the setting will be inherited by
  /// new line item when line_item_type is `LINE_ITEM_TYPE_VIDEO_DEFAULT`. *
  /// `AD_TYPE_AUDIO`, the setting will be inherited by new line item when
  /// line_item_type is `LINE_ITEM_TYPE_AUDIO_DEFAULT`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED" : Ad type is not specified or is unknown in this
  /// version.
  /// - "AD_TYPE_DISPLAY" : Display creatives, e.g. image and HTML5.
  /// - "AD_TYPE_VIDEO" : Video creatives, e.g. video ads that play during
  /// streaming content in video players.
  /// - "AD_TYPE_AUDIO" : Audio creatives, e.g. audio ads that play during audio
  /// content.
  core.String? adType;

  /// The content instream position for video or audio ads.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "CONTENT_INSTREAM_POSITION_UNSPECIFIED" : Content instream position is
  /// not specified in this version. This enum is a place holder for a default
  /// value and does not represent a real in stream ad position.
  /// - "CONTENT_INSTREAM_POSITION_PRE_ROLL" : Ads that play before streaming
  /// content.
  /// - "CONTENT_INSTREAM_POSITION_MID_ROLL" : Ads that play between the
  /// beginning and end of streaming content.
  /// - "CONTENT_INSTREAM_POSITION_POST_ROLL" : Ads that play at the end of
  /// streaming content.
  /// - "CONTENT_INSTREAM_POSITION_UNKNOWN" : Ads instream position is unknown.
  core.String? contentInstreamPosition;

  ContentInstreamPositionAssignedTargetingOptionDetails({
    this.adType,
    this.contentInstreamPosition,
  });

  ContentInstreamPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          adType: json_.containsKey('adType')
              ? json_['adType'] as core.String
              : null,
          contentInstreamPosition: json_.containsKey('contentInstreamPosition')
              ? json_['contentInstreamPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adType != null) 'adType': adType!,
        if (contentInstreamPosition != null)
          'contentInstreamPosition': contentInstreamPosition!,
      };
}

/// Represents a targetable content instream position, which could be used by
/// video and audio ads.
///
/// This will be populated in the content_instream_position_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
typedef ContentInstreamPositionTargetingOptionDetails
    = $ContentInstreamPositionTargetingOptionDetails;

/// Assigned content outstream position targeting option details.
///
/// This will be populated in the content_outstream_position_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
class ContentOutstreamPositionAssignedTargetingOptionDetails {
  /// The ad type to target.
  ///
  /// Only applicable to insertion order targeting and new line items supporting
  /// the specified ad type will inherit this targeting option by default.
  /// Possible values are: * `AD_TYPE_DISPLAY`, the setting will be inherited by
  /// new line item when line_item_type is `LINE_ITEM_TYPE_DISPLAY_DEFAULT`. *
  /// `AD_TYPE_VIDEO`, the setting will be inherited by new line item when
  /// line_item_type is `LINE_ITEM_TYPE_VIDEO_DEFAULT`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED" : Ad type is not specified or is unknown in this
  /// version.
  /// - "AD_TYPE_DISPLAY" : Display creatives, e.g. image and HTML5.
  /// - "AD_TYPE_VIDEO" : Video creatives, e.g. video ads that play during
  /// streaming content in video players.
  /// - "AD_TYPE_AUDIO" : Audio creatives, e.g. audio ads that play during audio
  /// content.
  core.String? adType;

  /// The content outstream position.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "CONTENT_OUTSTREAM_POSITION_UNSPECIFIED" : Content outstream position is
  /// not specified in this version. This enum is a place holder for a default
  /// value and does not represent a real content outstream position.
  /// - "CONTENT_OUTSTREAM_POSITION_UNKNOWN" : The ad position is unknown in the
  /// content outstream.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_ARTICLE" : Ads that appear between the
  /// paragraphs of your pages.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_BANNER" : Ads that display on the top and
  /// the sides of a page.
  /// - "CONTENT_OUTSTREAM_POSITION_IN_FEED" : Ads that appear in a scrollable
  /// stream of content. A feed is typically editorial (e.g. a list of articles
  /// or news) or listings (e.g. a list of products or services).
  /// - "CONTENT_OUTSTREAM_POSITION_INTERSTITIAL" : Ads shown before or between
  /// content loads.
  core.String? contentOutstreamPosition;

  ContentOutstreamPositionAssignedTargetingOptionDetails({
    this.adType,
    this.contentOutstreamPosition,
  });

  ContentOutstreamPositionAssignedTargetingOptionDetails.fromJson(
      core.Map json_)
      : this(
          adType: json_.containsKey('adType')
              ? json_['adType'] as core.String
              : null,
          contentOutstreamPosition:
              json_.containsKey('contentOutstreamPosition')
                  ? json_['contentOutstreamPosition'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adType != null) 'adType': adType!,
        if (contentOutstreamPosition != null)
          'contentOutstreamPosition': contentOutstreamPosition!,
      };
}

/// Represents a targetable content outstream position, which could be used by
/// display and video ads.
///
/// This will be populated in the content_outstream_position_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
typedef ContentOutstreamPositionTargetingOptionDetails
    = $ContentOutstreamPositionTargetingOptionDetails;

/// Details for content stream type assigned targeting option.
///
/// This will be populated in the content_stream_type_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_STREAM_TYPE`. Explicitly targeting
/// all options is not supported. Remove all content stream type targeting
/// options to achieve this effect.
typedef ContentStreamTypeAssignedTargetingOptionDetails
    = $ContentStreamTypeAssignedTargetingOptionDetails;

/// Represents a targetable content stream type.
///
/// This will be populated in the content_stream_type_details field when
/// targeting_type is `TARGETING_TYPE_CONTENT_STREAM_TYPE`.
typedef ContentStreamTypeTargetingOptionDetails
    = $ContentStreamTypeTargetingOptionDetails;

/// Settings that control how conversions are counted.
///
/// All post-click conversions will be counted. A percentage value can be set
/// for post-view conversions counting.
class ConversionCountingConfig {
  /// The Floodlight activity configs used to track conversions.
  ///
  /// The number of conversions counted is the sum of all of the conversions
  /// counted by all of the Floodlight activity IDs specified in this field.
  core.List<TrackingFloodlightActivityConfig>? floodlightActivityConfigs;

  /// The percentage of post-view conversions to count, in millis (1/1000 of a
  /// percent).
  ///
  /// Must be between 0 and 100000 inclusive. For example, to track 50% of the
  /// post-click conversions, set a value of 50000.
  core.String? postViewCountPercentageMillis;

  ConversionCountingConfig({
    this.floodlightActivityConfigs,
    this.postViewCountPercentageMillis,
  });

  ConversionCountingConfig.fromJson(core.Map json_)
      : this(
          floodlightActivityConfigs:
              json_.containsKey('floodlightActivityConfigs')
                  ? (json_['floodlightActivityConfigs'] as core.List)
                      .map((value) => TrackingFloodlightActivityConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          postViewCountPercentageMillis:
              json_.containsKey('postViewCountPercentageMillis')
                  ? json_['postViewCountPercentageMillis'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivityConfigs != null)
          'floodlightActivityConfigs': floodlightActivityConfigs!,
        if (postViewCountPercentageMillis != null)
          'postViewCountPercentageMillis': postViewCountPercentageMillis!,
      };
}

/// Counter event of the creative.
typedef CounterEvent = $CounterEvent;

/// A request message for CreateAsset.
typedef CreateAssetRequest = $CreateAssetRequest;

/// A response message for CreateAsset.
class CreateAssetResponse {
  /// The uploaded asset, if successful.
  Asset? asset;

  CreateAssetResponse({
    this.asset,
  });

  CreateAssetResponse.fromJson(core.Map json_)
      : this(
          asset: json_.containsKey('asset')
              ? Asset.fromJson(
                  json_['asset'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
      };
}

/// A request listing which assigned targeting options of a given targeting type
/// should be created and added.
class CreateAssignedTargetingOptionsRequest {
  /// The assigned targeting options to create and add.
  ///
  /// Required.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// Identifies the type of this assigned targeting option.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  core.String? targetingType;

  CreateAssignedTargetingOptionsRequest({
    this.assignedTargetingOptions,
    this.targetingType,
  });

  CreateAssignedTargetingOptionsRequest.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          targetingType: json_.containsKey('targetingType')
              ? json_['targetingType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (targetingType != null) 'targetingType': targetingType!,
      };
}

/// Request message for \[SdfDownloadTaskService.CreateSdfDownloadTask\].
class CreateSdfDownloadTaskRequest {
  /// The ID of the advertiser to download SDF for.
  core.String? advertiserId;

  /// Filters on entities by their entity IDs.
  IdFilter? idFilter;

  /// Filters on Inventory Sources by their IDs.
  InventorySourceFilter? inventorySourceFilter;

  /// Filters on selected file types.
  ///
  /// The entities in each file are filtered by a chosen set of filter entities.
  /// The filter entities must be the same type as, or a parent type of, the
  /// selected file types.
  ParentEntityFilter? parentEntityFilter;

  /// The ID of the partner to download SDF for.
  core.String? partnerId;

  /// The SDF version of the downloaded file.
  ///
  /// If set to `SDF_VERSION_UNSPECIFIED`, this will default to the version
  /// specified by the advertiser or partner identified by `root_id`. An
  /// advertiser inherits its SDF version from its partner unless configured
  /// otherwise.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SDF_VERSION_UNSPECIFIED" : SDF version value is not specified or is
  /// unknown in this version.
  /// - "SDF_VERSION_3_1" : SDF version 3.1
  /// - "SDF_VERSION_4" : SDF version 4
  /// - "SDF_VERSION_4_1" : SDF version 4.1
  /// - "SDF_VERSION_4_2" : SDF version 4.2
  /// - "SDF_VERSION_5" : SDF version 5.
  /// - "SDF_VERSION_5_1" : SDF version 5.1
  /// - "SDF_VERSION_5_2" : SDF version 5.2
  /// - "SDF_VERSION_5_3" : SDF version 5.3
  /// - "SDF_VERSION_5_4" : SDF version 5.4
  /// - "SDF_VERSION_5_5" : SDF version 5.5
  core.String? version;

  CreateSdfDownloadTaskRequest({
    this.advertiserId,
    this.idFilter,
    this.inventorySourceFilter,
    this.parentEntityFilter,
    this.partnerId,
    this.version,
  });

  CreateSdfDownloadTaskRequest.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          idFilter: json_.containsKey('idFilter')
              ? IdFilter.fromJson(
                  json_['idFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          inventorySourceFilter: json_.containsKey('inventorySourceFilter')
              ? InventorySourceFilter.fromJson(json_['inventorySourceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          parentEntityFilter: json_.containsKey('parentEntityFilter')
              ? ParentEntityFilter.fromJson(json_['parentEntityFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (idFilter != null) 'idFilter': idFilter!,
        if (inventorySourceFilter != null)
          'inventorySourceFilter': inventorySourceFilter!,
        if (parentEntityFilter != null)
          'parentEntityFilter': parentEntityFilter!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (version != null) 'version': version!,
      };
}

/// A single Creative.
class Creative {
  /// Additional dimensions.
  ///
  /// Applicable when creative_type is one of: * `CREATIVE_TYPE_STANDARD` *
  /// `CREATIVE_TYPE_EXPANDABLE` * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_TEMPLATED_APP_INSTALL` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE`
  /// * `CREATIVE_TYPE_LIGHTBOX` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` *
  /// `CREATIVE_TYPE_PUBLISHER_HOSTED` If this field is specified, width_pixels
  /// and height_pixels are both required and must be greater than or equal to
  /// 0.
  core.List<Dimensions>? additionalDimensions;

  /// The unique ID of the advertiser the creative belongs to.
  ///
  /// Output only.
  core.String? advertiserId;

  /// Third-party HTML tracking tag to be appended to the creative tag.
  core.String? appendedTag;

  /// Assets associated to this creative.
  ///
  /// Assets can be associated to the creative in one of following roles: *
  /// `ASSET_ROLE_UNSPECIFIED` * `ASSET_ROLE_MAIN` * `ASSET_ROLE_BACKUP` *
  /// `ASSET_ROLE_POLITE_LOAD`
  ///
  /// Required.
  core.List<AssetAssociation>? assets;

  /// The unique ID of the Campaign Manager 360 placement associated with the
  /// creative.
  ///
  /// This field is only applicable for creatives that are synced from Campaign
  /// Manager.
  ///
  /// Output only.
  core.String? cmPlacementId;

  /// The Campaign Manager 360 tracking ad associated with the creative.
  ///
  /// Optional for the following creative_type when created by an advertiser
  /// that uses both Campaign Manager 360 and third-party ad serving: *
  /// `CREATIVE_TYPE_NATIVE` * `CREATIVE_TYPE_NATIVE_SITE_SQUARE` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` Output only for other cases.
  CmTrackingAd? cmTrackingAd;

  /// The IDs of companion creatives for a video creative.
  ///
  /// You can assign existing display creatives (with image or HTML5 assets) to
  /// serve surrounding the publisher's video player. Companions display around
  /// the video player while the video is playing and remain after the video has
  /// completed. Creatives contain additional dimensions can not be companion
  /// creatives. This field is only supported for following creative_type: *
  /// `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
  core.List<core.String>? companionCreativeIds;

  /// Counter events for a rich media creative.
  ///
  /// Counters track the number of times that a user interacts with any part of
  /// a rich media creative in a specified way (mouse-overs, mouse-outs, clicks,
  /// taps, data loading, keyboard entries, etc.). Any event that can be
  /// captured in the creative can be recorded as a counter. Leave it empty or
  /// unset for creatives containing image assets only.
  core.List<CounterEvent>? counterEvents;

  /// The timestamp when the creative was created.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? createTime;

  /// A list of attributes of the creative that is generated by the system.
  ///
  /// Output only.
  core.List<core.String>? creativeAttributes;

  /// The unique ID of the creative.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? creativeId;

  /// The type of the creative.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "CREATIVE_TYPE_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "CREATIVE_TYPE_STANDARD" : Standard display creative. Create and update
  /// methods are supported for this creative type if the hosting_source is one
  /// of the following: * `HOSTING_SOURCE_HOSTED` * `HOSTING_SOURCE_THIRD_PARTY`
  /// - "CREATIVE_TYPE_EXPANDABLE" : Expandable creative. Create and update
  /// methods are supported for this creative type if the hosting_source is
  /// `HOSTING_SOURCE_THIRD_PARTY`
  /// - "CREATIVE_TYPE_VIDEO" : Video creative. Create and update methods are
  /// supported for this creative type if the hosting_source is one of the
  /// following: * `HOSTING_SOURCE_HOSTED` * `HOSTING_SOURCE_THIRD_PARTY`
  /// - "CREATIVE_TYPE_NATIVE" : Native creative rendered by publishers with
  /// assets from advertiser. Create and update methods are supported for this
  /// creative type if the hosting_source is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_TEMPLATED_APP_INSTALL" : Templated app install mobile
  /// creative (banner). Create and update methods are **not** supported for
  /// this creative type.
  /// - "CREATIVE_TYPE_NATIVE_SITE_SQUARE" : Square native creative. Create and
  /// update methods are supported for this creative type if the hosting_source
  /// is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_TEMPLATED_APP_INSTALL_INTERSTITIAL" : Interstitial
  /// creative including both display and video. Create and update methods are
  /// **not** supported for this creative type.
  /// - "CREATIVE_TYPE_LIGHTBOX" : Responsive and expandable Lightbox creative.
  /// Create and update methods are **not** supported for this creative type.
  /// - "CREATIVE_TYPE_NATIVE_APP_INSTALL" : Native app install creative. Create
  /// and update methods are supported for this creative type if the
  /// hosting_source is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE" : Square native app install
  /// creative. Create and update methods are supported for this creative type
  /// if the hosting_source is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_AUDIO" : Audio creative. Create and update methods are
  /// supported for this creative type if the hosting_source is
  /// `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_PUBLISHER_HOSTED" : Publisher hosted creative. Create and
  /// update methods are **not** supported for this creative type.
  /// - "CREATIVE_TYPE_NATIVE_VIDEO" : Native video creative. Create and update
  /// methods are supported for this creative type if the hosting_source is
  /// `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_TEMPLATED_APP_INSTALL_VIDEO" : Templated app install
  /// mobile video creative. Create and update methods are **not** supported for
  /// this creative type.
  core.String? creativeType;

  /// Primary dimensions of the creative.
  ///
  /// Applicable to all creative types. The value of width_pixels and
  /// height_pixels defaults to `0` when creative_type is one of: *
  /// `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_TEMPLATED_APP_INSTALL_INTERSTITIAL`
  /// * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_NATIVE_VIDEO` *
  /// `CREATIVE_TYPE_TEMPLATED_APP_INSTALL_VIDEO`
  ///
  /// Required.
  Dimensions? dimensions;

  /// The display name of the creative.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Indicates whether the creative is dynamic.
  ///
  /// Output only.
  core.bool? dynamic;

  /// Controls whether or not the creative can serve.
  ///
  /// Accepted values are: * `ENTITY_STATUS_ACTIVE` * `ENTITY_STATUS_ARCHIVED` *
  /// `ENTITY_STATUS_PAUSED`
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// Exit events for this creative.
  ///
  /// An exit (also known as a click tag) is any area in your creative that
  /// someone can click or tap to open an advertiser's landing page. Every
  /// creative must include at least one exit. You can add an exit to your
  /// creative in any of the following ways: * Use Google Web Designer's tap
  /// area. * Define a JavaScript variable called "clickTag". * Use the Enabler
  /// (Enabler.exit()) to track exits in rich media formats.
  ///
  /// Required.
  core.List<ExitEvent>? exitEvents;

  /// Indicates the creative will automatically expand on hover.
  ///
  /// Optional and only valid for third-party expandable creatives. Third-party
  /// expandable creatives are creatives with following hosting source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_EXPANDABLE`
  ///
  /// Optional.
  core.bool? expandOnHover;

  /// Specifies the expanding direction of the creative.
  ///
  /// Required and only valid for third-party expandable creatives. Third-party
  /// expandable creatives are creatives with following hosting source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_EXPANDABLE`
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXPANDING_DIRECTION_UNSPECIFIED" : The expanding direction is not
  /// specified.
  /// - "EXPANDING_DIRECTION_NONE" : Does not expand in any direction.
  /// - "EXPANDING_DIRECTION_UP" : Expands up.
  /// - "EXPANDING_DIRECTION_DOWN" : Expands down.
  /// - "EXPANDING_DIRECTION_LEFT" : Expands left.
  /// - "EXPANDING_DIRECTION_RIGHT" : Expands right.
  /// - "EXPANDING_DIRECTION_UP_AND_LEFT" : Expands up and to the left side.
  /// - "EXPANDING_DIRECTION_UP_AND_RIGHT" : Expands up and to the right side.
  /// - "EXPANDING_DIRECTION_DOWN_AND_LEFT" : Expands down and to the left side.
  /// - "EXPANDING_DIRECTION_DOWN_AND_RIGHT" : Expands down and to the right
  /// side.
  /// - "EXPANDING_DIRECTION_UP_OR_DOWN" : Expands either up or down.
  /// - "EXPANDING_DIRECTION_LEFT_OR_RIGHT" : Expands to either the left or the
  /// right side.
  /// - "EXPANDING_DIRECTION_ANY_DIAGONAL" : Can expand in any diagonal
  /// direction.
  core.String? expandingDirection;

  /// Indicates where the creative is hosted.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HOSTING_SOURCE_UNSPECIFIED" : Hosting source is not specified or is
  /// unknown in this version.
  /// - "HOSTING_SOURCE_CM" : A creative synced from Campaign Manager 360.
  /// Create and update methods are **not** supported for this hosting type.
  /// - "HOSTING_SOURCE_THIRD_PARTY" : A creative hosted by a third-party ad
  /// server (3PAS). Create and update methods are supported for this hosting
  /// type if the creative_type is one of the following: * `CREATIVE_TYPE_AUDIO`
  /// * `CREATIVE_TYPE_EXPANDABLE` * `CREATIVE_TYPE_STANDARD` *
  /// `CREATIVE_TYPE_VIDEO`
  /// - "HOSTING_SOURCE_HOSTED" : A creative created in DV360 and hosted by
  /// Campaign Manager 360. Create and update methods are supported for this
  /// hosting type if the creative_type is one of the following: *
  /// `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO` *
  /// `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_VIDEO`
  /// - "HOSTING_SOURCE_RICH_MEDIA" : A rich media creative created in Studio
  /// and hosted by Campaign Manager 360. Create and update methods are **not**
  /// supported for this hosting type.
  core.String? hostingSource;

  /// Indicates the third-party VAST tag creative requires HTML5 Video support.
  ///
  /// Output only and only valid for third-party VAST tag creatives. Third-party
  /// VAST tag creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_VIDEO`
  ///
  /// Output only.
  core.bool? html5Video;

  /// Indicates whether Integral Ad Science (IAS) campaign monitoring is
  /// enabled.
  ///
  /// To enable this for the creative, make sure the
  /// Advertiser.creative_config.ias_client_id has been set to your IAS client
  /// ID.
  core.bool? iasCampaignMonitoring;

  /// ID information used to link this creative to an external system.
  ///
  /// Must be UTF-8 encoded with a length of no more than 10,000 characters.
  core.String? integrationCode;

  /// JavaScript measurement URL from supported third-party verification
  /// providers (ComScore, DoubleVerify, IAS, Moat).
  ///
  /// HTML script tags are not supported. This field is only supported in
  /// following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  core.String? jsTrackerUrl;

  /// The IDs of the line items this creative is associated with.
  ///
  /// To associate a creative to a line item, use LineItem.creative_ids instead.
  ///
  /// Output only.
  core.List<core.String>? lineItemIds;

  /// Media duration of the creative.
  ///
  /// Applicable when creative_type is one of: * `CREATIVE_TYPE_VIDEO` *
  /// `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_NATIVE_VIDEO` *
  /// `CREATIVE_TYPE_PUBLISHER_HOSTED`
  ///
  /// Output only.
  core.String? mediaDuration;

  /// Indicates the third-party audio creative supports MP3.
  ///
  /// Output only and only valid for third-party audio creatives. Third-party
  /// audio creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_AUDIO`
  ///
  /// Output only.
  core.bool? mp3Audio;

  /// The resource name of the creative.
  ///
  /// Output only.
  core.String? name;

  /// User notes for this creative.
  ///
  /// Must be UTF-8 encoded with a length of no more than 20,000 characters.
  core.String? notes;

  /// Specifies the OBA icon for a video creative.
  ///
  /// This field is only supported in following creative_type: *
  /// `CREATIVE_TYPE_VIDEO`
  ObaIcon? obaIcon;

  /// Indicates the third-party audio creative supports OGG.
  ///
  /// Output only and only valid for third-party audio creatives. Third-party
  /// audio creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_AUDIO`
  ///
  /// Output only.
  core.bool? oggAudio;

  /// Amount of time to play the video before counting a view.
  ///
  /// This field is required when skippable is true. This field is only
  /// supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
  AudioVideoOffset? progressOffset;

  /// Indicates that the creative relies on HTML5 to render properly.
  ///
  /// Optional and only valid for third-party tag creatives. Third-party tag
  /// creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  ///
  /// Optional.
  core.bool? requireHtml5;

  /// Indicates that the creative requires MRAID (Mobile Rich Media Ad Interface
  /// Definitions system).
  ///
  /// Set this if the creative relies on mobile gestures for interactivity, such
  /// as swiping or tapping. Optional and only valid for third-party tag
  /// creatives. Third-party tag creatives are creatives with following
  /// hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following
  /// creative_type: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  ///
  /// Optional.
  core.bool? requireMraid;

  /// Indicates that the creative will wait for a return ping for attribution.
  ///
  /// Only valid when using a Campaign Manager 360 tracking ad with a
  /// third-party ad server parameter and the ${DC_DBM_TOKEN} macro. Optional
  /// and only valid for third-party tag creatives or third-party VAST tag
  /// creatives. Third-party tag creatives are creatives with following
  /// hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following
  /// creative_type: * `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  /// Third-party VAST tag creatives are creatives with following
  /// hosting_source: * `HOSTING_SOURCE_THIRD_PARTY` combined with following
  /// creative_type: * `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
  ///
  /// Optional.
  core.bool? requirePingForAttribution;

  /// The current status of the creative review process.
  ///
  /// Output only.
  ReviewStatusInfo? reviewStatus;

  /// Amount of time to play the video before the skip button appears.
  ///
  /// This field is required when skippable is true. This field is only
  /// supported for the following creative_type: * `CREATIVE_TYPE_VIDEO`
  AudioVideoOffset? skipOffset;

  /// Whether the user can choose to skip a video creative.
  ///
  /// This field is only supported for the following creative_type: *
  /// `CREATIVE_TYPE_VIDEO`
  core.bool? skippable;

  /// The original third-party tag used for the creative.
  ///
  /// Required and only valid for third-party tag creatives. Third-party tag
  /// creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_STANDARD` * `CREATIVE_TYPE_EXPANDABLE`
  ///
  /// Optional.
  core.String? thirdPartyTag;

  /// Tracking URLs from third parties to track interactions with a video
  /// creative.
  ///
  /// This field is only supported for the following creative_type: *
  /// `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO` *
  /// `CREATIVE_TYPE_NATIVE_VIDEO`
  core.List<ThirdPartyUrl>? thirdPartyUrls;

  /// Timer custom events for a rich media creative.
  ///
  /// Timers track the time during which a user views and interacts with a
  /// specified part of a rich media creative. A creative can have multiple
  /// timer events, each timed independently. Leave it empty or unset for
  /// creatives containing image assets only.
  core.List<TimerEvent>? timerEvents;

  /// Tracking URLs for analytics providers or third-party ad technology
  /// vendors.
  ///
  /// The URLs must start with https (except on inventory that doesn't require
  /// SSL compliance). If using macros in your URL, use only macros supported by
  /// Display & Video 360. Standard URLs only, no IMG or SCRIPT tags. This field
  /// is only supported in following creative_type: * `CREATIVE_TYPE_NATIVE` *
  /// `CREATIVE_TYPE_NATIVE_SITE_SQUARE` * `CREATIVE_TYPE_NATIVE_APP_INSTALL` *
  /// `CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE` * `CREATIVE_TYPE_NATIVE_VIDEO`
  core.List<core.String>? trackerUrls;

  /// Audio/Video transcodes.
  ///
  /// Display & Video 360 transcodes the main asset into a number of alternative
  /// versions that use different file formats or have different properties
  /// (resolution, audio bit rate, and video bit rate), each designed for
  /// specific video players or bandwidths. These transcodes give a publisher's
  /// system more options to choose from for each impression on your video and
  /// ensures that the appropriate file serves based on the viewer’s connection
  /// and screen size. This field is only supported in following creative_type:
  /// * `CREATIVE_TYPE_VIDEO` * `CREATIVE_TYPE_NATIVE_VIDEO` *
  /// `CREATIVE_TYPE_AUDIO`
  ///
  /// Output only.
  core.List<Transcode>? transcodes;

  /// An optional creative identifier provided by a registry that is unique
  /// across all platforms.
  ///
  /// Universal Ad ID is part of the VAST 4.0 standard. It can be modified after
  /// the creative is created. This field is only supported for the following
  /// creative_type: * `CREATIVE_TYPE_VIDEO`
  ///
  /// Optional.
  UniversalAdId? universalAdId;

  /// The timestamp when the creative was last updated, either by the user or
  /// system (e.g. creative review).
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  /// The URL of the VAST tag for a third-party VAST tag creative.
  ///
  /// Required and only valid for third-party VAST tag creatives. Third-party
  /// VAST tag creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_AUDIO` * `CREATIVE_TYPE_VIDEO`
  ///
  /// Optional.
  core.String? vastTagUrl;

  /// Indicates the third-party VAST tag creative requires VPAID (Digital Video
  /// Player-Ad Interface).
  ///
  /// Output only and only valid for third-party VAST tag creatives. Third-party
  /// VAST tag creatives are creatives with following hosting_source: *
  /// `HOSTING_SOURCE_THIRD_PARTY` combined with following creative_type: *
  /// `CREATIVE_TYPE_VIDEO`
  ///
  /// Output only.
  core.bool? vpaid;

  Creative({
    this.additionalDimensions,
    this.advertiserId,
    this.appendedTag,
    this.assets,
    this.cmPlacementId,
    this.cmTrackingAd,
    this.companionCreativeIds,
    this.counterEvents,
    this.createTime,
    this.creativeAttributes,
    this.creativeId,
    this.creativeType,
    this.dimensions,
    this.displayName,
    this.dynamic,
    this.entityStatus,
    this.exitEvents,
    this.expandOnHover,
    this.expandingDirection,
    this.hostingSource,
    this.html5Video,
    this.iasCampaignMonitoring,
    this.integrationCode,
    this.jsTrackerUrl,
    this.lineItemIds,
    this.mediaDuration,
    this.mp3Audio,
    this.name,
    this.notes,
    this.obaIcon,
    this.oggAudio,
    this.progressOffset,
    this.requireHtml5,
    this.requireMraid,
    this.requirePingForAttribution,
    this.reviewStatus,
    this.skipOffset,
    this.skippable,
    this.thirdPartyTag,
    this.thirdPartyUrls,
    this.timerEvents,
    this.trackerUrls,
    this.transcodes,
    this.universalAdId,
    this.updateTime,
    this.vastTagUrl,
    this.vpaid,
  });

  Creative.fromJson(core.Map json_)
      : this(
          additionalDimensions: json_.containsKey('additionalDimensions')
              ? (json_['additionalDimensions'] as core.List)
                  .map((value) => Dimensions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          appendedTag: json_.containsKey('appendedTag')
              ? json_['appendedTag'] as core.String
              : null,
          assets: json_.containsKey('assets')
              ? (json_['assets'] as core.List)
                  .map((value) => AssetAssociation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          cmPlacementId: json_.containsKey('cmPlacementId')
              ? json_['cmPlacementId'] as core.String
              : null,
          cmTrackingAd: json_.containsKey('cmTrackingAd')
              ? CmTrackingAd.fromJson(
                  json_['cmTrackingAd'] as core.Map<core.String, core.dynamic>)
              : null,
          companionCreativeIds: json_.containsKey('companionCreativeIds')
              ? (json_['companionCreativeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          counterEvents: json_.containsKey('counterEvents')
              ? (json_['counterEvents'] as core.List)
                  .map((value) => CounterEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creativeAttributes: json_.containsKey('creativeAttributes')
              ? (json_['creativeAttributes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          creativeId: json_.containsKey('creativeId')
              ? json_['creativeId'] as core.String
              : null,
          creativeType: json_.containsKey('creativeType')
              ? json_['creativeType'] as core.String
              : null,
          dimensions: json_.containsKey('dimensions')
              ? Dimensions.fromJson(
                  json_['dimensions'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          dynamic: json_.containsKey('dynamic')
              ? json_['dynamic'] as core.bool
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          exitEvents: json_.containsKey('exitEvents')
              ? (json_['exitEvents'] as core.List)
                  .map((value) => ExitEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          expandOnHover: json_.containsKey('expandOnHover')
              ? json_['expandOnHover'] as core.bool
              : null,
          expandingDirection: json_.containsKey('expandingDirection')
              ? json_['expandingDirection'] as core.String
              : null,
          hostingSource: json_.containsKey('hostingSource')
              ? json_['hostingSource'] as core.String
              : null,
          html5Video: json_.containsKey('html5Video')
              ? json_['html5Video'] as core.bool
              : null,
          iasCampaignMonitoring: json_.containsKey('iasCampaignMonitoring')
              ? json_['iasCampaignMonitoring'] as core.bool
              : null,
          integrationCode: json_.containsKey('integrationCode')
              ? json_['integrationCode'] as core.String
              : null,
          jsTrackerUrl: json_.containsKey('jsTrackerUrl')
              ? json_['jsTrackerUrl'] as core.String
              : null,
          lineItemIds: json_.containsKey('lineItemIds')
              ? (json_['lineItemIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mediaDuration: json_.containsKey('mediaDuration')
              ? json_['mediaDuration'] as core.String
              : null,
          mp3Audio: json_.containsKey('mp3Audio')
              ? json_['mp3Audio'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          obaIcon: json_.containsKey('obaIcon')
              ? ObaIcon.fromJson(
                  json_['obaIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          oggAudio: json_.containsKey('oggAudio')
              ? json_['oggAudio'] as core.bool
              : null,
          progressOffset: json_.containsKey('progressOffset')
              ? AudioVideoOffset.fromJson(json_['progressOffset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requireHtml5: json_.containsKey('requireHtml5')
              ? json_['requireHtml5'] as core.bool
              : null,
          requireMraid: json_.containsKey('requireMraid')
              ? json_['requireMraid'] as core.bool
              : null,
          requirePingForAttribution:
              json_.containsKey('requirePingForAttribution')
                  ? json_['requirePingForAttribution'] as core.bool
                  : null,
          reviewStatus: json_.containsKey('reviewStatus')
              ? ReviewStatusInfo.fromJson(
                  json_['reviewStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          skipOffset: json_.containsKey('skipOffset')
              ? AudioVideoOffset.fromJson(
                  json_['skipOffset'] as core.Map<core.String, core.dynamic>)
              : null,
          skippable: json_.containsKey('skippable')
              ? json_['skippable'] as core.bool
              : null,
          thirdPartyTag: json_.containsKey('thirdPartyTag')
              ? json_['thirdPartyTag'] as core.String
              : null,
          thirdPartyUrls: json_.containsKey('thirdPartyUrls')
              ? (json_['thirdPartyUrls'] as core.List)
                  .map((value) => ThirdPartyUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timerEvents: json_.containsKey('timerEvents')
              ? (json_['timerEvents'] as core.List)
                  .map((value) => TimerEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trackerUrls: json_.containsKey('trackerUrls')
              ? (json_['trackerUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transcodes: json_.containsKey('transcodes')
              ? (json_['transcodes'] as core.List)
                  .map((value) => Transcode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          universalAdId: json_.containsKey('universalAdId')
              ? UniversalAdId.fromJson(
                  json_['universalAdId'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vastTagUrl: json_.containsKey('vastTagUrl')
              ? json_['vastTagUrl'] as core.String
              : null,
          vpaid:
              json_.containsKey('vpaid') ? json_['vpaid'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalDimensions != null)
          'additionalDimensions': additionalDimensions!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (appendedTag != null) 'appendedTag': appendedTag!,
        if (assets != null) 'assets': assets!,
        if (cmPlacementId != null) 'cmPlacementId': cmPlacementId!,
        if (cmTrackingAd != null) 'cmTrackingAd': cmTrackingAd!,
        if (companionCreativeIds != null)
          'companionCreativeIds': companionCreativeIds!,
        if (counterEvents != null) 'counterEvents': counterEvents!,
        if (createTime != null) 'createTime': createTime!,
        if (creativeAttributes != null)
          'creativeAttributes': creativeAttributes!,
        if (creativeId != null) 'creativeId': creativeId!,
        if (creativeType != null) 'creativeType': creativeType!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (displayName != null) 'displayName': displayName!,
        if (dynamic != null) 'dynamic': dynamic!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (exitEvents != null) 'exitEvents': exitEvents!,
        if (expandOnHover != null) 'expandOnHover': expandOnHover!,
        if (expandingDirection != null)
          'expandingDirection': expandingDirection!,
        if (hostingSource != null) 'hostingSource': hostingSource!,
        if (html5Video != null) 'html5Video': html5Video!,
        if (iasCampaignMonitoring != null)
          'iasCampaignMonitoring': iasCampaignMonitoring!,
        if (integrationCode != null) 'integrationCode': integrationCode!,
        if (jsTrackerUrl != null) 'jsTrackerUrl': jsTrackerUrl!,
        if (lineItemIds != null) 'lineItemIds': lineItemIds!,
        if (mediaDuration != null) 'mediaDuration': mediaDuration!,
        if (mp3Audio != null) 'mp3Audio': mp3Audio!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (obaIcon != null) 'obaIcon': obaIcon!,
        if (oggAudio != null) 'oggAudio': oggAudio!,
        if (progressOffset != null) 'progressOffset': progressOffset!,
        if (requireHtml5 != null) 'requireHtml5': requireHtml5!,
        if (requireMraid != null) 'requireMraid': requireMraid!,
        if (requirePingForAttribution != null)
          'requirePingForAttribution': requirePingForAttribution!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (skipOffset != null) 'skipOffset': skipOffset!,
        if (skippable != null) 'skippable': skippable!,
        if (thirdPartyTag != null) 'thirdPartyTag': thirdPartyTag!,
        if (thirdPartyUrls != null) 'thirdPartyUrls': thirdPartyUrls!,
        if (timerEvents != null) 'timerEvents': timerEvents!,
        if (trackerUrls != null) 'trackerUrls': trackerUrls!,
        if (transcodes != null) 'transcodes': transcodes!,
        if (universalAdId != null) 'universalAdId': universalAdId!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vastTagUrl != null) 'vastTagUrl': vastTagUrl!,
        if (vpaid != null) 'vpaid': vpaid!,
      };
}

/// Creative requirements configuration for the inventory source.
class CreativeConfig {
  /// The type of creative that can be assigned to the inventory source.
  ///
  /// Only the following types are supported: * `CREATIVE_TYPE_STANDARD` *
  /// `CREATIVE_TYPE_VIDEO`
  /// Possible string values are:
  /// - "CREATIVE_TYPE_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "CREATIVE_TYPE_STANDARD" : Standard display creative. Create and update
  /// methods are supported for this creative type if the hosting_source is one
  /// of the following: * `HOSTING_SOURCE_HOSTED` * `HOSTING_SOURCE_THIRD_PARTY`
  /// - "CREATIVE_TYPE_EXPANDABLE" : Expandable creative. Create and update
  /// methods are supported for this creative type if the hosting_source is
  /// `HOSTING_SOURCE_THIRD_PARTY`
  /// - "CREATIVE_TYPE_VIDEO" : Video creative. Create and update methods are
  /// supported for this creative type if the hosting_source is one of the
  /// following: * `HOSTING_SOURCE_HOSTED` * `HOSTING_SOURCE_THIRD_PARTY`
  /// - "CREATIVE_TYPE_NATIVE" : Native creative rendered by publishers with
  /// assets from advertiser. Create and update methods are supported for this
  /// creative type if the hosting_source is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_TEMPLATED_APP_INSTALL" : Templated app install mobile
  /// creative (banner). Create and update methods are **not** supported for
  /// this creative type.
  /// - "CREATIVE_TYPE_NATIVE_SITE_SQUARE" : Square native creative. Create and
  /// update methods are supported for this creative type if the hosting_source
  /// is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_TEMPLATED_APP_INSTALL_INTERSTITIAL" : Interstitial
  /// creative including both display and video. Create and update methods are
  /// **not** supported for this creative type.
  /// - "CREATIVE_TYPE_LIGHTBOX" : Responsive and expandable Lightbox creative.
  /// Create and update methods are **not** supported for this creative type.
  /// - "CREATIVE_TYPE_NATIVE_APP_INSTALL" : Native app install creative. Create
  /// and update methods are supported for this creative type if the
  /// hosting_source is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_NATIVE_APP_INSTALL_SQUARE" : Square native app install
  /// creative. Create and update methods are supported for this creative type
  /// if the hosting_source is `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_AUDIO" : Audio creative. Create and update methods are
  /// supported for this creative type if the hosting_source is
  /// `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_PUBLISHER_HOSTED" : Publisher hosted creative. Create and
  /// update methods are **not** supported for this creative type.
  /// - "CREATIVE_TYPE_NATIVE_VIDEO" : Native video creative. Create and update
  /// methods are supported for this creative type if the hosting_source is
  /// `HOSTING_SOURCE_HOSTED`
  /// - "CREATIVE_TYPE_TEMPLATED_APP_INSTALL_VIDEO" : Templated app install
  /// mobile video creative. Create and update methods are **not** supported for
  /// this creative type.
  core.String? creativeType;

  /// The configuration for display creatives.
  ///
  /// Applicable when creative_type is `CREATIVE_TYPE_STANDARD`.
  InventorySourceDisplayCreativeConfig? displayCreativeConfig;

  /// The configuration for video creatives.
  ///
  /// Applicable when creative_type is `CREATIVE_TYPE_VIDEO`.
  InventorySourceVideoCreativeConfig? videoCreativeConfig;

  CreativeConfig({
    this.creativeType,
    this.displayCreativeConfig,
    this.videoCreativeConfig,
  });

  CreativeConfig.fromJson(core.Map json_)
      : this(
          creativeType: json_.containsKey('creativeType')
              ? json_['creativeType'] as core.String
              : null,
          displayCreativeConfig: json_.containsKey('displayCreativeConfig')
              ? InventorySourceDisplayCreativeConfig.fromJson(
                  json_['displayCreativeConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoCreativeConfig: json_.containsKey('videoCreativeConfig')
              ? InventorySourceVideoCreativeConfig.fromJson(
                  json_['videoCreativeConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeType != null) 'creativeType': creativeType!,
        if (displayCreativeConfig != null)
          'displayCreativeConfig': displayCreativeConfig!,
        if (videoCreativeConfig != null)
          'videoCreativeConfig': videoCreativeConfig!,
      };
}

/// A single custom bidding algorithm.
class CustomBiddingAlgorithm {
  /// The unique ID of the advertiser that owns the custom bidding algorithm.
  ///
  /// Immutable.
  core.String? advertiserId;

  /// The unique ID of the custom bidding algorithm.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? customBiddingAlgorithmId;

  /// The type of custom bidding algorithm.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "CUSTOM_BIDDING_ALGORITHM_TYPE_UNSPECIFIED" : Algorithm type is not
  /// specified or is unknown in this version.
  /// - "SCRIPT_BASED" : Algorithm generated through customer-uploaded custom
  /// bidding script files.
  /// - "ADS_DATA_HUB_BASED" : Algorithm created through Ads Data Hub product.
  /// - "GOAL_BUILDER_BASED" : Algorithm created through goal builder in DV3 UI.
  core.String? customBiddingAlgorithmType;

  /// The display name of the custom bidding algorithm.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Controls whether or not the custom bidding algorithm can be used as a
  /// bidding strategy.
  ///
  /// Accepted values are: * `ENTITY_STATUS_ACTIVE` * `ENTITY_STATUS_ARCHIVED`
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// The details of custom bidding models for each advertiser who has access.
  ///
  /// This field may only include the details of the queried advertiser if the
  /// algorithm
  /// \[`owner`\](/display-video/api/reference/rest/v1/customBiddingAlgorithms#CustomBiddingAlgorithm.FIELDS.oneof_owner)
  /// is a partner and is being retrieved using an advertiser
  /// \[`accessor`\](/display-video/api/reference/rest/v1/customBiddingAlgorithms/list#body.QUERY_PARAMETERS.oneof_accessor).
  ///
  /// Output only.
  core.List<CustomBiddingModelDetails>? modelDetails;

  /// The resource name of the custom bidding algorithm.
  ///
  /// Output only.
  core.String? name;

  /// The unique ID of the partner that owns the custom bidding algorithm.
  ///
  /// Immutable.
  core.String? partnerId;

  /// The IDs of the advertisers who have access to this algorithm.
  ///
  /// If advertiser_id is set, this field will only consist of that value. This
  /// field will not be set if the algorithm
  /// \[`owner`\](/display-video/api/reference/rest/v1/customBiddingAlgorithms#CustomBiddingAlgorithm.FIELDS.oneof_owner)
  /// is a partner and is being retrieved using an advertiser
  /// \[`accessor`\](/display-video/api/reference/rest/v1/customBiddingAlgorithms/list#body.QUERY_PARAMETERS.oneof_accessor).
  core.List<core.String>? sharedAdvertiserIds;

  CustomBiddingAlgorithm({
    this.advertiserId,
    this.customBiddingAlgorithmId,
    this.customBiddingAlgorithmType,
    this.displayName,
    this.entityStatus,
    this.modelDetails,
    this.name,
    this.partnerId,
    this.sharedAdvertiserIds,
  });

  CustomBiddingAlgorithm.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          customBiddingAlgorithmId:
              json_.containsKey('customBiddingAlgorithmId')
                  ? json_['customBiddingAlgorithmId'] as core.String
                  : null,
          customBiddingAlgorithmType:
              json_.containsKey('customBiddingAlgorithmType')
                  ? json_['customBiddingAlgorithmType'] as core.String
                  : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          modelDetails: json_.containsKey('modelDetails')
              ? (json_['modelDetails'] as core.List)
                  .map((value) => CustomBiddingModelDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          sharedAdvertiserIds: json_.containsKey('sharedAdvertiserIds')
              ? (json_['sharedAdvertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (customBiddingAlgorithmId != null)
          'customBiddingAlgorithmId': customBiddingAlgorithmId!,
        if (customBiddingAlgorithmType != null)
          'customBiddingAlgorithmType': customBiddingAlgorithmType!,
        if (displayName != null) 'displayName': displayName!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (modelDetails != null) 'modelDetails': modelDetails!,
        if (name != null) 'name': name!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (sharedAdvertiserIds != null)
          'sharedAdvertiserIds': sharedAdvertiserIds!,
      };
}

/// The details of a custom bidding algorithm model for a single shared
/// advertiser.
class CustomBiddingModelDetails {
  /// The unique ID of the relevant advertiser.
  core.String? advertiserId;

  /// The readiness state of custom bidding model.
  /// Possible string values are:
  /// - "READINESS_STATE_UNSPECIFIED" : State is not specified or is unknown in
  /// this version.
  /// - "READINESS_STATE_ACTIVE" : The model is trained and ready for serving.
  /// - "READINESS_STATE_INSUFFICIENT_DATA" : There is not enough data to train
  /// the serving model.
  /// - "READINESS_STATE_TRAINING" : The model is training and not ready for
  /// serving.
  /// - "READINESS_STATE_NO_VALID_SCRIPT" : A valid custom bidding script has
  /// not been provided with which to train the model. This state will only be
  /// applied to algorithms whose `custom_bidding_algorithm_type` is
  /// `SCRIPT_BASED`.
  core.String? readinessState;

  /// The suspension state of custom bidding model.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUSPENSION_STATE_UNSPECIFIED" : State is not specified or is unknown in
  /// this version.
  /// - "SUSPENSION_STATE_ENABLED" : Model is enabled, either recently used,
  /// currently used or scheduled to be used. The algorithm is actively scoring
  /// impressions for this advertiser.
  /// - "SUSPENSION_STATE_DORMANT" : Model has not been used recently. Although
  /// the model still acts as `ENABLED`, it will eventually be suspended if not
  /// used.
  /// - "SUSPENSION_STATE_SUSPENDED" : Model is suspended from scoring
  /// impressions and cannot serve. If the algorithm is assigned to a line item
  /// under this advertiser or otherwise updated, it will switch back to the
  /// `ENABLED` state and require time to prepare the serving model again.
  core.String? suspensionState;

  CustomBiddingModelDetails({
    this.advertiserId,
    this.readinessState,
    this.suspensionState,
  });

  CustomBiddingModelDetails.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          readinessState: json_.containsKey('readinessState')
              ? json_['readinessState'] as core.String
              : null,
          suspensionState: json_.containsKey('suspensionState')
              ? json_['suspensionState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (readinessState != null) 'readinessState': readinessState!,
        if (suspensionState != null) 'suspensionState': suspensionState!,
      };
}

/// A single custom bidding script.
class CustomBiddingScript {
  /// Whether the script is currently being used for scoring by the parent
  /// algorithm.
  ///
  /// Output only.
  core.bool? active;

  /// The time when the script was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique ID of the custom bidding algorithm the script belongs to.
  ///
  /// Output only.
  core.String? customBiddingAlgorithmId;

  /// The unique ID of the custom bidding script.
  ///
  /// Output only.
  core.String? customBiddingScriptId;

  /// Error details of a rejected custom bidding script.
  ///
  /// This field will only be populated when Script.state is REJECTED.
  ///
  /// Output only.
  core.List<ScriptError>? errors;

  /// The resource name of the custom bidding script.
  ///
  /// Output only.
  core.String? name;

  /// The reference to the uploaded script file.
  CustomBiddingScriptRef? script;

  /// The state of the custom bidding script.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The script state is not specified or is unknown in
  /// this version.
  /// - "ACCEPTED" : The script has been accepted for scoring impressions.
  /// - "REJECTED" : The script has been rejected by backend pipelines. It may
  /// have errors.
  /// - "PENDING" : The script is being processed for backend pipelines.
  core.String? state;

  CustomBiddingScript({
    this.active,
    this.createTime,
    this.customBiddingAlgorithmId,
    this.customBiddingScriptId,
    this.errors,
    this.name,
    this.script,
    this.state,
  });

  CustomBiddingScript.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          customBiddingAlgorithmId:
              json_.containsKey('customBiddingAlgorithmId')
                  ? json_['customBiddingAlgorithmId'] as core.String
                  : null,
          customBiddingScriptId: json_.containsKey('customBiddingScriptId')
              ? json_['customBiddingScriptId'] as core.String
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ScriptError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          script: json_.containsKey('script')
              ? CustomBiddingScriptRef.fromJson(
                  json_['script'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (createTime != null) 'createTime': createTime!,
        if (customBiddingAlgorithmId != null)
          'customBiddingAlgorithmId': customBiddingAlgorithmId!,
        if (customBiddingScriptId != null)
          'customBiddingScriptId': customBiddingScriptId!,
        if (errors != null) 'errors': errors!,
        if (name != null) 'name': name!,
        if (script != null) 'script': script!,
        if (state != null) 'state': state!,
      };
}

/// The reference to the uploaded custom bidding script file.
typedef CustomBiddingScriptRef = $CustomBiddingScriptRef;

/// Describes a custom list entity, such as a custom affinity or custom intent
/// audience list.
typedef CustomList = $CustomList;

/// Details of custom list group.
///
/// All custom list targeting settings are logically ‘OR’ of each other.
class CustomListGroup {
  /// All custom list targeting settings in custom list group.
  ///
  /// Repeated settings with same id will be ignored.
  ///
  /// Required.
  core.List<CustomListTargetingSetting>? settings;

  CustomListGroup({
    this.settings,
  });

  CustomListGroup.fromJson(core.Map json_)
      : this(
          settings: json_.containsKey('settings')
              ? (json_['settings'] as core.List)
                  .map((value) => CustomListTargetingSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (settings != null) 'settings': settings!,
      };
}

/// Details of custom list targeting setting.
typedef CustomListTargetingSetting = $CustomListTargetingSetting;

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

/// A date range.
class DateRange {
  /// The upper bound of the date range, inclusive.
  ///
  /// Must specify a positive value for `year`, `month`, and `day`.
  Date? endDate;

  /// The lower bound of the date range, inclusive.
  ///
  /// Must specify a positive value for `year`, `month`, and `day`.
  Date? startDate;

  DateRange({
    this.endDate,
    this.startDate,
  });

  DateRange.fromJson(core.Map json_)
      : this(
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// Representation of a segment of time defined on a specific day of the week
/// and with a start and end time.
///
/// The time represented by `start_hour` must be before the time represented by
/// `end_hour`.
typedef DayAndTimeAssignedTargetingOptionDetails
    = $DayAndTimeAssignedTargetingOptionDetails;

/// Request message for ManualTriggerService.DeactivateManualTrigger.
typedef DeactivateManualTriggerRequest = $Empty;

/// A request listing which assigned targeting options of a given targeting type
/// should be deleted.
typedef DeleteAssignedTargetingOptionsRequest
    = $DeleteAssignedTargetingOptionsRequest;

/// Assigned device make and model targeting option details.
///
/// This will be populated in the device_make_model_details field when
/// targeting_type is `TARGETING_TYPE_DEVICE_MAKE_MODEL`.
typedef DeviceMakeModelAssignedTargetingOptionDetails
    = $DeviceMakeModelAssignedTargetingOptionDetails;

/// Represents a targetable device make and model.
///
/// This will be populated in the device_make_model_details field of a
/// TargetingOption when targeting_type is `TARGETING_TYPE_DEVICE_MAKE_MODEL`.
typedef DeviceMakeModelTargetingOptionDetails
    = $DeviceMakeModelTargetingOptionDetails;

/// Targeting details for device type.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_DEVICE_TYPE`.
class DeviceTypeAssignedTargetingOptionDetails {
  /// The display name of the device type.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : Default value when device type is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real device type option.
  /// - "DEVICE_TYPE_COMPUTER" : The device type is computer.
  /// - "DEVICE_TYPE_CONNECTED_TV" : The device type is connected TV.
  /// - "DEVICE_TYPE_SMART_PHONE" : The device type is smart phone..
  /// - "DEVICE_TYPE_TABLET" : The device type is tablet.
  core.String? deviceType;

  /// Bid multiplier allows you to show your ads more or less frequently based
  /// on the device type.
  ///
  /// It will apply a multiplier on the original bid price. When this field is
  /// 0, it indicates this field is not applicable instead of multiplying 0 on
  /// the original bid price. For example, if the bid price without multiplier
  /// is $10.0 and the multiplier is 1.5 for Tablet, the resulting bid price for
  /// Tablet will be $15.0. Only applicable to YouTube and Partners line items.
  ///
  /// Output only.
  core.double? youtubeAndPartnersBidMultiplier;

  DeviceTypeAssignedTargetingOptionDetails({
    this.deviceType,
    this.youtubeAndPartnersBidMultiplier,
  });

  DeviceTypeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          deviceType: json_.containsKey('deviceType')
              ? json_['deviceType'] as core.String
              : null,
          youtubeAndPartnersBidMultiplier:
              json_.containsKey('youtubeAndPartnersBidMultiplier')
                  ? (json_['youtubeAndPartnersBidMultiplier'] as core.num)
                      .toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceType != null) 'deviceType': deviceType!,
        if (youtubeAndPartnersBidMultiplier != null)
          'youtubeAndPartnersBidMultiplier': youtubeAndPartnersBidMultiplier!,
      };
}

/// Represents a targetable device type.
///
/// This will be populated in the device_type_details field of a TargetingOption
/// when targeting_type is `TARGETING_TYPE_DEVICE_TYPE`.
typedef DeviceTypeTargetingOptionDetails = $DeviceTypeTargetingOptionDetails;

/// Targeting details for digital content label.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
class DigitalContentLabelAssignedTargetingOptionDetails {
  /// The display name of the digital content label rating tier to be EXCLUDED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CONTENT_RATING_TIER_UNSPECIFIED" : Content label is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real content rating.
  /// - "CONTENT_RATING_TIER_UNRATED" : Content that has not been labeled.
  /// - "CONTENT_RATING_TIER_GENERAL" : Content suitable for general audiences.
  /// - "CONTENT_RATING_TIER_PARENTAL_GUIDANCE" : Content suitable for most
  /// audiences with parental guidance.
  /// - "CONTENT_RATING_TIER_TEENS" : Content suitable for teen and older
  /// audiences.
  /// - "CONTENT_RATING_TIER_MATURE" : Content suitable only for mature
  /// audiences.
  /// - "CONTENT_RATING_TIER_FAMILIES" : Content suitable for family audiences.
  /// It is a subset of CONTENT_RATING_TIER_GENERAL. Only applicable to YouTube
  /// and Partners line items.
  core.String? excludedContentRatingTier;

  DigitalContentLabelAssignedTargetingOptionDetails({
    this.excludedContentRatingTier,
  });

  DigitalContentLabelAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          excludedContentRatingTier:
              json_.containsKey('excludedContentRatingTier')
                  ? json_['excludedContentRatingTier'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedContentRatingTier != null)
          'excludedContentRatingTier': excludedContentRatingTier!,
      };
}

/// Represents a targetable digital content label rating tier.
///
/// This will be populated in the digital_content_label_details field of the
/// TargetingOption when targeting_type is
/// `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.
class DigitalContentLabelTargetingOptionDetails {
  /// An enum for the content label brand safety tiers.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONTENT_RATING_TIER_UNSPECIFIED" : Content label is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real content rating.
  /// - "CONTENT_RATING_TIER_UNRATED" : Content that has not been labeled.
  /// - "CONTENT_RATING_TIER_GENERAL" : Content suitable for general audiences.
  /// - "CONTENT_RATING_TIER_PARENTAL_GUIDANCE" : Content suitable for most
  /// audiences with parental guidance.
  /// - "CONTENT_RATING_TIER_TEENS" : Content suitable for teen and older
  /// audiences.
  /// - "CONTENT_RATING_TIER_MATURE" : Content suitable only for mature
  /// audiences.
  /// - "CONTENT_RATING_TIER_FAMILIES" : Content suitable for family audiences.
  /// It is a subset of CONTENT_RATING_TIER_GENERAL. Only applicable to YouTube
  /// and Partners line items.
  core.String? contentRatingTier;

  DigitalContentLabelTargetingOptionDetails({
    this.contentRatingTier,
  });

  DigitalContentLabelTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentRatingTier: json_.containsKey('contentRatingTier')
              ? json_['contentRatingTier'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentRatingTier != null) 'contentRatingTier': contentRatingTier!,
      };
}

/// Dimensions.
typedef Dimensions = $Dimensions;

/// Details of DoubleVerify settings.
class DoubleVerify {
  /// Avoid bidding on apps with the star ratings.
  DoubleVerifyAppStarRating? appStarRating;

  /// Avoid bidding on apps with the age rating.
  core.List<core.String>? avoidedAgeRatings;

  /// DV Brand Safety Controls.
  DoubleVerifyBrandSafetyCategories? brandSafetyCategories;

  /// The custom segment ID provided by DoubleVerify.
  ///
  /// The ID must start with "51" and consist of eight digits. Custom segment ID
  /// cannot be specified along with any of the following fields: *
  /// brand_safety_categories * avoided_age_ratings * app_star_rating *
  /// fraud_invalid_traffic
  core.String? customSegmentId;

  /// Display viewability settings (applicable to display line items only).
  DoubleVerifyDisplayViewability? displayViewability;

  /// Avoid Sites and Apps with historical Fraud & IVT Rates.
  DoubleVerifyFraudInvalidTraffic? fraudInvalidTraffic;

  /// Video viewability settings (applicable to video line items only).
  DoubleVerifyVideoViewability? videoViewability;

  DoubleVerify({
    this.appStarRating,
    this.avoidedAgeRatings,
    this.brandSafetyCategories,
    this.customSegmentId,
    this.displayViewability,
    this.fraudInvalidTraffic,
    this.videoViewability,
  });

  DoubleVerify.fromJson(core.Map json_)
      : this(
          appStarRating: json_.containsKey('appStarRating')
              ? DoubleVerifyAppStarRating.fromJson(
                  json_['appStarRating'] as core.Map<core.String, core.dynamic>)
              : null,
          avoidedAgeRatings: json_.containsKey('avoidedAgeRatings')
              ? (json_['avoidedAgeRatings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          brandSafetyCategories: json_.containsKey('brandSafetyCategories')
              ? DoubleVerifyBrandSafetyCategories.fromJson(
                  json_['brandSafetyCategories']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customSegmentId: json_.containsKey('customSegmentId')
              ? json_['customSegmentId'] as core.String
              : null,
          displayViewability: json_.containsKey('displayViewability')
              ? DoubleVerifyDisplayViewability.fromJson(
                  json_['displayViewability']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fraudInvalidTraffic: json_.containsKey('fraudInvalidTraffic')
              ? DoubleVerifyFraudInvalidTraffic.fromJson(
                  json_['fraudInvalidTraffic']
                      as core.Map<core.String, core.dynamic>)
              : null,
          videoViewability: json_.containsKey('videoViewability')
              ? DoubleVerifyVideoViewability.fromJson(json_['videoViewability']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appStarRating != null) 'appStarRating': appStarRating!,
        if (avoidedAgeRatings != null) 'avoidedAgeRatings': avoidedAgeRatings!,
        if (brandSafetyCategories != null)
          'brandSafetyCategories': brandSafetyCategories!,
        if (customSegmentId != null) 'customSegmentId': customSegmentId!,
        if (displayViewability != null)
          'displayViewability': displayViewability!,
        if (fraudInvalidTraffic != null)
          'fraudInvalidTraffic': fraudInvalidTraffic!,
        if (videoViewability != null) 'videoViewability': videoViewability!,
      };
}

/// Details of DoubleVerify star ratings settings.
typedef DoubleVerifyAppStarRating = $DoubleVerifyAppStarRating;

/// Settings for brand safety controls.
typedef DoubleVerifyBrandSafetyCategories = $DoubleVerifyBrandSafetyCategories;

/// Details of DoubleVerify display viewability settings.
typedef DoubleVerifyDisplayViewability = $DoubleVerifyDisplayViewability;

/// DoubleVerify Fraud & Invalid Traffic settings.
typedef DoubleVerifyFraudInvalidTraffic = $DoubleVerifyFraudInvalidTraffic;

/// Details of DoubleVerify video viewability settings.
typedef DoubleVerifyVideoViewability = $DoubleVerifyVideoViewability;

/// Request message for LineItemService.DuplicateLineItem.
class DuplicateLineItemRequest {
  /// The display name of the new line item.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  core.String? targetDisplayName;

  DuplicateLineItemRequest({
    this.targetDisplayName,
  });

  DuplicateLineItemRequest.fromJson(core.Map json_)
      : this(
          targetDisplayName: json_.containsKey('targetDisplayName')
              ? json_['targetDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetDisplayName != null) 'targetDisplayName': targetDisplayName!,
      };
}

class DuplicateLineItemResponse {
  /// The ID of the created line item.
  core.String? duplicateLineItemId;

  DuplicateLineItemResponse({
    this.duplicateLineItemId,
  });

  DuplicateLineItemResponse.fromJson(core.Map json_)
      : this(
          duplicateLineItemId: json_.containsKey('duplicateLineItemId')
              ? json_['duplicateLineItemId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duplicateLineItemId != null)
          'duplicateLineItemId': duplicateLineItemId!,
      };
}

/// Request message for
/// FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.
class EditCustomerMatchMembersRequest {
  /// Input only.
  ///
  /// A list of contact information to define the members to be added.
  ContactInfoList? addedContactInfoList;

  /// Input only.
  ///
  /// A list of mobile device IDs to define the members to be added.
  MobileDeviceIdList? addedMobileDeviceIdList;

  /// The ID of the owner advertiser of the updated Customer Match
  /// FirstAndThirdPartyAudience.
  ///
  /// Required.
  core.String? advertiserId;

  EditCustomerMatchMembersRequest({
    this.addedContactInfoList,
    this.addedMobileDeviceIdList,
    this.advertiserId,
  });

  EditCustomerMatchMembersRequest.fromJson(core.Map json_)
      : this(
          addedContactInfoList: json_.containsKey('addedContactInfoList')
              ? ContactInfoList.fromJson(json_['addedContactInfoList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          addedMobileDeviceIdList: json_.containsKey('addedMobileDeviceIdList')
              ? MobileDeviceIdList.fromJson(json_['addedMobileDeviceIdList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addedContactInfoList != null)
          'addedContactInfoList': addedContactInfoList!,
        if (addedMobileDeviceIdList != null)
          'addedMobileDeviceIdList': addedMobileDeviceIdList!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
      };
}

/// The response of FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.
typedef EditCustomerMatchMembersResponse = $EditCustomerMatchMembersResponse;

/// Request message for GuaranteedOrderService.EditGuaranteedOrderReadAccessors.
typedef EditGuaranteedOrderReadAccessorsRequest
    = $EditGuaranteedOrderReadAccessorsRequest;
typedef EditGuaranteedOrderReadAccessorsResponse
    = $EditGuaranteedOrderReadAccessorsResponse;

/// Request message for
/// InventorySourceService.EditInventorySourceReadWriteAccessors.
class EditInventorySourceReadWriteAccessorsRequest {
  /// The advertisers to add or remove from the list of advertisers that have
  /// read/write access to the inventory source.
  ///
  /// This change will remove an existing partner read/write accessor.
  EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate?
      advertisersUpdate;

  /// Set the partner context as read/write accessor of the inventory source.
  ///
  /// This will remove all other current read/write advertiser accessors.
  core.bool? assignPartner;

  /// The partner context by which the accessors change is being made.
  ///
  /// Required.
  core.String? partnerId;

  EditInventorySourceReadWriteAccessorsRequest({
    this.advertisersUpdate,
    this.assignPartner,
    this.partnerId,
  });

  EditInventorySourceReadWriteAccessorsRequest.fromJson(core.Map json_)
      : this(
          advertisersUpdate: json_.containsKey('advertisersUpdate')
              ? EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
                  .fromJson(json_['advertisersUpdate']
                      as core.Map<core.String, core.dynamic>)
              : null,
          assignPartner: json_.containsKey('assignPartner')
              ? json_['assignPartner'] as core.bool
              : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertisersUpdate != null) 'advertisersUpdate': advertisersUpdate!,
        if (assignPartner != null) 'assignPartner': assignPartner!,
        if (partnerId != null) 'partnerId': partnerId!,
      };
}

/// Update to the list of advertisers with read/write access to the inventory
/// source.
typedef EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate
    = $EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Assigned environment targeting option details.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_ENVIRONMENT`.
class EnvironmentAssignedTargetingOptionDetails {
  /// The serving environment.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "ENVIRONMENT_UNSPECIFIED" : Default value when environment is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real environment option.
  /// - "ENVIRONMENT_WEB_OPTIMIZED" : Target inventory displayed in browsers.
  /// This includes inventory that was designed for the device it was viewed on,
  /// such as mobile websites viewed on a mobile device.
  /// ENVIRONMENT_WEB_NOT_OPTIMIZED, if targeted, should be deleted prior to the
  /// deletion of this targeting option.
  /// - "ENVIRONMENT_WEB_NOT_OPTIMIZED" : Target inventory displayed in
  /// browsers. This includes inventory that was not designed for the device but
  /// viewed on it, such as websites optimized for desktop but viewed on a
  /// mobile device. ENVIRONMENT_WEB_OPTIMIZED should be targeted prior to the
  /// addition of this targeting option.
  /// - "ENVIRONMENT_APP" : Target inventory displayed in apps.
  core.String? environment;

  EnvironmentAssignedTargetingOptionDetails({
    this.environment,
  });

  EnvironmentAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
      };
}

/// Represents a targetable environment.
///
/// This will be populated in the environment_details field of a TargetingOption
/// when targeting_type is `TARGETING_TYPE_ENVIRONMENT`.
typedef EnvironmentTargetingOptionDetails = $EnvironmentTargetingOptionDetails;

/// Details for assigned exchange targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_EXCHANGE`.
class ExchangeAssignedTargetingOptionDetails {
  /// The enum value for the exchange.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  core.String? exchange;

  ExchangeAssignedTargetingOptionDetails({
    this.exchange,
  });

  ExchangeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exchange != null) 'exchange': exchange!,
      };
}

/// Settings that control which exchanges are enabled for a partner.
class ExchangeConfig {
  /// All enabled exchanges in the partner.
  ///
  /// Duplicate enabled exchanges will be ignored.
  core.List<ExchangeConfigEnabledExchange>? enabledExchanges;

  ExchangeConfig({
    this.enabledExchanges,
  });

  ExchangeConfig.fromJson(core.Map json_)
      : this(
          enabledExchanges: json_.containsKey('enabledExchanges')
              ? (json_['enabledExchanges'] as core.List)
                  .map((value) => ExchangeConfigEnabledExchange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabledExchanges != null) 'enabledExchanges': enabledExchanges!,
      };
}

/// An enabled exchange in the partner.
typedef ExchangeConfigEnabledExchange = $ExchangeConfigEnabledExchange;

/// Exchange review status for the creative.
typedef ExchangeReviewStatus = $ExchangeReviewStatus;

/// Represents a targetable exchange.
///
/// This will be populated in the exchange_details field of a TargetingOption
/// when targeting_type is `TARGETING_TYPE_EXCHANGE`.
typedef ExchangeTargetingOptionDetails = $ExchangeTargetingOptionDetails;

/// Exit event of the creative.
typedef ExitEvent = $ExitEvent;

/// Describes a first or third party audience list used for targeting.
///
/// First party audiences are created via usage of client data. Third party
/// audiences are provided by Third Party data providers and can only be
/// licensed to customers.
class FirstAndThirdPartyAudience {
  /// The estimated audience size for the Display network in the past month.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only returned in GET request.
  ///
  /// Output only.
  core.String? activeDisplayAudienceSize;

  /// The app_id matches with the type of the mobile_device_ids being uploaded.
  ///
  /// Only applicable to audience_type `CUSTOMER_MATCH_DEVICE_ID`
  core.String? appId;

  /// The source of the audience.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AUDIENCE_SOURCE_UNSPECIFIED" : Default value when audience source is
  /// not specified or is unknown.
  /// - "DISPLAY_VIDEO_360" : Originated from Display & Video 360.
  /// - "CAMPAIGN_MANAGER" : Originated from Campaign Manager 360.
  /// - "AD_MANAGER" : Originated from Google Ad Manager.
  /// - "SEARCH_ADS_360" : Originated from Search Ads 360.
  /// - "YOUTUBE" : Originated from Youtube.
  /// - "ADS_DATA_HUB" : Originated from Ads Data Hub.
  core.String? audienceSource;

  /// The type of the audience.
  /// Possible string values are:
  /// - "AUDIENCE_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown.
  /// - "CUSTOMER_MATCH_CONTACT_INFO" : Audience was generated through matching
  /// customers to known contact information.
  /// - "CUSTOMER_MATCH_DEVICE_ID" : Audience was generated through matching
  /// customers to known Mobile device IDs.
  /// - "CUSTOMER_MATCH_USER_ID" : Audience was generated through matching
  /// customers to known User IDs.
  /// - "ACTIVITY_BASED" : Audience was created based on campaign activity.
  /// - "FREQUENCY_CAP" : Audience was created based on excluding the number of
  /// impressions they were served.
  /// - "TAG_BASED" : Audience was created based on custom variables attached to
  /// pixel.
  /// - "YOUTUBE_USERS" : Audience was created based on past interactions with
  /// videos, YouTube ads, or YouTube channel.
  /// - "LICENSED" : Subtype of third party audience type.
  core.String? audienceType;

  /// Input only.
  ///
  /// A list of contact information to define the initial audience members. Only
  /// applicable to audience_type `CUSTOMER_MATCH_CONTACT_INFO`
  ContactInfoList? contactInfoList;

  /// The user-provided description of the audience.
  ///
  /// Only applicable to first party audiences.
  core.String? description;

  /// The estimated audience size for the Display network.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only returned in GET request.
  ///
  /// Output only.
  core.String? displayAudienceSize;

  /// The estimated desktop audience size in Display network.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only applicable to first party audiences. Only
  /// returned in GET request.
  ///
  /// Output only.
  core.String? displayDesktopAudienceSize;

  /// The estimated mobile app audience size in Display network.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only applicable to first party audiences. Only
  /// returned in GET request.
  ///
  /// Output only.
  core.String? displayMobileAppAudienceSize;

  /// The estimated mobile web audience size in Display network.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only applicable to first party audiences. Only
  /// returned in GET request.
  ///
  /// Output only.
  core.String? displayMobileWebAudienceSize;

  /// The display name of the first and third party audience.
  core.String? displayName;

  /// The unique ID of the first and third party audience.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? firstAndThirdPartyAudienceId;

  /// Whether the audience is a first or third party audience.
  /// Possible string values are:
  /// - "FIRST_AND_THIRD_PARTY_AUDIENCE_TYPE_UNSPECIFIED" : Default value when
  /// type is not specified or is unknown.
  /// - "FIRST_AND_THIRD_PARTY_AUDIENCE_TYPE_FIRST_PARTY" : Audience that is
  /// created via usage of client data.
  /// - "FIRST_AND_THIRD_PARTY_AUDIENCE_TYPE_THIRD_PARTY" : Audience that is
  /// provided by Third Party data providers.
  core.String? firstAndThirdPartyAudienceType;

  /// The estimated audience size for Gmail network.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only applicable to first party audiences. Only
  /// returned in GET request.
  ///
  /// Output only.
  core.String? gmailAudienceSize;

  /// The duration in days that an entry remains in the audience after the
  /// qualifying event.
  ///
  /// If the audience has no expiration, set the value of this field to 10000.
  /// Otherwise, the set value must be greater than 0 and less than or equal to
  /// 540. Only applicable to first party audiences. This field is required if
  /// one of the following audience_type is used: *
  /// `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`
  core.String? membershipDurationDays;

  /// Input only.
  ///
  /// A list of mobile device IDs to define the initial audience members. Only
  /// applicable to audience_type `CUSTOMER_MATCH_DEVICE_ID`
  MobileDeviceIdList? mobileDeviceIdList;

  /// The resource name of the first and third party audience.
  ///
  /// Output only.
  core.String? name;

  /// The estimated audience size for YouTube network.
  ///
  /// If the size is less than 1000, the number will be hidden and 0 will be
  /// returned due to privacy reasons. Otherwise, the number will be rounded off
  /// to two significant digits. Only applicable to first party audiences. Only
  /// returned in GET request.
  ///
  /// Output only.
  core.String? youtubeAudienceSize;

  FirstAndThirdPartyAudience({
    this.activeDisplayAudienceSize,
    this.appId,
    this.audienceSource,
    this.audienceType,
    this.contactInfoList,
    this.description,
    this.displayAudienceSize,
    this.displayDesktopAudienceSize,
    this.displayMobileAppAudienceSize,
    this.displayMobileWebAudienceSize,
    this.displayName,
    this.firstAndThirdPartyAudienceId,
    this.firstAndThirdPartyAudienceType,
    this.gmailAudienceSize,
    this.membershipDurationDays,
    this.mobileDeviceIdList,
    this.name,
    this.youtubeAudienceSize,
  });

  FirstAndThirdPartyAudience.fromJson(core.Map json_)
      : this(
          activeDisplayAudienceSize:
              json_.containsKey('activeDisplayAudienceSize')
                  ? json_['activeDisplayAudienceSize'] as core.String
                  : null,
          appId:
              json_.containsKey('appId') ? json_['appId'] as core.String : null,
          audienceSource: json_.containsKey('audienceSource')
              ? json_['audienceSource'] as core.String
              : null,
          audienceType: json_.containsKey('audienceType')
              ? json_['audienceType'] as core.String
              : null,
          contactInfoList: json_.containsKey('contactInfoList')
              ? ContactInfoList.fromJson(json_['contactInfoList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayAudienceSize: json_.containsKey('displayAudienceSize')
              ? json_['displayAudienceSize'] as core.String
              : null,
          displayDesktopAudienceSize:
              json_.containsKey('displayDesktopAudienceSize')
                  ? json_['displayDesktopAudienceSize'] as core.String
                  : null,
          displayMobileAppAudienceSize:
              json_.containsKey('displayMobileAppAudienceSize')
                  ? json_['displayMobileAppAudienceSize'] as core.String
                  : null,
          displayMobileWebAudienceSize:
              json_.containsKey('displayMobileWebAudienceSize')
                  ? json_['displayMobileWebAudienceSize'] as core.String
                  : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          firstAndThirdPartyAudienceId:
              json_.containsKey('firstAndThirdPartyAudienceId')
                  ? json_['firstAndThirdPartyAudienceId'] as core.String
                  : null,
          firstAndThirdPartyAudienceType:
              json_.containsKey('firstAndThirdPartyAudienceType')
                  ? json_['firstAndThirdPartyAudienceType'] as core.String
                  : null,
          gmailAudienceSize: json_.containsKey('gmailAudienceSize')
              ? json_['gmailAudienceSize'] as core.String
              : null,
          membershipDurationDays: json_.containsKey('membershipDurationDays')
              ? json_['membershipDurationDays'] as core.String
              : null,
          mobileDeviceIdList: json_.containsKey('mobileDeviceIdList')
              ? MobileDeviceIdList.fromJson(json_['mobileDeviceIdList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          youtubeAudienceSize: json_.containsKey('youtubeAudienceSize')
              ? json_['youtubeAudienceSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeDisplayAudienceSize != null)
          'activeDisplayAudienceSize': activeDisplayAudienceSize!,
        if (appId != null) 'appId': appId!,
        if (audienceSource != null) 'audienceSource': audienceSource!,
        if (audienceType != null) 'audienceType': audienceType!,
        if (contactInfoList != null) 'contactInfoList': contactInfoList!,
        if (description != null) 'description': description!,
        if (displayAudienceSize != null)
          'displayAudienceSize': displayAudienceSize!,
        if (displayDesktopAudienceSize != null)
          'displayDesktopAudienceSize': displayDesktopAudienceSize!,
        if (displayMobileAppAudienceSize != null)
          'displayMobileAppAudienceSize': displayMobileAppAudienceSize!,
        if (displayMobileWebAudienceSize != null)
          'displayMobileWebAudienceSize': displayMobileWebAudienceSize!,
        if (displayName != null) 'displayName': displayName!,
        if (firstAndThirdPartyAudienceId != null)
          'firstAndThirdPartyAudienceId': firstAndThirdPartyAudienceId!,
        if (firstAndThirdPartyAudienceType != null)
          'firstAndThirdPartyAudienceType': firstAndThirdPartyAudienceType!,
        if (gmailAudienceSize != null) 'gmailAudienceSize': gmailAudienceSize!,
        if (membershipDurationDays != null)
          'membershipDurationDays': membershipDurationDays!,
        if (mobileDeviceIdList != null)
          'mobileDeviceIdList': mobileDeviceIdList!,
        if (name != null) 'name': name!,
        if (youtubeAudienceSize != null)
          'youtubeAudienceSize': youtubeAudienceSize!,
      };
}

/// Details of first and third party audience group.
///
/// All first and third party audience targeting settings are logically ‘OR’ of
/// each other.
class FirstAndThirdPartyAudienceGroup {
  /// All first and third party audience targeting settings in first and third
  /// party audience group.
  ///
  /// Repeated settings with same id are not allowed.
  ///
  /// Required.
  core.List<FirstAndThirdPartyAudienceTargetingSetting>? settings;

  FirstAndThirdPartyAudienceGroup({
    this.settings,
  });

  FirstAndThirdPartyAudienceGroup.fromJson(core.Map json_)
      : this(
          settings: json_.containsKey('settings')
              ? (json_['settings'] as core.List)
                  .map((value) =>
                      FirstAndThirdPartyAudienceTargetingSetting.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (settings != null) 'settings': settings!,
      };
}

/// Details of first and third party audience targeting setting.
typedef FirstAndThirdPartyAudienceTargetingSetting
    = $FirstAndThirdPartyAudienceTargetingSetting;

/// A strategy that uses a fixed bidding price.
typedef FixedBidStrategy = $FixedBidStrategy;

/// A single Floodlight group.
class FloodlightGroup {
  /// The Active View video viewability metric configuration for the Floodlight
  /// group.
  ActiveViewVideoViewabilityMetricConfig? activeViewConfig;

  /// User-defined custom variables owned by the Floodlight group.
  ///
  /// Use custom Floodlight variables to create reporting data that is tailored
  /// to your unique business needs. Custom Floodlight variables use the keys
  /// `U1=`, `U2=`, and so on, and can take any values that you choose to pass
  /// to them. You can use them to track virtually any type of data that you
  /// collect about your customers, such as the genre of movie that a customer
  /// purchases, the country to which the item is shipped, and so on. Custom
  /// Floodlight variables may not be used to pass any data that could be used
  /// or recognized as personally identifiable information (PII). Example:
  /// `custom_variables { fields { "U1": value { number_value: 123.4 }, "U2":
  /// value { string_value: "MyVariable2" }, "U3": value { string_value:
  /// "MyVariable3" } } }` Acceptable values for keys are "U1" through "U100",
  /// inclusive. String values must be less than 64 characters long, and cannot
  /// contain the following characters: `"<>`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customVariables;

  /// The display name of the Floodlight group.
  ///
  /// Required.
  core.String? displayName;

  /// The unique ID of the Floodlight group.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? floodlightGroupId;

  /// The lookback window for the Floodlight group.
  ///
  /// Both click_days and impression_days are required. Acceptable values for
  /// both are `0` to `90`, inclusive.
  ///
  /// Required.
  LookbackWindow? lookbackWindow;

  /// The resource name of the Floodlight group.
  ///
  /// Output only.
  core.String? name;

  /// The web tag type enabled for the Floodlight group.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WEB_TAG_TYPE_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "WEB_TAG_TYPE_NONE" : No tag type.
  /// - "WEB_TAG_TYPE_IMAGE" : Image tag.
  /// - "WEB_TAG_TYPE_DYNAMIC" : Dynamic tag.
  core.String? webTagType;

  FloodlightGroup({
    this.activeViewConfig,
    this.customVariables,
    this.displayName,
    this.floodlightGroupId,
    this.lookbackWindow,
    this.name,
    this.webTagType,
  });

  FloodlightGroup.fromJson(core.Map json_)
      : this(
          activeViewConfig: json_.containsKey('activeViewConfig')
              ? ActiveViewVideoViewabilityMetricConfig.fromJson(
                  json_['activeViewConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customVariables: json_.containsKey('customVariables')
              ? json_['customVariables'] as core.Map<core.String, core.dynamic>
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          floodlightGroupId: json_.containsKey('floodlightGroupId')
              ? json_['floodlightGroupId'] as core.String
              : null,
          lookbackWindow: json_.containsKey('lookbackWindow')
              ? LookbackWindow.fromJson(json_['lookbackWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          webTagType: json_.containsKey('webTagType')
              ? json_['webTagType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeViewConfig != null) 'activeViewConfig': activeViewConfig!,
        if (customVariables != null) 'customVariables': customVariables!,
        if (displayName != null) 'displayName': displayName!,
        if (floodlightGroupId != null) 'floodlightGroupId': floodlightGroupId!,
        if (lookbackWindow != null) 'lookbackWindow': lookbackWindow!,
        if (name != null) 'name': name!,
        if (webTagType != null) 'webTagType': webTagType!,
      };
}

/// Settings that control the number of times a user may be shown with the same
/// ad during a given time period.
class FrequencyCap {
  /// The maximum number of times a user may be shown the same ad during this
  /// period.
  ///
  /// Must be greater than 0. Required when unlimited is `false` and max_views
  /// is not set.
  core.int? maxImpressions;

  /// The maximum number of times a user may click-through or fully view an ad
  /// during this period until it is no longer served to them.
  ///
  /// Must be greater than 0. Only applicable to YouTube and Partners resources.
  /// Required when unlimited is `false` and max_impressions is not set.
  core.int? maxViews;

  /// The time unit in which the frequency cap will be applied.
  ///
  /// Required when unlimited is `false`.
  /// Possible string values are:
  /// - "TIME_UNIT_UNSPECIFIED" : Time unit value is not specified or is unknown
  /// in this version.
  /// - "TIME_UNIT_LIFETIME" : The frequency cap will be applied to the whole
  /// life time of the line item.
  /// - "TIME_UNIT_MONTHS" : The frequency cap will be applied to a number of
  /// months.
  /// - "TIME_UNIT_WEEKS" : The frequency cap will be applied to a number of
  /// weeks.
  /// - "TIME_UNIT_DAYS" : The frequency cap will be applied to a number of
  /// days.
  /// - "TIME_UNIT_HOURS" : The frequency cap will be applied to a number of
  /// hours.
  /// - "TIME_UNIT_MINUTES" : The frequency cap will be applied to a number of
  /// minutes.
  core.String? timeUnit;

  /// The number of time_unit the frequency cap will last.
  ///
  /// Required when unlimited is `false`. The following restrictions apply based
  /// on the value of time_unit: * `TIME_UNIT_LIFETIME` - this field is output
  /// only and will default to 1 * `TIME_UNIT_MONTHS` - must be between 1 and 2
  /// * `TIME_UNIT_WEEKS` - must be between 1 and 4 * `TIME_UNIT_DAYS` - must be
  /// between 1 and 6 * `TIME_UNIT_HOURS` - must be between 1 and 23 *
  /// `TIME_UNIT_MINUTES` - must be between 1 and 59
  core.int? timeUnitCount;

  /// Whether unlimited frequency capping is applied.
  ///
  /// When this field is set to `true`, the remaining frequency cap fields are
  /// not applicable.
  core.bool? unlimited;

  FrequencyCap({
    this.maxImpressions,
    this.maxViews,
    this.timeUnit,
    this.timeUnitCount,
    this.unlimited,
  });

  FrequencyCap.fromJson(core.Map json_)
      : this(
          maxImpressions: json_.containsKey('maxImpressions')
              ? json_['maxImpressions'] as core.int
              : null,
          maxViews: json_.containsKey('maxViews')
              ? json_['maxViews'] as core.int
              : null,
          timeUnit: json_.containsKey('timeUnit')
              ? json_['timeUnit'] as core.String
              : null,
          timeUnitCount: json_.containsKey('timeUnitCount')
              ? json_['timeUnitCount'] as core.int
              : null,
          unlimited: json_.containsKey('unlimited')
              ? json_['unlimited'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxImpressions != null) 'maxImpressions': maxImpressions!,
        if (maxViews != null) 'maxViews': maxViews!,
        if (timeUnit != null) 'timeUnit': timeUnit!,
        if (timeUnitCount != null) 'timeUnitCount': timeUnitCount!,
        if (unlimited != null) 'unlimited': unlimited!,
      };
}

/// Details for assigned gender targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_GENDER`.
class GenderAssignedTargetingOptionDetails {
  /// The gender of the audience.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "GENDER_UNSPECIFIED" : Default value when gender is not specified in
  /// this version. This enum is a place holder for default value and does not
  /// represent a real gender option.
  /// - "GENDER_MALE" : The audience gender is male.
  /// - "GENDER_FEMALE" : The audience gender is female.
  /// - "GENDER_UNKNOWN" : The audience gender is unknown.
  core.String? gender;

  GenderAssignedTargetingOptionDetails({
    this.gender,
  });

  GenderAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          gender: json_.containsKey('gender')
              ? json_['gender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gender != null) 'gender': gender!,
      };
}

/// Represents a targetable gender.
///
/// This will be populated in the gender_details field of a TargetingOption when
/// targeting_type is `TARGETING_TYPE_GENDER`.
typedef GenderTargetingOptionDetails = $GenderTargetingOptionDetails;

/// Request message for LineItemService.GenerateDefaultLineItem.
class GenerateDefaultLineItemRequest {
  /// The display name of the line item.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The unique ID of the insertion order that the line item belongs to.
  ///
  /// Required.
  core.String? insertionOrderId;

  /// The type of the line item.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LINE_ITEM_TYPE_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version. Line items of this type and their targeting cannot be
  /// created or updated using the API.
  /// - "LINE_ITEM_TYPE_DISPLAY_DEFAULT" : Image, HTML5, native, or rich media
  /// ads.
  /// - "LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INSTALL" : Display ads that drive
  /// installs of an app.
  /// - "LINE_ITEM_TYPE_VIDEO_DEFAULT" : Video ads sold on a CPM basis for a
  /// variety of environments.
  /// - "LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INSTALL" : Video ads that drive
  /// installs of an app.
  /// - "LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INVENTORY" : Display ads served on
  /// mobile app inventory. Line items of this type and their targeting cannot
  /// be created or updated using the API.
  /// - "LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INVENTORY" : Video ads served on mobile
  /// app inventory. Line items of this type and their targeting cannot be
  /// created or updated using the API.
  /// - "LINE_ITEM_TYPE_AUDIO_DEFAULT" : RTB Audio ads sold for a variety of
  /// environments.
  /// - "LINE_ITEM_TYPE_VIDEO_OVER_THE_TOP" : Over-the-top ads present in OTT
  /// insertion orders. This type is only applicable to line items with an
  /// insertion order of insertion_order_type `OVER_THE_TOP`.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_ACTION" : YouTube video ads that
  /// promote conversions. Line items of this type and their targeting cannot be
  /// created or updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_NON_SKIPPABLE" : YouTube video ads
  /// (up to 15 seconds) that cannot be skipped. Line items of this type and
  /// their targeting cannot be created or updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_VIDEO_SEQUENCE" : YouTube video ads
  /// that show a story in a particular sequence using a mix of formats. Line
  /// items of this type and their targeting cannot be created or updated using
  /// the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_AUDIO" : YouTube audio ads. Line
  /// items of this type and their targeting cannot be created or updated using
  /// the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_REACH" : YouTube video ads that
  /// optimize reaching more unique users at lower cost. May include bumper ads,
  /// skippable in-stream ads, or a mix of types. Line items of this type and
  /// their targeting cannot be created or updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_SIMPLE" : Default YouTube video
  /// ads. Line items of this type and their targeting cannot be created or
  /// updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_NON_SKIPPABLE_OVER_THE_TOP" :
  /// Connected TV youTube video ads (up to 15 seconds) that cannot be skipped.
  /// Line items of this type and their targeting cannot be created or updated
  /// using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_REACH_OVER_THE_TOP" : Connected TV
  /// youTube video ads that optimize reaching more unique users at lower cost.
  /// May include bumper ads, skippable in-stream ads, or a mix of types. Line
  /// items of this type and their targeting cannot be created or updated using
  /// the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_SIMPLE_OVER_THE_TOP" : Connected TV
  /// default YouTube video ads. Only include in-stream ad-format. Line items of
  /// this type and their targeting cannot be created or updated using the API.
  core.String? lineItemType;

  /// The mobile app promoted by the line item.
  ///
  /// This is applicable only when line_item_type is either
  /// `LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INSTALL` or
  /// `LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INSTALL`.
  MobileApp? mobileApp;

  GenerateDefaultLineItemRequest({
    this.displayName,
    this.insertionOrderId,
    this.lineItemType,
    this.mobileApp,
  });

  GenerateDefaultLineItemRequest.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          insertionOrderId: json_.containsKey('insertionOrderId')
              ? json_['insertionOrderId'] as core.String
              : null,
          lineItemType: json_.containsKey('lineItemType')
              ? json_['lineItemType'] as core.String
              : null,
          mobileApp: json_.containsKey('mobileApp')
              ? MobileApp.fromJson(
                  json_['mobileApp'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (insertionOrderId != null) 'insertionOrderId': insertionOrderId!,
        if (lineItemType != null) 'lineItemType': lineItemType!,
        if (mobileApp != null) 'mobileApp': mobileApp!,
      };
}

/// Details for assigned geographic region targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_GEO_REGION`.
typedef GeoRegionAssignedTargetingOptionDetails
    = $GeoRegionAssignedTargetingOptionDetails;

/// Search terms for geo region targeting options.
typedef GeoRegionSearchTerms = $GeoRegionSearchTerms;

/// Represents a targetable geographic region.
///
/// This will be populated in the geo_region_details field when targeting_type
/// is `TARGETING_TYPE_GEO_REGION`.
typedef GeoRegionTargetingOptionDetails = $GeoRegionTargetingOptionDetails;

/// Describes a Google audience resource.
///
/// Includes Google audience lists.
typedef GoogleAudience = $GoogleAudience;

/// Details of Google audience group.
///
/// All Google audience targeting settings are logically ‘OR’ of each other.
class GoogleAudienceGroup {
  /// All Google audience targeting settings in Google audience group.
  ///
  /// Repeated settings with same id will be ignored.
  ///
  /// Required.
  core.List<GoogleAudienceTargetingSetting>? settings;

  GoogleAudienceGroup({
    this.settings,
  });

  GoogleAudienceGroup.fromJson(core.Map json_)
      : this(
          settings: json_.containsKey('settings')
              ? (json_['settings'] as core.List)
                  .map((value) => GoogleAudienceTargetingSetting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (settings != null) 'settings': settings!,
      };
}

/// Details of Google audience targeting setting.
typedef GoogleAudienceTargetingSetting = $GoogleAudienceTargetingSetting;

/// Media resource.
typedef GoogleBytestreamMedia = $Media;

/// A guaranteed order.
///
/// Guaranteed orders are parent entity of guaranteed inventory sources. When
/// creating a guaranteed inventory source, a guaranteed order ID must be
/// assigned to the inventory source.
class GuaranteedOrder {
  /// The ID of default advertiser of the guaranteed order.
  ///
  /// The default advertiser is either the read_write_advertiser_id or, if that
  /// is not set, the first advertiser listed in read_advertiser_ids. Otherwise,
  /// there is no default advertiser.
  ///
  /// Output only.
  core.String? defaultAdvertiserId;

  /// The ID of the default campaign that is assigned to the guaranteed order.
  ///
  /// The default campaign must belong to the default advertiser.
  core.String? defaultCampaignId;

  /// The display name of the guaranteed order.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The exchange where the guaranteed order originated.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  core.String? exchange;

  /// The unique identifier of the guaranteed order.
  ///
  /// The guaranteed order IDs have the format
  /// `{exchange}-{legacy_guaranteed_order_id}`.
  ///
  /// Output only.
  core.String? guaranteedOrderId;

  /// The legacy ID of the guaranteed order.
  ///
  /// Assigned by the original exchange. The legacy ID is unique within one
  /// exchange, but is not guaranteed to be unique across all guaranteed orders.
  /// This ID is used in SDF and UI.
  ///
  /// Output only.
  core.String? legacyGuaranteedOrderId;

  /// The resource name of the guaranteed order.
  ///
  /// Output only.
  core.String? name;

  /// The publisher name of the guaranteed order.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? publisherName;

  /// Whether all advertisers of read_write_partner_id have read access to the
  /// guaranteed order.
  ///
  /// Only applicable if read_write_partner_id is set. If True, overrides
  /// read_advertiser_ids.
  core.bool? readAccessInherited;

  /// The IDs of advertisers with read access to the guaranteed order.
  ///
  /// This field must not include the advertiser assigned to
  /// read_write_advertiser_id if it is set. All advertisers in this field must
  /// belong to read_write_partner_id or the same partner as
  /// read_write_advertiser_id.
  core.List<core.String>? readAdvertiserIds;

  /// The advertiser with read/write access to the guaranteed order.
  ///
  /// This is also the default advertiser of the guaranteed order.
  core.String? readWriteAdvertiserId;

  /// The partner with read/write access to the guaranteed order.
  core.String? readWritePartnerId;

  /// The status settings of the guaranteed order.
  GuaranteedOrderStatus? status;

  /// The timestamp when the guaranteed order was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  GuaranteedOrder({
    this.defaultAdvertiserId,
    this.defaultCampaignId,
    this.displayName,
    this.exchange,
    this.guaranteedOrderId,
    this.legacyGuaranteedOrderId,
    this.name,
    this.publisherName,
    this.readAccessInherited,
    this.readAdvertiserIds,
    this.readWriteAdvertiserId,
    this.readWritePartnerId,
    this.status,
    this.updateTime,
  });

  GuaranteedOrder.fromJson(core.Map json_)
      : this(
          defaultAdvertiserId: json_.containsKey('defaultAdvertiserId')
              ? json_['defaultAdvertiserId'] as core.String
              : null,
          defaultCampaignId: json_.containsKey('defaultCampaignId')
              ? json_['defaultCampaignId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
          guaranteedOrderId: json_.containsKey('guaranteedOrderId')
              ? json_['guaranteedOrderId'] as core.String
              : null,
          legacyGuaranteedOrderId: json_.containsKey('legacyGuaranteedOrderId')
              ? json_['legacyGuaranteedOrderId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publisherName: json_.containsKey('publisherName')
              ? json_['publisherName'] as core.String
              : null,
          readAccessInherited: json_.containsKey('readAccessInherited')
              ? json_['readAccessInherited'] as core.bool
              : null,
          readAdvertiserIds: json_.containsKey('readAdvertiserIds')
              ? (json_['readAdvertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          readWriteAdvertiserId: json_.containsKey('readWriteAdvertiserId')
              ? json_['readWriteAdvertiserId'] as core.String
              : null,
          readWritePartnerId: json_.containsKey('readWritePartnerId')
              ? json_['readWritePartnerId'] as core.String
              : null,
          status: json_.containsKey('status')
              ? GuaranteedOrderStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultAdvertiserId != null)
          'defaultAdvertiserId': defaultAdvertiserId!,
        if (defaultCampaignId != null) 'defaultCampaignId': defaultCampaignId!,
        if (displayName != null) 'displayName': displayName!,
        if (exchange != null) 'exchange': exchange!,
        if (guaranteedOrderId != null) 'guaranteedOrderId': guaranteedOrderId!,
        if (legacyGuaranteedOrderId != null)
          'legacyGuaranteedOrderId': legacyGuaranteedOrderId!,
        if (name != null) 'name': name!,
        if (publisherName != null) 'publisherName': publisherName!,
        if (readAccessInherited != null)
          'readAccessInherited': readAccessInherited!,
        if (readAdvertiserIds != null) 'readAdvertiserIds': readAdvertiserIds!,
        if (readWriteAdvertiserId != null)
          'readWriteAdvertiserId': readWriteAdvertiserId!,
        if (readWritePartnerId != null)
          'readWritePartnerId': readWritePartnerId!,
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The status settings of the guaranteed order.
typedef GuaranteedOrderStatus = $GuaranteedOrderStatus;

/// Details for assigned household income targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_HOUSEHOLD_INCOME`.
class HouseholdIncomeAssignedTargetingOptionDetails {
  /// The household income of the audience.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "HOUSEHOLD_INCOME_UNSPECIFIED" : Default value when household income is
  /// not specified in this version. This enum is a placeholder for default
  /// value and does not represent a real household income option.
  /// - "HOUSEHOLD_INCOME_UNKNOWN" : The household income of the audience is
  /// unknown.
  /// - "HOUSEHOLD_INCOME_LOWER_50_PERCENT" : The audience is in the lower 50%
  /// of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_41_TO_50_PERCENT" : The audience is in the top
  /// 41-50% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_31_TO_40_PERCENT" : The audience is in the top
  /// 31-40% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_21_TO_30_PERCENT" : The audience is in the top
  /// 21-30% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_11_TO_20_PERCENT" : The audience is in the top
  /// 11-20% of U.S. household incomes.
  /// - "HOUSEHOLD_INCOME_TOP_10_PERCENT" : The audience is in the top 10% of
  /// U.S. household incomes.
  core.String? householdIncome;

  HouseholdIncomeAssignedTargetingOptionDetails({
    this.householdIncome,
  });

  HouseholdIncomeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          householdIncome: json_.containsKey('householdIncome')
              ? json_['householdIncome'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (householdIncome != null) 'householdIncome': householdIncome!,
      };
}

/// Represents a targetable household income.
///
/// This will be populated in the household_income_details field of a
/// TargetingOption when targeting_type is `TARGETING_TYPE_HOUSEHOLD_INCOME`.
typedef HouseholdIncomeTargetingOptionDetails
    = $HouseholdIncomeTargetingOptionDetails;

/// A filtering option that filters entities by their entity IDs.
typedef IdFilter = $IdFilter;

/// A single insertion order.
class InsertionOrder {
  /// The unique ID of the advertiser the insertion order belongs to.
  ///
  /// Output only.
  core.String? advertiserId;

  /// The bidding strategy of the insertion order.
  ///
  /// By default, fixed_bid is set.
  BiddingStrategy? bidStrategy;

  /// The billable outcome of the insertion order.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "BILLABLE_OUTCOME_UNSPECIFIED" : Unspecified billable outcome.
  /// - "BILLABLE_OUTCOME_PAY_PER_IMPRESSION" : Pay per impressions.
  /// - "BILLABLE_OUTCOME_PAY_PER_CLICK" : Pay per click.
  /// - "BILLABLE_OUTCOME_PAY_PER_VIEWABLE_IMPRESSION" : Pay per active view.
  core.String? billableOutcome;

  /// The budget allocation settings of the insertion order.
  ///
  /// Required.
  InsertionOrderBudget? budget;

  /// The unique ID of the campaign that the insertion order belongs to.
  ///
  /// Required. Immutable.
  core.String? campaignId;

  /// The display name of the insertion order.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Controls whether or not the insertion order can spend its budget and bid
  /// on inventory.
  ///
  /// * For CreateInsertionOrder method, only `ENTITY_STATUS_DRAFT` is allowed.
  /// To activate an insertion order, use UpdateInsertionOrder method and update
  /// the status to `ENTITY_STATUS_ACTIVE` after creation. * An insertion order
  /// cannot be changed back to `ENTITY_STATUS_DRAFT` status from any other
  /// status. * An insertion order cannot be set to `ENTITY_STATUS_ACTIVE` if
  /// its parent campaign is not active.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// The frequency capping setting of the insertion order.
  ///
  /// Required.
  FrequencyCap? frequencyCap;

  /// The unique ID of the insertion order.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? insertionOrderId;

  /// The type of insertion order.
  ///
  /// If this field is unspecified in creation, the value defaults to `RTB`.
  /// Possible string values are:
  /// - "INSERTION_ORDER_TYPE_UNSPECIFIED" : Insertion order type is not
  /// specified or is unknown.
  /// - "RTB" : Real-time bidding.
  /// - "OVER_THE_TOP" : Over-the-top.
  core.String? insertionOrderType;

  /// Additional integration details of the insertion order.
  IntegrationDetails? integrationDetails;

  /// The resource name of the insertion order.
  ///
  /// Output only.
  core.String? name;

  /// The budget spending speed setting of the insertion order.
  ///
  /// Required.
  Pacing? pacing;

  /// The partner costs associated with the insertion order.
  ///
  /// If absent or empty in CreateInsertionOrder method, the newly created
  /// insertion order will inherit partner costs from the partner settings.
  core.List<PartnerCost>? partnerCosts;

  /// Performance goal of the insertion order.
  ///
  /// Required.
  PerformanceGoal? performanceGoal;

  /// The reservation type of the insertion order.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESERVATION_TYPE_UNSPECIFIED" : Reservation type value is not specified
  /// or is unknown in this version.
  /// - "RESERVATION_TYPE_NOT_GUARANTEED" : Not created through a guaranteed
  /// inventory source.
  /// - "RESERVATION_TYPE_PROGRAMMATIC_GUARANTEED" : Created through a
  /// programmatic guaranteed inventory source.
  /// - "RESERVATION_TYPE_TAG_GUARANTEED" : Created through a tag guaranteed
  /// inventory source.
  /// - "RESERVATION_TYPE_PETRA_VIRAL" : Created through a Petra inventory
  /// source. Only applicable to YouTube and Partners line items.
  /// - "RESERVATION_TYPE_INSTANT_RESERVE" : Created with an instant quote. Only
  /// applicable to YouTube and partners line items.
  core.String? reservationType;

  /// The timestamp when the insertion order was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  InsertionOrder({
    this.advertiserId,
    this.bidStrategy,
    this.billableOutcome,
    this.budget,
    this.campaignId,
    this.displayName,
    this.entityStatus,
    this.frequencyCap,
    this.insertionOrderId,
    this.insertionOrderType,
    this.integrationDetails,
    this.name,
    this.pacing,
    this.partnerCosts,
    this.performanceGoal,
    this.reservationType,
    this.updateTime,
  });

  InsertionOrder.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          bidStrategy: json_.containsKey('bidStrategy')
              ? BiddingStrategy.fromJson(
                  json_['bidStrategy'] as core.Map<core.String, core.dynamic>)
              : null,
          billableOutcome: json_.containsKey('billableOutcome')
              ? json_['billableOutcome'] as core.String
              : null,
          budget: json_.containsKey('budget')
              ? InsertionOrderBudget.fromJson(
                  json_['budget'] as core.Map<core.String, core.dynamic>)
              : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          frequencyCap: json_.containsKey('frequencyCap')
              ? FrequencyCap.fromJson(
                  json_['frequencyCap'] as core.Map<core.String, core.dynamic>)
              : null,
          insertionOrderId: json_.containsKey('insertionOrderId')
              ? json_['insertionOrderId'] as core.String
              : null,
          insertionOrderType: json_.containsKey('insertionOrderType')
              ? json_['insertionOrderType'] as core.String
              : null,
          integrationDetails: json_.containsKey('integrationDetails')
              ? IntegrationDetails.fromJson(json_['integrationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pacing: json_.containsKey('pacing')
              ? Pacing.fromJson(
                  json_['pacing'] as core.Map<core.String, core.dynamic>)
              : null,
          partnerCosts: json_.containsKey('partnerCosts')
              ? (json_['partnerCosts'] as core.List)
                  .map((value) => PartnerCost.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          performanceGoal: json_.containsKey('performanceGoal')
              ? PerformanceGoal.fromJson(json_['performanceGoal']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reservationType: json_.containsKey('reservationType')
              ? json_['reservationType'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (bidStrategy != null) 'bidStrategy': bidStrategy!,
        if (billableOutcome != null) 'billableOutcome': billableOutcome!,
        if (budget != null) 'budget': budget!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (displayName != null) 'displayName': displayName!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (frequencyCap != null) 'frequencyCap': frequencyCap!,
        if (insertionOrderId != null) 'insertionOrderId': insertionOrderId!,
        if (insertionOrderType != null)
          'insertionOrderType': insertionOrderType!,
        if (integrationDetails != null)
          'integrationDetails': integrationDetails!,
        if (name != null) 'name': name!,
        if (pacing != null) 'pacing': pacing!,
        if (partnerCosts != null) 'partnerCosts': partnerCosts!,
        if (performanceGoal != null) 'performanceGoal': performanceGoal!,
        if (reservationType != null) 'reservationType': reservationType!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Settings that control how insertion order budget is allocated.
class InsertionOrderBudget {
  /// The type of automation used to manage bid and budget for the insertion
  /// order.
  ///
  /// If this field is unspecified in creation, the value defaults to
  /// `INSERTION_ORDER_AUTOMATION_TYPE_NONE`.
  /// Possible string values are:
  /// - "INSERTION_ORDER_AUTOMATION_TYPE_UNSPECIFIED" : Insertion order
  /// automation option is not specified or is unknown in this version.
  /// - "INSERTION_ORDER_AUTOMATION_TYPE_BUDGET" : Automatic budget allocation.
  /// Allow the system to automatically shift budget to owning line items to
  /// optimize performance defined by performance_goal. No automation on bid
  /// settings.
  /// - "INSERTION_ORDER_AUTOMATION_TYPE_NONE" : No automation of bid or budget
  /// on insertion order level. Bid and budget must be manually configured at
  /// the line item level.
  /// - "INSERTION_ORDER_AUTOMATION_TYPE_BID_BUDGET" : Allow the system to
  /// automatically adjust bids and shift budget to owning line items to
  /// optimize performance defined by performance_goal.
  core.String? automationType;

  /// The list of budget segments.
  ///
  /// Use a budget segment to specify a specific budget for a given period of
  /// time an insertion order is running.
  ///
  /// Required.
  core.List<InsertionOrderBudgetSegment>? budgetSegments;

  /// The budget unit specifies whether the budget is currency based or
  /// impression based.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "BUDGET_UNIT_UNSPECIFIED" : Type value is not specified or is unknown in
  /// this version.
  /// - "BUDGET_UNIT_CURRENCY" : Budgeting in currency amounts.
  /// - "BUDGET_UNIT_IMPRESSIONS" : Budgeting in impression amounts.
  core.String? budgetUnit;

  InsertionOrderBudget({
    this.automationType,
    this.budgetSegments,
    this.budgetUnit,
  });

  InsertionOrderBudget.fromJson(core.Map json_)
      : this(
          automationType: json_.containsKey('automationType')
              ? json_['automationType'] as core.String
              : null,
          budgetSegments: json_.containsKey('budgetSegments')
              ? (json_['budgetSegments'] as core.List)
                  .map((value) => InsertionOrderBudgetSegment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          budgetUnit: json_.containsKey('budgetUnit')
              ? json_['budgetUnit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automationType != null) 'automationType': automationType!,
        if (budgetSegments != null) 'budgetSegments': budgetSegments!,
        if (budgetUnit != null) 'budgetUnit': budgetUnit!,
      };
}

/// Settings that control the budget of a single budget segment.
class InsertionOrderBudgetSegment {
  /// The budget amount the insertion order will spend for the given date_range.
  ///
  /// The amount is in micros. Must be greater than 0. For example, 500000000
  /// represents 500 standard units of the currency.
  ///
  /// Required.
  core.String? budgetAmountMicros;

  /// The budget_id of the campaign budget that this insertion order budget
  /// segment is a part of.
  core.String? campaignBudgetId;

  /// The start and end date settings of the budget segment.
  ///
  /// They are resolved relative to the parent advertiser's time zone. * When
  /// creating a new budget segment, both `start_date` and `end_date` must be in
  /// the future. * An existing budget segment with a `start_date` in the past
  /// has a mutable `end_date` but an immutable `start_date`. * `end_date` must
  /// be the `start_date` or later, both before the year 2037.
  ///
  /// Required.
  DateRange? dateRange;

  /// The budget segment description.
  ///
  /// It can be used to enter Purchase Order information for each budget segment
  /// and have that information printed on the invoices. Must be UTF-8 encoded.
  core.String? description;

  InsertionOrderBudgetSegment({
    this.budgetAmountMicros,
    this.campaignBudgetId,
    this.dateRange,
    this.description,
  });

  InsertionOrderBudgetSegment.fromJson(core.Map json_)
      : this(
          budgetAmountMicros: json_.containsKey('budgetAmountMicros')
              ? json_['budgetAmountMicros'] as core.String
              : null,
          campaignBudgetId: json_.containsKey('campaignBudgetId')
              ? json_['campaignBudgetId'] as core.String
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (budgetAmountMicros != null)
          'budgetAmountMicros': budgetAmountMicros!,
        if (campaignBudgetId != null) 'campaignBudgetId': campaignBudgetId!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (description != null) 'description': description!,
      };
}

/// Details of Integral Ad Science settings.
typedef IntegralAdScience = $IntegralAdScience;

/// Integration details of an entry.
typedef IntegrationDetails = $IntegrationDetails;

/// An inventory source.
class InventorySource {
  /// Whether the inventory source has a guaranteed or non-guaranteed delivery.
  /// Possible string values are:
  /// - "INVENTORY_SOURCE_COMMITMENT_UNSPECIFIED" : The commitment is not
  /// specified or is unknown in this version.
  /// - "INVENTORY_SOURCE_COMMITMENT_GUARANTEED" : The commitment is guaranteed
  /// delivery.
  /// - "INVENTORY_SOURCE_COMMITMENT_NON_GUARANTEED" : The commitment is
  /// non-guaranteed delivery.
  core.String? commitment;

  /// The creative requirements of the inventory source.
  ///
  /// Not applicable for auction packages.
  core.List<CreativeConfig>? creativeConfigs;

  /// The ID in the exchange space that uniquely identifies the inventory
  /// source.
  ///
  /// Must be unique across buyers within each exchange but not necessarily
  /// unique across exchanges.
  core.String? dealId;

  /// The delivery method of the inventory source.
  ///
  /// * For non-guaranteed inventory sources, the only acceptable value is
  /// `INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`. * For guaranteed
  /// inventory sources, acceptable values are
  /// `INVENTORY_SOURCE_DELIVERY_METHOD_TAG` and
  /// `INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC`.
  /// Possible string values are:
  /// - "INVENTORY_SOURCE_DELIVERY_METHOD_UNSPECIFIED" : The delivery method is
  /// not specified or is unknown in this version.
  /// - "INVENTORY_SOURCE_DELIVERY_METHOD_PROGRAMMATIC" : The delivery method is
  /// programmatic.
  /// - "INVENTORY_SOURCE_DELIVERY_METHOD_TAG" : The delivery method is tag.
  core.String? deliveryMethod;

  /// The display name of the inventory source.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  core.String? displayName;

  /// The exchange to which the inventory source belongs.
  /// Possible string values are:
  /// - "EXCHANGE_UNSPECIFIED" : Exchange is not specified or is unknown in this
  /// version.
  /// - "EXCHANGE_GOOGLE_AD_MANAGER" : Google Ad Manager.
  /// - "EXCHANGE_APPNEXUS" : AppNexus.
  /// - "EXCHANGE_BRIGHTROLL" : BrightRoll Exchange for Video from Yahoo!.
  /// - "EXCHANGE_ADFORM" : Adform.
  /// - "EXCHANGE_ADMETA" : Admeta.
  /// - "EXCHANGE_ADMIXER" : Admixer.
  /// - "EXCHANGE_ADSMOGO" : AdsMogo.
  /// - "EXCHANGE_ADSWIZZ" : AdsWizz.
  /// - "EXCHANGE_BIDSWITCH" : BidSwitch.
  /// - "EXCHANGE_BRIGHTROLL_DISPLAY" : BrightRoll Exchange for Display from
  /// Yahoo!.
  /// - "EXCHANGE_CADREON" : Cadreon.
  /// - "EXCHANGE_DAILYMOTION" : Dailymotion.
  /// - "EXCHANGE_FIVE" : Five.
  /// - "EXCHANGE_FLUCT" : Fluct.
  /// - "EXCHANGE_FREEWHEEL" : FreeWheel SSP.
  /// - "EXCHANGE_GENIEE" : Geniee.
  /// - "EXCHANGE_GUMGUM" : GumGum.
  /// - "EXCHANGE_IMOBILE" : i-mobile.
  /// - "EXCHANGE_IBILLBOARD" : iBILLBOARD.
  /// - "EXCHANGE_IMPROVE_DIGITAL" : Improve Digital.
  /// - "EXCHANGE_INDEX" : Index Exchange.
  /// - "EXCHANGE_KARGO" : Kargo.
  /// - "EXCHANGE_MICROAD" : MicroAd.
  /// - "EXCHANGE_MOPUB" : MoPub.
  /// - "EXCHANGE_NEND" : Nend.
  /// - "EXCHANGE_ONE_BY_AOL_DISPLAY" : ONE by AOL: Display Market Place.
  /// - "EXCHANGE_ONE_BY_AOL_MOBILE" : ONE by AOL: Mobile.
  /// - "EXCHANGE_ONE_BY_AOL_VIDEO" : ONE by AOL: Video.
  /// - "EXCHANGE_OOYALA" : Ooyala.
  /// - "EXCHANGE_OPENX" : OpenX.
  /// - "EXCHANGE_PERMODO" : Permodo.
  /// - "EXCHANGE_PLATFORMONE" : Platform One.
  /// - "EXCHANGE_PLATFORMID" : PlatformId.
  /// - "EXCHANGE_PUBMATIC" : PubMatic.
  /// - "EXCHANGE_PULSEPOINT" : PulsePoint.
  /// - "EXCHANGE_REVENUEMAX" : RevenueMax.
  /// - "EXCHANGE_RUBICON" : Rubicon.
  /// - "EXCHANGE_SMARTCLIP" : SmartClip.
  /// - "EXCHANGE_SMARTRTB" : SmartRTB+.
  /// - "EXCHANGE_SMARTSTREAMTV" : SmartstreamTv.
  /// - "EXCHANGE_SOVRN" : Sovrn.
  /// - "EXCHANGE_SPOTXCHANGE" : SpotXchange.
  /// - "EXCHANGE_STROER" : Ströer SSP.
  /// - "EXCHANGE_TEADSTV" : TeadsTv.
  /// - "EXCHANGE_TELARIA" : Telaria.
  /// - "EXCHANGE_TVN" : TVN.
  /// - "EXCHANGE_UNITED" : United.
  /// - "EXCHANGE_YIELDLAB" : Yieldlab.
  /// - "EXCHANGE_YIELDMO" : Yieldmo.
  /// - "EXCHANGE_UNRULYX" : UnrulyX.
  /// - "EXCHANGE_OPEN8" : Open8.
  /// - "EXCHANGE_TRITON" : Triton.
  /// - "EXCHANGE_TRIPLELIFT" : TripleLift.
  /// - "EXCHANGE_TABOOLA" : Taboola.
  /// - "EXCHANGE_INMOBI" : InMobi.
  /// - "EXCHANGE_SMAATO" : Smaato.
  /// - "EXCHANGE_AJA" : Aja.
  /// - "EXCHANGE_SUPERSHIP" : Supership.
  /// - "EXCHANGE_NEXSTAR_DIGITAL" : Nexstar Digital.
  /// - "EXCHANGE_WAZE" : Waze.
  /// - "EXCHANGE_SOUNDCAST" : SoundCast.
  /// - "EXCHANGE_SHARETHROUGH" : Sharethrough.
  /// - "EXCHANGE_FYBER" : Fyber.
  /// - "EXCHANGE_RED_FOR_PUBLISHERS" : Red For Publishers.
  /// - "EXCHANGE_MEDIANET" : Media.net.
  /// - "EXCHANGE_TAPJOY" : Tapjoy.
  /// - "EXCHANGE_VISTAR" : Vistar.
  /// - "EXCHANGE_DAX" : DAX.
  core.String? exchange;

  /// The ID of the guaranteed order that this inventory source belongs to.
  ///
  /// Only applicable when commitment is
  /// `INVENTORY_SOURCE_COMMITMENT_GUARANTEED`.
  ///
  /// Immutable.
  core.String? guaranteedOrderId;

  /// The unique ID of the inventory source.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? inventorySourceId;

  /// The product type of the inventory source, denoting the way through which
  /// it sells inventory.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INVENTORY_SOURCE_PRODUCT_TYPE_UNSPECIFIED" : The product type is not
  /// specified or is unknown in this version. Modifying inventory sources of
  /// this product type are not supported via API.
  /// - "PREFERRED_DEAL" : The inventory source sells inventory through
  /// Preferred Deal.
  /// - "PRIVATE_AUCTION" : The inventory source sells inventory through Private
  /// Auction.
  /// - "PROGRAMMATIC_GUARANTEED" : The inventory source sells inventory through
  /// Programmatic Guaranteed.
  /// - "TAG_GUARANTEED" : The inventory source sells inventory through Tag
  /// Guaranteed.
  /// - "YOUTUBE_RESERVE" : The inventory source sells inventory through YouTube
  /// Reserve.
  /// - "INSTANT_RESERVE" : The inventory source sells inventory through Instant
  /// Reserve. Modifying inventory sources of this product type are not
  /// supported via API.
  /// - "GUARANTEED_PACKAGE" : The inventory source sells inventory through
  /// Guaranteed Package. Modifying inventory sources of this product type are
  /// not supported via API.
  /// - "PROGRAMMATIC_TV" : The inventory source sells inventory through
  /// Programmtic TV. Modifying inventory sources of this product type are not
  /// supported via API.
  /// - "AUCTION_PACKAGE" : The inventory source sells inventory through Auction
  /// Package. Modifying inventory sources of this product type are not
  /// supported via API.
  core.String? inventorySourceProductType;

  /// Denotes the type of the inventory source.
  /// Possible string values are:
  /// - "INVENTORY_SOURCE_TYPE_UNSPECIFIED" : The inventory source type is not
  /// specified or is unknown in this version.
  /// - "INVENTORY_SOURCE_TYPE_PRIVATE" : Private inventory source.
  /// - "INVENTORY_SOURCE_TYPE_AUCTION_PACKAGE" : Auction package.
  core.String? inventorySourceType;

  /// The resource name of the inventory source.
  ///
  /// Output only.
  core.String? name;

  /// The publisher/seller name of the inventory source.
  core.String? publisherName;

  /// The rate details of the inventory source.
  ///
  /// Required.
  RateDetails? rateDetails;

  /// The IDs of advertisers with read-only access to the inventory source.
  ///
  /// Output only.
  core.List<core.String>? readAdvertiserIds;

  /// The IDs of partners with read-only access to the inventory source.
  ///
  /// All advertisers of partners in this field inherit read-only access to the
  /// inventory source.
  ///
  /// Output only.
  core.List<core.String>? readPartnerIds;

  /// The partner or advertisers that have read/write access to the inventory
  /// source.
  ///
  /// Output only when commitment is `INVENTORY_SOURCE_COMMITMENT_GUARANTEED`,
  /// in which case the read/write accessors are inherited from the parent
  /// guaranteed order. Required when commitment is
  /// `INVENTORY_SOURCE_COMMITMENT_NON_GUARANTEED`. If commitment is
  /// `INVENTORY_SOURCE_COMMITMENT_NON_GUARANTEED` and a partner is set in this
  /// field, all advertisers under this partner will automatically have
  /// read-only access to the inventory source. These advertisers will not be
  /// included in read_advertiser_ids.
  InventorySourceAccessors? readWriteAccessors;

  /// The status settings of the inventory source.
  InventorySourceStatus? status;

  /// The unique ID of the sub-site property assigned to this inventory source.
  ///
  /// Immutable.
  core.String? subSitePropertyId;

  /// The time range when this inventory source starts and stops serving.
  TimeRange? timeRange;

  /// The timestamp when the inventory source was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  InventorySource({
    this.commitment,
    this.creativeConfigs,
    this.dealId,
    this.deliveryMethod,
    this.displayName,
    this.exchange,
    this.guaranteedOrderId,
    this.inventorySourceId,
    this.inventorySourceProductType,
    this.inventorySourceType,
    this.name,
    this.publisherName,
    this.rateDetails,
    this.readAdvertiserIds,
    this.readPartnerIds,
    this.readWriteAccessors,
    this.status,
    this.subSitePropertyId,
    this.timeRange,
    this.updateTime,
  });

  InventorySource.fromJson(core.Map json_)
      : this(
          commitment: json_.containsKey('commitment')
              ? json_['commitment'] as core.String
              : null,
          creativeConfigs: json_.containsKey('creativeConfigs')
              ? (json_['creativeConfigs'] as core.List)
                  .map((value) => CreativeConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dealId: json_.containsKey('dealId')
              ? json_['dealId'] as core.String
              : null,
          deliveryMethod: json_.containsKey('deliveryMethod')
              ? json_['deliveryMethod'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          exchange: json_.containsKey('exchange')
              ? json_['exchange'] as core.String
              : null,
          guaranteedOrderId: json_.containsKey('guaranteedOrderId')
              ? json_['guaranteedOrderId'] as core.String
              : null,
          inventorySourceId: json_.containsKey('inventorySourceId')
              ? json_['inventorySourceId'] as core.String
              : null,
          inventorySourceProductType:
              json_.containsKey('inventorySourceProductType')
                  ? json_['inventorySourceProductType'] as core.String
                  : null,
          inventorySourceType: json_.containsKey('inventorySourceType')
              ? json_['inventorySourceType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publisherName: json_.containsKey('publisherName')
              ? json_['publisherName'] as core.String
              : null,
          rateDetails: json_.containsKey('rateDetails')
              ? RateDetails.fromJson(
                  json_['rateDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          readAdvertiserIds: json_.containsKey('readAdvertiserIds')
              ? (json_['readAdvertiserIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          readPartnerIds: json_.containsKey('readPartnerIds')
              ? (json_['readPartnerIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          readWriteAccessors: json_.containsKey('readWriteAccessors')
              ? InventorySourceAccessors.fromJson(json_['readWriteAccessors']
                  as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? InventorySourceStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          subSitePropertyId: json_.containsKey('subSitePropertyId')
              ? json_['subSitePropertyId'] as core.String
              : null,
          timeRange: json_.containsKey('timeRange')
              ? TimeRange.fromJson(
                  json_['timeRange'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitment != null) 'commitment': commitment!,
        if (creativeConfigs != null) 'creativeConfigs': creativeConfigs!,
        if (dealId != null) 'dealId': dealId!,
        if (deliveryMethod != null) 'deliveryMethod': deliveryMethod!,
        if (displayName != null) 'displayName': displayName!,
        if (exchange != null) 'exchange': exchange!,
        if (guaranteedOrderId != null) 'guaranteedOrderId': guaranteedOrderId!,
        if (inventorySourceId != null) 'inventorySourceId': inventorySourceId!,
        if (inventorySourceProductType != null)
          'inventorySourceProductType': inventorySourceProductType!,
        if (inventorySourceType != null)
          'inventorySourceType': inventorySourceType!,
        if (name != null) 'name': name!,
        if (publisherName != null) 'publisherName': publisherName!,
        if (rateDetails != null) 'rateDetails': rateDetails!,
        if (readAdvertiserIds != null) 'readAdvertiserIds': readAdvertiserIds!,
        if (readPartnerIds != null) 'readPartnerIds': readPartnerIds!,
        if (readWriteAccessors != null)
          'readWriteAccessors': readWriteAccessors!,
        if (status != null) 'status': status!,
        if (subSitePropertyId != null) 'subSitePropertyId': subSitePropertyId!,
        if (timeRange != null) 'timeRange': timeRange!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The partner or advertisers with access to the inventory source.
class InventorySourceAccessors {
  /// The advertisers with access to the inventory source.
  ///
  /// All advertisers must belong to the same partner.
  InventorySourceAccessorsAdvertiserAccessors? advertisers;

  /// The partner with access to the inventory source.
  InventorySourceAccessorsPartnerAccessor? partner;

  InventorySourceAccessors({
    this.advertisers,
    this.partner,
  });

  InventorySourceAccessors.fromJson(core.Map json_)
      : this(
          advertisers: json_.containsKey('advertisers')
              ? InventorySourceAccessorsAdvertiserAccessors.fromJson(
                  json_['advertisers'] as core.Map<core.String, core.dynamic>)
              : null,
          partner: json_.containsKey('partner')
              ? InventorySourceAccessorsPartnerAccessor.fromJson(
                  json_['partner'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertisers != null) 'advertisers': advertisers!,
        if (partner != null) 'partner': partner!,
      };
}

/// The advertisers with access to the inventory source.
typedef InventorySourceAccessorsAdvertiserAccessors
    = $InventorySourceAccessorsAdvertiserAccessors;

/// The partner with access to the inventory source.
typedef InventorySourceAccessorsPartnerAccessor
    = $InventorySourceAccessorsPartnerAccessor;

/// Targeting details for inventory source.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_INVENTORY_SOURCE`.
typedef InventorySourceAssignedTargetingOptionDetails
    = $InventorySourceAssignedTargetingOptionDetails;

/// The configuration for display creatives.
class InventorySourceDisplayCreativeConfig {
  /// The size requirements for display creatives that can be assigned to the
  /// inventory source.
  Dimensions? creativeSize;

  InventorySourceDisplayCreativeConfig({
    this.creativeSize,
  });

  InventorySourceDisplayCreativeConfig.fromJson(core.Map json_)
      : this(
          creativeSize: json_.containsKey('creativeSize')
              ? Dimensions.fromJson(
                  json_['creativeSize'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeSize != null) 'creativeSize': creativeSize!,
      };
}

/// A filtering option for filtering on Inventory Source entities.
typedef InventorySourceFilter = $InventorySourceFilter;

/// A collection of targetable inventory sources.
typedef InventorySourceGroup = $InventorySourceGroup;

/// Targeting details for inventory source group.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
typedef InventorySourceGroupAssignedTargetingOptionDetails
    = $InventorySourceGroupAssignedTargetingOptionDetails;

/// The status related settings of the inventory source.
typedef InventorySourceStatus = $InventorySourceStatus;

/// The configuration for video creatives.
typedef InventorySourceVideoCreativeConfig
    = $InventorySourceVideoCreativeConfig;

/// A single invoice.
class Invoice {
  /// The budget grouping ID for this invoice.
  ///
  /// This field will only be set if the invoice level of the corresponding
  /// billing profile was set to "Budget invoice grouping ID".
  core.String? budgetInvoiceGroupingId;

  /// The list of summarized information for each budget associated with this
  /// invoice.
  ///
  /// This field will only be set if the invoice detail level of the
  /// corresponding billing profile was set to "Budget level PO".
  core.List<BudgetSummary>? budgetSummaries;

  /// The ID of the original invoice being adjusted by this invoice, if
  /// applicable.
  ///
  /// May appear on the invoice PDF as `Reference invoice number`. If
  /// replaced_invoice_ids is set, this field will be empty.
  core.String? correctedInvoiceId;

  /// The currency used in the invoice in ISO 4217 format.
  core.String? currencyCode;

  /// The display name of the invoice.
  core.String? displayName;

  /// The date when the invoice is due.
  Date? dueDate;

  /// The unique ID of the invoice.
  core.String? invoiceId;

  /// The type of invoice document.
  /// Possible string values are:
  /// - "INVOICE_TYPE_UNSPECIFIED" : Not specified or is unknown in this
  /// version.
  /// - "INVOICE_TYPE_CREDIT" : The invoice has a negative amount.
  /// - "INVOICE_TYPE_INVOICE" : The invoice has a positive amount.
  core.String? invoiceType;

  /// The date when the invoice was issued.
  Date? issueDate;

  /// The resource name of the invoice.
  core.String? name;

  /// The total amount of costs or adjustments not tied to a particular budget,
  /// in micros of the invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? nonBudgetMicros;

  /// The ID of the payments account the invoice belongs to.
  ///
  /// Appears on the invoice PDF as `Billing Account Number`.
  core.String? paymentsAccountId;

  /// The ID of the payments profile the invoice belongs to.
  ///
  /// Appears on the invoice PDF as `Billing ID`.
  core.String? paymentsProfileId;

  /// The URL to download a PDF copy of the invoice.
  ///
  /// This URL is user specific and requires a valid OAuth 2.0 access token to
  /// access. The access token must be provided in an `Authorization: Bearer`
  /// HTTP header and be authorized for one of the following scopes: *
  /// `https://www.googleapis.com/auth/display-video-mediaplanning` *
  /// `https://www.googleapis.com/auth/display-video` The URL will be valid for
  /// 7 days after retrieval of this invoice object or until this invoice is
  /// retrieved again.
  core.String? pdfUrl;

  /// Purchase order number associated with the invoice.
  core.String? purchaseOrderNumber;

  /// The ID(s) of any originally issued invoice that is being cancelled by this
  /// invoice, if applicable.
  ///
  /// Multiple invoices may be listed if those invoices are being consolidated
  /// into a single invoice. May appear on invoice PDF as `Replaced invoice
  /// numbers`. If corrected_invoice_id is set, this field will be empty.
  core.List<core.String>? replacedInvoiceIds;

  /// The service start and end dates which are covered by this invoice.
  DateRange? serviceDateRange;

  /// The pre-tax subtotal amount, in micros of the invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? subtotalAmountMicros;

  /// The invoice total amount, in micros of the invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? totalAmountMicros;

  /// The sum of all taxes in invoice, in micros of the invoice's currency.
  ///
  /// For example, if currency_code is `USD`, then 1000000 represents one US
  /// dollar.
  core.String? totalTaxAmountMicros;

  Invoice({
    this.budgetInvoiceGroupingId,
    this.budgetSummaries,
    this.correctedInvoiceId,
    this.currencyCode,
    this.displayName,
    this.dueDate,
    this.invoiceId,
    this.invoiceType,
    this.issueDate,
    this.name,
    this.nonBudgetMicros,
    this.paymentsAccountId,
    this.paymentsProfileId,
    this.pdfUrl,
    this.purchaseOrderNumber,
    this.replacedInvoiceIds,
    this.serviceDateRange,
    this.subtotalAmountMicros,
    this.totalAmountMicros,
    this.totalTaxAmountMicros,
  });

  Invoice.fromJson(core.Map json_)
      : this(
          budgetInvoiceGroupingId: json_.containsKey('budgetInvoiceGroupingId')
              ? json_['budgetInvoiceGroupingId'] as core.String
              : null,
          budgetSummaries: json_.containsKey('budgetSummaries')
              ? (json_['budgetSummaries'] as core.List)
                  .map((value) => BudgetSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          correctedInvoiceId: json_.containsKey('correctedInvoiceId')
              ? json_['correctedInvoiceId'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          dueDate: json_.containsKey('dueDate')
              ? Date.fromJson(
                  json_['dueDate'] as core.Map<core.String, core.dynamic>)
              : null,
          invoiceId: json_.containsKey('invoiceId')
              ? json_['invoiceId'] as core.String
              : null,
          invoiceType: json_.containsKey('invoiceType')
              ? json_['invoiceType'] as core.String
              : null,
          issueDate: json_.containsKey('issueDate')
              ? Date.fromJson(
                  json_['issueDate'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nonBudgetMicros: json_.containsKey('nonBudgetMicros')
              ? json_['nonBudgetMicros'] as core.String
              : null,
          paymentsAccountId: json_.containsKey('paymentsAccountId')
              ? json_['paymentsAccountId'] as core.String
              : null,
          paymentsProfileId: json_.containsKey('paymentsProfileId')
              ? json_['paymentsProfileId'] as core.String
              : null,
          pdfUrl: json_.containsKey('pdfUrl')
              ? json_['pdfUrl'] as core.String
              : null,
          purchaseOrderNumber: json_.containsKey('purchaseOrderNumber')
              ? json_['purchaseOrderNumber'] as core.String
              : null,
          replacedInvoiceIds: json_.containsKey('replacedInvoiceIds')
              ? (json_['replacedInvoiceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          serviceDateRange: json_.containsKey('serviceDateRange')
              ? DateRange.fromJson(json_['serviceDateRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subtotalAmountMicros: json_.containsKey('subtotalAmountMicros')
              ? json_['subtotalAmountMicros'] as core.String
              : null,
          totalAmountMicros: json_.containsKey('totalAmountMicros')
              ? json_['totalAmountMicros'] as core.String
              : null,
          totalTaxAmountMicros: json_.containsKey('totalTaxAmountMicros')
              ? json_['totalTaxAmountMicros'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (budgetInvoiceGroupingId != null)
          'budgetInvoiceGroupingId': budgetInvoiceGroupingId!,
        if (budgetSummaries != null) 'budgetSummaries': budgetSummaries!,
        if (correctedInvoiceId != null)
          'correctedInvoiceId': correctedInvoiceId!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (displayName != null) 'displayName': displayName!,
        if (dueDate != null) 'dueDate': dueDate!,
        if (invoiceId != null) 'invoiceId': invoiceId!,
        if (invoiceType != null) 'invoiceType': invoiceType!,
        if (issueDate != null) 'issueDate': issueDate!,
        if (name != null) 'name': name!,
        if (nonBudgetMicros != null) 'nonBudgetMicros': nonBudgetMicros!,
        if (paymentsAccountId != null) 'paymentsAccountId': paymentsAccountId!,
        if (paymentsProfileId != null) 'paymentsProfileId': paymentsProfileId!,
        if (pdfUrl != null) 'pdfUrl': pdfUrl!,
        if (purchaseOrderNumber != null)
          'purchaseOrderNumber': purchaseOrderNumber!,
        if (replacedInvoiceIds != null)
          'replacedInvoiceIds': replacedInvoiceIds!,
        if (serviceDateRange != null) 'serviceDateRange': serviceDateRange!,
        if (subtotalAmountMicros != null)
          'subtotalAmountMicros': subtotalAmountMicros!,
        if (totalAmountMicros != null) 'totalAmountMicros': totalAmountMicros!,
        if (totalTaxAmountMicros != null)
          'totalTaxAmountMicros': totalTaxAmountMicros!,
      };
}

/// Details for assigned keyword targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_KEYWORD`.
typedef KeywordAssignedTargetingOptionDetails
    = $KeywordAssignedTargetingOptionDetails;

/// Details for assigned language targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_LANGUAGE`.
typedef LanguageAssignedTargetingOptionDetails
    = $LanguageAssignedTargetingOptionDetails;

/// Represents a targetable language.
///
/// This will be populated in the language_details field when targeting_type is
/// `TARGETING_TYPE_LANGUAGE`.
typedef LanguageTargetingOptionDetails = $LanguageTargetingOptionDetails;

/// A single line item.
class LineItem {
  /// The unique ID of the advertiser the line item belongs to.
  ///
  /// Output only.
  core.String? advertiserId;

  /// The bidding strategy of the line item.
  ///
  /// Required.
  BiddingStrategy? bidStrategy;

  /// The budget allocation setting of the line item.
  ///
  /// Required.
  LineItemBudget? budget;

  /// The unique ID of the campaign that the line item belongs to.
  ///
  /// Output only.
  core.String? campaignId;

  /// The conversion tracking setting of the line item.
  ConversionCountingConfig? conversionCounting;

  /// The IDs of the creatives associated with the line item.
  core.List<core.String>? creativeIds;

  /// The display name of the line item.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// Controls whether or not the line item can spend its budget and bid on
  /// inventory.
  ///
  /// * For CreateLineItem method, only `ENTITY_STATUS_DRAFT` is allowed. To
  /// activate a line item, use UpdateLineItem method and update the status to
  /// `ENTITY_STATUS_ACTIVE` after creation. * A line item cannot be changed
  /// back to `ENTITY_STATUS_DRAFT` status from any other status. * If the line
  /// item's parent insertion order is not active, the line item can't spend its
  /// budget even if its own status is `ENTITY_STATUS_ACTIVE`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// Whether to exclude new exchanges from automatically being targeted by the
  /// line item.
  ///
  /// This field is false by default.
  core.bool? excludeNewExchanges;

  /// The start and end time of the line item's flight.
  ///
  /// Required.
  LineItemFlight? flight;

  /// The impression frequency cap settings of the line item.
  ///
  /// The max_impressions field in this settings object must be used if
  /// assigning a limited cap.
  ///
  /// Required.
  FrequencyCap? frequencyCap;

  /// The unique ID of the insertion order that the line item belongs to.
  ///
  /// Required. Immutable.
  core.String? insertionOrderId;

  /// Integration details of the line item.
  IntegrationDetails? integrationDetails;

  /// The unique ID of the line item.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? lineItemId;

  /// The type of the line item.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "LINE_ITEM_TYPE_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version. Line items of this type and their targeting cannot be
  /// created or updated using the API.
  /// - "LINE_ITEM_TYPE_DISPLAY_DEFAULT" : Image, HTML5, native, or rich media
  /// ads.
  /// - "LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INSTALL" : Display ads that drive
  /// installs of an app.
  /// - "LINE_ITEM_TYPE_VIDEO_DEFAULT" : Video ads sold on a CPM basis for a
  /// variety of environments.
  /// - "LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INSTALL" : Video ads that drive
  /// installs of an app.
  /// - "LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INVENTORY" : Display ads served on
  /// mobile app inventory. Line items of this type and their targeting cannot
  /// be created or updated using the API.
  /// - "LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INVENTORY" : Video ads served on mobile
  /// app inventory. Line items of this type and their targeting cannot be
  /// created or updated using the API.
  /// - "LINE_ITEM_TYPE_AUDIO_DEFAULT" : RTB Audio ads sold for a variety of
  /// environments.
  /// - "LINE_ITEM_TYPE_VIDEO_OVER_THE_TOP" : Over-the-top ads present in OTT
  /// insertion orders. This type is only applicable to line items with an
  /// insertion order of insertion_order_type `OVER_THE_TOP`.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_ACTION" : YouTube video ads that
  /// promote conversions. Line items of this type and their targeting cannot be
  /// created or updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_NON_SKIPPABLE" : YouTube video ads
  /// (up to 15 seconds) that cannot be skipped. Line items of this type and
  /// their targeting cannot be created or updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_VIDEO_SEQUENCE" : YouTube video ads
  /// that show a story in a particular sequence using a mix of formats. Line
  /// items of this type and their targeting cannot be created or updated using
  /// the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_AUDIO" : YouTube audio ads. Line
  /// items of this type and their targeting cannot be created or updated using
  /// the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_REACH" : YouTube video ads that
  /// optimize reaching more unique users at lower cost. May include bumper ads,
  /// skippable in-stream ads, or a mix of types. Line items of this type and
  /// their targeting cannot be created or updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_SIMPLE" : Default YouTube video
  /// ads. Line items of this type and their targeting cannot be created or
  /// updated using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_NON_SKIPPABLE_OVER_THE_TOP" :
  /// Connected TV youTube video ads (up to 15 seconds) that cannot be skipped.
  /// Line items of this type and their targeting cannot be created or updated
  /// using the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_REACH_OVER_THE_TOP" : Connected TV
  /// youTube video ads that optimize reaching more unique users at lower cost.
  /// May include bumper ads, skippable in-stream ads, or a mix of types. Line
  /// items of this type and their targeting cannot be created or updated using
  /// the API.
  /// - "LINE_ITEM_TYPE_YOUTUBE_AND_PARTNERS_SIMPLE_OVER_THE_TOP" : Connected TV
  /// default YouTube video ads. Only include in-stream ad-format. Line items of
  /// this type and their targeting cannot be created or updated using the API.
  core.String? lineItemType;

  /// The mobile app promoted by the line item.
  ///
  /// This is applicable only when line_item_type is either
  /// `LINE_ITEM_TYPE_DISPLAY_MOBILE_APP_INSTALL` or
  /// `LINE_ITEM_TYPE_VIDEO_MOBILE_APP_INSTALL`.
  MobileApp? mobileApp;

  /// The resource name of the line item.
  ///
  /// Output only.
  core.String? name;

  /// The budget spending speed setting of the line item.
  ///
  /// Required.
  Pacing? pacing;

  /// The partner costs associated with the line item.
  ///
  /// If absent or empty in CreateLineItem method, the newly created line item
  /// will inherit partner costs from its parent insertion order.
  core.List<PartnerCost>? partnerCosts;

  /// The partner revenue model setting of the line item.
  ///
  /// Required.
  PartnerRevenueModel? partnerRevenueModel;

  /// The reservation type of the line item.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESERVATION_TYPE_UNSPECIFIED" : Reservation type value is not specified
  /// or is unknown in this version.
  /// - "RESERVATION_TYPE_NOT_GUARANTEED" : Not created through a guaranteed
  /// inventory source.
  /// - "RESERVATION_TYPE_PROGRAMMATIC_GUARANTEED" : Created through a
  /// programmatic guaranteed inventory source.
  /// - "RESERVATION_TYPE_TAG_GUARANTEED" : Created through a tag guaranteed
  /// inventory source.
  /// - "RESERVATION_TYPE_PETRA_VIRAL" : Created through a Petra inventory
  /// source. Only applicable to YouTube and Partners line items.
  /// - "RESERVATION_TYPE_INSTANT_RESERVE" : Created with an instant quote. Only
  /// applicable to YouTube and partners line items.
  core.String? reservationType;

  /// The \[targeting
  /// expansion\](//support.google.com/displayvideo/answer/10191558) settings of
  /// the line item.
  ///
  /// This config is only applicable when eligible audience list targeting is
  /// assigned to the line item. Beginning November 7, 2022, these settings may
  /// represent the \[optimized targeting
  /// feature\](//support.google.com/displayvideo/answer/12060859) in place of
  /// targeting expansion. This feature will be rolled out to all partners by
  /// November 9, 2022.
  TargetingExpansionConfig? targetingExpansion;

  /// The timestamp when the line item was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  /// The warning messages generated by the line item.
  ///
  /// These warnings do not block saving the line item, but some may block the
  /// line item from running.
  ///
  /// Output only.
  core.List<core.String>? warningMessages;

  /// Settings specific to YouTube and Partners line items.
  ///
  /// Output only.
  YoutubeAndPartnersSettings? youtubeAndPartnersSettings;

  LineItem({
    this.advertiserId,
    this.bidStrategy,
    this.budget,
    this.campaignId,
    this.conversionCounting,
    this.creativeIds,
    this.displayName,
    this.entityStatus,
    this.excludeNewExchanges,
    this.flight,
    this.frequencyCap,
    this.insertionOrderId,
    this.integrationDetails,
    this.lineItemId,
    this.lineItemType,
    this.mobileApp,
    this.name,
    this.pacing,
    this.partnerCosts,
    this.partnerRevenueModel,
    this.reservationType,
    this.targetingExpansion,
    this.updateTime,
    this.warningMessages,
    this.youtubeAndPartnersSettings,
  });

  LineItem.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          bidStrategy: json_.containsKey('bidStrategy')
              ? BiddingStrategy.fromJson(
                  json_['bidStrategy'] as core.Map<core.String, core.dynamic>)
              : null,
          budget: json_.containsKey('budget')
              ? LineItemBudget.fromJson(
                  json_['budget'] as core.Map<core.String, core.dynamic>)
              : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          conversionCounting: json_.containsKey('conversionCounting')
              ? ConversionCountingConfig.fromJson(json_['conversionCounting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          creativeIds: json_.containsKey('creativeIds')
              ? (json_['creativeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          excludeNewExchanges: json_.containsKey('excludeNewExchanges')
              ? json_['excludeNewExchanges'] as core.bool
              : null,
          flight: json_.containsKey('flight')
              ? LineItemFlight.fromJson(
                  json_['flight'] as core.Map<core.String, core.dynamic>)
              : null,
          frequencyCap: json_.containsKey('frequencyCap')
              ? FrequencyCap.fromJson(
                  json_['frequencyCap'] as core.Map<core.String, core.dynamic>)
              : null,
          insertionOrderId: json_.containsKey('insertionOrderId')
              ? json_['insertionOrderId'] as core.String
              : null,
          integrationDetails: json_.containsKey('integrationDetails')
              ? IntegrationDetails.fromJson(json_['integrationDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lineItemId: json_.containsKey('lineItemId')
              ? json_['lineItemId'] as core.String
              : null,
          lineItemType: json_.containsKey('lineItemType')
              ? json_['lineItemType'] as core.String
              : null,
          mobileApp: json_.containsKey('mobileApp')
              ? MobileApp.fromJson(
                  json_['mobileApp'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pacing: json_.containsKey('pacing')
              ? Pacing.fromJson(
                  json_['pacing'] as core.Map<core.String, core.dynamic>)
              : null,
          partnerCosts: json_.containsKey('partnerCosts')
              ? (json_['partnerCosts'] as core.List)
                  .map((value) => PartnerCost.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partnerRevenueModel: json_.containsKey('partnerRevenueModel')
              ? PartnerRevenueModel.fromJson(json_['partnerRevenueModel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reservationType: json_.containsKey('reservationType')
              ? json_['reservationType'] as core.String
              : null,
          targetingExpansion: json_.containsKey('targetingExpansion')
              ? TargetingExpansionConfig.fromJson(json_['targetingExpansion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          warningMessages: json_.containsKey('warningMessages')
              ? (json_['warningMessages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          youtubeAndPartnersSettings:
              json_.containsKey('youtubeAndPartnersSettings')
                  ? YoutubeAndPartnersSettings.fromJson(
                      json_['youtubeAndPartnersSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (bidStrategy != null) 'bidStrategy': bidStrategy!,
        if (budget != null) 'budget': budget!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (conversionCounting != null)
          'conversionCounting': conversionCounting!,
        if (creativeIds != null) 'creativeIds': creativeIds!,
        if (displayName != null) 'displayName': displayName!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (excludeNewExchanges != null)
          'excludeNewExchanges': excludeNewExchanges!,
        if (flight != null) 'flight': flight!,
        if (frequencyCap != null) 'frequencyCap': frequencyCap!,
        if (insertionOrderId != null) 'insertionOrderId': insertionOrderId!,
        if (integrationDetails != null)
          'integrationDetails': integrationDetails!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (lineItemType != null) 'lineItemType': lineItemType!,
        if (mobileApp != null) 'mobileApp': mobileApp!,
        if (name != null) 'name': name!,
        if (pacing != null) 'pacing': pacing!,
        if (partnerCosts != null) 'partnerCosts': partnerCosts!,
        if (partnerRevenueModel != null)
          'partnerRevenueModel': partnerRevenueModel!,
        if (reservationType != null) 'reservationType': reservationType!,
        if (targetingExpansion != null)
          'targetingExpansion': targetingExpansion!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (warningMessages != null) 'warningMessages': warningMessages!,
        if (youtubeAndPartnersSettings != null)
          'youtubeAndPartnersSettings': youtubeAndPartnersSettings!,
      };
}

/// Wrapper object associating an assigned_targeting_option resource and the
/// line item it is assigned to.
class LineItemAssignedTargetingOption {
  /// The assigned targeting option resource.
  AssignedTargetingOption? assignedTargetingOption;

  /// The ID of the line item the assigned targeting option is assigned to.
  core.String? lineItemId;

  LineItemAssignedTargetingOption({
    this.assignedTargetingOption,
    this.lineItemId,
  });

  LineItemAssignedTargetingOption.fromJson(core.Map json_)
      : this(
          assignedTargetingOption: json_.containsKey('assignedTargetingOption')
              ? AssignedTargetingOption.fromJson(
                  json_['assignedTargetingOption']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lineItemId: json_.containsKey('lineItemId')
              ? json_['lineItemId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOption != null)
          'assignedTargetingOption': assignedTargetingOption!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
      };
}

/// Settings that control how budget is allocated.
typedef LineItemBudget = $LineItemBudget;

/// Settings that control the active duration of a line item.
class LineItemFlight {
  /// The flight start and end dates of the line item.
  ///
  /// They are resolved relative to the parent advertiser's time zone. *
  /// Required when flight_date_type is `LINE_ITEM_FLIGHT_DATE_TYPE_CUSTOM`.
  /// Output only otherwise. * When creating a new flight, both `start_date` and
  /// `end_date` must be in the future. * An existing flight with a `start_date`
  /// in the past has a mutable `end_date` but an immutable `start_date`. *
  /// `end_date` must be the `start_date` or later, both before the year 2037.
  DateRange? dateRange;

  /// The type of the line item's flight dates.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LINE_ITEM_FLIGHT_DATE_TYPE_UNSPECIFIED" : Type value is not specified
  /// or is unknown in this version.
  /// - "LINE_ITEM_FLIGHT_DATE_TYPE_INHERITED" : The line item's flight dates
  /// are inherited from its parent insertion order.
  /// - "LINE_ITEM_FLIGHT_DATE_TYPE_CUSTOM" : The line item uses its own custom
  /// flight dates.
  core.String? flightDateType;

  LineItemFlight({
    this.dateRange,
    this.flightDateType,
  });

  LineItemFlight.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          flightDateType: json_.containsKey('flightDateType')
              ? json_['flightDateType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (flightDateType != null) 'flightDateType': flightDateType!,
      };
}

/// Response message for ListAdvertiserAssignedTargetingOptions.
class ListAdvertiserAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// ListAdvertiserAssignedTargetingOptionsRequest to fetch the next page of
  /// results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  ListAdvertiserAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  ListAdvertiserAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListAdvertisersResponse {
  /// The list of advertisers.
  ///
  /// This list will be absent if empty.
  core.List<Advertiser>? advertisers;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListAdvertisers` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListAdvertisersResponse({
    this.advertisers,
    this.nextPageToken,
  });

  ListAdvertisersResponse.fromJson(core.Map json_)
      : this(
          advertisers: json_.containsKey('advertisers')
              ? (json_['advertisers'] as core.List)
                  .map((value) => Advertiser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertisers != null) 'advertisers': advertisers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for
/// AssignedInventorySourceService.ListAssignedInventorySources.
class ListAssignedInventorySourcesResponse {
  /// The list of assigned inventory sources.
  ///
  /// This list will be absent if empty.
  core.List<AssignedInventorySource>? assignedInventorySources;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListAssignedInventorySources` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListAssignedInventorySourcesResponse({
    this.assignedInventorySources,
    this.nextPageToken,
  });

  ListAssignedInventorySourcesResponse.fromJson(core.Map json_)
      : this(
          assignedInventorySources:
              json_.containsKey('assignedInventorySources')
                  ? (json_['assignedInventorySources'] as core.List)
                      .map((value) => AssignedInventorySource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedInventorySources != null)
          'assignedInventorySources': assignedInventorySources!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for AssignedLocationService.ListAssignedLocations.
class ListAssignedLocationsResponse {
  /// The list of assigned locations.
  ///
  /// This list will be absent if empty.
  core.List<AssignedLocation>? assignedLocations;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListAssignedLocations` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListAssignedLocationsResponse({
    this.assignedLocations,
    this.nextPageToken,
  });

  ListAssignedLocationsResponse.fromJson(core.Map json_)
      : this(
          assignedLocations: json_.containsKey('assignedLocations')
              ? (json_['assignedLocations'] as core.List)
                  .map((value) => AssignedLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedLocations != null) 'assignedLocations': assignedLocations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListCampaignAssignedTargetingOptions.
class ListCampaignAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// ListCampaignAssignedTargetingOptionsRequest to fetch the next page of
  /// results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  ListCampaignAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  ListCampaignAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListCampaignsResponse {
  /// The list of campaigns.
  ///
  /// This list will be absent if empty.
  core.List<Campaign>? campaigns;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListCampaigns` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListCampaignsResponse({
    this.campaigns,
    this.nextPageToken,
  });

  ListCampaignsResponse.fromJson(core.Map json_)
      : this(
          campaigns: json_.containsKey('campaigns')
              ? (json_['campaigns'] as core.List)
                  .map((value) => Campaign.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaigns != null) 'campaigns': campaigns!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListChannelsResponse {
  /// The list of channels.
  ///
  /// This list will be absent if empty.
  core.List<Channel>? channels;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListChannels` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListChannelsResponse({
    this.channels,
    this.nextPageToken,
  });

  ListChannelsResponse.fromJson(core.Map json_)
      : this(
          channels: json_.containsKey('channels')
              ? (json_['channels'] as core.List)
                  .map((value) => Channel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channels != null) 'channels': channels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListCombinedAudiencesResponse {
  /// The list of combined audiences.
  ///
  /// This list will be absent if empty.
  core.List<CombinedAudience>? combinedAudiences;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListCombinedAudiences` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListCombinedAudiencesResponse({
    this.combinedAudiences,
    this.nextPageToken,
  });

  ListCombinedAudiencesResponse.fromJson(core.Map json_)
      : this(
          combinedAudiences: json_.containsKey('combinedAudiences')
              ? (json_['combinedAudiences'] as core.List)
                  .map((value) => CombinedAudience.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (combinedAudiences != null) 'combinedAudiences': combinedAudiences!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListCreativesResponse {
  /// The list of creatives.
  ///
  /// This list will be absent if empty.
  core.List<Creative>? creatives;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListCreativesRequest` method to retrieve the next page of results. If
  /// this field is null, it means this is the last page.
  core.String? nextPageToken;

  ListCreativesResponse({
    this.creatives,
    this.nextPageToken,
  });

  ListCreativesResponse.fromJson(core.Map json_)
      : this(
          creatives: json_.containsKey('creatives')
              ? (json_['creatives'] as core.List)
                  .map((value) => Creative.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creatives != null) 'creatives': creatives!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListCustomBiddingAlgorithmsResponse {
  /// The list of custom bidding algorithms.
  ///
  /// This list will be absent if empty.
  core.List<CustomBiddingAlgorithm>? customBiddingAlgorithms;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListCustomBiddingAlgorithmsRequest` method to retrieve the next page of
  /// results. If this field is null, it means this is the last page.
  core.String? nextPageToken;

  ListCustomBiddingAlgorithmsResponse({
    this.customBiddingAlgorithms,
    this.nextPageToken,
  });

  ListCustomBiddingAlgorithmsResponse.fromJson(core.Map json_)
      : this(
          customBiddingAlgorithms: json_.containsKey('customBiddingAlgorithms')
              ? (json_['customBiddingAlgorithms'] as core.List)
                  .map((value) => CustomBiddingAlgorithm.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customBiddingAlgorithms != null)
          'customBiddingAlgorithms': customBiddingAlgorithms!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListCustomBiddingScriptsResponse {
  /// The list of custom bidding scripts.
  ///
  /// This list will be absent if empty.
  core.List<CustomBiddingScript>? customBiddingScripts;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListCustomBiddingScriptsRequest` method to retrieve the next page of
  /// results. If this field is null, it means this is the last page.
  core.String? nextPageToken;

  ListCustomBiddingScriptsResponse({
    this.customBiddingScripts,
    this.nextPageToken,
  });

  ListCustomBiddingScriptsResponse.fromJson(core.Map json_)
      : this(
          customBiddingScripts: json_.containsKey('customBiddingScripts')
              ? (json_['customBiddingScripts'] as core.List)
                  .map((value) => CustomBiddingScript.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customBiddingScripts != null)
          'customBiddingScripts': customBiddingScripts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListCustomListsResponse {
  /// The list of custom lists.
  ///
  /// This list will be absent if empty.
  core.List<CustomList>? customLists;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListCustomLists` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListCustomListsResponse({
    this.customLists,
    this.nextPageToken,
  });

  ListCustomListsResponse.fromJson(core.Map json_)
      : this(
          customLists: json_.containsKey('customLists')
              ? (json_['customLists'] as core.List)
                  .map((value) => CustomList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customLists != null) 'customLists': customLists!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListFirstAndThirdPartyAudiencesResponse {
  /// The list of first and third party audiences.
  ///
  /// Audience size properties will not be included. This list will be absent if
  /// empty.
  core.List<FirstAndThirdPartyAudience>? firstAndThirdPartyAudiences;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListFirstAndThirdPartyAudiences` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListFirstAndThirdPartyAudiencesResponse({
    this.firstAndThirdPartyAudiences,
    this.nextPageToken,
  });

  ListFirstAndThirdPartyAudiencesResponse.fromJson(core.Map json_)
      : this(
          firstAndThirdPartyAudiences:
              json_.containsKey('firstAndThirdPartyAudiences')
                  ? (json_['firstAndThirdPartyAudiences'] as core.List)
                      .map((value) => FirstAndThirdPartyAudience.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstAndThirdPartyAudiences != null)
          'firstAndThirdPartyAudiences': firstAndThirdPartyAudiences!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListGoogleAudiencesResponse {
  /// The list of Google audiences.
  ///
  /// This list will be absent if empty.
  core.List<GoogleAudience>? googleAudiences;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListGoogleAudiences` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListGoogleAudiencesResponse({
    this.googleAudiences,
    this.nextPageToken,
  });

  ListGoogleAudiencesResponse.fromJson(core.Map json_)
      : this(
          googleAudiences: json_.containsKey('googleAudiences')
              ? (json_['googleAudiences'] as core.List)
                  .map((value) => GoogleAudience.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleAudiences != null) 'googleAudiences': googleAudiences!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListGuaranteedOrdersResponse {
  /// The list of guaranteed orders.
  ///
  /// This list will be absent if empty.
  core.List<GuaranteedOrder>? guaranteedOrders;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListGuaranteedOrders` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListGuaranteedOrdersResponse({
    this.guaranteedOrders,
    this.nextPageToken,
  });

  ListGuaranteedOrdersResponse.fromJson(core.Map json_)
      : this(
          guaranteedOrders: json_.containsKey('guaranteedOrders')
              ? (json_['guaranteedOrders'] as core.List)
                  .map((value) => GuaranteedOrder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (guaranteedOrders != null) 'guaranteedOrders': guaranteedOrders!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListInsertionOrderAssignedTargetingOptions.
class ListInsertionOrderAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// ListInsertionOrderAssignedTargetingOptionsRequest to fetch the next page
  /// of results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  ListInsertionOrderAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  ListInsertionOrderAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListInsertionOrdersResponse {
  /// The list of insertion orders.
  ///
  /// This list will be absent if empty.
  core.List<InsertionOrder>? insertionOrders;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListInsertionOrders` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListInsertionOrdersResponse({
    this.insertionOrders,
    this.nextPageToken,
  });

  ListInsertionOrdersResponse.fromJson(core.Map json_)
      : this(
          insertionOrders: json_.containsKey('insertionOrders')
              ? (json_['insertionOrders'] as core.List)
                  .map((value) => InsertionOrder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (insertionOrders != null) 'insertionOrders': insertionOrders!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for InventorySourceGroupService.ListInventorySourceGroups.
class ListInventorySourceGroupsResponse {
  /// The list of inventory source groups.
  ///
  /// This list will be absent if empty.
  core.List<InventorySourceGroup>? inventorySourceGroups;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListInventorySourceGroups` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListInventorySourceGroupsResponse({
    this.inventorySourceGroups,
    this.nextPageToken,
  });

  ListInventorySourceGroupsResponse.fromJson(core.Map json_)
      : this(
          inventorySourceGroups: json_.containsKey('inventorySourceGroups')
              ? (json_['inventorySourceGroups'] as core.List)
                  .map((value) => InventorySourceGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventorySourceGroups != null)
          'inventorySourceGroups': inventorySourceGroups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListInventorySourcesResponse {
  /// The list of inventory sources.
  ///
  /// This list will be absent if empty.
  core.List<InventorySource>? inventorySources;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListInventorySources` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListInventorySourcesResponse({
    this.inventorySources,
    this.nextPageToken,
  });

  ListInventorySourcesResponse.fromJson(core.Map json_)
      : this(
          inventorySources: json_.containsKey('inventorySources')
              ? (json_['inventorySources'] as core.List)
                  .map((value) => InventorySource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventorySources != null) 'inventorySources': inventorySources!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListInvoicesResponse {
  /// The list of invoices.
  ///
  /// This list will be absent if empty.
  core.List<Invoice>? invoices;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListInvoices` method to retrieve the next page of results. This token
  /// will be absent if there are no more invoices to return.
  core.String? nextPageToken;

  ListInvoicesResponse({
    this.invoices,
    this.nextPageToken,
  });

  ListInvoicesResponse.fromJson(core.Map json_)
      : this(
          invoices: json_.containsKey('invoices')
              ? (json_['invoices'] as core.List)
                  .map((value) => Invoice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invoices != null) 'invoices': invoices!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListLineItemAssignedTargetingOptions.
class ListLineItemAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// ListLineItemAssignedTargetingOptionsRequest to fetch the next page of
  /// results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  ListLineItemAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  ListLineItemAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListLineItemsResponse {
  /// The list of line items.
  ///
  /// This list will be absent if empty.
  core.List<LineItem>? lineItems;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListLineItems` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListLineItemsResponse({
    this.lineItems,
    this.nextPageToken,
  });

  ListLineItemsResponse.fromJson(core.Map json_)
      : this(
          lineItems: json_.containsKey('lineItems')
              ? (json_['lineItems'] as core.List)
                  .map((value) => LineItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lineItems != null) 'lineItems': lineItems!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListLocationListsResponse {
  /// The list of location lists.
  ///
  /// This list will be absent if empty.
  core.List<LocationList>? locationLists;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListLocationLists` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListLocationListsResponse({
    this.locationLists,
    this.nextPageToken,
  });

  ListLocationListsResponse.fromJson(core.Map json_)
      : this(
          locationLists: json_.containsKey('locationLists')
              ? (json_['locationLists'] as core.List)
                  .map((value) => LocationList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationLists != null) 'locationLists': locationLists!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListManualTriggersResponse {
  /// The list of manual triggers.
  ///
  /// This list will be absent if empty.
  core.List<ManualTrigger>? manualTriggers;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListManualTriggers` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListManualTriggersResponse({
    this.manualTriggers,
    this.nextPageToken,
  });

  ListManualTriggersResponse.fromJson(core.Map json_)
      : this(
          manualTriggers: json_.containsKey('manualTriggers')
              ? (json_['manualTriggers'] as core.List)
                  .map((value) => ManualTrigger.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (manualTriggers != null) 'manualTriggers': manualTriggers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for NegativeKeywordListService.ListNegativeKeywordLists.
class ListNegativeKeywordListsResponse {
  /// The list of negative keyword lists.
  ///
  /// This list will be absent if empty.
  core.List<NegativeKeywordList>? negativeKeywordLists;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListNegativeKeywordLists` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListNegativeKeywordListsResponse({
    this.negativeKeywordLists,
    this.nextPageToken,
  });

  ListNegativeKeywordListsResponse.fromJson(core.Map json_)
      : this(
          negativeKeywordLists: json_.containsKey('negativeKeywordLists')
              ? (json_['negativeKeywordLists'] as core.List)
                  .map((value) => NegativeKeywordList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeKeywordLists != null)
          'negativeKeywordLists': negativeKeywordLists!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for NegativeKeywordService.ListNegativeKeywords.
class ListNegativeKeywordsResponse {
  /// The list of negative keywords.
  ///
  /// This list will be absent if empty.
  core.List<NegativeKeyword>? negativeKeywords;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListNegativeKeywords` method to retrieve the next page of results.
  core.String? nextPageToken;

  ListNegativeKeywordsResponse({
    this.negativeKeywords,
    this.nextPageToken,
  });

  ListNegativeKeywordsResponse.fromJson(core.Map json_)
      : this(
          negativeKeywords: json_.containsKey('negativeKeywords')
              ? (json_['negativeKeywords'] as core.List)
                  .map((value) => NegativeKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeKeywords != null) 'negativeKeywords': negativeKeywords!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListPartnerAssignedTargetingOptionsResponse {
  /// The list of assigned targeting options.
  ///
  /// This list will be absent if empty.
  core.List<AssignedTargetingOption>? assignedTargetingOptions;

  /// A token identifying the next page of results.
  ///
  /// This value should be specified as the pageToken in a subsequent
  /// ListPartnerAssignedTargetingOptionsRequest to fetch the next page of
  /// results. This token will be absent if there are no more
  /// assigned_targeting_options to return.
  core.String? nextPageToken;

  ListPartnerAssignedTargetingOptionsResponse({
    this.assignedTargetingOptions,
    this.nextPageToken,
  });

  ListPartnerAssignedTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          assignedTargetingOptions:
              json_.containsKey('assignedTargetingOptions')
                  ? (json_['assignedTargetingOptions'] as core.List)
                      .map((value) => AssignedTargetingOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedTargetingOptions != null)
          'assignedTargetingOptions': assignedTargetingOptions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListPartnersResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListPartners` method to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of partners.
  ///
  /// This list will be absent if empty.
  core.List<Partner>? partners;

  ListPartnersResponse({
    this.nextPageToken,
    this.partners,
  });

  ListPartnersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          partners: json_.containsKey('partners')
              ? (json_['partners'] as core.List)
                  .map((value) => Partner.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (partners != null) 'partners': partners!,
      };
}

/// Response message for SiteService.ListSites.
class ListSitesResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListSites` method to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of sites.
  ///
  /// This list will be absent if empty.
  core.List<Site>? sites;

  ListSitesResponse({
    this.nextPageToken,
    this.sites,
  });

  ListSitesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sites != null) 'sites': sites!,
      };
}

/// Response message for ListTargetingOptions.
class ListTargetingOptionsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListTargetingOptions` method to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of targeting options.
  ///
  /// This list will be absent if empty.
  core.List<TargetingOption>? targetingOptions;

  ListTargetingOptionsResponse({
    this.nextPageToken,
    this.targetingOptions,
  });

  ListTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          targetingOptions: json_.containsKey('targetingOptions')
              ? (json_['targetingOptions'] as core.List)
                  .map((value) => TargetingOption.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (targetingOptions != null) 'targetingOptions': targetingOptions!,
      };
}

class ListUsersResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `ListUsers` method to retrieve the next page of results. This token will
  /// be absent if there are no more results to return.
  core.String? nextPageToken;

  /// The list of users.
  ///
  /// This list will be absent if empty.
  core.List<User>? users;

  ListUsersResponse({
    this.nextPageToken,
    this.users,
  });

  ListUsersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          users: json_.containsKey('users')
              ? (json_['users'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (users != null) 'users': users!,
      };
}

/// A list of locations used for targeting.
typedef LocationList = $LocationList;

/// Specifies how many days into the past to look when determining whether to
/// record a conversion.
typedef LookbackWindow = $LookbackWindow;
typedef LookupInvoiceCurrencyResponse = $LookupInvoiceCurrencyResponse;

/// A single manual trigger in Display & Video 360.
typedef ManualTrigger = $ManualTrigger;

/// A strategy that automatically adjusts the bid to optimize a specified
/// performance goal while spending the full budget.
typedef MaximizeSpendBidStrategy = $MaximizeSpendBidStrategy;

/// Measurement settings of a partner.
typedef MeasurementConfig = $MeasurementConfig;

/// A mobile app promoted by a mobile app install line item.
typedef MobileApp = $MobileApp01;

/// Wrapper message for a list of mobile device IDs defining Customer Match
/// audience members.
typedef MobileDeviceIdList = $MobileDeviceIdList;

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Details for native content position assigned targeting option.
///
/// This will be populated in the native_content_position_details field when
/// targeting_type is `TARGETING_TYPE_NATIVE_CONTENT_POSITION`. Explicitly
/// targeting all options is not supported. Remove all native content position
/// targeting options to achieve this effect.
class NativeContentPositionAssignedTargetingOptionDetails {
  /// The content position.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "NATIVE_CONTENT_POSITION_UNSPECIFIED" : Native content position is not
  /// specified in this version. This enum is a place holder for a default value
  /// and does not represent a real native content position.
  /// - "NATIVE_CONTENT_POSITION_UNKNOWN" : The native content position is
  /// unknown.
  /// - "NATIVE_CONTENT_POSITION_IN_ARTICLE" : Native content position is
  /// in-article, i.e., ads appear between the paragraphs of pages.
  /// - "NATIVE_CONTENT_POSITION_IN_FEED" : Native content position is in-feed,
  /// i.e., ads appear in a scrollable stream of content. A feed is typically
  /// editorial (e.g. a list of articles or news) or listings (e.g. a list of
  /// products or services).
  /// - "NATIVE_CONTENT_POSITION_PERIPHERAL" : Native content position is
  /// peripheral, i.e., ads appear outside of core content on pages, such as the
  /// right- or left-hand side of the page.
  /// - "NATIVE_CONTENT_POSITION_RECOMMENDATION" : Native content position is
  /// recommendation, i.e., ads appear in sections for recommended content.
  core.String? contentPosition;

  NativeContentPositionAssignedTargetingOptionDetails({
    this.contentPosition,
  });

  NativeContentPositionAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          contentPosition: json_.containsKey('contentPosition')
              ? json_['contentPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentPosition != null) 'contentPosition': contentPosition!,
      };
}

/// Represents a targetable native content position.
///
/// This will be populated in the native_content_position_details field when
/// targeting_type is `TARGETING_TYPE_NATIVE_CONTENT_POSITION`.
typedef NativeContentPositionTargetingOptionDetails
    = $NativeContentPositionTargetingOptionDetails;

/// A negatively targeted keyword that belongs to a negative keyword list.
typedef NegativeKeyword = $NegativeKeyword;

/// A list of negative keywords used for targeting.
typedef NegativeKeywordList = $NegativeKeywordList;

/// Targeting details for negative keyword list.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`.
typedef NegativeKeywordListAssignedTargetingOptionDetails
    = $NegativeKeywordListAssignedTargetingOptionDetails;

/// OBA Icon for a Creative
class ObaIcon {
  /// The click tracking URL of the OBA icon.
  ///
  /// Only URLs of the following domains are allowed: * https://info.evidon.com
  /// * https://l.betrad.com
  ///
  /// Required.
  core.String? clickTrackingUrl;

  /// The dimensions of the OBA icon.
  Dimensions? dimensions;

  /// The landing page URL of the OBA icon.
  ///
  /// Only URLs of the following domains are allowed: * https://info.evidon.com
  /// * https://l.betrad.com
  ///
  /// Required.
  core.String? landingPageUrl;

  /// The position of the OBA icon on the creative.
  /// Possible string values are:
  /// - "OBA_ICON_POSITION_UNSPECIFIED" : The OBA icon position is not
  /// specified.
  /// - "OBA_ICON_POSITION_UPPER_RIGHT" : At the upper right side of the
  /// creative.
  /// - "OBA_ICON_POSITION_UPPER_LEFT" : At the upper left side of the creative.
  /// - "OBA_ICON_POSITION_LOWER_RIGHT" : At the lower right side of the
  /// creative.
  /// - "OBA_ICON_POSITION_LOWER_LEFT" : At the lower left side of the creative.
  core.String? position;

  /// The program of the OBA icon.
  ///
  /// For example: “AdChoices”.
  core.String? program;

  /// The MIME type of the OBA icon resource.
  core.String? resourceMimeType;

  /// The URL of the OBA icon resource.
  core.String? resourceUrl;

  /// The view tracking URL of the OBA icon.
  ///
  /// Only URLs of the following domains are allowed: * https://info.evidon.com
  /// * https://l.betrad.com
  ///
  /// Required.
  core.String? viewTrackingUrl;

  ObaIcon({
    this.clickTrackingUrl,
    this.dimensions,
    this.landingPageUrl,
    this.position,
    this.program,
    this.resourceMimeType,
    this.resourceUrl,
    this.viewTrackingUrl,
  });

  ObaIcon.fromJson(core.Map json_)
      : this(
          clickTrackingUrl: json_.containsKey('clickTrackingUrl')
              ? json_['clickTrackingUrl'] as core.String
              : null,
          dimensions: json_.containsKey('dimensions')
              ? Dimensions.fromJson(
                  json_['dimensions'] as core.Map<core.String, core.dynamic>)
              : null,
          landingPageUrl: json_.containsKey('landingPageUrl')
              ? json_['landingPageUrl'] as core.String
              : null,
          position: json_.containsKey('position')
              ? json_['position'] as core.String
              : null,
          program: json_.containsKey('program')
              ? json_['program'] as core.String
              : null,
          resourceMimeType: json_.containsKey('resourceMimeType')
              ? json_['resourceMimeType'] as core.String
              : null,
          resourceUrl: json_.containsKey('resourceUrl')
              ? json_['resourceUrl'] as core.String
              : null,
          viewTrackingUrl: json_.containsKey('viewTrackingUrl')
              ? json_['viewTrackingUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickTrackingUrl != null) 'clickTrackingUrl': clickTrackingUrl!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (landingPageUrl != null) 'landingPageUrl': landingPageUrl!,
        if (position != null) 'position': position!,
        if (program != null) 'program': program!,
        if (resourceMimeType != null) 'resourceMimeType': resourceMimeType!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
        if (viewTrackingUrl != null) 'viewTrackingUrl': viewTrackingUrl!,
      };
}

/// Represents a targetable Open Measurement enabled inventory type.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_OMID`.
class OmidAssignedTargetingOptionDetails {
  /// The type of Open Measurement enabled inventory.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "OMID_UNSPECIFIED" : Default value when omid targeting is not specified
  /// in this version.
  /// - "OMID_FOR_MOBILE_DISPLAY_ADS" : Open Measurement enabled mobile display
  /// inventory.
  core.String? omid;

  OmidAssignedTargetingOptionDetails({
    this.omid,
  });

  OmidAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          omid: json_.containsKey('omid') ? json_['omid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (omid != null) 'omid': omid!,
      };
}

/// Represents a targetable Open Measurement enabled inventory type.
///
/// This will be populated in the omid_details field when targeting_type is
/// `TARGETING_TYPE_OMID`.
typedef OmidTargetingOptionDetails = $OmidTargetingOptionDetails;

/// On screen position targeting option details.
///
/// This will be populated in the on_screen_position_details field when
/// targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
typedef OnScreenPositionAssignedTargetingOptionDetails
    = $OnScreenPositionAssignedTargetingOptionDetails;

/// Represents a targetable on screen position, which could be used by display
/// and video ads.
///
/// This will be populated in the on_screen_position_details field when
/// targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
typedef OnScreenPositionTargetingOptionDetails
    = $OnScreenPositionTargetingOptionDetails;

/// Assigned operating system targeting option details.
///
/// This will be populated in the operating_system_details field when
/// targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.
typedef OperatingSystemAssignedTargetingOptionDetails
    = $OperatingSystemAssignedTargetingOptionDetails;

/// Represents a targetable operating system.
///
/// This will be populated in the operating_system_details field of a
/// TargetingOption when targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.
typedef OperatingSystemTargetingOptionDetails
    = $OperatingSystemTargetingOptionDetails;

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

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

/// Settings that control the rate at which a budget is spent.
typedef Pacing = $Pacing;

/// A filtering option that filters on selected file types belonging to a chosen
/// set of filter entities.
typedef ParentEntityFilter = $ParentEntityFilter;

/// Details for assigned parental status targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_PARENTAL_STATUS`.
class ParentalStatusAssignedTargetingOptionDetails {
  /// The parental status of the audience.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "PARENTAL_STATUS_UNSPECIFIED" : Default value when parental status is
  /// not specified in this version. This enum is a place holder for default
  /// value and does not represent a real parental status option.
  /// - "PARENTAL_STATUS_PARENT" : The audience is a parent.
  /// - "PARENTAL_STATUS_NOT_A_PARENT" : The audience is not a parent.
  /// - "PARENTAL_STATUS_UNKNOWN" : The parental status of the audience is
  /// unknown.
  core.String? parentalStatus;

  ParentalStatusAssignedTargetingOptionDetails({
    this.parentalStatus,
  });

  ParentalStatusAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          parentalStatus: json_.containsKey('parentalStatus')
              ? json_['parentalStatus'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parentalStatus != null) 'parentalStatus': parentalStatus!,
      };
}

/// Represents a targetable parental status.
///
/// This will be populated in the parental_status_details field of a
/// TargetingOption when targeting_type is `TARGETING_TYPE_PARENTAL_STATUS`.
typedef ParentalStatusTargetingOptionDetails
    = $ParentalStatusTargetingOptionDetails;

/// A single partner in Display & Video 360 (DV360).
class Partner {
  /// Ad server related settings of the partner.
  PartnerAdServerConfig? adServerConfig;

  /// Settings that control how partner data may be accessed.
  PartnerDataAccessConfig? dataAccessConfig;

  /// The display name of the partner.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  core.String? displayName;

  /// The status of the partner.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENTITY_STATUS_UNSPECIFIED" : Default value when status is not specified
  /// or is unknown in this version.
  /// - "ENTITY_STATUS_ACTIVE" : The entity is enabled to bid and spend budget.
  /// - "ENTITY_STATUS_ARCHIVED" : The entity is archived. Bidding and budget
  /// spending are disabled. An entity can be deleted after archived. Deleted
  /// entities cannot be retrieved.
  /// - "ENTITY_STATUS_DRAFT" : The entity is under draft. Bidding and budget
  /// spending are disabled.
  /// - "ENTITY_STATUS_PAUSED" : Bidding and budget spending are paused for the
  /// entity.
  /// - "ENTITY_STATUS_SCHEDULED_FOR_DELETION" : The entity is scheduled for
  /// deletion.
  core.String? entityStatus;

  /// Settings that control which exchanges are enabled for the partner.
  ExchangeConfig? exchangeConfig;

  /// General settings of the partner.
  PartnerGeneralConfig? generalConfig;

  /// The resource name of the partner.
  ///
  /// Output only.
  core.String? name;

  /// The unique ID of the partner.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? partnerId;

  /// The timestamp when the partner was last updated.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? updateTime;

  Partner({
    this.adServerConfig,
    this.dataAccessConfig,
    this.displayName,
    this.entityStatus,
    this.exchangeConfig,
    this.generalConfig,
    this.name,
    this.partnerId,
    this.updateTime,
  });

  Partner.fromJson(core.Map json_)
      : this(
          adServerConfig: json_.containsKey('adServerConfig')
              ? PartnerAdServerConfig.fromJson(json_['adServerConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataAccessConfig: json_.containsKey('dataAccessConfig')
              ? PartnerDataAccessConfig.fromJson(json_['dataAccessConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityStatus: json_.containsKey('entityStatus')
              ? json_['entityStatus'] as core.String
              : null,
          exchangeConfig: json_.containsKey('exchangeConfig')
              ? ExchangeConfig.fromJson(json_['exchangeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          generalConfig: json_.containsKey('generalConfig')
              ? PartnerGeneralConfig.fromJson(
                  json_['generalConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adServerConfig != null) 'adServerConfig': adServerConfig!,
        if (dataAccessConfig != null) 'dataAccessConfig': dataAccessConfig!,
        if (displayName != null) 'displayName': displayName!,
        if (entityStatus != null) 'entityStatus': entityStatus!,
        if (exchangeConfig != null) 'exchangeConfig': exchangeConfig!,
        if (generalConfig != null) 'generalConfig': generalConfig!,
        if (name != null) 'name': name!,
        if (partnerId != null) 'partnerId': partnerId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Ad server related settings of a partner.
class PartnerAdServerConfig {
  /// Measurement settings of a partner.
  MeasurementConfig? measurementConfig;

  PartnerAdServerConfig({
    this.measurementConfig,
  });

  PartnerAdServerConfig.fromJson(core.Map json_)
      : this(
          measurementConfig: json_.containsKey('measurementConfig')
              ? MeasurementConfig.fromJson(json_['measurementConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (measurementConfig != null) 'measurementConfig': measurementConfig!,
      };
}

/// Settings that control a partner cost.
///
/// A partner cost is any type of expense involved in running a campaign, other
/// than the costs of purchasing impressions (which is called the media cost)
/// and using third-party audience segment data (data fee). Some examples of
/// partner costs include the fees for using DV360, a third-party ad server, or
/// a third-party ad serving verification service.
typedef PartnerCost = $PartnerCost;

/// Settings that control how partner related data may be accessed.
class PartnerDataAccessConfig {
  /// Structured Data Files (SDF) settings for the partner.
  ///
  /// The SDF configuration for the partner.
  SdfConfig? sdfConfig;

  PartnerDataAccessConfig({
    this.sdfConfig,
  });

  PartnerDataAccessConfig.fromJson(core.Map json_)
      : this(
          sdfConfig: json_.containsKey('sdfConfig')
              ? SdfConfig.fromJson(
                  json_['sdfConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sdfConfig != null) 'sdfConfig': sdfConfig!,
      };
}

/// General settings of a partner.
typedef PartnerGeneralConfig = $PartnerGeneralConfig;

/// Settings that control how partner revenue is calculated.
typedef PartnerRevenueModel = $PartnerRevenueModel;

/// Settings that control the performance goal of a campaign or insertion order.
typedef PerformanceGoal = $PerformanceGoal;

/// A strategy that automatically adjusts the bid to meet or beat a specified
/// performance goal.
typedef PerformanceGoalBidStrategy = $PerformanceGoalBidStrategy;

/// Details for assigned POI targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_POI`.
typedef PoiAssignedTargetingOptionDetails = $PoiAssignedTargetingOptionDetails;

/// Search terms for POI targeting options.
typedef PoiSearchTerms = $PoiSearchTerms;

/// Represents a targetable point of interest(POI).
///
/// This will be populated in the poi_details field when targeting_type is
/// `TARGETING_TYPE_POI`.
typedef PoiTargetingOptionDetails = $PoiTargetingOptionDetails;

/// Settings specific to the Mediaocean Prisma tool.
class PrismaConfig {
  /// Relevant client, product, and estimate codes from the Mediaocean Prisma
  /// tool.
  ///
  /// Required.
  PrismaCpeCode? prismaCpeCode;

  /// The Prisma type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PRISMA_TYPE_UNSPECIFIED" : Type is not specified or unknown in this
  /// version.
  /// - "PRISMA_TYPE_DISPLAY" : Display type.
  /// - "PRISMA_TYPE_SEARCH" : Search type.
  /// - "PRISMA_TYPE_VIDEO" : Video type.
  /// - "PRISMA_TYPE_AUDIO" : Audio type.
  /// - "PRISMA_TYPE_SOCIAL" : Social type.
  /// - "PRISMA_TYPE_FEE" : Fee type.
  core.String? prismaType;

  /// The entity allocated this budget (DSP, site, etc.).
  ///
  /// Required.
  core.String? supplier;

  PrismaConfig({
    this.prismaCpeCode,
    this.prismaType,
    this.supplier,
  });

  PrismaConfig.fromJson(core.Map json_)
      : this(
          prismaCpeCode: json_.containsKey('prismaCpeCode')
              ? PrismaCpeCode.fromJson(
                  json_['prismaCpeCode'] as core.Map<core.String, core.dynamic>)
              : null,
          prismaType: json_.containsKey('prismaType')
              ? json_['prismaType'] as core.String
              : null,
          supplier: json_.containsKey('supplier')
              ? json_['supplier'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (prismaCpeCode != null) 'prismaCpeCode': prismaCpeCode!,
        if (prismaType != null) 'prismaType': prismaType!,
        if (supplier != null) 'supplier': supplier!,
      };
}

/// Google Payments Center supports searching and filtering on the component
/// fields of this code.
typedef PrismaCpeCode = $PrismaCpeCode;

/// Targeting details for proximity location list.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
class ProximityLocationListAssignedTargetingOptionDetails {
  /// ID of the proximity location list.
  ///
  /// Should refer to the location_list_id field of a LocationList resource
  /// whose type is `TARGETING_LOCATION_TYPE_PROXIMITY`.
  ///
  /// Required.
  core.String? proximityLocationListId;

  /// Radius expressed in the distance units set in proximity_radius_unit.
  ///
  /// This represents the size of the area around a chosen location that will be
  /// targeted. Radius should be between 1 and 500 miles or 800 kilometers.
  ///
  /// Required.
  core.double? proximityRadius;

  /// Radius distance units.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROXIMITY_RADIUS_UNIT_UNSPECIFIED" : Default value when distance units
  /// is not specified in this version. This enum is a place holder for default
  /// value and does not represent a real distance unit.
  /// - "PROXIMITY_RADIUS_UNIT_MILES" : Radius distance unit in miles.
  /// - "PROXIMITY_RADIUS_UNIT_KILOMETERS" : Radius distance unit in kilometeres
  core.String? proximityRadiusUnit;

  ProximityLocationListAssignedTargetingOptionDetails({
    this.proximityLocationListId,
    this.proximityRadius,
    this.proximityRadiusUnit,
  });

  ProximityLocationListAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          proximityLocationListId: json_.containsKey('proximityLocationListId')
              ? json_['proximityLocationListId'] as core.String
              : null,
          proximityRadius: json_.containsKey('proximityRadius')
              ? (json_['proximityRadius'] as core.num).toDouble()
              : null,
          proximityRadiusUnit: json_.containsKey('proximityRadiusUnit')
              ? json_['proximityRadiusUnit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (proximityLocationListId != null)
          'proximityLocationListId': proximityLocationListId!,
        if (proximityRadius != null) 'proximityRadius': proximityRadius!,
        if (proximityRadiusUnit != null)
          'proximityRadiusUnit': proximityRadiusUnit!,
      };
}

/// Publisher review status for the creative.
typedef PublisherReviewStatus = $PublisherReviewStatus;

/// The rate related settings of the inventory source.
class RateDetails {
  /// The rate type.
  ///
  /// Acceptable values are `INVENTORY_SOURCE_RATE_TYPE_CPM_FIXED`,
  /// `INVENTORY_SOURCE_RATE_TYPE_CPM_FLOOR`, and
  /// `INVENTORY_SOURCE_RATE_TYPE_CPD`.
  /// Possible string values are:
  /// - "INVENTORY_SOURCE_RATE_TYPE_UNSPECIFIED" : The rate type is not
  /// specified or is unknown in this version.
  /// - "INVENTORY_SOURCE_RATE_TYPE_CPM_FIXED" : The rate type is CPM (Fixed).
  /// - "INVENTORY_SOURCE_RATE_TYPE_CPM_FLOOR" : The rate type is CPM (Floor).
  /// - "INVENTORY_SOURCE_RATE_TYPE_CPD" : The rate type is Cost per Day.
  /// - "INVENTORY_SOURCE_RATE_TYPE_FLAT" : The rate type is Flat.
  core.String? inventorySourceRateType;

  /// The amount that the buyer has committed to spending on the inventory
  /// source up front.
  ///
  /// Only applicable for guaranteed inventory sources.
  ///
  /// Output only.
  Money? minimumSpend;

  /// The rate for the inventory source.
  Money? rate;

  /// Required for guaranteed inventory sources.
  ///
  /// The number of impressions guaranteed by the seller.
  core.String? unitsPurchased;

  RateDetails({
    this.inventorySourceRateType,
    this.minimumSpend,
    this.rate,
    this.unitsPurchased,
  });

  RateDetails.fromJson(core.Map json_)
      : this(
          inventorySourceRateType: json_.containsKey('inventorySourceRateType')
              ? json_['inventorySourceRateType'] as core.String
              : null,
          minimumSpend: json_.containsKey('minimumSpend')
              ? Money.fromJson(
                  json_['minimumSpend'] as core.Map<core.String, core.dynamic>)
              : null,
          rate: json_.containsKey('rate')
              ? Money.fromJson(
                  json_['rate'] as core.Map<core.String, core.dynamic>)
              : null,
          unitsPurchased: json_.containsKey('unitsPurchased')
              ? json_['unitsPurchased'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventorySourceRateType != null)
          'inventorySourceRateType': inventorySourceRateType!,
        if (minimumSpend != null) 'minimumSpend': minimumSpend!,
        if (rate != null) 'rate': rate!,
        if (unitsPurchased != null) 'unitsPurchased': unitsPurchased!,
      };
}

/// Targeting details for regional location list.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
typedef RegionalLocationListAssignedTargetingOptionDetails
    = $RegionalLocationListAssignedTargetingOptionDetails;

/// Request message for NegativeKeywordService.ReplaceNegativeKeywords.
class ReplaceNegativeKeywordsRequest {
  /// The negative keywords that will replace the existing keywords in the
  /// negative keyword list, specified as a list of NegativeKeywords.
  core.List<NegativeKeyword>? newNegativeKeywords;

  ReplaceNegativeKeywordsRequest({
    this.newNegativeKeywords,
  });

  ReplaceNegativeKeywordsRequest.fromJson(core.Map json_)
      : this(
          newNegativeKeywords: json_.containsKey('newNegativeKeywords')
              ? (json_['newNegativeKeywords'] as core.List)
                  .map((value) => NegativeKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newNegativeKeywords != null)
          'newNegativeKeywords': newNegativeKeywords!,
      };
}

/// Response message for NegativeKeywordService.ReplaceNegativeKeywords.
class ReplaceNegativeKeywordsResponse {
  /// The full list of negative keywords now present in the negative keyword
  /// list.
  core.List<NegativeKeyword>? negativeKeywords;

  ReplaceNegativeKeywordsResponse({
    this.negativeKeywords,
  });

  ReplaceNegativeKeywordsResponse.fromJson(core.Map json_)
      : this(
          negativeKeywords: json_.containsKey('negativeKeywords')
              ? (json_['negativeKeywords'] as core.List)
                  .map((value) => NegativeKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (negativeKeywords != null) 'negativeKeywords': negativeKeywords!,
      };
}

/// Request message for SiteService.ReplaceSites.
class ReplaceSitesRequest {
  /// The ID of the advertiser that owns the parent channel.
  core.String? advertiserId;

  /// The sites that will replace the existing sites assigned to the channel,
  /// specified as a list of Sites.
  core.List<Site>? newSites;

  /// The ID of the partner that owns the parent channel.
  core.String? partnerId;

  ReplaceSitesRequest({
    this.advertiserId,
    this.newSites,
    this.partnerId,
  });

  ReplaceSitesRequest.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          newSites: json_.containsKey('newSites')
              ? (json_['newSites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partnerId: json_.containsKey('partnerId')
              ? json_['partnerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (newSites != null) 'newSites': newSites!,
        if (partnerId != null) 'partnerId': partnerId!,
      };
}

/// Response message for SiteService.ReplaceSites.
class ReplaceSitesResponse {
  /// The list of sites in the channel after replacing.
  core.List<Site>? sites;

  ReplaceSitesResponse({
    this.sites,
  });

  ReplaceSitesResponse.fromJson(core.Map json_)
      : this(
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sites != null) 'sites': sites!,
      };
}

/// Review statuses for the creative.
class ReviewStatusInfo {
  /// Represents the basic approval needed for a creative to begin serving.
  ///
  /// Summary of creative_and_landing_page_review_status and
  /// content_and_policy_review_status.
  /// Possible string values are:
  /// - "APPROVAL_STATUS_UNSPECIFIED" : Type value is not specified or is
  /// unknown in this version.
  /// - "APPROVAL_STATUS_PENDING_NOT_SERVABLE" : The creative is still under
  /// review and not servable.
  /// - "APPROVAL_STATUS_PENDING_SERVABLE" : The creative has passed creative &
  /// landing page review and is servable, but is awaiting additional content &
  /// policy review.
  /// - "APPROVAL_STATUS_APPROVED_SERVABLE" : Both creative & landing page
  /// review and content & policy review are approved. The creative is servable.
  /// - "APPROVAL_STATUS_REJECTED_NOT_SERVABLE" : There is an issue with the
  /// creative that must be fixed before it can serve.
  core.String? approvalStatus;

  /// Content and policy review status for the creative.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "REVIEW_STATUS_APPROVED" : The creative is approved.
  /// - "REVIEW_STATUS_REJECTED" : The creative is rejected.
  /// - "REVIEW_STATUS_PENDING" : The creative is pending review.
  core.String? contentAndPolicyReviewStatus;

  /// Creative and landing page review status for the creative.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED" : Type value is not specified or is unknown
  /// in this version.
  /// - "REVIEW_STATUS_APPROVED" : The creative is approved.
  /// - "REVIEW_STATUS_REJECTED" : The creative is rejected.
  /// - "REVIEW_STATUS_PENDING" : The creative is pending review.
  core.String? creativeAndLandingPageReviewStatus;

  /// Exchange review statuses for the creative.
  core.List<ExchangeReviewStatus>? exchangeReviewStatuses;

  /// Publisher review statuses for the creative.
  core.List<PublisherReviewStatus>? publisherReviewStatuses;

  ReviewStatusInfo({
    this.approvalStatus,
    this.contentAndPolicyReviewStatus,
    this.creativeAndLandingPageReviewStatus,
    this.exchangeReviewStatuses,
    this.publisherReviewStatuses,
  });

  ReviewStatusInfo.fromJson(core.Map json_)
      : this(
          approvalStatus: json_.containsKey('approvalStatus')
              ? json_['approvalStatus'] as core.String
              : null,
          contentAndPolicyReviewStatus:
              json_.containsKey('contentAndPolicyReviewStatus')
                  ? json_['contentAndPolicyReviewStatus'] as core.String
                  : null,
          creativeAndLandingPageReviewStatus:
              json_.containsKey('creativeAndLandingPageReviewStatus')
                  ? json_['creativeAndLandingPageReviewStatus'] as core.String
                  : null,
          exchangeReviewStatuses: json_.containsKey('exchangeReviewStatuses')
              ? (json_['exchangeReviewStatuses'] as core.List)
                  .map((value) => ExchangeReviewStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          publisherReviewStatuses: json_.containsKey('publisherReviewStatuses')
              ? (json_['publisherReviewStatuses'] as core.List)
                  .map((value) => PublisherReviewStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approvalStatus != null) 'approvalStatus': approvalStatus!,
        if (contentAndPolicyReviewStatus != null)
          'contentAndPolicyReviewStatus': contentAndPolicyReviewStatus!,
        if (creativeAndLandingPageReviewStatus != null)
          'creativeAndLandingPageReviewStatus':
              creativeAndLandingPageReviewStatus!,
        if (exchangeReviewStatuses != null)
          'exchangeReviewStatuses': exchangeReviewStatuses!,
        if (publisherReviewStatuses != null)
          'publisherReviewStatuses': publisherReviewStatuses!,
      };
}

/// An error message for a custom bidding script.
typedef ScriptError = $ScriptError;

/// Structured Data File (SDF) related settings.
typedef SdfConfig = $SdfConfig;

/// Request message for SearchTargetingOptions.
class SearchTargetingOptionsRequest {
  /// The Advertiser this request is being made in the context of.
  ///
  /// Required.
  core.String? advertiserId;

  /// Search terms for Business Chain targeting options.
  ///
  /// Can only be used when targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.
  BusinessChainSearchTerms? businessChainSearchTerms;

  /// Search terms for geo region targeting options.
  ///
  /// Can only be used when targeting_type is `TARGETING_TYPE_GEO_REGION`.
  GeoRegionSearchTerms? geoRegionSearchTerms;

  /// Requested page size.
  ///
  /// Must be between `1` and `200`. If unspecified will default to `100`.
  /// Returns error code `INVALID_ARGUMENT` if an invalid value is specified.
  core.int? pageSize;

  /// A token identifying a page of results the server should return.
  ///
  /// Typically, this is the value of next_page_token returned from the previous
  /// call to `SearchTargetingOptions` method. If not specified, the first page
  /// of results will be returned.
  core.String? pageToken;

  /// Search terms for POI targeting options.
  ///
  /// Can only be used when targeting_type is `TARGETING_TYPE_POI`.
  PoiSearchTerms? poiSearchTerms;

  SearchTargetingOptionsRequest({
    this.advertiserId,
    this.businessChainSearchTerms,
    this.geoRegionSearchTerms,
    this.pageSize,
    this.pageToken,
    this.poiSearchTerms,
  });

  SearchTargetingOptionsRequest.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          businessChainSearchTerms:
              json_.containsKey('businessChainSearchTerms')
                  ? BusinessChainSearchTerms.fromJson(
                      json_['businessChainSearchTerms']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          geoRegionSearchTerms: json_.containsKey('geoRegionSearchTerms')
              ? GeoRegionSearchTerms.fromJson(json_['geoRegionSearchTerms']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          poiSearchTerms: json_.containsKey('poiSearchTerms')
              ? PoiSearchTerms.fromJson(json_['poiSearchTerms']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (businessChainSearchTerms != null)
          'businessChainSearchTerms': businessChainSearchTerms!,
        if (geoRegionSearchTerms != null)
          'geoRegionSearchTerms': geoRegionSearchTerms!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (poiSearchTerms != null) 'poiSearchTerms': poiSearchTerms!,
      };
}

/// Response message for SearchTargetingOptions.
class SearchTargetingOptionsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the page_token field in the subsequent call to
  /// `SearchTargetingOptions` method to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of targeting options that match the search criteria.
  ///
  /// This list will be absent if empty.
  core.List<TargetingOption>? targetingOptions;

  SearchTargetingOptionsResponse({
    this.nextPageToken,
    this.targetingOptions,
  });

  SearchTargetingOptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          targetingOptions: json_.containsKey('targetingOptions')
              ? (json_['targetingOptions'] as core.List)
                  .map((value) => TargetingOption.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (targetingOptions != null) 'targetingOptions': targetingOptions!,
      };
}

/// Targeting details for sensitive category.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
class SensitiveCategoryAssignedTargetingOptionDetails {
  /// An enum for the DV360 Sensitive category content classified to be
  /// EXCLUDED.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SENSITIVE_CATEGORY_UNSPECIFIED" : This enum is only a placeholder and
  /// doesn't specify a DV360 sensitive category.
  /// - "SENSITIVE_CATEGORY_ADULT" : Adult or pornographic text, image, or video
  /// content.
  /// - "SENSITIVE_CATEGORY_DEROGATORY" : Content that may be construed as
  /// biased against individuals, groups, or organizations based on criteria
  /// such as race, religion, disability, sex, age, veteran status, sexual
  /// orientation, gender identity, or political affiliation. May also indicate
  /// discussion of such content, for instance, in an academic or journalistic
  /// context.
  /// - "SENSITIVE_CATEGORY_DOWNLOADS_SHARING" : Content related to audio,
  /// video, or software downloads.
  /// - "SENSITIVE_CATEGORY_WEAPONS" : Contains content related to personal
  /// weapons, including knives, guns, small firearms, and ammunition. Selecting
  /// either "weapons" or "sensitive social issues" will result in selecting
  /// both.
  /// - "SENSITIVE_CATEGORY_GAMBLING" : Contains content related to betting or
  /// wagering in a real-world or online setting.
  /// - "SENSITIVE_CATEGORY_VIOLENCE" : Content which may be considered
  /// graphically violent, gory, gruesome, or shocking, such as street fighting
  /// videos, accident photos, descriptions of torture, etc.
  /// - "SENSITIVE_CATEGORY_SUGGESTIVE" : Adult content, as well as suggestive
  /// content that's not explicitly pornographic. This category includes all
  /// pages categorized as adult.
  /// - "SENSITIVE_CATEGORY_PROFANITY" : Prominent use of words considered
  /// indecent, such as curse words and sexual slang. Pages with only very
  /// occasional usage, such as news sites that might include such words in a
  /// quotation, are not included.
  /// - "SENSITIVE_CATEGORY_ALCOHOL" : Contains content related to alcoholic
  /// beverages, alcohol brands, recipes, etc.
  /// - "SENSITIVE_CATEGORY_DRUGS" : Contains content related to the
  /// recreational use of legal or illegal drugs, as well as to drug
  /// paraphernalia or cultivation.
  /// - "SENSITIVE_CATEGORY_TOBACCO" : Contains content related to tobacco and
  /// tobacco accessories, including lighters, humidors, ashtrays, etc.
  /// - "SENSITIVE_CATEGORY_POLITICS" : Political news and media, including
  /// discussions of social, governmental, and public policy.
  /// - "SENSITIVE_CATEGORY_RELIGION" : Content related to religious thought or
  /// beliefs.
  /// - "SENSITIVE_CATEGORY_TRAGEDY" : Content related to death, disasters,
  /// accidents, war, etc.
  /// - "SENSITIVE_CATEGORY_TRANSPORTATION_ACCIDENTS" : Content related to motor
  /// vehicle, aviation or other transportation accidents.
  /// - "SENSITIVE_CATEGORY_SENSITIVE_SOCIAL_ISSUES" : Issues that evoke strong,
  /// opposing views and spark debate. These include issues that are
  /// controversial in most countries and markets (such as abortion), as well as
  /// those that are controversial in specific countries and markets (such as
  /// immigration reform in the United States).
  /// - "SENSITIVE_CATEGORY_SHOCKING" : Content which may be considered shocking
  /// or disturbing, such as violent news stories, stunts, or toilet humor.
  /// - "SENSITIVE_CATEGORY_EMBEDDED_VIDEO" : YouTube videos embedded on
  /// websites outside of YouTube.com. Only applicable to YouTube and Partners
  /// line items.
  /// - "SENSITIVE_CATEGORY_LIVE_STREAMING_VIDEO" : Video of live events
  /// streamed over the internet. Only applicable to YouTube and Partners line
  /// items.
  core.String? excludedSensitiveCategory;

  SensitiveCategoryAssignedTargetingOptionDetails({
    this.excludedSensitiveCategory,
  });

  SensitiveCategoryAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          excludedSensitiveCategory:
              json_.containsKey('excludedSensitiveCategory')
                  ? json_['excludedSensitiveCategory'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedSensitiveCategory != null)
          'excludedSensitiveCategory': excludedSensitiveCategory!,
      };
}

/// Represents a targetable sensitive category.
///
/// This will be populated in the sensitive_category_details field of the
/// TargetingOption when targeting_type is
/// `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.
class SensitiveCategoryTargetingOptionDetails {
  /// An enum for the DV360 Sensitive category content classifier.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SENSITIVE_CATEGORY_UNSPECIFIED" : This enum is only a placeholder and
  /// doesn't specify a DV360 sensitive category.
  /// - "SENSITIVE_CATEGORY_ADULT" : Adult or pornographic text, image, or video
  /// content.
  /// - "SENSITIVE_CATEGORY_DEROGATORY" : Content that may be construed as
  /// biased against individuals, groups, or organizations based on criteria
  /// such as race, religion, disability, sex, age, veteran status, sexual
  /// orientation, gender identity, or political affiliation. May also indicate
  /// discussion of such content, for instance, in an academic or journalistic
  /// context.
  /// - "SENSITIVE_CATEGORY_DOWNLOADS_SHARING" : Content related to audio,
  /// video, or software downloads.
  /// - "SENSITIVE_CATEGORY_WEAPONS" : Contains content related to personal
  /// weapons, including knives, guns, small firearms, and ammunition. Selecting
  /// either "weapons" or "sensitive social issues" will result in selecting
  /// both.
  /// - "SENSITIVE_CATEGORY_GAMBLING" : Contains content related to betting or
  /// wagering in a real-world or online setting.
  /// - "SENSITIVE_CATEGORY_VIOLENCE" : Content which may be considered
  /// graphically violent, gory, gruesome, or shocking, such as street fighting
  /// videos, accident photos, descriptions of torture, etc.
  /// - "SENSITIVE_CATEGORY_SUGGESTIVE" : Adult content, as well as suggestive
  /// content that's not explicitly pornographic. This category includes all
  /// pages categorized as adult.
  /// - "SENSITIVE_CATEGORY_PROFANITY" : Prominent use of words considered
  /// indecent, such as curse words and sexual slang. Pages with only very
  /// occasional usage, such as news sites that might include such words in a
  /// quotation, are not included.
  /// - "SENSITIVE_CATEGORY_ALCOHOL" : Contains content related to alcoholic
  /// beverages, alcohol brands, recipes, etc.
  /// - "SENSITIVE_CATEGORY_DRUGS" : Contains content related to the
  /// recreational use of legal or illegal drugs, as well as to drug
  /// paraphernalia or cultivation.
  /// - "SENSITIVE_CATEGORY_TOBACCO" : Contains content related to tobacco and
  /// tobacco accessories, including lighters, humidors, ashtrays, etc.
  /// - "SENSITIVE_CATEGORY_POLITICS" : Political news and media, including
  /// discussions of social, governmental, and public policy.
  /// - "SENSITIVE_CATEGORY_RELIGION" : Content related to religious thought or
  /// beliefs.
  /// - "SENSITIVE_CATEGORY_TRAGEDY" : Content related to death, disasters,
  /// accidents, war, etc.
  /// - "SENSITIVE_CATEGORY_TRANSPORTATION_ACCIDENTS" : Content related to motor
  /// vehicle, aviation or other transportation accidents.
  /// - "SENSITIVE_CATEGORY_SENSITIVE_SOCIAL_ISSUES" : Issues that evoke strong,
  /// opposing views and spark debate. These include issues that are
  /// controversial in most countries and markets (such as abortion), as well as
  /// those that are controversial in specific countries and markets (such as
  /// immigration reform in the United States).
  /// - "SENSITIVE_CATEGORY_SHOCKING" : Content which may be considered shocking
  /// or disturbing, such as violent news stories, stunts, or toilet humor.
  /// - "SENSITIVE_CATEGORY_EMBEDDED_VIDEO" : YouTube videos embedded on
  /// websites outside of YouTube.com. Only applicable to YouTube and Partners
  /// line items.
  /// - "SENSITIVE_CATEGORY_LIVE_STREAMING_VIDEO" : Video of live events
  /// streamed over the internet. Only applicable to YouTube and Partners line
  /// items.
  core.String? sensitiveCategory;

  SensitiveCategoryTargetingOptionDetails({
    this.sensitiveCategory,
  });

  SensitiveCategoryTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          sensitiveCategory: json_.containsKey('sensitiveCategory')
              ? json_['sensitiveCategory'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sensitiveCategory != null) 'sensitiveCategory': sensitiveCategory!,
      };
}

/// A single site.
///
/// Sites are apps or websites belonging to a channel.
typedef Site = $Site;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Details for assigned sub-exchange targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_SUB_EXCHANGE`.
typedef SubExchangeAssignedTargetingOptionDetails
    = $SubExchangeAssignedTargetingOptionDetails;

/// Represents a targetable sub-exchange.
///
/// This will be populated in the sub_exchange_details field of a
/// TargetingOption when targeting_type is `TARGETING_TYPE_SUB_EXCHANGE`.
typedef SubExchangeTargetingOptionDetails = $SubExchangeTargetingOptionDetails;

/// Settings that control the targeting expansion of the line item.
///
/// Targeting expansion allows the line item to reach a larger audience based on
/// the original audience list and the targeting expansion level. Beginning
/// November 7, 2022, these settings may represent the \[optimized targeting
/// feature\](//support.google.com/displayvideo/answer/12060859) in place of
/// targeting expansion. This feature will be rolled out to all partners by
/// November 9, 2022.
typedef TargetingExpansionConfig = $TargetingExpansionConfig;

/// Represents a single targeting option, which is a targetable concept in
/// DV360.
class TargetingOption {
  /// Age range details.
  AgeRangeTargetingOptionDetails? ageRangeDetails;

  /// App category details.
  AppCategoryTargetingOptionDetails? appCategoryDetails;

  /// Audio content type details.
  AudioContentTypeTargetingOptionDetails? audioContentTypeDetails;

  /// Authorized seller status resource details.
  AuthorizedSellerStatusTargetingOptionDetails? authorizedSellerStatusDetails;

  /// Browser details.
  BrowserTargetingOptionDetails? browserDetails;

  /// Business chain resource details.
  BusinessChainTargetingOptionDetails? businessChainDetails;

  /// Carrier and ISP details.
  CarrierAndIspTargetingOptionDetails? carrierAndIspDetails;

  /// Category resource details.
  CategoryTargetingOptionDetails? categoryDetails;

  /// Content duration resource details.
  ContentDurationTargetingOptionDetails? contentDurationDetails;

  /// Content genre resource details.
  ContentGenreTargetingOptionDetails? contentGenreDetails;

  /// Content instream position details.
  ContentInstreamPositionTargetingOptionDetails? contentInstreamPositionDetails;

  /// Content outstream position details.
  ContentOutstreamPositionTargetingOptionDetails?
      contentOutstreamPositionDetails;

  /// Content stream type resource details.
  ContentStreamTypeTargetingOptionDetails? contentStreamTypeDetails;

  /// Device make and model resource details.
  DeviceMakeModelTargetingOptionDetails? deviceMakeModelDetails;

  /// Device type details.
  DeviceTypeTargetingOptionDetails? deviceTypeDetails;

  /// Digital content label details.
  DigitalContentLabelTargetingOptionDetails? digitalContentLabelDetails;

  /// Environment details.
  EnvironmentTargetingOptionDetails? environmentDetails;

  /// Exchange details.
  ExchangeTargetingOptionDetails? exchangeDetails;

  /// Gender details.
  GenderTargetingOptionDetails? genderDetails;

  /// Geographic region resource details.
  GeoRegionTargetingOptionDetails? geoRegionDetails;

  /// Household income details.
  HouseholdIncomeTargetingOptionDetails? householdIncomeDetails;

  /// Language resource details.
  LanguageTargetingOptionDetails? languageDetails;

  /// The resource name for this targeting option.
  ///
  /// Output only.
  core.String? name;

  /// Native content position details.
  NativeContentPositionTargetingOptionDetails? nativeContentPositionDetails;

  /// Open Measurement enabled inventory details.
  OmidTargetingOptionDetails? omidDetails;

  /// On screen position details.
  OnScreenPositionTargetingOptionDetails? onScreenPositionDetails;

  /// Operating system resources details.
  OperatingSystemTargetingOptionDetails? operatingSystemDetails;

  /// Parental status details.
  ParentalStatusTargetingOptionDetails? parentalStatusDetails;

  /// POI resource details.
  PoiTargetingOptionDetails? poiDetails;

  /// Sensitive Category details.
  SensitiveCategoryTargetingOptionDetails? sensitiveCategoryDetails;

  /// Sub-exchange details.
  SubExchangeTargetingOptionDetails? subExchangeDetails;

  /// A unique identifier for this targeting option.
  ///
  /// The tuple {`targeting_type`, `targeting_option_id`} will be unique.
  ///
  /// Output only.
  core.String? targetingOptionId;

  /// The type of this targeting option.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED" : Default value when type is not specified
  /// or is unknown in this version.
  /// - "TARGETING_TYPE_CHANNEL" : Target a channel (a custom group of related
  /// websites or apps).
  /// - "TARGETING_TYPE_APP_CATEGORY" : Target an app category (for example,
  /// education or puzzle games).
  /// - "TARGETING_TYPE_APP" : Target a specific app (for example, Angry Birds).
  /// - "TARGETING_TYPE_URL" : Target a specific url (for example, quora.com).
  /// - "TARGETING_TYPE_DAY_AND_TIME" : Target ads during a chosen time period
  /// on a specific day.
  /// - "TARGETING_TYPE_AGE_RANGE" : Target ads to a specific age range (for
  /// example, 18-24).
  /// - "TARGETING_TYPE_REGIONAL_LOCATION_LIST" : Target ads to the specified
  /// regions on a regional location list.
  /// - "TARGETING_TYPE_PROXIMITY_LOCATION_LIST" : Target ads to the specified
  /// points of interest on a proximity location list.
  /// - "TARGETING_TYPE_GENDER" : Target ads to a specific gender (for example,
  /// female or male).
  /// - "TARGETING_TYPE_VIDEO_PLAYER_SIZE" : Target a specific video player size
  /// for video ads.
  /// - "TARGETING_TYPE_USER_REWARDED_CONTENT" : Target user rewarded content
  /// for video ads.
  /// - "TARGETING_TYPE_PARENTAL_STATUS" : Target ads to a specific parental
  /// status (for example, parent or not a parent).
  /// - "TARGETING_TYPE_CONTENT_INSTREAM_POSITION" : Target video or audio ads
  /// in a specific content instream position (for example, pre-roll, mid-roll,
  /// or post-roll).
  /// - "TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION" : Target ads in a specific
  /// content outstream position.
  /// - "TARGETING_TYPE_DEVICE_TYPE" : Target ads to a specific device type (for
  /// example, tablet or connected TV).
  /// - "TARGETING_TYPE_AUDIENCE_GROUP" : Target ads to an audience or groups of
  /// audiences. Singleton field, at most one can exist on a single Lineitem at
  /// a time.
  /// - "TARGETING_TYPE_BROWSER" : Target ads to specific web browsers (for
  /// example, Chrome).
  /// - "TARGETING_TYPE_HOUSEHOLD_INCOME" : Target ads to a specific household
  /// income range (for example, top 10%).
  /// - "TARGETING_TYPE_ON_SCREEN_POSITION" : Target ads in a specific on screen
  /// position.
  /// - "TARGETING_TYPE_THIRD_PARTY_VERIFIER" : Filter web sites through third
  /// party verification (for example, IAS or DoubleVerify).
  /// - "TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION" : Filter web sites by
  /// specific digital content label ratings (for example, DL-MA: suitable only
  /// for mature audiences).
  /// - "TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION" : Filter website content
  /// by sensitive categories (for example, adult).
  /// - "TARGETING_TYPE_ENVIRONMENT" : Target ads to a specific environment (for
  /// example, web or app).
  /// - "TARGETING_TYPE_CARRIER_AND_ISP" : Target ads to a specific network
  /// carrier or internet service provider (ISP) (for example, Comcast or
  /// Orange).
  /// - "TARGETING_TYPE_OPERATING_SYSTEM" : Target ads to a specific operating
  /// system (for example, macOS).
  /// - "TARGETING_TYPE_DEVICE_MAKE_MODEL" : Target ads to a specific device
  /// make or model (for example, Roku or Samsung).
  /// - "TARGETING_TYPE_KEYWORD" : Target ads to a specific keyword (for
  /// example, dog or retriever).
  /// - "TARGETING_TYPE_NEGATIVE_KEYWORD_LIST" : Target ads to a specific
  /// negative keyword list.
  /// - "TARGETING_TYPE_VIEWABILITY" : Target ads to a specific viewability (for
  /// example, 80% viewable).
  /// - "TARGETING_TYPE_CATEGORY" : Target ads to a specific content category
  /// (for example, arts & entertainment).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE" : Purchase impressions from specific
  /// deals and auction packages.
  /// - "TARGETING_TYPE_LANGUAGE" : Target ads to a specific language (for
  /// example, English or Japanese).
  /// - "TARGETING_TYPE_AUTHORIZED_SELLER_STATUS" : Target ads to ads.txt
  /// authorized sellers.
  /// - "TARGETING_TYPE_GEO_REGION" : Target ads to a specific regional location
  /// (for example, a city or state).
  /// - "TARGETING_TYPE_INVENTORY_SOURCE_GROUP" : Purchase impressions from a
  /// group of deals and auction packages.
  /// - "TARGETING_TYPE_EXCHANGE" : Purchase impressions from specific
  /// exchanges.
  /// - "TARGETING_TYPE_SUB_EXCHANGE" : Purchase impressions from specific
  /// sub-exchanges.
  /// - "TARGETING_TYPE_POI" : Target ads around a specific point of interest,
  /// such as a notable building, a street address, or latitude/longitude
  /// coordinates.
  /// - "TARGETING_TYPE_BUSINESS_CHAIN" : Target ads around locations of a
  /// business chain within a specific geo region.
  /// - "TARGETING_TYPE_CONTENT_DURATION" : Target ads to a specific video
  /// content duration.
  /// - "TARGETING_TYPE_CONTENT_STREAM_TYPE" : Target ads to a specific video
  /// content stream type.
  /// - "TARGETING_TYPE_NATIVE_CONTENT_POSITION" : Target ads to a specific
  /// native content position.
  /// - "TARGETING_TYPE_OMID" : Target ads in an Open Measurement enabled
  /// inventory.
  /// - "TARGETING_TYPE_AUDIO_CONTENT_TYPE" : Target ads to a specific audio
  /// content type.
  /// - "TARGETING_TYPE_CONTENT_GENRE" : Target ads to a specific content genre.
  core.String? targetingType;

  /// User rewarded content details.
  UserRewardedContentTargetingOptionDetails? userRewardedContentDetails;

  /// Video player size details.
  VideoPlayerSizeTargetingOptionDetails? videoPlayerSizeDetails;

  /// Viewability resource details.
  ViewabilityTargetingOptionDetails? viewabilityDetails;

  TargetingOption({
    this.ageRangeDetails,
    this.appCategoryDetails,
    this.audioContentTypeDetails,
    this.authorizedSellerStatusDetails,
    this.browserDetails,
    this.businessChainDetails,
    this.carrierAndIspDetails,
    this.categoryDetails,
    this.contentDurationDetails,
    this.contentGenreDetails,
    this.contentInstreamPositionDetails,
    this.contentOutstreamPositionDetails,
    this.contentStreamTypeDetails,
    this.deviceMakeModelDetails,
    this.deviceTypeDetails,
    this.digitalContentLabelDetails,
    this.environmentDetails,
    this.exchangeDetails,
    this.genderDetails,
    this.geoRegionDetails,
    this.householdIncomeDetails,
    this.languageDetails,
    this.name,
    this.nativeContentPositionDetails,
    this.omidDetails,
    this.onScreenPositionDetails,
    this.operatingSystemDetails,
    this.parentalStatusDetails,
    this.poiDetails,
    this.sensitiveCategoryDetails,
    this.subExchangeDetails,
    this.targetingOptionId,
    this.targetingType,
    this.userRewardedContentDetails,
    this.videoPlayerSizeDetails,
    this.viewabilityDetails,
  });

  TargetingOption.fromJson(core.Map json_)
      : this(
          ageRangeDetails: json_.containsKey('ageRangeDetails')
              ? AgeRangeTargetingOptionDetails.fromJson(json_['ageRangeDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          appCategoryDetails: json_.containsKey('appCategoryDetails')
              ? AppCategoryTargetingOptionDetails.fromJson(
                  json_['appCategoryDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          audioContentTypeDetails: json_.containsKey('audioContentTypeDetails')
              ? AudioContentTypeTargetingOptionDetails.fromJson(
                  json_['audioContentTypeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          authorizedSellerStatusDetails:
              json_.containsKey('authorizedSellerStatusDetails')
                  ? AuthorizedSellerStatusTargetingOptionDetails.fromJson(
                      json_['authorizedSellerStatusDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          browserDetails: json_.containsKey('browserDetails')
              ? BrowserTargetingOptionDetails.fromJson(json_['browserDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          businessChainDetails: json_.containsKey('businessChainDetails')
              ? BusinessChainTargetingOptionDetails.fromJson(
                  json_['businessChainDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          carrierAndIspDetails: json_.containsKey('carrierAndIspDetails')
              ? CarrierAndIspTargetingOptionDetails.fromJson(
                  json_['carrierAndIspDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          categoryDetails: json_.containsKey('categoryDetails')
              ? CategoryTargetingOptionDetails.fromJson(json_['categoryDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contentDurationDetails: json_.containsKey('contentDurationDetails')
              ? ContentDurationTargetingOptionDetails.fromJson(
                  json_['contentDurationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentGenreDetails: json_.containsKey('contentGenreDetails')
              ? ContentGenreTargetingOptionDetails.fromJson(
                  json_['contentGenreDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentInstreamPositionDetails:
              json_.containsKey('contentInstreamPositionDetails')
                  ? ContentInstreamPositionTargetingOptionDetails.fromJson(
                      json_['contentInstreamPositionDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          contentOutstreamPositionDetails:
              json_.containsKey('contentOutstreamPositionDetails')
                  ? ContentOutstreamPositionTargetingOptionDetails.fromJson(
                      json_['contentOutstreamPositionDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          contentStreamTypeDetails:
              json_.containsKey('contentStreamTypeDetails')
                  ? ContentStreamTypeTargetingOptionDetails.fromJson(
                      json_['contentStreamTypeDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          deviceMakeModelDetails: json_.containsKey('deviceMakeModelDetails')
              ? DeviceMakeModelTargetingOptionDetails.fromJson(
                  json_['deviceMakeModelDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deviceTypeDetails: json_.containsKey('deviceTypeDetails')
              ? DeviceTypeTargetingOptionDetails.fromJson(
                  json_['deviceTypeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          digitalContentLabelDetails:
              json_.containsKey('digitalContentLabelDetails')
                  ? DigitalContentLabelTargetingOptionDetails.fromJson(
                      json_['digitalContentLabelDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          environmentDetails: json_.containsKey('environmentDetails')
              ? EnvironmentTargetingOptionDetails.fromJson(
                  json_['environmentDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          exchangeDetails: json_.containsKey('exchangeDetails')
              ? ExchangeTargetingOptionDetails.fromJson(json_['exchangeDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          genderDetails: json_.containsKey('genderDetails')
              ? GenderTargetingOptionDetails.fromJson(
                  json_['genderDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          geoRegionDetails: json_.containsKey('geoRegionDetails')
              ? GeoRegionTargetingOptionDetails.fromJson(
                  json_['geoRegionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          householdIncomeDetails: json_.containsKey('householdIncomeDetails')
              ? HouseholdIncomeTargetingOptionDetails.fromJson(
                  json_['householdIncomeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageDetails: json_.containsKey('languageDetails')
              ? LanguageTargetingOptionDetails.fromJson(json_['languageDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nativeContentPositionDetails:
              json_.containsKey('nativeContentPositionDetails')
                  ? NativeContentPositionTargetingOptionDetails.fromJson(
                      json_['nativeContentPositionDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          omidDetails: json_.containsKey('omidDetails')
              ? OmidTargetingOptionDetails.fromJson(
                  json_['omidDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          onScreenPositionDetails: json_.containsKey('onScreenPositionDetails')
              ? OnScreenPositionTargetingOptionDetails.fromJson(
                  json_['onScreenPositionDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          operatingSystemDetails: json_.containsKey('operatingSystemDetails')
              ? OperatingSystemTargetingOptionDetails.fromJson(
                  json_['operatingSystemDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          parentalStatusDetails: json_.containsKey('parentalStatusDetails')
              ? ParentalStatusTargetingOptionDetails.fromJson(
                  json_['parentalStatusDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          poiDetails: json_.containsKey('poiDetails')
              ? PoiTargetingOptionDetails.fromJson(
                  json_['poiDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          sensitiveCategoryDetails:
              json_.containsKey('sensitiveCategoryDetails')
                  ? SensitiveCategoryTargetingOptionDetails.fromJson(
                      json_['sensitiveCategoryDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          subExchangeDetails: json_.containsKey('subExchangeDetails')
              ? SubExchangeTargetingOptionDetails.fromJson(
                  json_['subExchangeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetingOptionId: json_.containsKey('targetingOptionId')
              ? json_['targetingOptionId'] as core.String
              : null,
          targetingType: json_.containsKey('targetingType')
              ? json_['targetingType'] as core.String
              : null,
          userRewardedContentDetails:
              json_.containsKey('userRewardedContentDetails')
                  ? UserRewardedContentTargetingOptionDetails.fromJson(
                      json_['userRewardedContentDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          videoPlayerSizeDetails: json_.containsKey('videoPlayerSizeDetails')
              ? VideoPlayerSizeTargetingOptionDetails.fromJson(
                  json_['videoPlayerSizeDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          viewabilityDetails: json_.containsKey('viewabilityDetails')
              ? ViewabilityTargetingOptionDetails.fromJson(
                  json_['viewabilityDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRangeDetails != null) 'ageRangeDetails': ageRangeDetails!,
        if (appCategoryDetails != null)
          'appCategoryDetails': appCategoryDetails!,
        if (audioContentTypeDetails != null)
          'audioContentTypeDetails': audioContentTypeDetails!,
        if (authorizedSellerStatusDetails != null)
          'authorizedSellerStatusDetails': authorizedSellerStatusDetails!,
        if (browserDetails != null) 'browserDetails': browserDetails!,
        if (businessChainDetails != null)
          'businessChainDetails': businessChainDetails!,
        if (carrierAndIspDetails != null)
          'carrierAndIspDetails': carrierAndIspDetails!,
        if (categoryDetails != null) 'categoryDetails': categoryDetails!,
        if (contentDurationDetails != null)
          'contentDurationDetails': contentDurationDetails!,
        if (contentGenreDetails != null)
          'contentGenreDetails': contentGenreDetails!,
        if (contentInstreamPositionDetails != null)
          'contentInstreamPositionDetails': contentInstreamPositionDetails!,
        if (contentOutstreamPositionDetails != null)
          'contentOutstreamPositionDetails': contentOutstreamPositionDetails!,
        if (contentStreamTypeDetails != null)
          'contentStreamTypeDetails': contentStreamTypeDetails!,
        if (deviceMakeModelDetails != null)
          'deviceMakeModelDetails': deviceMakeModelDetails!,
        if (deviceTypeDetails != null) 'deviceTypeDetails': deviceTypeDetails!,
        if (digitalContentLabelDetails != null)
          'digitalContentLabelDetails': digitalContentLabelDetails!,
        if (environmentDetails != null)
          'environmentDetails': environmentDetails!,
        if (exchangeDetails != null) 'exchangeDetails': exchangeDetails!,
        if (genderDetails != null) 'genderDetails': genderDetails!,
        if (geoRegionDetails != null) 'geoRegionDetails': geoRegionDetails!,
        if (householdIncomeDetails != null)
          'householdIncomeDetails': householdIncomeDetails!,
        if (languageDetails != null) 'languageDetails': languageDetails!,
        if (name != null) 'name': name!,
        if (nativeContentPositionDetails != null)
          'nativeContentPositionDetails': nativeContentPositionDetails!,
        if (omidDetails != null) 'omidDetails': omidDetails!,
        if (onScreenPositionDetails != null)
          'onScreenPositionDetails': onScreenPositionDetails!,
        if (operatingSystemDetails != null)
          'operatingSystemDetails': operatingSystemDetails!,
        if (parentalStatusDetails != null)
          'parentalStatusDetails': parentalStatusDetails!,
        if (poiDetails != null) 'poiDetails': poiDetails!,
        if (sensitiveCategoryDetails != null)
          'sensitiveCategoryDetails': sensitiveCategoryDetails!,
        if (subExchangeDetails != null)
          'subExchangeDetails': subExchangeDetails!,
        if (targetingOptionId != null) 'targetingOptionId': targetingOptionId!,
        if (targetingType != null) 'targetingType': targetingType!,
        if (userRewardedContentDetails != null)
          'userRewardedContentDetails': userRewardedContentDetails!,
        if (videoPlayerSizeDetails != null)
          'videoPlayerSizeDetails': videoPlayerSizeDetails!,
        if (viewabilityDetails != null)
          'viewabilityDetails': viewabilityDetails!,
      };
}

/// Settings for advertisers that use third-party ad servers only.
typedef ThirdPartyOnlyConfig = $ThirdPartyOnlyConfig;

/// Tracking URLs from third parties to track interactions with an audio or a
/// video creative.
typedef ThirdPartyUrl = $ThirdPartyUrl;

/// Settings that control how third-party measurement vendors are configured.
class ThirdPartyVendorConfig {
  /// The ID used by the platform of the third-party vendor to identify the line
  /// item.
  core.String? placementId;

  /// The third-party measurement vendor.
  /// Possible string values are:
  /// - "THIRD_PARTY_VENDOR_UNSPECIFIED" : Unknown third-party vendor.
  /// - "THIRD_PARTY_VENDOR_MOAT" : Moat.
  /// - "THIRD_PARTY_VENDOR_DOUBLE_VERIFY" : DoubleVerify.
  /// - "THIRD_PARTY_VENDOR_INTEGRAL_AD_SCIENCE" : Integral Ad Science.
  /// - "THIRD_PARTY_VENDOR_COMSCORE" : Comscore.
  /// - "THIRD_PARTY_VENDOR_TELEMETRY" : Telemetry.
  /// - "THIRD_PARTY_VENDOR_MEETRICS" : Meetrics.
  /// - "THIRD_PARTY_VENDOR_ZEFR" : ZEFR.
  /// - "THIRD_PARTY_VENDOR_NIELSEN" : Nielsen.
  /// - "THIRD_PARTY_VENDOR_KANTAR" : Kantar.
  /// - "THIRD_PARTY_VENDOR_DYNATA" : Dynata.
  core.String? vendor;

  ThirdPartyVendorConfig({
    this.placementId,
    this.vendor,
  });

  ThirdPartyVendorConfig.fromJson(core.Map json_)
      : this(
          placementId: json_.containsKey('placementId')
              ? json_['placementId'] as core.String
              : null,
          vendor: json_.containsKey('vendor')
              ? json_['vendor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placementId != null) 'placementId': placementId!,
        if (vendor != null) 'vendor': vendor!,
      };
}

/// Assigned third party verifier targeting option details.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
class ThirdPartyVerifierAssignedTargetingOptionDetails {
  /// Third party brand verifier -- Adloox.
  Adloox? adloox;

  /// Third party brand verifier -- DoubleVerify.
  DoubleVerify? doubleVerify;

  /// Third party brand verifier -- Integral Ad Science.
  IntegralAdScience? integralAdScience;

  ThirdPartyVerifierAssignedTargetingOptionDetails({
    this.adloox,
    this.doubleVerify,
    this.integralAdScience,
  });

  ThirdPartyVerifierAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          adloox: json_.containsKey('adloox')
              ? Adloox.fromJson(
                  json_['adloox'] as core.Map<core.String, core.dynamic>)
              : null,
          doubleVerify: json_.containsKey('doubleVerify')
              ? DoubleVerify.fromJson(
                  json_['doubleVerify'] as core.Map<core.String, core.dynamic>)
              : null,
          integralAdScience: json_.containsKey('integralAdScience')
              ? IntegralAdScience.fromJson(json_['integralAdScience']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adloox != null) 'adloox': adloox!,
        if (doubleVerify != null) 'doubleVerify': doubleVerify!,
        if (integralAdScience != null) 'integralAdScience': integralAdScience!,
      };
}

/// A time range.
typedef TimeRange = $TimeRange;

/// Timer event of the creative.
typedef TimerEvent = $TimerEvent;

/// Settings that control the behavior of a single Floodlight activity config.
typedef TrackingFloodlightActivityConfig = $TrackingFloodlightActivityConfig;

/// Represents information about the transcoded audio or video file.
class Transcode {
  /// The bit rate for the audio stream of the transcoded video, or the bit rate
  /// for the transcoded audio, in kilobits per second.
  core.String? audioBitRateKbps;

  /// The sample rate for the audio stream of the transcoded video, or the
  /// sample rate for the transcoded audio, in hertz.
  core.String? audioSampleRateHz;

  /// The transcoding bit rate of the transcoded video, in kilobits per second.
  core.String? bitRateKbps;

  /// The dimensions of the transcoded video.
  Dimensions? dimensions;

  /// The size of the transcoded file, in bytes.
  core.String? fileSizeBytes;

  /// The frame rate of the transcoded video, in frames per second.
  core.double? frameRate;

  /// The MIME type of the transcoded file.
  core.String? mimeType;

  /// The name of the transcoded file.
  core.String? name;

  /// Indicates if the transcoding was successful.
  core.bool? transcoded;

  Transcode({
    this.audioBitRateKbps,
    this.audioSampleRateHz,
    this.bitRateKbps,
    this.dimensions,
    this.fileSizeBytes,
    this.frameRate,
    this.mimeType,
    this.name,
    this.transcoded,
  });

  Transcode.fromJson(core.Map json_)
      : this(
          audioBitRateKbps: json_.containsKey('audioBitRateKbps')
              ? json_['audioBitRateKbps'] as core.String
              : null,
          audioSampleRateHz: json_.containsKey('audioSampleRateHz')
              ? json_['audioSampleRateHz'] as core.String
              : null,
          bitRateKbps: json_.containsKey('bitRateKbps')
              ? json_['bitRateKbps'] as core.String
              : null,
          dimensions: json_.containsKey('dimensions')
              ? Dimensions.fromJson(
                  json_['dimensions'] as core.Map<core.String, core.dynamic>)
              : null,
          fileSizeBytes: json_.containsKey('fileSizeBytes')
              ? json_['fileSizeBytes'] as core.String
              : null,
          frameRate: json_.containsKey('frameRate')
              ? (json_['frameRate'] as core.num).toDouble()
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          transcoded: json_.containsKey('transcoded')
              ? json_['transcoded'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioBitRateKbps != null) 'audioBitRateKbps': audioBitRateKbps!,
        if (audioSampleRateHz != null) 'audioSampleRateHz': audioSampleRateHz!,
        if (bitRateKbps != null) 'bitRateKbps': bitRateKbps!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (fileSizeBytes != null) 'fileSizeBytes': fileSizeBytes!,
        if (frameRate != null) 'frameRate': frameRate!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (name != null) 'name': name!,
        if (transcoded != null) 'transcoded': transcoded!,
      };
}

/// A creative identifier provided by a registry that is unique across all
/// platforms.
///
/// This is part of the VAST 4.0 standard.
typedef UniversalAdId = $UniversalAdId01;

/// Details for assigned URL targeting option.
///
/// This will be populated in the details field of an AssignedTargetingOption
/// when targeting_type is `TARGETING_TYPE_URL`.
typedef UrlAssignedTargetingOptionDetails = $UrlAssignedTargetingOptionDetails;

/// A single user in Display & Video 360.
class User {
  /// The assigned user roles.
  ///
  /// Required in CreateUser. Output only in UpdateUser. Can only be updated
  /// through BulkEditAssignedUserRoles.
  core.List<AssignedUserRole>? assignedUserRoles;

  /// The display name of the user.
  ///
  /// Must be UTF-8 encoded with a maximum size of 240 bytes.
  ///
  /// Required.
  core.String? displayName;

  /// The email address used to identify the user.
  ///
  /// Required. Immutable.
  core.String? email;

  /// The resource name of the user.
  ///
  /// Output only.
  core.String? name;

  /// The unique ID of the user.
  ///
  /// Assigned by the system.
  ///
  /// Output only.
  core.String? userId;

  User({
    this.assignedUserRoles,
    this.displayName,
    this.email,
    this.name,
    this.userId,
  });

  User.fromJson(core.Map json_)
      : this(
          assignedUserRoles: json_.containsKey('assignedUserRoles')
              ? (json_['assignedUserRoles'] as core.List)
                  .map((value) => AssignedUserRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedUserRoles != null) 'assignedUserRoles': assignedUserRoles!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (name != null) 'name': name!,
        if (userId != null) 'userId': userId!,
      };
}

/// User rewarded content targeting option details.
///
/// This will be populated in the user_rewarded_content_details field when
/// targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
typedef UserRewardedContentAssignedTargetingOptionDetails
    = $UserRewardedContentAssignedTargetingOptionDetails;

/// Represents a targetable user rewarded content status for video ads only.
///
/// This will be populated in the user_rewarded_content_details field when
/// targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
typedef UserRewardedContentTargetingOptionDetails
    = $UserRewardedContentTargetingOptionDetails;

/// Video player size targeting option details.
///
/// This will be populated in the video_player_size_details field when
/// targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting
/// all options is not supported. Remove all video player size targeting options
/// to achieve this effect.
class VideoPlayerSizeAssignedTargetingOptionDetails {
  /// The video player size.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "VIDEO_PLAYER_SIZE_UNSPECIFIED" : Video player size is not specified in
  /// this version. This enum is a place holder for a default value and does not
  /// represent a real video player size.
  /// - "VIDEO_PLAYER_SIZE_SMALL" : The dimensions of the video player are less
  /// than 400×300 (desktop), or up to 20% of screen covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_LARGE" : The dimensions of the video player are
  /// between 400x300 and 1280x720 pixels (desktop), or 20% to 90% of the screen
  /// covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_HD" : The dimensions of the video player are 1280×720
  /// or greater (desktop), or over 90% of the screen covered (mobile).
  /// - "VIDEO_PLAYER_SIZE_UNKNOWN" : The dimensions of the video player are
  /// unknown.
  core.String? videoPlayerSize;

  VideoPlayerSizeAssignedTargetingOptionDetails({
    this.videoPlayerSize,
  });

  VideoPlayerSizeAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          videoPlayerSize: json_.containsKey('videoPlayerSize')
              ? json_['videoPlayerSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (videoPlayerSize != null) 'videoPlayerSize': videoPlayerSize!,
      };
}

/// Represents a targetable video player size.
///
/// This will be populated in the video_player_size_details field when
/// targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
typedef VideoPlayerSizeTargetingOptionDetails
    = $VideoPlayerSizeTargetingOptionDetails;

/// Assigned viewability targeting option details.
///
/// This will be populated in the viewability_details field of an
/// AssignedTargetingOption when targeting_type is `TARGETING_TYPE_VIEWABILITY`.
class ViewabilityAssignedTargetingOptionDetails {
  /// The predicted viewability percentage.
  ///
  /// Output only in v1. Required in v2.
  /// Possible string values are:
  /// - "VIEWABILITY_UNSPECIFIED" : Default value when viewability is not
  /// specified in this version. This enum is a placeholder for default value
  /// and does not represent a real viewability option.
  /// - "VIEWABILITY_10_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 10% likely to be viewable.
  /// - "VIEWABILITY_20_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 20% likely to be viewable.
  /// - "VIEWABILITY_30_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 30% likely to be viewable.
  /// - "VIEWABILITY_40_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 40% likely to be viewable.
  /// - "VIEWABILITY_50_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 50% likely to be viewable.
  /// - "VIEWABILITY_60_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 60% likely to be viewable.
  /// - "VIEWABILITY_70_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 70% likely to be viewable.
  /// - "VIEWABILITY_80_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 80% likely to be viewable.
  /// - "VIEWABILITY_90_PERCENT_OR_MORE" : Bid only on impressions that are at
  /// least 90% likely to be viewable.
  core.String? viewability;

  ViewabilityAssignedTargetingOptionDetails({
    this.viewability,
  });

  ViewabilityAssignedTargetingOptionDetails.fromJson(core.Map json_)
      : this(
          viewability: json_.containsKey('viewability')
              ? json_['viewability'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (viewability != null) 'viewability': viewability!,
      };
}

/// Represents a targetable viewability.
///
/// This will be populated in the viewability_details field of a TargetingOption
/// when targeting_type is `TARGETING_TYPE_VIEWABILITY`.
typedef ViewabilityTargetingOptionDetails = $ViewabilityTargetingOptionDetails;

/// Settings that control the bid strategy for YouTube and Partners resources.
class YoutubeAndPartnersBiddingStrategy {
  /// The type of the bidding strategy.
  /// Possible string values are:
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_UNSPECIFIED" : Type is not
  /// specified or unknown.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPV" : A bidding
  /// strategy that pays a configurable amount per video view.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPM" : A bidding
  /// strategy that pays a configurable amount per impression.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA" : A bidding
  /// strategy that automatically optimizes conversions per dollar.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPM" : A bidding
  /// strategy that pays a configurable amount per impression.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MAXIMIZE_LIFT" : An
  /// automated bidding strategy that sets bids to achieve maximum lift.
  /// - "YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MAXIMIZE_CONVERSIONS" : A
  /// bidding strategy that automatically maximizes number of conversions given
  /// a daily budget.
  core.String? type;

  /// The value used by the bidding strategy.
  ///
  /// When the bidding strategy is assigned at the line item level, this field
  /// is only applicable for the following strategy types: *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA` When the bidding
  /// strategy is assigned at the ad group level, this field is only applicable
  /// for the following strategy types: *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPM` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_MANUAL_CPV` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPA` *
  /// `YOUTUBE_AND_PARTNERS_BIDDING_STRATEGY_TYPE_TARGET_CPM` If not using an
  /// applicable strategy, the value of this field will be 0.
  core.String? value;

  YoutubeAndPartnersBiddingStrategy({
    this.type,
    this.value,
  });

  YoutubeAndPartnersBiddingStrategy.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Settings that control what YouTube related inventories the YouTube and
/// Partners line item will target.
class YoutubeAndPartnersInventorySourceConfig {
  /// Whether to target inventory on the YouTube search results page.
  core.bool? includeYoutubeSearch;

  /// Whether to target inventory on a collection of partner sites and apps that
  /// follow the same brand safety standards as YouTube.
  core.bool? includeYoutubeVideoPartners;

  /// Whether to target inventory of channels and videos on YouTube and YouTube
  /// videos embedded on other sites.
  core.bool? includeYoutubeVideos;

  YoutubeAndPartnersInventorySourceConfig({
    this.includeYoutubeSearch,
    this.includeYoutubeVideoPartners,
    this.includeYoutubeVideos,
  });

  YoutubeAndPartnersInventorySourceConfig.fromJson(core.Map json_)
      : this(
          includeYoutubeSearch: json_.containsKey('includeYoutubeSearch')
              ? json_['includeYoutubeSearch'] as core.bool
              : null,
          includeYoutubeVideoPartners:
              json_.containsKey('includeYoutubeVideoPartners')
                  ? json_['includeYoutubeVideoPartners'] as core.bool
                  : null,
          includeYoutubeVideos: json_.containsKey('includeYoutubeVideos')
              ? json_['includeYoutubeVideos'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeYoutubeSearch != null)
          'includeYoutubeSearch': includeYoutubeSearch!,
        if (includeYoutubeVideoPartners != null)
          'includeYoutubeVideoPartners': includeYoutubeVideoPartners!,
        if (includeYoutubeVideos != null)
          'includeYoutubeVideos': includeYoutubeVideos!,
      };
}

/// Settings for YouTube and Partners line items.
class YoutubeAndPartnersSettings {
  /// The bidding strategy of the YouTube and Partners line item.
  YoutubeAndPartnersBiddingStrategy? biddingStrategy;

  /// The kind of content on which the YouTube and Partners ads will be shown.
  /// Possible string values are:
  /// - "YOUTUBE_AND_PARTNERS_CONTENT_CATEGORY_UNSPECIFIED" : Content category
  /// is not specified or is unknown in this version.
  /// - "YOUTUBE_AND_PARTNERS_CONTENT_CATEGORY_STANDARD" : A category consisting
  /// of a wide range of content appropriate for most brands. The content is
  /// based off of YouTube's \[advertiser-friendly content
  /// guidelines\](https://support.google.com/youtube/answer/6162278).
  /// - "YOUTUBE_AND_PARTNERS_CONTENT_CATEGORY_EXPANDED" : A category including
  /// all content across YouTube and video partners that meets standards for
  /// monetization.
  /// - "YOUTUBE_AND_PARTNERS_CONTENT_CATEGORY_LIMITED" : A category consisting
  /// of a reduced range of content that meets heightened requirements,
  /// especially regarding inappropriate language and sexual suggestiveness.
  core.String? contentCategory;

  /// Settings that control what YouTube and Partners inventories the line item
  /// will target.
  YoutubeAndPartnersInventorySourceConfig? inventorySourceSettings;

  /// The third-party measurement settings of the line item.
  YoutubeAndPartnersThirdPartyMeasurementSettings?
      thirdPartyMeasurementSettings;

  /// The view frequency cap settings of the line item.
  ///
  /// The max_views field in this settings object must be used if assigning a
  /// limited cap.
  FrequencyCap? viewFrequencyCap;

  YoutubeAndPartnersSettings({
    this.biddingStrategy,
    this.contentCategory,
    this.inventorySourceSettings,
    this.thirdPartyMeasurementSettings,
    this.viewFrequencyCap,
  });

  YoutubeAndPartnersSettings.fromJson(core.Map json_)
      : this(
          biddingStrategy: json_.containsKey('biddingStrategy')
              ? YoutubeAndPartnersBiddingStrategy.fromJson(
                  json_['biddingStrategy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentCategory: json_.containsKey('contentCategory')
              ? json_['contentCategory'] as core.String
              : null,
          inventorySourceSettings: json_.containsKey('inventorySourceSettings')
              ? YoutubeAndPartnersInventorySourceConfig.fromJson(
                  json_['inventorySourceSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          thirdPartyMeasurementSettings:
              json_.containsKey('thirdPartyMeasurementSettings')
                  ? YoutubeAndPartnersThirdPartyMeasurementSettings.fromJson(
                      json_['thirdPartyMeasurementSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          viewFrequencyCap: json_.containsKey('viewFrequencyCap')
              ? FrequencyCap.fromJson(json_['viewFrequencyCap']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biddingStrategy != null) 'biddingStrategy': biddingStrategy!,
        if (contentCategory != null) 'contentCategory': contentCategory!,
        if (inventorySourceSettings != null)
          'inventorySourceSettings': inventorySourceSettings!,
        if (thirdPartyMeasurementSettings != null)
          'thirdPartyMeasurementSettings': thirdPartyMeasurementSettings!,
        if (viewFrequencyCap != null) 'viewFrequencyCap': viewFrequencyCap!,
      };
}

/// Settings that control what third-party vendors are measuring specific line
/// item metrics.
class YoutubeAndPartnersThirdPartyMeasurementSettings {
  /// The third-party vendors measuring brand lift.
  ///
  /// The following third-party vendors are applicable: *
  /// `THIRD_PARTY_VENDOR_DYNATA` * `THIRD_PARTY_VENDOR_KANTAR`
  core.List<ThirdPartyVendorConfig>? brandLiftVendorConfigs;

  /// The third-party vendors measuring brand safety.
  ///
  /// The following third-party vendors are applicable: *
  /// `THIRD_PARTY_VENDOR_ZERF` * `THIRD_PARTY_VENDOR_DOUBLE_VERIFY` *
  /// `THIRD_PARTY_VENDOR_INTEGRAL_AD_SCIENCE`
  core.List<ThirdPartyVendorConfig>? brandSafetyVendorConfigs;

  /// The third-party vendors measuring reach.
  ///
  /// The following third-party vendors are applicable: *
  /// `THIRD_PARTY_VENDOR_NIELSEN` * `THIRD_PARTY_VENDOR_COMSCORE` *
  /// `THIRD_PARTY_VENDOR_KANTAR`
  core.List<ThirdPartyVendorConfig>? reachVendorConfigs;

  /// The third-party vendors measuring viewability.
  ///
  /// The following third-party vendors are applicable: *
  /// `THIRD_PARTY_VENDOR_MOAT` * `THIRD_PARTY_VENDOR_DOUBLE_VERIFY` *
  /// `THIRD_PARTY_VENDOR_INTEGRAL_AD_SCIENCE` * `THIRD_PARTY_VENDOR_COMSCORE` *
  /// `THIRD_PARTY_VENDOR_TELEMETRY` * `THIRD_PARTY_VENDOR_MEETRICS`
  core.List<ThirdPartyVendorConfig>? viewabilityVendorConfigs;

  YoutubeAndPartnersThirdPartyMeasurementSettings({
    this.brandLiftVendorConfigs,
    this.brandSafetyVendorConfigs,
    this.reachVendorConfigs,
    this.viewabilityVendorConfigs,
  });

  YoutubeAndPartnersThirdPartyMeasurementSettings.fromJson(core.Map json_)
      : this(
          brandLiftVendorConfigs: json_.containsKey('brandLiftVendorConfigs')
              ? (json_['brandLiftVendorConfigs'] as core.List)
                  .map((value) => ThirdPartyVendorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          brandSafetyVendorConfigs:
              json_.containsKey('brandSafetyVendorConfigs')
                  ? (json_['brandSafetyVendorConfigs'] as core.List)
                      .map((value) => ThirdPartyVendorConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          reachVendorConfigs: json_.containsKey('reachVendorConfigs')
              ? (json_['reachVendorConfigs'] as core.List)
                  .map((value) => ThirdPartyVendorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          viewabilityVendorConfigs:
              json_.containsKey('viewabilityVendorConfigs')
                  ? (json_['viewabilityVendorConfigs'] as core.List)
                      .map((value) => ThirdPartyVendorConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brandLiftVendorConfigs != null)
          'brandLiftVendorConfigs': brandLiftVendorConfigs!,
        if (brandSafetyVendorConfigs != null)
          'brandSafetyVendorConfigs': brandSafetyVendorConfigs!,
        if (reachVendorConfigs != null)
          'reachVendorConfigs': reachVendorConfigs!,
        if (viewabilityVendorConfigs != null)
          'viewabilityVendorConfigs': viewabilityVendorConfigs!,
      };
}
