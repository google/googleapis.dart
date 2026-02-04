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

/// Campaign Manager 360 API - v3.5
///
/// Build applications to efficiently manage large or complex trafficking,
/// reporting, and attribution workflows for Campaign Manager 360.
///
/// For more information, see
/// <https://developers.google.com/doubleclick-advertisers/>
///
/// Create an instance of [DfareportingApi] to access these resources:
///
/// - [MediaResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// Build applications to efficiently manage large or complex trafficking,
/// reporting, and attribution workflows for Campaign Manager 360.
class DfareportingApi {
  /// View and manage your DoubleClick Campaign Manager's (DCM) display ad
  /// campaigns
  static const dfatraffickingScope =
      'https://www.googleapis.com/auth/dfatrafficking';

  final commons.ApiRequester _requester;

  MediaResource get media => MediaResource(_requester);

  DfareportingApi(
    http.Client client, {
    core.String rootUrl = 'https://dfareporting.googleapis.com/',
    core.String servicePath = 'dfareporting/v3.5/',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a new creative asset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [advertiserId] - Advertiser ID of this creative. This is a required field.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [CreativeAssetMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeAssetMetadata> upload(
    CreativeAssetMetadata request,
    core.String profileId,
    core.String advertiserId, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ =
          'userprofiles/' +
          core.Uri.encodeFull('$profileId') +
          '/creativeAssets/' +
          core.Uri.encodeFull('$advertiserId') +
          '/creativeAssets';
    } else {
      url_ =
          '/upload/dfareporting/v3.5/userprofiles/' +
          core.Uri.encodeFull('$profileId') +
          '/creativeAssets/' +
          core.Uri.encodeFull('$advertiserId') +
          '/creativeAssets';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return CreativeAssetMetadata.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Creative Click Tag.
class ClickTag {
  /// Parameter value for the specified click tag.
  ///
  /// This field contains a click-through url.
  CreativeClickThroughUrl? clickThroughUrl;

  /// Advertiser event name associated with the click tag.
  ///
  /// This field is used by DISPLAY_IMAGE_GALLERY and HTML5_BANNER creatives.
  /// Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
  core.String? eventName;

  /// Parameter name for the specified click tag.
  ///
  /// For DISPLAY_IMAGE_GALLERY creative assets, this field must match the value
  /// of the creative asset's creativeAssetId.name field.
  core.String? name;

  ClickTag({this.clickThroughUrl, this.eventName, this.name});

  ClickTag.fromJson(core.Map json_)
    : this(
        clickThroughUrl: json_.containsKey('clickThroughUrl')
            ? CreativeClickThroughUrl.fromJson(
                json_['clickThroughUrl'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventName: json_['eventName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clickThroughUrl = this.clickThroughUrl;
    final eventName = this.eventName;
    final name = this.name;
    return {
      'clickThroughUrl': ?clickThroughUrl,
      'eventName': ?eventName,
      'name': ?name,
    };
  }
}

/// Creative Asset ID.
typedef CreativeAssetId = $CreativeAssetId;

/// CreativeAssets contains properties of a creative asset file which will be
/// uploaded or has already been uploaded.
///
/// Refer to the creative sample code for how to upload assets and insert a
/// creative.
class CreativeAssetMetadata {
  /// ID of the creative asset.
  ///
  /// This is a required field.
  CreativeAssetId? assetIdentifier;

  /// List of detected click tags for assets.
  ///
  /// This is a read-only, auto-generated field. This field is empty for a rich
  /// media asset.
  core.List<ClickTag>? clickTags;

  /// List of counter events configured for the asset.
  ///
  /// This is a read-only, auto-generated field and only applicable to a rich
  /// media asset.
  core.List<CreativeCustomEvent>? counterCustomEvents;

  /// List of feature dependencies for the creative asset that are detected by
  /// Campaign Manager.
  ///
  /// Feature dependencies are features that a browser must be able to support
  /// in order to render your HTML5 creative correctly. This is a read-only,
  /// auto-generated field.
  core.List<core.String>? detectedFeatures;

  /// List of exit events configured for the asset.
  ///
  /// This is a read-only, auto-generated field and only applicable to a rich
  /// media asset.
  core.List<CreativeCustomEvent>? exitCustomEvents;

  /// Numeric ID of the asset.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the numeric ID of the asset.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeAssetMetadata".
  core.String? kind;

  /// True if the uploaded asset is a rich media asset.
  ///
  /// This is a read-only, auto-generated field.
  core.bool? richMedia;

  /// List of timer events configured for the asset.
  ///
  /// This is a read-only, auto-generated field and only applicable to a rich
  /// media asset.
  core.List<CreativeCustomEvent>? timerCustomEvents;

  /// Rules validated during code generation that generated a warning.
  ///
  /// This is a read-only, auto-generated field. Possible values are: -
  /// "ADMOB_REFERENCED" - "ASSET_FORMAT_UNSUPPORTED_DCM" - "ASSET_INVALID" -
  /// "CLICK_TAG_HARD_CODED" - "CLICK_TAG_INVALID" - "CLICK_TAG_IN_GWD" -
  /// "CLICK_TAG_MISSING" - "CLICK_TAG_MORE_THAN_ONE" -
  /// "CLICK_TAG_NON_TOP_LEVEL" - "COMPONENT_UNSUPPORTED_DCM" -
  /// "ENABLER_UNSUPPORTED_METHOD_DCM" - "EXTERNAL_FILE_REFERENCED" -
  /// "FILE_DETAIL_EMPTY" - "FILE_TYPE_INVALID" - "GWD_PROPERTIES_INVALID" -
  /// "HTML5_FEATURE_UNSUPPORTED" - "LINKED_FILE_NOT_FOUND" -
  /// "MAX_FLASH_VERSION_11" - "MRAID_REFERENCED" - "NOT_SSL_COMPLIANT" -
  /// "ORPHANED_ASSET" - "PRIMARY_HTML_MISSING" - "SVG_INVALID" - "ZIP_INVALID"
  core.List<core.String>? warnedValidationRules;

  CreativeAssetMetadata({
    this.assetIdentifier,
    this.clickTags,
    this.counterCustomEvents,
    this.detectedFeatures,
    this.exitCustomEvents,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.richMedia,
    this.timerCustomEvents,
    this.warnedValidationRules,
  });

  CreativeAssetMetadata.fromJson(core.Map json_)
    : this(
        assetIdentifier: json_.containsKey('assetIdentifier')
            ? CreativeAssetId.fromJson(
                json_['assetIdentifier'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clickTags: (json_['clickTags'] as core.List?)
            ?.map(
              (value) => ClickTag.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        counterCustomEvents: (json_['counterCustomEvents'] as core.List?)
            ?.map(
              (value) => CreativeCustomEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        detectedFeatures: (json_['detectedFeatures'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        exitCustomEvents: (json_['exitCustomEvents'] as core.List?)
            ?.map(
              (value) => CreativeCustomEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        id: json_['id'] as core.String?,
        idDimensionValue: json_.containsKey('idDimensionValue')
            ? DimensionValue.fromJson(
                json_['idDimensionValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        kind: json_['kind'] as core.String?,
        richMedia: json_['richMedia'] as core.bool?,
        timerCustomEvents: (json_['timerCustomEvents'] as core.List?)
            ?.map(
              (value) => CreativeCustomEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        warnedValidationRules: (json_['warnedValidationRules'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assetIdentifier = this.assetIdentifier;
    final clickTags = this.clickTags;
    final counterCustomEvents = this.counterCustomEvents;
    final detectedFeatures = this.detectedFeatures;
    final exitCustomEvents = this.exitCustomEvents;
    final id = this.id;
    final idDimensionValue = this.idDimensionValue;
    final kind = this.kind;
    final richMedia = this.richMedia;
    final timerCustomEvents = this.timerCustomEvents;
    final warnedValidationRules = this.warnedValidationRules;
    return {
      'assetIdentifier': ?assetIdentifier,
      'clickTags': ?clickTags,
      'counterCustomEvents': ?counterCustomEvents,
      'detectedFeatures': ?detectedFeatures,
      'exitCustomEvents': ?exitCustomEvents,
      'id': ?id,
      'idDimensionValue': ?idDimensionValue,
      'kind': ?kind,
      'richMedia': ?richMedia,
      'timerCustomEvents': ?timerCustomEvents,
      'warnedValidationRules': ?warnedValidationRules,
    };
  }
}

/// Click-through URL
typedef CreativeClickThroughUrl = $CreativeClickThroughUrl;

/// Creative Custom Event.
class CreativeCustomEvent {
  /// Unique ID of this event used by Reporting and Data Transfer.
  ///
  /// This is a read-only field.
  core.String? advertiserCustomEventId;

  /// User-entered name for the event.
  core.String? advertiserCustomEventName;

  /// Type of the event.
  ///
  /// This is a read-only field.
  /// Possible string values are:
  /// - "ADVERTISER_EVENT_TIMER"
  /// - "ADVERTISER_EVENT_EXIT"
  /// - "ADVERTISER_EVENT_COUNTER"
  core.String? advertiserCustomEventType;

  /// Artwork label column, used to link events in Campaign Manager back to
  /// events in Studio.
  ///
  /// This is a required field and should not be modified after insertion.
  core.String? artworkLabel;

  /// Artwork type used by the creative.This is a read-only field.
  /// Possible string values are:
  /// - "ARTWORK_TYPE_FLASH"
  /// - "ARTWORK_TYPE_HTML5"
  /// - "ARTWORK_TYPE_MIXED"
  /// - "ARTWORK_TYPE_IMAGE"
  core.String? artworkType;

  /// Exit click-through URL for the event.
  ///
  /// This field is used only for exit events.
  CreativeClickThroughUrl? exitClickThroughUrl;

  /// ID of this event.
  ///
  /// This is a required field and should not be modified after insertion.
  core.String? id;

  /// Properties for rich media popup windows.
  ///
  /// This field is used only for exit events.
  PopupWindowProperties? popupWindowProperties;

  /// Target type used by the event.
  /// Possible string values are:
  /// - "TARGET_BLANK"
  /// - "TARGET_TOP"
  /// - "TARGET_SELF"
  /// - "TARGET_PARENT"
  /// - "TARGET_POPUP"
  core.String? targetType;

  /// Video reporting ID, used to differentiate multiple videos in a single
  /// creative.
  ///
  /// This is a read-only field.
  core.String? videoReportingId;

  CreativeCustomEvent({
    this.advertiserCustomEventId,
    this.advertiserCustomEventName,
    this.advertiserCustomEventType,
    this.artworkLabel,
    this.artworkType,
    this.exitClickThroughUrl,
    this.id,
    this.popupWindowProperties,
    this.targetType,
    this.videoReportingId,
  });

  CreativeCustomEvent.fromJson(core.Map json_)
    : this(
        advertiserCustomEventId:
            json_['advertiserCustomEventId'] as core.String?,
        advertiserCustomEventName:
            json_['advertiserCustomEventName'] as core.String?,
        advertiserCustomEventType:
            json_['advertiserCustomEventType'] as core.String?,
        artworkLabel: json_['artworkLabel'] as core.String?,
        artworkType: json_['artworkType'] as core.String?,
        exitClickThroughUrl: json_.containsKey('exitClickThroughUrl')
            ? CreativeClickThroughUrl.fromJson(
                json_['exitClickThroughUrl']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        id: json_['id'] as core.String?,
        popupWindowProperties: json_.containsKey('popupWindowProperties')
            ? PopupWindowProperties.fromJson(
                json_['popupWindowProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        targetType: json_['targetType'] as core.String?,
        videoReportingId: json_['videoReportingId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserCustomEventId = this.advertiserCustomEventId;
    final advertiserCustomEventName = this.advertiserCustomEventName;
    final advertiserCustomEventType = this.advertiserCustomEventType;
    final artworkLabel = this.artworkLabel;
    final artworkType = this.artworkType;
    final exitClickThroughUrl = this.exitClickThroughUrl;
    final id = this.id;
    final popupWindowProperties = this.popupWindowProperties;
    final targetType = this.targetType;
    final videoReportingId = this.videoReportingId;
    return {
      'advertiserCustomEventId': ?advertiserCustomEventId,
      'advertiserCustomEventName': ?advertiserCustomEventName,
      'advertiserCustomEventType': ?advertiserCustomEventType,
      'artworkLabel': ?artworkLabel,
      'artworkType': ?artworkType,
      'exitClickThroughUrl': ?exitClickThroughUrl,
      'id': ?id,
      'popupWindowProperties': ?popupWindowProperties,
      'targetType': ?targetType,
      'videoReportingId': ?videoReportingId,
    };
  }
}

/// Represents a DimensionValue resource.
typedef DimensionValue = $DimensionValue;

/// Offset Position.
typedef OffsetPosition = $OffsetPosition;

/// Popup Window Properties.
class PopupWindowProperties {
  /// Popup dimension for a creative.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA and all VPAID
  Size? dimension;

  /// Upper-left corner coordinates of the popup window.
  ///
  /// Applicable if positionType is COORDINATES.
  OffsetPosition? offset;

  /// Popup window position either centered or at specific coordinate.
  /// Possible string values are:
  /// - "CENTER"
  /// - "COORDINATES"
  core.String? positionType;

  /// Whether to display the browser address bar.
  core.bool? showAddressBar;

  /// Whether to display the browser menu bar.
  core.bool? showMenuBar;

  /// Whether to display the browser scroll bar.
  core.bool? showScrollBar;

  /// Whether to display the browser status bar.
  core.bool? showStatusBar;

  /// Whether to display the browser tool bar.
  core.bool? showToolBar;

  /// Title of popup window.
  core.String? title;

  PopupWindowProperties({
    this.dimension,
    this.offset,
    this.positionType,
    this.showAddressBar,
    this.showMenuBar,
    this.showScrollBar,
    this.showStatusBar,
    this.showToolBar,
    this.title,
  });

  PopupWindowProperties.fromJson(core.Map json_)
    : this(
        dimension: json_.containsKey('dimension')
            ? Size.fromJson(
                json_['dimension'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        offset: json_.containsKey('offset')
            ? OffsetPosition.fromJson(
                json_['offset'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        positionType: json_['positionType'] as core.String?,
        showAddressBar: json_['showAddressBar'] as core.bool?,
        showMenuBar: json_['showMenuBar'] as core.bool?,
        showScrollBar: json_['showScrollBar'] as core.bool?,
        showStatusBar: json_['showStatusBar'] as core.bool?,
        showToolBar: json_['showToolBar'] as core.bool?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final offset = this.offset;
    final positionType = this.positionType;
    final showAddressBar = this.showAddressBar;
    final showMenuBar = this.showMenuBar;
    final showScrollBar = this.showScrollBar;
    final showStatusBar = this.showStatusBar;
    final showToolBar = this.showToolBar;
    final title = this.title;
    return {
      'dimension': ?dimension,
      'offset': ?offset,
      'positionType': ?positionType,
      'showAddressBar': ?showAddressBar,
      'showMenuBar': ?showMenuBar,
      'showScrollBar': ?showScrollBar,
      'showStatusBar': ?showStatusBar,
      'showToolBar': ?showToolBar,
      'title': ?title,
    };
  }
}

/// Represents the dimensions of ads, placements, creatives, or creative assets.
typedef Size = $Size;
