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

  DfareportingApi(http.Client client,
      {core.String rootUrl = 'https://dfareporting.googleapis.com/',
      core.String servicePath = 'dfareporting/v3.5/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'userprofiles/' +
          core.Uri.encodeFull('$profileId') +
          '/creativeAssets/' +
          core.Uri.encodeFull('$advertiserId') +
          '/creativeAssets';
    } else {
      url_ = '/upload/dfareporting/v3.5/userprofiles/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

  ClickTag({
    this.clickThroughUrl,
    this.eventName,
    this.name,
  });

  ClickTag.fromJson(core.Map json_)
      : this(
          clickThroughUrl: json_.containsKey('clickThroughUrl')
              ? CreativeClickThroughUrl.fromJson(json_['clickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          eventName: json_['eventName'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickThroughUrl != null) 'clickThroughUrl': clickThroughUrl!,
        if (eventName != null) 'eventName': eventName!,
        if (name != null) 'name': name!,
      };
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
  MediaRequestInfo? mediaRequestInfo;
  MediaResponseInfo? mediaResponseInfo;

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
    this.mediaRequestInfo,
    this.mediaResponseInfo,
    this.richMedia,
    this.timerCustomEvents,
    this.warnedValidationRules,
  });

  CreativeAssetMetadata.fromJson(core.Map json_)
      : this(
          assetIdentifier: json_.containsKey('assetIdentifier')
              ? CreativeAssetId.fromJson(json_['assetIdentifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clickTags: (json_['clickTags'] as core.List?)
              ?.map((value) => ClickTag.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          counterCustomEvents: (json_['counterCustomEvents'] as core.List?)
              ?.map((value) => CreativeCustomEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          detectedFeatures: (json_['detectedFeatures'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          exitCustomEvents: (json_['exitCustomEvents'] as core.List?)
              ?.map((value) => CreativeCustomEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          id: json_['id'] as core.String?,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          mediaRequestInfo: json_.containsKey('mediaRequestInfo')
              ? MediaRequestInfo.fromJson(json_['mediaRequestInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mediaResponseInfo: json_.containsKey('mediaResponseInfo')
              ? MediaResponseInfo.fromJson(json_['mediaResponseInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          richMedia: json_['richMedia'] as core.bool?,
          timerCustomEvents: (json_['timerCustomEvents'] as core.List?)
              ?.map((value) => CreativeCustomEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          warnedValidationRules: (json_['warnedValidationRules'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetIdentifier != null) 'assetIdentifier': assetIdentifier!,
        if (clickTags != null) 'clickTags': clickTags!,
        if (counterCustomEvents != null)
          'counterCustomEvents': counterCustomEvents!,
        if (detectedFeatures != null) 'detectedFeatures': detectedFeatures!,
        if (exitCustomEvents != null) 'exitCustomEvents': exitCustomEvents!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (mediaRequestInfo != null) 'mediaRequestInfo': mediaRequestInfo!,
        if (mediaResponseInfo != null) 'mediaResponseInfo': mediaResponseInfo!,
        if (richMedia != null) 'richMedia': richMedia!,
        if (timerCustomEvents != null) 'timerCustomEvents': timerCustomEvents!,
        if (warnedValidationRules != null)
          'warnedValidationRules': warnedValidationRules!,
      };
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
              ? CreativeClickThroughUrl.fromJson(json_['exitClickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          popupWindowProperties: json_.containsKey('popupWindowProperties')
              ? PopupWindowProperties.fromJson(json_['popupWindowProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targetType: json_['targetType'] as core.String?,
          videoReportingId: json_['videoReportingId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserCustomEventId != null)
          'advertiserCustomEventId': advertiserCustomEventId!,
        if (advertiserCustomEventName != null)
          'advertiserCustomEventName': advertiserCustomEventName!,
        if (advertiserCustomEventType != null)
          'advertiserCustomEventType': advertiserCustomEventType!,
        if (artworkLabel != null) 'artworkLabel': artworkLabel!,
        if (artworkType != null) 'artworkType': artworkType!,
        if (exitClickThroughUrl != null)
          'exitClickThroughUrl': exitClickThroughUrl!,
        if (id != null) 'id': id!,
        if (popupWindowProperties != null)
          'popupWindowProperties': popupWindowProperties!,
        if (targetType != null) 'targetType': targetType!,
        if (videoReportingId != null) 'videoReportingId': videoReportingId!,
      };
}

/// Represents a DimensionValue resource.
typedef DimensionValue = $DimensionValue;

/// Extra information added to operations that support Scotty media requests.
typedef MediaRequestInfo = $MediaRequestInfo;

/// This message is for backends to pass their scotty media specific fields to
/// ESF.
///
/// Backend will include this in their response message to ESF. Example:
/// ExportFile is an rpc defined for upload using scotty from ESF. rpc
/// ExportFile(ExportFileRequest) returns (ExportFileResponse) Message
/// ExportFileResponse will include apiserving.MediaResponseInfo to tell ESF
/// about data like dynamic_dropzone it needs to pass to Scotty. message
/// ExportFileResponse { optional gdata.Media blob = 1; optional
/// apiserving.MediaResponseInfo media_response_info = 2 }
class MediaResponseInfo {
  /// Data to copy from backend response to the next backend requests.
  ///
  /// Custom data is returned to Scotty in the agent_state field, which Scotty
  /// will then provide in subsequent upload notifications.
  core.String? customData;

  /// Specifies any transformation to be applied to data before persisting it or
  /// retrieving from storage.
  ///
  /// E.g., encryption options for blobstore2. This should be of the form
  /// uploader_service.DataStorageTransform.
  core.String? dataStorageTransform;
  core.List<core.int> get dataStorageTransformAsBytes =>
      convert.base64.decode(dataStorageTransform!);

  set dataStorageTransformAsBytes(core.List<core.int> bytes_) {
    dataStorageTransform =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the Scotty Drop Target to use for uploads.
  ///
  /// If present in a media response, Scotty does not upload to a standard drop
  /// zone. Instead, Scotty saves the upload directly to the location specified
  /// in this drop target. Unlike drop zones, the drop target is the final
  /// storage location for an upload. So, the agent does not need to clone the
  /// blob at the end of the upload. The agent is responsible for garbage
  /// collecting any orphaned blobs that may occur due to aborted uploads. For
  /// more information, see the drop target design doc here:
  /// http://goto/ScottyDropTarget This field will be preferred to
  /// dynamicDropzone. If provided, the identified field in the response must be
  /// of the type uploader.agent.DropTarget.
  core.String? dynamicDropTarget;
  core.List<core.int> get dynamicDropTargetAsBytes =>
      convert.base64.decode(dynamicDropTarget!);

  set dynamicDropTargetAsBytes(core.List<core.int> bytes_) {
    dynamicDropTarget =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the Scotty dropzone to use for uploads.
  core.String? dynamicDropzone;

  /// Request class to use for all Blobstore operations for this request.
  /// Possible string values are:
  /// - "UNKNOWN_REQUEST_CLASS" : Unpopulated request_class in log files will be
  /// taken as 0 in dremel query. GoogleSQL will try to cast it to enum by
  /// default. An unused 0 value is added to avoid GoogleSQL casting error.
  /// Please refer to b/69677280.
  /// - "LATENCY_SENSITIVE" : A latency-sensitive request.
  /// - "PRODUCTION_BATCH" : A request generated by a batch process.
  /// - "BEST_EFFORT" : A best-effort request.
  core.String? requestClass;

  /// Requester ID passed along to be recorded in the Scotty logs
  core.String? scottyAgentUserId;

  /// Customer-specific data to be recorded in the Scotty logs type is
  /// logs_proto_scotty.CustomerLog
  core.String? scottyCustomerLog;
  core.List<core.int> get scottyCustomerLogAsBytes =>
      convert.base64.decode(scottyCustomerLog!);

  set scottyCustomerLogAsBytes(core.List<core.int> bytes_) {
    scottyCustomerLog =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the TrafficClass that Scotty should use for any RPCs to fetch
  /// the response bytes.
  ///
  /// Will override the traffic class GTOS of the incoming http request. This is
  /// a temporary field to facilitate whitelisting and experimentation by the
  /// bigstore agent only. For instance, this does not apply to RTMP reads.
  /// WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.
  /// Possible string values are:
  /// - "BE1" : Application-selectable traffic classes Best effort
  /// - "AF1" : Assured forwarding priority 1
  /// - "AF2" : Assured forwarding priority 2
  /// - "AF3" : Assured forwarding priority 3
  /// - "AF4" : Assured forwarding priority 4
  /// - "NC1" : Network control
  /// - "NC0" : Network control
  /// - "BE0" : Best effort at high packet loss
  /// - "LLQ" : Low-latency queue (LLQ) best effort (go/llq)
  /// - "LLQ1" : LLQ best effort (go/llq2)
  /// - "LLQ2" : LLQ assured forwarding priority 2 (go/llq2)
  core.String? trafficClassField;

  /// Tells Scotty to verify hashes on the agent's behalf by parsing out the
  /// X-Goog-Hash header.
  core.bool? verifyHashFromHeader;

  MediaResponseInfo({
    this.customData,
    this.dataStorageTransform,
    this.dynamicDropTarget,
    this.dynamicDropzone,
    this.requestClass,
    this.scottyAgentUserId,
    this.scottyCustomerLog,
    this.trafficClassField,
    this.verifyHashFromHeader,
  });

  MediaResponseInfo.fromJson(core.Map json_)
      : this(
          customData: json_['customData'] as core.String?,
          dataStorageTransform: json_['dataStorageTransform'] as core.String?,
          dynamicDropTarget: json_['dynamicDropTarget'] as core.String?,
          dynamicDropzone: json_['dynamicDropzone'] as core.String?,
          requestClass: json_['requestClass'] as core.String?,
          scottyAgentUserId: json_['scottyAgentUserId'] as core.String?,
          scottyCustomerLog: json_['scottyCustomerLog'] as core.String?,
          trafficClassField: json_['trafficClassField'] as core.String?,
          verifyHashFromHeader: json_['verifyHashFromHeader'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customData != null) 'customData': customData!,
        if (dataStorageTransform != null)
          'dataStorageTransform': dataStorageTransform!,
        if (dynamicDropTarget != null) 'dynamicDropTarget': dynamicDropTarget!,
        if (dynamicDropzone != null) 'dynamicDropzone': dynamicDropzone!,
        if (requestClass != null) 'requestClass': requestClass!,
        if (scottyAgentUserId != null) 'scottyAgentUserId': scottyAgentUserId!,
        if (scottyCustomerLog != null) 'scottyCustomerLog': scottyCustomerLog!,
        if (trafficClassField != null) 'trafficClassField': trafficClassField!,
        if (verifyHashFromHeader != null)
          'verifyHashFromHeader': verifyHashFromHeader!,
      };
}

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
                  json_['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          offset: json_.containsKey('offset')
              ? OffsetPosition.fromJson(
                  json_['offset'] as core.Map<core.String, core.dynamic>)
              : null,
          positionType: json_['positionType'] as core.String?,
          showAddressBar: json_['showAddressBar'] as core.bool?,
          showMenuBar: json_['showMenuBar'] as core.bool?,
          showScrollBar: json_['showScrollBar'] as core.bool?,
          showStatusBar: json_['showStatusBar'] as core.bool?,
          showToolBar: json_['showToolBar'] as core.bool?,
          title: json_['title'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (offset != null) 'offset': offset!,
        if (positionType != null) 'positionType': positionType!,
        if (showAddressBar != null) 'showAddressBar': showAddressBar!,
        if (showMenuBar != null) 'showMenuBar': showMenuBar!,
        if (showScrollBar != null) 'showScrollBar': showScrollBar!,
        if (showStatusBar != null) 'showStatusBar': showStatusBar!,
        if (showToolBar != null) 'showToolBar': showToolBar!,
        if (title != null) 'title': title!,
      };
}

/// Represents the dimensions of ads, placements, creatives, or creative assets.
typedef Size = $Size;
