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

/// Drive Labels API - v2
///
/// An API for managing Drive Labels
///
/// For more information, see <https://developers.google.com/drive/labels>
///
/// Create an instance of [DriveLabelsApi] to access these resources:
///
/// - [LabelsResource]
library drivelabels.v2;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// An API for managing Drive Labels
class DriveLabelsApi {
  final commons.ApiRequester _requester;

  LabelsResource get labels => LabelsResource(_requester);

  DriveLabelsApi(http.Client client,
      {core.String rootUrl = 'https://drivelabels.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LabelsResource {
  final commons.ApiRequester _requester;

  LabelsResource(commons.ApiRequester client) : _requester = client;

  /// Get a Label by its resource name.
  ///
  /// Resource name may be any of: * `labels/{id}` - See to `labels/{id}@latest`
  /// * `labels/{id}@latest` - Gets the latest revision of the Label. *
  /// `labels/{id}@published` - Gets the current published revision of the
  /// Label. * `labels/{id}@{revision_id}` - Gets the Label at the specified
  /// revision ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label resource name. May be any of: * `labels/{id}`
  /// (equivalent to labels/{id}@latest) * `labels/{id}@latest` *
  /// `labels/{id}@published` * `labels/{id}@{revision_id}`
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [languageCode] - The BCP-47 language code to use for evaluating localized
  /// Field labels. When not specified, values in the default configured
  /// language will be used.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [view] - When specified, only certain Fields belonging to the indicated
  /// view will be returned.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2Label> get(
    core.String name, {
    core.String? languageCode,
    core.bool? useAdminAccess,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// --------------------------------------------------------------------------
  /// ## Label APIs
  /// --------------------------------------------------------------- List
  /// Labels.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - The BCP-47 language code to use for evaluating localized
  /// field labels. When not specified, values in the default configured
  /// language will be used.
  ///
  /// [minimumRole] - Specifies the level of access the user must have on the
  /// returned Labels. The minimum role a user must have on a label. Defaults to
  /// `READER`.
  /// Possible string values are:
  /// - "LABEL_ROLE_UNSPECIFIED" : Unknown role.
  /// - "READER" : A reader can read the Label and associated metadata applied
  /// to Drive items.
  /// - "APPLIER" : An applier can write associated metadata on Drive items in
  /// which they also have write access to. Implies `READER`.
  /// - "ORGANIZER" : An organizer is allowed to pin this label in shared drives
  /// they manage and add new appliers to the label.
  /// - "EDITOR" : Editors may make any updates including deleting the Label
  /// which will also delete associated Drive item metadata. Implies `APPLIER`.
  ///
  /// [pageSize] - Maximum number of Labels to return per page. Default: 50.
  /// Max: 200.
  ///
  /// [pageToken] - The token of the page to return.
  ///
  /// [publishedOnly] - Whether to include only published labels in the results.
  /// * When `true`, only the current published label revisions will be
  /// returned. Disabled labels will be included. Returned Label resource names
  /// will reference the published revision (`labels/{id}/{revision_id}`). *
  /// When `false`, the current label revisions will be returned, which may not
  /// by published. Returned Label resource names will not reference a specific
  /// revision (`labels/{id}`).
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. This will return all Labels within the customer.
  ///
  /// [view] - When specified, only certain fields belonging to the indicated
  /// view will be returned.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2ListLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2ListLabelsResponse> list({
    core.String? languageCode,
    core.String? minimumRole,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? publishedOnly,
    core.bool? useAdminAccess,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (minimumRole != null) 'minimumRole': [minimumRole],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (publishedOnly != null) 'publishedOnly': ['${publishedOnly}'],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/labels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAppsDriveLabelsV2ListLabelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// The color derived from BadgeConfig and coerced to the nearest supported
/// color.
class GoogleAppsDriveLabelsV2BadgeColors {
  /// Badge background which pairs with the foreground
  ///
  /// Output only.
  GoogleTypeColor? backgroundColor;

  /// Badge foreground which pairs with the background
  ///
  /// Output only.
  GoogleTypeColor? foregroundColor;

  /// Color that can be used for text without a background
  ///
  /// Output only.
  GoogleTypeColor? soloColor;

  GoogleAppsDriveLabelsV2BadgeColors({
    this.backgroundColor,
    this.foregroundColor,
    this.soloColor,
  });

  GoogleAppsDriveLabelsV2BadgeColors.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(_json['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          foregroundColor: _json.containsKey('foregroundColor')
              ? GoogleTypeColor.fromJson(_json['foregroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          soloColor: _json.containsKey('soloColor')
              ? GoogleTypeColor.fromJson(
                  _json['soloColor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (foregroundColor != null) 'foregroundColor': foregroundColor!,
        if (soloColor != null) 'soloColor': soloColor!,
      };
}

/// Badge status of the label.
class GoogleAppsDriveLabelsV2BadgeConfig {
  /// The color of the badge.
  ///
  /// When not specified, no badge will be rendered. This color will be coerced
  /// into the closest recommended supported color.
  GoogleTypeColor? color;

  /// Override the default global priority of this badge.
  ///
  /// When set to 0, the default priority heuristic will be used.
  core.String? priorityOverride;

  GoogleAppsDriveLabelsV2BadgeConfig({
    this.color,
    this.priorityOverride,
  });

  GoogleAppsDriveLabelsV2BadgeConfig.fromJson(core.Map _json)
      : this(
          color: _json.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          priorityOverride: _json.containsKey('priorityOverride')
              ? _json['priorityOverride'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (priorityOverride != null) 'priorityOverride': priorityOverride!,
      };
}

/// Defines a field which has a display name, data type, and other configuration
/// options.
///
/// This field defines the kind of metadata that may be set on a Drive item.
class GoogleAppsDriveLabelsV2Field {
  /// The capabilities this user has on this Field and its value when the Label
  /// is applied on Drive items.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldAppliedCapabilities? appliedCapabilities;

  /// The time this field was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? creator;

  /// Date field options.
  GoogleAppsDriveLabelsV2FieldDateOptions? dateOptions;

  /// The time this field was disabled.
  ///
  /// This value has no meaning when the field is not disabled.
  ///
  /// Output only.
  core.String? disableTime;

  /// The user who disabled this field.
  ///
  /// This value has no meaning when the field is not disabled.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? disabler;

  /// UI Display hints for rendering a Field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldDisplayHints? displayHints;

  /// The key of a field, unique within a Label or Library.
  ///
  /// This value is autogenerated, and will match the form \`(\[a-zA-Z0-9_\])+
  ///
  /// Output only.
  core.String? id;

  /// Integer field options.
  GoogleAppsDriveLabelsV2FieldIntegerOptions? integerOptions;

  /// The lifecycle of this Field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2Lifecycle? lifecycle;

  /// The LockStatus of this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LockStatus? lockStatus;

  /// The basic properties of the field.
  GoogleAppsDriveLabelsV2FieldProperties? properties;

  /// The user who published this field.
  ///
  /// This value has no meaning when the field is not published.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? publisher;

  /// The key to use when constructing Drive search queries to find files based
  /// on values defined for this Field on files.
  ///
  /// For example: "`{query_key}` \> 2001-01-01"
  ///
  /// Output only.
  core.String? queryKey;

  /// The capabilities this user has when editing this Field
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSchemaCapabilities? schemaCapabilities;

  /// Selection field options.
  GoogleAppsDriveLabelsV2FieldSelectionOptions? selectionOptions;

  /// Text field options.
  GoogleAppsDriveLabelsV2FieldTextOptions? textOptions;

  /// The time this field was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user who modified this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? updater;

  /// User field options.
  GoogleAppsDriveLabelsV2FieldUserOptions? userOptions;

  GoogleAppsDriveLabelsV2Field({
    this.appliedCapabilities,
    this.createTime,
    this.creator,
    this.dateOptions,
    this.disableTime,
    this.disabler,
    this.displayHints,
    this.id,
    this.integerOptions,
    this.lifecycle,
    this.lockStatus,
    this.properties,
    this.publisher,
    this.queryKey,
    this.schemaCapabilities,
    this.selectionOptions,
    this.textOptions,
    this.updateTime,
    this.updater,
    this.userOptions,
  });

  GoogleAppsDriveLabelsV2Field.fromJson(core.Map _json)
      : this(
          appliedCapabilities: _json.containsKey('appliedCapabilities')
              ? GoogleAppsDriveLabelsV2FieldAppliedCapabilities.fromJson(
                  _json['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          dateOptions: _json.containsKey('dateOptions')
              ? GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(
                  _json['dateOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          disableTime: _json.containsKey('disableTime')
              ? _json['disableTime'] as core.String
              : null,
          disabler: _json.containsKey('disabler')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['disabler'] as core.Map<core.String, core.dynamic>)
              : null,
          displayHints: _json.containsKey('displayHints')
              ? GoogleAppsDriveLabelsV2FieldDisplayHints.fromJson(
                  _json['displayHints'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          integerOptions: _json.containsKey('integerOptions')
              ? GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(
                  _json['integerOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lifecycle: _json.containsKey('lifecycle')
              ? GoogleAppsDriveLabelsV2Lifecycle.fromJson(
                  _json['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          lockStatus: _json.containsKey('lockStatus')
              ? GoogleAppsDriveLabelsV2LockStatus.fromJson(
                  _json['lockStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? GoogleAppsDriveLabelsV2FieldProperties.fromJson(
                  _json['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          publisher: _json.containsKey('publisher')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          queryKey: _json.containsKey('queryKey')
              ? _json['queryKey'] as core.String
              : null,
          schemaCapabilities: _json.containsKey('schemaCapabilities')
              ? GoogleAppsDriveLabelsV2FieldSchemaCapabilities.fromJson(
                  _json['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          selectionOptions: _json.containsKey('selectionOptions')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(
                  _json['selectionOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textOptions: _json.containsKey('textOptions')
              ? GoogleAppsDriveLabelsV2FieldTextOptions.fromJson(
                  _json['textOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          updater: _json.containsKey('updater')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['updater'] as core.Map<core.String, core.dynamic>)
              : null,
          userOptions: _json.containsKey('userOptions')
              ? GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(
                  _json['userOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appliedCapabilities != null)
          'appliedCapabilities': appliedCapabilities!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (dateOptions != null) 'dateOptions': dateOptions!,
        if (disableTime != null) 'disableTime': disableTime!,
        if (disabler != null) 'disabler': disabler!,
        if (displayHints != null) 'displayHints': displayHints!,
        if (id != null) 'id': id!,
        if (integerOptions != null) 'integerOptions': integerOptions!,
        if (lifecycle != null) 'lifecycle': lifecycle!,
        if (lockStatus != null) 'lockStatus': lockStatus!,
        if (properties != null) 'properties': properties!,
        if (publisher != null) 'publisher': publisher!,
        if (queryKey != null) 'queryKey': queryKey!,
        if (schemaCapabilities != null)
          'schemaCapabilities': schemaCapabilities!,
        if (selectionOptions != null) 'selectionOptions': selectionOptions!,
        if (textOptions != null) 'textOptions': textOptions!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (updater != null) 'updater': updater!,
        if (userOptions != null) 'userOptions': userOptions!,
      };
}

/// The capabilities related to this field on applied metadata.
class GoogleAppsDriveLabelsV2FieldAppliedCapabilities {
  /// Whether the user can read related applied metadata on items.
  core.bool? canRead;

  /// Whether the user can search for drive items referencing this field.
  core.bool? canSearch;

  /// Whether the user can set this field on drive items.
  core.bool? canWrite;

  GoogleAppsDriveLabelsV2FieldAppliedCapabilities({
    this.canRead,
    this.canSearch,
    this.canWrite,
  });

  GoogleAppsDriveLabelsV2FieldAppliedCapabilities.fromJson(core.Map _json)
      : this(
          canRead: _json.containsKey('canRead')
              ? _json['canRead'] as core.bool
              : null,
          canSearch: _json.containsKey('canSearch')
              ? _json['canSearch'] as core.bool
              : null,
          canWrite: _json.containsKey('canWrite')
              ? _json['canWrite'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canRead != null) 'canRead': canRead!,
        if (canSearch != null) 'canSearch': canSearch!,
        if (canWrite != null) 'canWrite': canWrite!,
      };
}

/// Options for the date field type.
class GoogleAppsDriveLabelsV2FieldDateOptions {
  /// ICU Date format.
  ///
  /// Output only.
  core.String? dateFormat;

  /// Localized date formatting option.
  ///
  /// Field values will be rendered in this format according to their locale.
  /// Possible string values are:
  /// - "DATE_FORMAT_UNSPECIFIED" : Date format unspecified.
  /// - "LONG_DATE" : Includes full month name. e.g. January 12, 1999 MMMM d, y
  /// - "SHORT_DATE" : Short, numeric, representation. e.g. 12/13/99 M/d/yy
  core.String? dateFormatType;

  /// Maximum valid value (year, month, day).
  ///
  /// Output only.
  GoogleTypeDate? maxValue;

  /// Minimum valid value (year, month, day).
  ///
  /// Output only.
  GoogleTypeDate? minValue;

  GoogleAppsDriveLabelsV2FieldDateOptions({
    this.dateFormat,
    this.dateFormatType,
    this.maxValue,
    this.minValue,
  });

  GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(core.Map _json)
      : this(
          dateFormat: _json.containsKey('dateFormat')
              ? _json['dateFormat'] as core.String
              : null,
          dateFormatType: _json.containsKey('dateFormatType')
              ? _json['dateFormatType'] as core.String
              : null,
          maxValue: _json.containsKey('maxValue')
              ? GoogleTypeDate.fromJson(
                  _json['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: _json.containsKey('minValue')
              ? GoogleTypeDate.fromJson(
                  _json['minValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateFormat != null) 'dateFormat': dateFormat!,
        if (dateFormatType != null) 'dateFormatType': dateFormatType!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// UI Display hints for rendering a Field.
class GoogleAppsDriveLabelsV2FieldDisplayHints {
  /// Whether the field should be shown in the UI as disabled.
  core.bool? disabled;

  /// This Field should be hidden in the search menu.
  core.bool? hiddenInSearch;

  /// Whether the Field should be shown as required in the UI.
  core.bool? required;

  /// This Field should be shown when applying values to a Drive item.
  core.bool? shownInApply;

  GoogleAppsDriveLabelsV2FieldDisplayHints({
    this.disabled,
    this.hiddenInSearch,
    this.required,
    this.shownInApply,
  });

  GoogleAppsDriveLabelsV2FieldDisplayHints.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          hiddenInSearch: _json.containsKey('hiddenInSearch')
              ? _json['hiddenInSearch'] as core.bool
              : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
          shownInApply: _json.containsKey('shownInApply')
              ? _json['shownInApply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (hiddenInSearch != null) 'hiddenInSearch': hiddenInSearch!,
        if (required != null) 'required': required!,
        if (shownInApply != null) 'shownInApply': shownInApply!,
      };
}

/// Options for the Integer field type.
class GoogleAppsDriveLabelsV2FieldIntegerOptions {
  /// The maximum valid value for the integer field.
  ///
  /// Output only.
  core.String? maxValue;

  /// The minimum valid value for the integer field.
  ///
  /// Output only.
  core.String? minValue;

  GoogleAppsDriveLabelsV2FieldIntegerOptions({
    this.maxValue,
    this.minValue,
  });

  GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(core.Map _json)
      : this(
          maxValue: _json.containsKey('maxValue')
              ? _json['maxValue'] as core.String
              : null,
          minValue: _json.containsKey('minValue')
              ? _json['minValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// Options for a multi-valued variant of an associated field type.
class GoogleAppsDriveLabelsV2FieldListOptions {
  /// Maximum number of entries permitted.
  core.int? maxEntries;

  GoogleAppsDriveLabelsV2FieldListOptions({
    this.maxEntries,
  });

  GoogleAppsDriveLabelsV2FieldListOptions.fromJson(core.Map _json)
      : this(
          maxEntries: _json.containsKey('maxEntries')
              ? _json['maxEntries'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxEntries != null) 'maxEntries': maxEntries!,
      };
}

/// The basic properties of the field.
class GoogleAppsDriveLabelsV2FieldProperties {
  /// The display text to show in the UI identifying this field.
  ///
  /// Required.
  core.String? displayName;

  /// Input only.
  ///
  /// Insert or move this Field to be ordered before the indicated Field. If
  /// empty, the Field will be placed at the end of the list.
  core.String? insertBeforeField;

  /// Whether the field should be marked as required.
  core.bool? required;

  GoogleAppsDriveLabelsV2FieldProperties({
    this.displayName,
    this.insertBeforeField,
    this.required,
  });

  GoogleAppsDriveLabelsV2FieldProperties.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          insertBeforeField: _json.containsKey('insertBeforeField')
              ? _json['insertBeforeField'] as core.String
              : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (insertBeforeField != null) 'insertBeforeField': insertBeforeField!,
        if (required != null) 'required': required!,
      };
}

/// The capabilities related to this Field when editing the Field.
class GoogleAppsDriveLabelsV2FieldSchemaCapabilities {
  /// Whether the user can delete this Field.
  ///
  /// The user must have permissions and the Field must be deprecated.
  core.bool? canDelete;

  /// Whether the user can disable this Field.
  ///
  /// The user must have permissions and this Field must not already be
  /// disabled.
  core.bool? canDisable;

  /// Whether the user can enable this Field.
  ///
  /// The user must have permissions and this Field must be disabled.
  core.bool? canEnable;

  /// Whether the user can change this field.
  core.bool? canUpdate;

  GoogleAppsDriveLabelsV2FieldSchemaCapabilities({
    this.canDelete,
    this.canDisable,
    this.canEnable,
    this.canUpdate,
  });

  GoogleAppsDriveLabelsV2FieldSchemaCapabilities.fromJson(core.Map _json)
      : this(
          canDelete: _json.containsKey('canDelete')
              ? _json['canDelete'] as core.bool
              : null,
          canDisable: _json.containsKey('canDisable')
              ? _json['canDisable'] as core.bool
              : null,
          canEnable: _json.containsKey('canEnable')
              ? _json['canEnable'] as core.bool
              : null,
          canUpdate: _json.containsKey('canUpdate')
              ? _json['canUpdate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canDelete != null) 'canDelete': canDelete!,
        if (canDisable != null) 'canDisable': canDisable!,
        if (canEnable != null) 'canEnable': canEnable!,
        if (canUpdate != null) 'canUpdate': canUpdate!,
      };
}

/// Options for the selection field type.
class GoogleAppsDriveLabelsV2FieldSelectionOptions {
  /// The options available for this selection field.
  ///
  /// The list order is consistent, and modified with `insert_before_choice`.
  core.List<GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice>? choices;

  /// When specified, indicates that this field support a list of values.
  ///
  /// Once the field is published, this cannot be changed.
  GoogleAppsDriveLabelsV2FieldListOptions? listOptions;

  GoogleAppsDriveLabelsV2FieldSelectionOptions({
    this.choices,
    this.listOptions,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(core.Map _json)
      : this(
          choices: _json.containsKey('choices')
              ? (_json['choices'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          listOptions: _json.containsKey('listOptions')
              ? GoogleAppsDriveLabelsV2FieldListOptions.fromJson(
                  _json['listOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (choices != null) 'choices': choices!,
        if (listOptions != null) 'listOptions': listOptions!,
      };
}

/// Selection field Choice.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice {
  /// The capabilities related to this Choice on applied metadata.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities?
      appliedCapabilities;

  /// The time this Choice was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this Choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? creator;

  /// The time this Choice was disabled.
  ///
  /// This value has no meaning when the Choice is not disabled.
  ///
  /// Output only.
  core.String? disableTime;

  /// The user who disabled this Choice.
  ///
  /// This value has no meaning when the option is not disabled.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? disabler;

  /// UI Display hints for rendering a Choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints? displayHints;

  /// The unique value of the Choice.
  ///
  /// This ID will be autogenerated, and will match the form `([a-zA-Z0-9_])+`.
  core.String? id;

  /// Lifecycle of the Choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2Lifecycle? lifecycle;

  /// The LockStatus of this Choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LockStatus? lockStatus;

  /// Basic properties of the Choice.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties? properties;

  /// The time this Choice was published.
  ///
  /// This value has no meaning when the Choice is not published.
  ///
  /// Output only.
  core.String? publishTime;

  /// The user who published this Choice.
  ///
  /// This value has no meaning when the Choice is not published.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? publisher;

  /// The capabilities related to this option when editing the option.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities?
      schemaCapabilities;

  /// The time this Choice was updated last.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user who updated this Choice last.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? updater;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice({
    this.appliedCapabilities,
    this.createTime,
    this.creator,
    this.disableTime,
    this.disabler,
    this.displayHints,
    this.id,
    this.lifecycle,
    this.lockStatus,
    this.properties,
    this.publishTime,
    this.publisher,
    this.schemaCapabilities,
    this.updateTime,
    this.updater,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.fromJson(core.Map _json)
      : this(
          appliedCapabilities: _json.containsKey('appliedCapabilities')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
                  .fromJson(_json['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          disableTime: _json.containsKey('disableTime')
              ? _json['disableTime'] as core.String
              : null,
          disabler: _json.containsKey('disabler')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['disabler'] as core.Map<core.String, core.dynamic>)
              : null,
          displayHints: _json.containsKey('displayHints')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
                  .fromJson(_json['displayHints']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          lifecycle: _json.containsKey('lifecycle')
              ? GoogleAppsDriveLabelsV2Lifecycle.fromJson(
                  _json['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          lockStatus: _json.containsKey('lockStatus')
              ? GoogleAppsDriveLabelsV2LockStatus.fromJson(
                  _json['lockStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
                  .fromJson(_json['properties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishTime: _json.containsKey('publishTime')
              ? _json['publishTime'] as core.String
              : null,
          publisher: _json.containsKey('publisher')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          schemaCapabilities: _json.containsKey('schemaCapabilities')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
                  .fromJson(_json['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          updater: _json.containsKey('updater')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['updater'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appliedCapabilities != null)
          'appliedCapabilities': appliedCapabilities!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (disableTime != null) 'disableTime': disableTime!,
        if (disabler != null) 'disabler': disabler!,
        if (displayHints != null) 'displayHints': displayHints!,
        if (id != null) 'id': id!,
        if (lifecycle != null) 'lifecycle': lifecycle!,
        if (lockStatus != null) 'lockStatus': lockStatus!,
        if (properties != null) 'properties': properties!,
        if (publishTime != null) 'publishTime': publishTime!,
        if (publisher != null) 'publisher': publisher!,
        if (schemaCapabilities != null)
          'schemaCapabilities': schemaCapabilities!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (updater != null) 'updater': updater!,
      };
}

/// The capabilities related to this Choice on applied metadata.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities {
  /// Whether the user can read related applied metadata on items.
  core.bool? canRead;

  /// Whether the user can use this Choice in search queries.
  core.bool? canSearch;

  /// Whether the user can select this Choice on an item.
  core.bool? canSelect;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities({
    this.canRead,
    this.canSearch,
    this.canSelect,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities.fromJson(
      core.Map _json)
      : this(
          canRead: _json.containsKey('canRead')
              ? _json['canRead'] as core.bool
              : null,
          canSearch: _json.containsKey('canSearch')
              ? _json['canSearch'] as core.bool
              : null,
          canSelect: _json.containsKey('canSelect')
              ? _json['canSelect'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canRead != null) 'canRead': canRead!,
        if (canSearch != null) 'canSearch': canSearch!,
        if (canSelect != null) 'canSelect': canSelect!,
      };
}

/// UI Display hints for rendering a Option.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints {
  /// The colors to use for the badge.
  ///
  /// Coerced to Google Material colors based on the chosen
  /// `properties.badge_config.color`.
  GoogleAppsDriveLabelsV2BadgeColors? badgeColors;

  /// The priority of this badge, used to compare and sort between multiple
  /// badges.
  ///
  /// A lower number means that the badge should be shown first. When a badging
  /// configuration is not present, this will be 0. Otherwise, this will be set
  /// to `BadgeConfig.priority_override` or the default heuristic which prefers
  /// creation date of the Label, and field and option priority.
  core.String? badgePriority;

  /// The dark-mode color to use for the badge.
  ///
  /// Coerced to Google Material colors based on the chosen
  /// `properties.badge_config.color`.
  GoogleAppsDriveLabelsV2BadgeColors? darkBadgeColors;

  /// Whether the option should be shown in the UI as disabled.
  core.bool? disabled;

  /// This option should be hidden in the search menu.
  core.bool? hiddenInSearch;

  /// This option should be shown in the menu when applying values to a Drive
  /// item.
  core.bool? shownInApply;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints({
    this.badgeColors,
    this.badgePriority,
    this.darkBadgeColors,
    this.disabled,
    this.hiddenInSearch,
    this.shownInApply,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints.fromJson(
      core.Map _json)
      : this(
          badgeColors: _json.containsKey('badgeColors')
              ? GoogleAppsDriveLabelsV2BadgeColors.fromJson(
                  _json['badgeColors'] as core.Map<core.String, core.dynamic>)
              : null,
          badgePriority: _json.containsKey('badgePriority')
              ? _json['badgePriority'] as core.String
              : null,
          darkBadgeColors: _json.containsKey('darkBadgeColors')
              ? GoogleAppsDriveLabelsV2BadgeColors.fromJson(
                  _json['darkBadgeColors']
                      as core.Map<core.String, core.dynamic>)
              : null,
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          hiddenInSearch: _json.containsKey('hiddenInSearch')
              ? _json['hiddenInSearch'] as core.bool
              : null,
          shownInApply: _json.containsKey('shownInApply')
              ? _json['shownInApply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (badgeColors != null) 'badgeColors': badgeColors!,
        if (badgePriority != null) 'badgePriority': badgePriority!,
        if (darkBadgeColors != null) 'darkBadgeColors': darkBadgeColors!,
        if (disabled != null) 'disabled': disabled!,
        if (hiddenInSearch != null) 'hiddenInSearch': hiddenInSearch!,
        if (shownInApply != null) 'shownInApply': shownInApply!,
      };
}

/// Basic properties of the Choice.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties {
  /// The badge configuration for this Choice.
  ///
  /// When set, the Label that owns this Choice will be considered a "badged
  /// label".
  GoogleAppsDriveLabelsV2BadgeConfig? badgeConfig;

  /// The description of this Label.
  core.String? description;

  /// The display text to show in the UI identifying this field.
  ///
  /// Required.
  core.String? displayName;

  /// Input only.
  ///
  /// Insert or move this Choice to be ordered before the indicated Choice. If
  /// empty, the Choice will be placed at the end of the list.
  core.String? insertBeforeChoice;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties({
    this.badgeConfig,
    this.description,
    this.displayName,
    this.insertBeforeChoice,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties.fromJson(
      core.Map _json)
      : this(
          badgeConfig: _json.containsKey('badgeConfig')
              ? GoogleAppsDriveLabelsV2BadgeConfig.fromJson(
                  _json['badgeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          insertBeforeChoice: _json.containsKey('insertBeforeChoice')
              ? _json['insertBeforeChoice'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (badgeConfig != null) 'badgeConfig': badgeConfig!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (insertBeforeChoice != null)
          'insertBeforeChoice': insertBeforeChoice!,
      };
}

/// The capabilities related to this Choice when editing the Choice.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities {
  /// Whether the user can delete this Choice.
  core.bool? canDelete;

  /// Whether the user can disable this Chioce.
  core.bool? canDisable;

  /// Whether the user can enable this Choice.
  core.bool? canEnable;

  /// Whether the user can update this Choice.
  core.bool? canUpdate;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities({
    this.canDelete,
    this.canDisable,
    this.canEnable,
    this.canUpdate,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities.fromJson(
      core.Map _json)
      : this(
          canDelete: _json.containsKey('canDelete')
              ? _json['canDelete'] as core.bool
              : null,
          canDisable: _json.containsKey('canDisable')
              ? _json['canDisable'] as core.bool
              : null,
          canEnable: _json.containsKey('canEnable')
              ? _json['canEnable'] as core.bool
              : null,
          canUpdate: _json.containsKey('canUpdate')
              ? _json['canUpdate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canDelete != null) 'canDelete': canDelete!,
        if (canDisable != null) 'canDisable': canDisable!,
        if (canEnable != null) 'canEnable': canEnable!,
        if (canUpdate != null) 'canUpdate': canUpdate!,
      };
}

/// Options for the Text field type.
class GoogleAppsDriveLabelsV2FieldTextOptions {
  /// The maximum valid length of values for the text field.
  ///
  /// Output only.
  core.int? maxLength;

  /// The minimum valid length of values for the text field.
  ///
  /// Output only.
  core.int? minLength;

  GoogleAppsDriveLabelsV2FieldTextOptions({
    this.maxLength,
    this.minLength,
  });

  GoogleAppsDriveLabelsV2FieldTextOptions.fromJson(core.Map _json)
      : this(
          maxLength: _json.containsKey('maxLength')
              ? _json['maxLength'] as core.int
              : null,
          minLength: _json.containsKey('minLength')
              ? _json['minLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxLength != null) 'maxLength': maxLength!,
        if (minLength != null) 'minLength': minLength!,
      };
}

/// Options for the user field type.
class GoogleAppsDriveLabelsV2FieldUserOptions {
  /// When specified, indicates that this field support a list of values.
  ///
  /// Once the field is published, this cannot be changed.
  GoogleAppsDriveLabelsV2FieldListOptions? listOptions;

  GoogleAppsDriveLabelsV2FieldUserOptions({
    this.listOptions,
  });

  GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(core.Map _json)
      : this(
          listOptions: _json.containsKey('listOptions')
              ? GoogleAppsDriveLabelsV2FieldListOptions.fromJson(
                  _json['listOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listOptions != null) 'listOptions': listOptions!,
      };
}

/// A Label defines a taxonomy which may be applied to a Drive items in order to
/// organize and search across Items.
///
/// Labels may be simple strings, or may contain Fields that describe additional
/// metadata which can be further used to organize and search Drive items.
class GoogleAppsDriveLabelsV2Label {
  /// The capabilities related to this label on applied metadata.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelAppliedCapabilities? appliedCapabilities;

  /// Behavior of this Label when its applied to Drive items.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy? appliedLabelPolicy;

  /// The time this label was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? creator;

  /// The time this label was disabled.
  ///
  /// This value has no meaning when the label is not disabled.
  ///
  /// Output only.
  core.String? disableTime;

  /// The user who disabled this label.
  ///
  /// This value has no meaning when the label is not disabled.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? disabler;

  /// UI Display hints for rendering the Label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelDisplayHints? displayHints;

  /// List of Fields in descending priority order.
  core.List<GoogleAppsDriveLabelsV2Field>? fields;

  /// Globally unique identifier of this Label.
  ///
  /// ID makes up part of the Label `name`, but unlike `name`, ID is consistent
  /// between revisions. Matches the regex: `([a-zA-Z0-9])+`
  ///
  /// Output only.
  core.String? id;

  /// The type of this label.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LABEL_TYPE_UNSPECIFIED" : Unknown label type.
  /// - "SHARED" : Shared labels may be shared with users to apply to Drive
  /// items.
  /// - "ADMIN" : Admin owned label. Only creatable and editable by admins,
  /// supports some additional admin-only features.
  core.String? labelType;

  /// Custom URL to present to users to allow them to learn more about this
  /// label and how it should be used.
  core.String? learnMoreUri;

  /// The lifecycle state of the label including whether it's published,
  /// deprecated, and has draft changes.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2Lifecycle? lifecycle;

  /// The LockStatus of this label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LockStatus? lockStatus;

  /// Resource name of the Label.
  ///
  /// Will be in the form of either: `labels/{id}` or
  /// `labels/{id}@{revision_id}` depending on the request. See `id` and
  /// `revision_id` below.
  ///
  /// Output only.
  core.String? name;

  /// The basic properties of the Label.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2LabelProperties? properties;

  /// The time this label was published.
  ///
  /// This value has no meaning when the label is not published.
  ///
  /// Output only.
  core.String? publishTime;

  /// The user who published this label.
  ///
  /// This value has no meaning when the label is not published.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? publisher;

  /// The time this label revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The user who created this label revision.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? revisionCreator;

  /// Revision ID of the Label.
  ///
  /// Revision ID may be part of the Label `name` depending on the request
  /// issued. A new revision is created whenever revisioned properties of a
  /// Label are changed. Matches the regex: `([a-zA-Z0-9])+`
  ///
  /// Output only.
  core.String? revisionId;

  /// The capabilities the user has on this Label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelSchemaCapabilities? schemaCapabilities;

  GoogleAppsDriveLabelsV2Label({
    this.appliedCapabilities,
    this.appliedLabelPolicy,
    this.createTime,
    this.creator,
    this.disableTime,
    this.disabler,
    this.displayHints,
    this.fields,
    this.id,
    this.labelType,
    this.learnMoreUri,
    this.lifecycle,
    this.lockStatus,
    this.name,
    this.properties,
    this.publishTime,
    this.publisher,
    this.revisionCreateTime,
    this.revisionCreator,
    this.revisionId,
    this.schemaCapabilities,
  });

  GoogleAppsDriveLabelsV2Label.fromJson(core.Map _json)
      : this(
          appliedCapabilities: _json.containsKey('appliedCapabilities')
              ? GoogleAppsDriveLabelsV2LabelAppliedCapabilities.fromJson(
                  _json['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          appliedLabelPolicy: _json.containsKey('appliedLabelPolicy')
              ? GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy.fromJson(
                  _json['appliedLabelPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          disableTime: _json.containsKey('disableTime')
              ? _json['disableTime'] as core.String
              : null,
          disabler: _json.containsKey('disabler')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['disabler'] as core.Map<core.String, core.dynamic>)
              : null,
          displayHints: _json.containsKey('displayHints')
              ? GoogleAppsDriveLabelsV2LabelDisplayHints.fromJson(
                  _json['displayHints'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => GoogleAppsDriveLabelsV2Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          labelType: _json.containsKey('labelType')
              ? _json['labelType'] as core.String
              : null,
          learnMoreUri: _json.containsKey('learnMoreUri')
              ? _json['learnMoreUri'] as core.String
              : null,
          lifecycle: _json.containsKey('lifecycle')
              ? GoogleAppsDriveLabelsV2Lifecycle.fromJson(
                  _json['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          lockStatus: _json.containsKey('lockStatus')
              ? GoogleAppsDriveLabelsV2LockStatus.fromJson(
                  _json['lockStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          properties: _json.containsKey('properties')
              ? GoogleAppsDriveLabelsV2LabelProperties.fromJson(
                  _json['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          publishTime: _json.containsKey('publishTime')
              ? _json['publishTime'] as core.String
              : null,
          publisher: _json.containsKey('publisher')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          revisionCreateTime: _json.containsKey('revisionCreateTime')
              ? _json['revisionCreateTime'] as core.String
              : null,
          revisionCreator: _json.containsKey('revisionCreator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  _json['revisionCreator']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
          schemaCapabilities: _json.containsKey('schemaCapabilities')
              ? GoogleAppsDriveLabelsV2LabelSchemaCapabilities.fromJson(
                  _json['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appliedCapabilities != null)
          'appliedCapabilities': appliedCapabilities!,
        if (appliedLabelPolicy != null)
          'appliedLabelPolicy': appliedLabelPolicy!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (disableTime != null) 'disableTime': disableTime!,
        if (disabler != null) 'disabler': disabler!,
        if (displayHints != null) 'displayHints': displayHints!,
        if (fields != null) 'fields': fields!,
        if (id != null) 'id': id!,
        if (labelType != null) 'labelType': labelType!,
        if (learnMoreUri != null) 'learnMoreUri': learnMoreUri!,
        if (lifecycle != null) 'lifecycle': lifecycle!,
        if (lockStatus != null) 'lockStatus': lockStatus!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
        if (publishTime != null) 'publishTime': publishTime!,
        if (publisher != null) 'publisher': publisher!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionCreator != null) 'revisionCreator': revisionCreator!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (schemaCapabilities != null)
          'schemaCapabilities': schemaCapabilities!,
      };
}

/// The capabilities a user has on this Label's applied metadata.
class GoogleAppsDriveLabelsV2LabelAppliedCapabilities {
  /// Whether the user can apply this Label to items.
  core.bool? canApply;

  /// Whether the user can read applied metadata related to this label.
  core.bool? canRead;

  /// Whether the user can remove this Label from items.
  core.bool? canRemove;

  GoogleAppsDriveLabelsV2LabelAppliedCapabilities({
    this.canApply,
    this.canRead,
    this.canRemove,
  });

  GoogleAppsDriveLabelsV2LabelAppliedCapabilities.fromJson(core.Map _json)
      : this(
          canApply: _json.containsKey('canApply')
              ? _json['canApply'] as core.bool
              : null,
          canRead: _json.containsKey('canRead')
              ? _json['canRead'] as core.bool
              : null,
          canRemove: _json.containsKey('canRemove')
              ? _json['canRemove'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canApply != null) 'canApply': canApply!,
        if (canRead != null) 'canRead': canRead!,
        if (canRemove != null) 'canRemove': canRemove!,
      };
}

/// Behavior of this Label when its applied to Drive items.
class GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy {
  /// Indicates how the applied Label, and Field values should be copied when a
  /// Drive item is copied.
  /// Possible string values are:
  /// - "COPY_MODE_UNSPECIFIED" : Copy mode unspecified.
  /// - "DO_NOT_COPY" : The applied Label and Field values will not be copied by
  /// default when the Drive item it is applied to is copied.
  /// - "ALWAYS_COPY" : The applied Label and Field values will always be copied
  /// when the Drive item it is applied to is copied. Only admins may use this
  /// mode.
  /// - "COPY_APPLIABLE" : The applied Label and Field values will be copied if
  /// and only if the label is appliable by the user making the copy.
  core.String? copyMode;

  GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy({
    this.copyMode,
  });

  GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy.fromJson(core.Map _json)
      : this(
          copyMode: _json.containsKey('copyMode')
              ? _json['copyMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copyMode != null) 'copyMode': copyMode!,
      };
}

/// UI Display hints for rendering the Label.
class GoogleAppsDriveLabelsV2LabelDisplayHints {
  /// Whether the Label should be shown in the UI as disabled.
  core.bool? disabled;

  /// This Label should be hidden in the search menu when searching for Drive
  /// items.
  core.bool? hiddenInSearch;

  /// Order to display label in a list
  core.String? priority;

  /// This Label should be shown in the apply menu.
  core.bool? shownInApply;

  GoogleAppsDriveLabelsV2LabelDisplayHints({
    this.disabled,
    this.hiddenInSearch,
    this.priority,
    this.shownInApply,
  });

  GoogleAppsDriveLabelsV2LabelDisplayHints.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          hiddenInSearch: _json.containsKey('hiddenInSearch')
              ? _json['hiddenInSearch'] as core.bool
              : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
          shownInApply: _json.containsKey('shownInApply')
              ? _json['shownInApply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (hiddenInSearch != null) 'hiddenInSearch': hiddenInSearch!,
        if (priority != null) 'priority': priority!,
        if (shownInApply != null) 'shownInApply': shownInApply!,
      };
}

/// Basic properties of the Label.
class GoogleAppsDriveLabelsV2LabelProperties {
  /// The description of this Label.
  core.String? description;

  /// Title of the Label.
  ///
  /// Required.
  core.String? title;

  GoogleAppsDriveLabelsV2LabelProperties({
    this.description,
    this.title,
  });

  GoogleAppsDriveLabelsV2LabelProperties.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

/// The capabilities related to this Label when editing the Label.
class GoogleAppsDriveLabelsV2LabelSchemaCapabilities {
  /// Whether the user can delete this Label.
  ///
  /// The user must have permission and the Label must be disabled.
  core.bool? canDelete;

  /// Whether the user can disable this Label.
  ///
  /// The user must have permission and this Label must not already be disabled.
  core.bool? canDisable;

  /// Whether the user can enable this Label.
  ///
  /// The user must have permission and this Label must be disabled.
  core.bool? canEnable;

  /// Whether the user can change this Label.
  core.bool? canUpdate;

  GoogleAppsDriveLabelsV2LabelSchemaCapabilities({
    this.canDelete,
    this.canDisable,
    this.canEnable,
    this.canUpdate,
  });

  GoogleAppsDriveLabelsV2LabelSchemaCapabilities.fromJson(core.Map _json)
      : this(
          canDelete: _json.containsKey('canDelete')
              ? _json['canDelete'] as core.bool
              : null,
          canDisable: _json.containsKey('canDisable')
              ? _json['canDisable'] as core.bool
              : null,
          canEnable: _json.containsKey('canEnable')
              ? _json['canEnable'] as core.bool
              : null,
          canUpdate: _json.containsKey('canUpdate')
              ? _json['canUpdate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canDelete != null) 'canDelete': canDelete!,
        if (canDisable != null) 'canDisable': canDisable!,
        if (canEnable != null) 'canEnable': canEnable!,
        if (canUpdate != null) 'canUpdate': canUpdate!,
      };
}

/// The lifecycle state of an object, e.g. Label, Field, or Choice.
///
/// The Lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT`
/// (starting state) * `UNPUBLISHED_DRAFT` -\> `PUBLISHED` * `UNPUBLISHED_DRAFT`
/// -\> (Deleted) * `PUBLISHED` -\> `DISABLED` * `DISABLED` -\> `PUBLISHED` *
/// `DISABLED` -\> (Deleted) The published and disabled states have some
/// distinct characteristics: * Published - Some kinds of changes may be made to
/// an object in this state, in which case `has_unpublished_changes` will be
/// true. Some kinds of changes are not permitted. Generally, any change that
/// would invalidate or cause new restrictions on existing metadata related to
/// the Label will be rejected. * Disabled - When disabled, the configured
/// `DisabledPolicy` will take effect.
class GoogleAppsDriveLabelsV2Lifecycle {
  /// The policy that governs how to show a disabled label, field, or selection
  /// choice.
  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy? disabledPolicy;

  /// Whether the object associated with this lifecycle has unpublished changes.
  ///
  /// Output only.
  core.bool? hasUnpublishedChanges;

  /// The state of the object associated with this lifecycle.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown State.
  /// - "UNPUBLISHED_DRAFT" : The initial state of an object. Once published,
  /// the object may never return to this state. Once an object is published,
  /// certain kinds of changes are no longer permitted.
  /// - "PUBLISHED" : The object has been published. The object may have
  /// unpublished draft changes as indicated by `has_unpublished_changes`.
  /// - "DISABLED" : The object has been published, and has since been disabled.
  /// The object may have unpublished draft changes as indicated by
  /// `has_unpublished_changes`.
  /// - "DELETED" : The object has been deleted
  core.String? state;

  GoogleAppsDriveLabelsV2Lifecycle({
    this.disabledPolicy,
    this.hasUnpublishedChanges,
    this.state,
  });

  GoogleAppsDriveLabelsV2Lifecycle.fromJson(core.Map _json)
      : this(
          disabledPolicy: _json.containsKey('disabledPolicy')
              ? GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
                  _json['disabledPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hasUnpublishedChanges: _json.containsKey('hasUnpublishedChanges')
              ? _json['hasUnpublishedChanges'] as core.bool
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabledPolicy != null) 'disabledPolicy': disabledPolicy!,
        if (hasUnpublishedChanges != null)
          'hasUnpublishedChanges': hasUnpublishedChanges!,
        if (state != null) 'state': state!,
      };
}

/// The policy that governs how to treat a disabled label, field, or selection
/// choice in different contexts.
class GoogleAppsDriveLabelsV2LifecycleDisabledPolicy {
  /// Whether to hide this disabled object in the search menu for Drive items.
  ///
  /// * When `false` the object will generally be shown in the UI as disabled
  /// (but still permit searching) when searching for Drive items. * When `true`
  /// the object will generally be hidden in the UI when searching for Drive
  /// items.
  core.bool? hideInSearch;

  /// Whether to show this disabled object in the apply menu on Drive items.
  ///
  /// * When `true` the object will generally be shown in the UI as disabled and
  /// is unselectable. * When `false` the object will generally be hidden in the
  /// UI.
  core.bool? showInApply;

  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy({
    this.hideInSearch,
    this.showInApply,
  });

  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(core.Map _json)
      : this(
          hideInSearch: _json.containsKey('hideInSearch')
              ? _json['hideInSearch'] as core.bool
              : null,
          showInApply: _json.containsKey('showInApply')
              ? _json['showInApply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hideInSearch != null) 'hideInSearch': hideInSearch!,
        if (showInApply != null) 'showInApply': showInApply!,
      };
}

/// Response for listing Labels.
class GoogleAppsDriveLabelsV2ListLabelsResponse {
  /// Labels.
  core.List<GoogleAppsDriveLabelsV2Label>? labels;

  /// The token of the next page in the response.
  core.String? nextPageToken;

  GoogleAppsDriveLabelsV2ListLabelsResponse({
    this.labels,
    this.nextPageToken,
  });

  GoogleAppsDriveLabelsV2ListLabelsResponse.fromJson(core.Map _json)
      : this(
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => GoogleAppsDriveLabelsV2Label.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Contains information about whether a label component should be considered
/// locked.
class GoogleAppsDriveLabelsV2LockStatus {
  /// Indicates whether this label component is the (direct) target of a
  /// LabelLock.
  ///
  /// A label component may be implicitly locked even if it is not the direct
  /// target of a LabelLock, in which case this field will be false.
  ///
  /// Output only.
  core.bool? locked;

  GoogleAppsDriveLabelsV2LockStatus({
    this.locked,
  });

  GoogleAppsDriveLabelsV2LockStatus.fromJson(core.Map _json)
      : this(
          locked:
              _json.containsKey('locked') ? _json['locked'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locked != null) 'locked': locked!,
      };
}

/// Information about a user.
class GoogleAppsDriveLabelsV2UserInfo {
  /// The identifier for this user who can be used with the People API to get
  /// more information.
  ///
  /// e.g. people/12345678
  core.String? person;

  GoogleAppsDriveLabelsV2UserInfo({
    this.person,
  });

  GoogleAppsDriveLabelsV2UserInfo.fromJson(core.Map _json)
      : this(
          person: _json.containsKey('person')
              ? _json['person'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
      };
}

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to/from color
/// representations in various languages over compactness. For example, the
/// fields of this representation can be trivially provided to the constructor
/// of `java.awt.Color` in Java; it can also be trivially provided to UIColor's
/// `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little
/// work, it can be easily formatted into a CSS `rgba()` string in JavaScript.
/// This reference page doesn't carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB
/// color space. When color equality needs to be decided, implementations,
/// unless documented otherwise, treat two colors as equal if all their red,
/// green, blue, and alpha values each differ by at most 1e-5. Example (Java):
/// import com.google.type.Color; // ... public static java.awt.Color
/// fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = \[protocolor red\];
/// float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef GoogleTypeColor = $Color;

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
