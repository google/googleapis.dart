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

/// Drive Labels API - v2beta
///
/// An API for managing Drive Labels
///
/// For more information, see
/// <https://developers.google.com/workspace/drive/labels>
///
/// Create an instance of [DriveLabelsApi] to access these resources:
///
/// - [LabelsResource]
///   - [LabelsLocksResource]
///   - [LabelsPermissionsResource]
///   - [LabelsRevisionsResource]
///     - [LabelsRevisionsLocksResource]
///     - [LabelsRevisionsPermissionsResource]
/// - [LimitsResource]
/// - [UsersResource]
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

/// An API for managing Drive Labels
class DriveLabelsApi {
  /// See, edit, create, and delete all Google Drive labels in your
  /// organization, and see your organization's label-related admin policies
  static const driveAdminLabelsScope =
      'https://www.googleapis.com/auth/drive.admin.labels';

  /// See all Google Drive labels and label-related admin policies in your
  /// organization
  static const driveAdminLabelsReadonlyScope =
      'https://www.googleapis.com/auth/drive.admin.labels.readonly';

  /// See, edit, create, and delete your Google Drive labels
  static const driveLabelsScope =
      'https://www.googleapis.com/auth/drive.labels';

  /// See your Google Drive labels
  static const driveLabelsReadonlyScope =
      'https://www.googleapis.com/auth/drive.labels.readonly';

  final commons.ApiRequester _requester;

  LabelsResource get labels => LabelsResource(_requester);
  LimitsResource get limits => LimitsResource(_requester);
  UsersResource get users => UsersResource(_requester);

  DriveLabelsApi(
    http.Client client, {
    core.String rootUrl = 'https://drivelabels.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class LabelsResource {
  final commons.ApiRequester _requester;

  LabelsLocksResource get locks => LabelsLocksResource(_requester);
  LabelsPermissionsResource get permissions =>
      LabelsPermissionsResource(_requester);
  LabelsRevisionsResource get revisions => LabelsRevisionsResource(_requester);

  LabelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Label.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - The BCP-47 language code to use for evaluating localized
  /// Field labels in response. When not specified, values in the default
  /// configured language will be used.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// privileges. The server will verify the user is an admin before allowing
  /// access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> create(
    GoogleAppsDriveLabelsV2betaLabel request, {
    core.String? languageCode,
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2beta/labels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Permanently deletes a Label and related metadata on Drive Items.
  ///
  /// Once deleted, the Label and related Drive item metadata will be deleted.
  /// Only draft Labels, and disabled Labels may be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label resource name.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [writeControl_requiredRevisionId] - The revision_id of the label that the
  /// write request will be applied to. If this is not the latest revision of
  /// the label, the request will not be processed and will return a 400 Bad
  /// Request error.
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
    core.bool? useAdminAccess,
    core.String? writeControl_requiredRevisionId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if (writeControl_requiredRevisionId != null)
        'writeControl.requiredRevisionId': [writeControl_requiredRevisionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single Label by applying a set of update requests resulting in a
  /// new draft revision.
  ///
  /// The batch update is all-or-nothing: If any of the update requests are
  /// invalid, no changes are applied. The resulting draft revision must be
  /// published before the changes may be used with Drive Items.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Label to update.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse> delta(
    GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':delta';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Disable a published Label.
  ///
  /// Disabling a Label will result in a new disabled published revision based
  /// on the current published revision. If there is a draft revision, a new
  /// disabled draft revision will be created based on the latest draft
  /// revision. Older draft revisions will be deleted. Once disabled, a label
  /// may be deleted with `DeleteLabel`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label resource name.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> disable(
    GoogleAppsDriveLabelsV2betaDisableLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enable a disabled Label and restore it to its published state.
  ///
  /// This will result in a new published revision based on the current disabled
  /// published revision. If there is an existing disabled draft revision, a new
  /// revision will be created based on that draft and will be enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label resource name.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> enable(
    GoogleAppsDriveLabelsV2betaEnableLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a label by its resource name.
  ///
  /// Resource name may be any of: * `labels/{id}` - See `labels/{id}@latest` *
  /// `labels/{id}@latest` - Gets the latest revision of the label. *
  /// `labels/{id}@published` - Gets the current published revision of the
  /// label. * `labels/{id}@{revision_id}` - Gets the label at the specified
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
  /// field labels. When not specified, values in the default configured
  /// language are used.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server verifies that the user is an admin for the label
  /// before allowing access.
  ///
  /// [view] - When specified, only certain fields belonging to the indicated
  /// view are returned.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> get(
    core.String name, {
    core.String? languageCode,
    core.bool? useAdminAccess,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List labels.
  ///
  /// Request parameters:
  ///
  /// [customer] - The customer to scope this list request to. For example:
  /// "customers/abcd1234". If unset, will return all labels within the current
  /// customer.
  ///
  /// [languageCode] - The BCP-47 language code to use for evaluating localized
  /// field labels. When not specified, values in the default configured
  /// language are used.
  ///
  /// [minimumRole] - Specifies the level of access the user must have on the
  /// returned Labels. The minimum role a user must have on a label. Defaults to
  /// `READER`.
  /// Possible string values are:
  /// - "LABEL_ROLE_UNSPECIFIED" : Unknown role.
  /// - "READER" : A reader can read the label and associated metadata applied
  /// to Drive items.
  /// - "APPLIER" : An applier can write associated metadata on Drive items in
  /// which they also have write access to. Implies `READER`.
  /// - "ORGANIZER" : An organizer can pin this label in shared drives they
  /// manage and add new appliers to the label.
  /// - "EDITOR" : Editors can make any update including deleting the label
  /// which also deletes the associated Drive item metadata. Implies `APPLIER`.
  ///
  /// [pageSize] - Maximum number of labels to return per page. Default: 50.
  /// Max: 200.
  ///
  /// [pageToken] - The token of the page to return.
  ///
  /// [publishedOnly] - Whether to include only published labels in the results.
  /// * When `true`, only the current published label revisions are returned.
  /// Disabled labels are included. Returned label resource names reference the
  /// published revision (`labels/{id}/{revision_id}`). * When `false`, the
  /// current label revisions are returned, which might not be published.
  /// Returned label resource names don't reference a specific revision
  /// (`labels/{id}`).
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. This will return all Labels within the customer.
  ///
  /// [view] - When specified, only certain fields belonging to the indicated
  /// view are returned.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaListLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaListLabelsResponse> list({
    core.String? customer,
    core.String? languageCode,
    core.String? minimumRole,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? publishedOnly,
    core.bool? useAdminAccess,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if (languageCode != null) 'languageCode': [languageCode],
      if (minimumRole != null) 'minimumRole': [minimumRole],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (publishedOnly != null) 'publishedOnly': ['${publishedOnly}'],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2beta/labels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaListLabelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Publish all draft changes to the Label.
  ///
  /// Once published, the Label may not return to its draft state. See
  /// `google.apps.drive.labels.v2.Lifecycle` for more information. Publishing a
  /// Label will result in a new published revision. All previous draft
  /// revisions will be deleted. Previous published revisions will be kept but
  /// are subject to automated deletion as needed. Once published, some changes
  /// are no longer permitted. Generally, any change that would invalidate or
  /// cause new restrictions on existing metadata related to the Label will be
  /// rejected. For example, the following changes to a Label will be rejected
  /// after the Label is published: * The label cannot be directly deleted. It
  /// must be disabled first, then deleted. * Field.FieldType cannot be changed.
  /// * Changes to Field validation options cannot reject something that was
  /// previously accepted. * Reducing the max entries.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label resource name.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> publish(
    GoogleAppsDriveLabelsV2betaPublishLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Label's `CopyMode`.
  ///
  /// Changes to this policy are not revisioned, do not require publishing, and
  /// take effect immediately.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Label to update.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> updateLabelCopyMode(
    GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' + core.Uri.encodeFull('$name') + ':updateLabelCopyMode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Label's EabledAppSettings.
  ///
  /// Enabling a Label in a Workspace Application allows it to be used in that
  /// application. This change is not revisioned, does not require publishing,
  /// and takes effect immediately.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Label to update. The resource
  /// name of the Label to update.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabel> updateLabelEnabledAppSettings(
    GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' +
        core.Uri.encodeFull('$name') +
        ':updateLabelEnabledAppSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabel.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Label's permissions.
  ///
  /// If a permission for the indicated principal doesn't exist, a new Label
  /// Permission is created, otherwise the existing permission is updated.
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabelPermission> updatePermissions(
    GoogleAppsDriveLabelsV2betaLabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LabelsLocksResource {
  final commons.ApiRequester _requester;

  LabelsLocksResource(commons.ApiRequester client) : _requester = client;

  /// Lists the LabelLocks on a Label.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Label on which Locks are applied. Format:
  /// labels/{label}
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Locks to return per page. Default: 100.
  /// Max: 200.
  ///
  /// [pageToken] - The token of the page to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaListLabelLocksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaListLabelLocksResponse> list(
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/locks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaListLabelLocksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LabelsPermissionsResource {
  final commons.ApiRequester _requester;

  LabelsPermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes Label permissions.
  ///
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name shared by all
  /// permissions being deleted. Format: labels/{label} If this is set, the
  /// parent field in the UpdateLabelPermissionRequest messages must either be
  /// empty or match this field.
  /// Value must have pattern `^labels/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates Label permissions.
  ///
  /// If a permission for the indicated principal doesn't exist, a new Label
  /// Permission is created, otherwise the existing permission is updated.
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name shared by all
  /// permissions being updated. Format: labels/{label} If this is set, the
  /// parent field in the UpdateLabelPermissionRequest messages must either be
  /// empty or match this field.
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse>
  batchUpdate(
    GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Label's permissions.
  ///
  /// If a permission for the indicated principal doesn't exist, a new Label
  /// Permission is created, otherwise the existing permission is updated.
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name on the Label
  /// Permission is created. Format: labels/{label}
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabelPermission> create(
    GoogleAppsDriveLabelsV2betaLabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Label's permission.
  ///
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label Permission resource name.
  /// Value must have pattern `^labels/\[^/\]+/permissions/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
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
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists a Label's permissions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name on which Label
  /// Permission are listed. Format: labels/{label}
  /// Value must have pattern `^labels/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of permissions to return per page. Default:
  /// 50. Max: 200.
  ///
  /// [pageToken] - The token of the page to return.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LabelsRevisionsResource {
  final commons.ApiRequester _requester;

  LabelsRevisionsLocksResource get locks =>
      LabelsRevisionsLocksResource(_requester);
  LabelsRevisionsPermissionsResource get permissions =>
      LabelsRevisionsPermissionsResource(_requester);

  LabelsRevisionsResource(commons.ApiRequester client) : _requester = client;

  /// Updates a Label's permissions.
  ///
  /// If a permission for the indicated principal doesn't exist, a new Label
  /// Permission is created, otherwise the existing permission is updated.
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name.
  /// Value must have pattern `^labels/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabelPermission> updatePermissions(
    GoogleAppsDriveLabelsV2betaLabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LabelsRevisionsLocksResource {
  final commons.ApiRequester _requester;

  LabelsRevisionsLocksResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the LabelLocks on a Label.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Label on which Locks are applied. Format:
  /// labels/{label}
  /// Value must have pattern `^labels/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of Locks to return per page. Default: 100.
  /// Max: 200.
  ///
  /// [pageToken] - The token of the page to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaListLabelLocksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaListLabelLocksResponse> list(
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/locks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaListLabelLocksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LabelsRevisionsPermissionsResource {
  final commons.ApiRequester _requester;

  LabelsRevisionsPermissionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes Label permissions.
  ///
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name shared by all
  /// permissions being deleted. Format: labels/{label} If this is set, the
  /// parent field in the UpdateLabelPermissionRequest messages must either be
  /// empty or match this field.
  /// Value must have pattern `^labels/\[^/\]+/revisions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates Label permissions.
  ///
  /// If a permission for the indicated principal doesn't exist, a new Label
  /// Permission is created, otherwise the existing permission is updated.
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name shared by all
  /// permissions being updated. Format: labels/{label} If this is set, the
  /// parent field in the UpdateLabelPermissionRequest messages must either be
  /// empty or match this field.
  /// Value must have pattern `^labels/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse>
  batchUpdate(
    GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a Label's permissions.
  ///
  /// If a permission for the indicated principal doesn't exist, a new Label
  /// Permission is created, otherwise the existing permission is updated.
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name on the Label
  /// Permission is created. Format: labels/{label}
  /// Value must have pattern `^labels/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabelPermission> create(
    GoogleAppsDriveLabelsV2betaLabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a Label's permission.
  ///
  /// Permissions affect the Label resource as a whole, are not revisioned, and
  /// do not require publishing.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label Permission resource name.
  /// Value must have pattern
  /// `^labels/\[^/\]+/revisions/\[^/\]+/permissions/\[^/\]+$`.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
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
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists a Label's permissions.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent Label resource name on which Label
  /// Permission are listed. Format: labels/{label}
  /// Value must have pattern `^labels/\[^/\]+/revisions/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of permissions to return per page. Default:
  /// 50. Max: 200.
  ///
  /// [pageToken] - The token of the page to return.
  ///
  /// [useAdminAccess] - Set to `true` in order to use the user's admin
  /// credentials. The server will verify the user is an admin for the Label
  /// before allowing access.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class LimitsResource {
  final commons.ApiRequester _requester;

  LimitsResource(commons.ApiRequester client) : _requester = client;

  /// Get the constraints on the structure of a Label; such as, the maximum
  /// number of Fields allowed and maximum length of the label title.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Label revision resource name Must be: "limits/label"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaLabelLimits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaLabelLimits> getLabel({
    core.String? name,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2beta/limits/label';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaLabelLimits.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Gets the user capabilities.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the user. Only
  /// "users/me/capabilities" is supported.
  /// Value must have pattern `^users/\[^/\]+/capabilities$`.
  ///
  /// [customer] - The customer to scope this request to. For example:
  /// "customers/abcd1234". If unset, will return settings within the current
  /// customer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAppsDriveLabelsV2betaUserCapabilities].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2betaUserCapabilities> getCapabilities(
    core.String name, {
    core.String? customer,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2betaUserCapabilities.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// The color derived from BadgeConfig and changed to the closest recommended
/// supported color.
class GoogleAppsDriveLabelsV2betaBadgeColors {
  /// Badge background that pairs with the foreground.
  ///
  /// Output only.
  GoogleTypeColor? backgroundColor;

  /// Badge foreground that pairs with the background.
  ///
  /// Output only.
  GoogleTypeColor? foregroundColor;

  /// Color that can be used for text without a background.
  ///
  /// Output only.
  GoogleTypeColor? soloColor;

  GoogleAppsDriveLabelsV2betaBadgeColors({
    this.backgroundColor,
    this.foregroundColor,
    this.soloColor,
  });

  GoogleAppsDriveLabelsV2betaBadgeColors.fromJson(core.Map json_)
    : this(
        backgroundColor:
            json_.containsKey('backgroundColor')
                ? GoogleTypeColor.fromJson(
                  json_['backgroundColor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        foregroundColor:
            json_.containsKey('foregroundColor')
                ? GoogleTypeColor.fromJson(
                  json_['foregroundColor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        soloColor:
            json_.containsKey('soloColor')
                ? GoogleTypeColor.fromJson(
                  json_['soloColor'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backgroundColor != null) 'backgroundColor': backgroundColor!,
    if (foregroundColor != null) 'foregroundColor': foregroundColor!,
    if (soloColor != null) 'soloColor': soloColor!,
  };
}

/// Badge status of the label.
class GoogleAppsDriveLabelsV2betaBadgeConfig {
  /// The color of the badge.
  ///
  /// When not specified, no badge is rendered. The background, foreground, and
  /// solo (light and dark mode) colors set here are changed in the Drive UI
  /// into the closest recommended supported color.
  GoogleTypeColor? color;

  /// Override the default global priority of this badge.
  ///
  /// When set to 0, the default priority heuristic is used.
  core.String? priorityOverride;

  GoogleAppsDriveLabelsV2betaBadgeConfig({this.color, this.priorityOverride});

  GoogleAppsDriveLabelsV2betaBadgeConfig.fromJson(core.Map json_)
    : this(
        color:
            json_.containsKey('color')
                ? GoogleTypeColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        priorityOverride: json_['priorityOverride'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (color != null) 'color': color!,
    if (priorityOverride != null) 'priorityOverride': priorityOverride!,
  };
}

/// Deletes one of more Label Permissions.
class GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest {
  /// The request message specifying the resources to update.
  ///
  /// Required.
  core.List<GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest>? requests;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access. If this is set, the use_admin_access field in the
  /// DeleteLabelPermissionRequest messages must either be empty or match this
  /// field.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest({
    this.requests,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest.fromJson(
    core.Map json_,
  ) : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
  };
}

/// Updates one or more Label Permissions.
class GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest {
  /// The request message specifying the resources to update.
  ///
  /// Required.
  core.List<GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest>? requests;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access. If this is set, the use_admin_access field in the
  /// UpdateLabelPermissionRequest messages must either be empty or match this
  /// field.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest({
    this.requests,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest.fromJson(
    core.Map json_,
  ) : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
  };
}

/// Response for updating one or more Label Permissions.
class GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse {
  /// Permissions updated.
  ///
  /// Required.
  core.List<GoogleAppsDriveLabelsV2betaLabelPermission>? permissions;

  GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse({
    this.permissions,
  });

  GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse.fromJson(
    core.Map json_,
  ) : this(
        permissions:
            (json_['permissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permissions != null) 'permissions': permissions!,
  };
}

/// Limits for date Field type.
class GoogleAppsDriveLabelsV2betaDateLimits {
  /// Maximum value for the date Field type.
  GoogleTypeDate? maxValue;

  /// Minimum value for the date Field type.
  GoogleTypeDate? minValue;

  GoogleAppsDriveLabelsV2betaDateLimits({this.maxValue, this.minValue});

  GoogleAppsDriveLabelsV2betaDateLimits.fromJson(core.Map json_)
    : this(
        maxValue:
            json_.containsKey('maxValue')
                ? GoogleTypeDate.fromJson(
                  json_['maxValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        minValue:
            json_.containsKey('minValue')
                ? GoogleTypeDate.fromJson(
                  json_['minValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxValue != null) 'maxValue': maxValue!,
    if (minValue != null) 'minValue': minValue!,
  };
}

/// Deletes a Label Permission.
///
/// Permissions affect the Label resource as a whole, are not revisioned, and do
/// not require publishing.
typedef GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest =
    $DeleteLabelPermissionRequest;

/// The set of requests for updating aspects of a Label.
///
/// If any request is not valid, no requests will be applied.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest {
  /// The BCP-47 language code to use for evaluating localized Field labels when
  /// `include_label_in_response` is `true`.
  core.String? languageCode;

  /// A list of updates to apply to the Label.
  ///
  /// Requests will be applied in the order they are specified.
  core.List<GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest>?
  requests;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  /// When specified, only certain fields belonging to the indicated view will
  /// be returned.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  core.String? view;

  /// Provides control over how write requests are executed.
  GoogleAppsDriveLabelsV2betaWriteControl? writeControl;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest({
    this.languageCode,
    this.requests,
    this.useAdminAccess,
    this.view,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
        view: json_['view'] as core.String?,
        writeControl:
            json_.containsKey('writeControl')
                ? GoogleAppsDriveLabelsV2betaWriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languageCode != null) 'languageCode': languageCode!,
    if (requests != null) 'requests': requests!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
    if (view != null) 'view': view!,
    if (writeControl != null) 'writeControl': writeControl!,
  };
}

/// Request to create a Field within a Label.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest {
  /// Field to create.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaField? field;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest({
    this.field,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest.fromJson(
    core.Map json_,
  ) : this(
        field:
            json_.containsKey('field')
                ? GoogleAppsDriveLabelsV2betaField.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (field != null) 'field': field!,
  };
}

/// Request to create a Selection Choice.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest {
  /// The Choice to create.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice? choice;

  /// The Selection Field in which a Choice will be created.
  ///
  /// Required.
  core.String? fieldId;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest({
    this.choice,
    this.fieldId,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest.fromJson(
    core.Map json_,
  ) : this(
        choice:
            json_.containsKey('choice')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice.fromJson(
                  json_['choice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldId: json_['fieldId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (choice != null) 'choice': choice!,
    if (fieldId != null) 'fieldId': fieldId!,
  };
}

/// Request to delete the Field.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest =
    $DeltaUpdateLabelRequestDeleteFieldRequest;

/// Request to delete a Choice.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest =
    $DeltaUpdateLabelRequestDeleteSelectionChoiceRequest;

/// Request to disable the Field.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest {
  /// Field Disabled Policy.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy? disabledPolicy;

  /// Key of the Field to disable.
  ///
  /// Required.
  core.String? id;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `disabled_policy` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest({
    this.disabledPolicy,
    this.id,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest.fromJson(
    core.Map json_,
  ) : this(
        disabledPolicy:
            json_.containsKey('disabledPolicy')
                ? GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disabledPolicy != null) 'disabledPolicy': disabledPolicy!,
    if (id != null) 'id': id!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request to disable a Choice.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest {
  /// The disabled policy to update.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy? disabledPolicy;

  /// The Selection Field in which a Choice will be disabled.
  ///
  /// Required.
  core.String? fieldId;

  /// Choice to disable.
  ///
  /// Required.
  core.String? id;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `disabled_policy` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest({
    this.disabledPolicy,
    this.fieldId,
    this.id,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest.fromJson(
    core.Map json_,
  ) : this(
        disabledPolicy:
            json_.containsKey('disabledPolicy')
                ? GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldId: json_['fieldId'] as core.String?,
        id: json_['id'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disabledPolicy != null) 'disabledPolicy': disabledPolicy!,
    if (fieldId != null) 'fieldId': fieldId!,
    if (id != null) 'id': id!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request to enable the Field.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest =
    $DeltaUpdateLabelRequestEnableFieldRequest;

/// Request to enable a Choice.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest =
    $DeltaUpdateLabelRequestEnableSelectionChoiceRequest;

/// A single kind of update to apply to a Label.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest {
  /// Creates a new Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest?
  createField;

  /// Creates Choice within a Selection field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest?
  createSelectionChoice;

  /// Deletes a Field from the label.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest?
  deleteField;

  /// Delete a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest?
  deleteSelectionChoice;

  /// Disables the Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest?
  disableField;

  /// Disable a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest?
  disableSelectionChoice;

  /// Enables the Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest?
  enableField;

  /// Enable a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest?
  enableSelectionChoice;

  /// Updates basic properties of a Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest?
  updateField;

  /// Update Field type and/or type options.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest?
  updateFieldType;

  /// Updates the Label properties.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest?
  updateLabel;

  /// Update a Choice properties within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest?
  updateSelectionChoiceProperties;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest({
    this.createField,
    this.createSelectionChoice,
    this.deleteField,
    this.deleteSelectionChoice,
    this.disableField,
    this.disableSelectionChoice,
    this.enableField,
    this.enableSelectionChoice,
    this.updateField,
    this.updateFieldType,
    this.updateLabel,
    this.updateSelectionChoiceProperties,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest.fromJson(
    core.Map json_,
  ) : this(
        createField:
            json_.containsKey('createField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest.fromJson(
                  json_['createField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createSelectionChoice:
            json_.containsKey('createSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest.fromJson(
                  json_['createSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deleteField:
            json_.containsKey('deleteField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest.fromJson(
                  json_['deleteField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deleteSelectionChoice:
            json_.containsKey('deleteSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest.fromJson(
                  json_['deleteSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableField:
            json_.containsKey('disableField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest.fromJson(
                  json_['disableField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableSelectionChoice:
            json_.containsKey('disableSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest.fromJson(
                  json_['disableSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableField:
            json_.containsKey('enableField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest.fromJson(
                  json_['enableField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableSelectionChoice:
            json_.containsKey('enableSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest.fromJson(
                  json_['enableSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateField:
            json_.containsKey('updateField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest.fromJson(
                  json_['updateField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateFieldType:
            json_.containsKey('updateFieldType')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest.fromJson(
                  json_['updateFieldType']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateLabel:
            json_.containsKey('updateLabel')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest.fromJson(
                  json_['updateLabel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateSelectionChoiceProperties:
            json_.containsKey('updateSelectionChoiceProperties')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.fromJson(
                  json_['updateSelectionChoiceProperties']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createField != null) 'createField': createField!,
    if (createSelectionChoice != null)
      'createSelectionChoice': createSelectionChoice!,
    if (deleteField != null) 'deleteField': deleteField!,
    if (deleteSelectionChoice != null)
      'deleteSelectionChoice': deleteSelectionChoice!,
    if (disableField != null) 'disableField': disableField!,
    if (disableSelectionChoice != null)
      'disableSelectionChoice': disableSelectionChoice!,
    if (enableField != null) 'enableField': enableField!,
    if (enableSelectionChoice != null)
      'enableSelectionChoice': enableSelectionChoice!,
    if (updateField != null) 'updateField': updateField!,
    if (updateFieldType != null) 'updateFieldType': updateFieldType!,
    if (updateLabel != null) 'updateLabel': updateLabel!,
    if (updateSelectionChoiceProperties != null)
      'updateSelectionChoiceProperties': updateSelectionChoiceProperties!,
  };
}

/// Request to update Field properties.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest {
  /// The Field to update.
  ///
  /// Required.
  core.String? id;

  /// Basic Field properties.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaFieldProperties? properties;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `properties` is implied and
  /// should not be specified. A single `*` can be used as short-hand for
  /// updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest({
    this.id,
    this.properties,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest.fromJson(
    core.Map json_,
  ) : this(
        id: json_['id'] as core.String?,
        properties:
            json_.containsKey('properties')
                ? GoogleAppsDriveLabelsV2betaFieldProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (id != null) 'id': id!,
    if (properties != null) 'properties': properties!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request to change the type of a Field.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest {
  /// Update field to Date.
  GoogleAppsDriveLabelsV2betaFieldDateOptions? dateOptions;

  /// The Field to update.
  ///
  /// Required.
  core.String? id;

  /// Update field to Integer.
  GoogleAppsDriveLabelsV2betaFieldIntegerOptions? integerOptions;

  /// Update field to Selection.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptions? selectionOptions;

  /// Update field to Text.
  GoogleAppsDriveLabelsV2betaFieldTextOptions? textOptions;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root of `type_options` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  /// Update field to User.
  GoogleAppsDriveLabelsV2betaFieldUserOptions? userOptions;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest({
    this.dateOptions,
    this.id,
    this.integerOptions,
    this.selectionOptions,
    this.textOptions,
    this.updateMask,
    this.userOptions,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest.fromJson(
    core.Map json_,
  ) : this(
        dateOptions:
            json_.containsKey('dateOptions')
                ? GoogleAppsDriveLabelsV2betaFieldDateOptions.fromJson(
                  json_['dateOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        integerOptions:
            json_.containsKey('integerOptions')
                ? GoogleAppsDriveLabelsV2betaFieldIntegerOptions.fromJson(
                  json_['integerOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        selectionOptions:
            json_.containsKey('selectionOptions')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptions.fromJson(
                  json_['selectionOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textOptions:
            json_.containsKey('textOptions')
                ? GoogleAppsDriveLabelsV2betaFieldTextOptions.fromJson(
                  json_['textOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
        userOptions:
            json_.containsKey('userOptions')
                ? GoogleAppsDriveLabelsV2betaFieldUserOptions.fromJson(
                  json_['userOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateOptions != null) 'dateOptions': dateOptions!,
    if (id != null) 'id': id!,
    if (integerOptions != null) 'integerOptions': integerOptions!,
    if (selectionOptions != null) 'selectionOptions': selectionOptions!,
    if (textOptions != null) 'textOptions': textOptions!,
    if (updateMask != null) 'updateMask': updateMask!,
    if (userOptions != null) 'userOptions': userOptions!,
  };
}

/// Updates basic properties of a Label.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest {
  /// Label properties to update.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaLabelProperties? properties;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `label_properties` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest({
    this.properties,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest.fromJson(
    core.Map json_,
  ) : this(
        properties:
            json_.containsKey('properties')
                ? GoogleAppsDriveLabelsV2betaLabelProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (properties != null) 'properties': properties!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Request to update a Choice properties.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest {
  /// The Selection Field to update.
  ///
  /// Required.
  core.String? fieldId;

  /// The Choice to update.
  ///
  /// Required.
  core.String? id;

  /// The Choice properties to update.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties? properties;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `properties` is implied and
  /// should not be specified. A single `*` can be used as short-hand for
  /// updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest({
    this.fieldId,
    this.id,
    this.properties,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.fromJson(
    core.Map json_,
  ) : this(
        fieldId: json_['fieldId'] as core.String?,
        id: json_['id'] as core.String?,
        properties:
            json_.containsKey('properties')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldId != null) 'fieldId': fieldId!,
    if (id != null) 'id': id!,
    if (properties != null) 'properties': properties!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Response for Label update.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse {
  /// The reply of the updates.
  ///
  /// This maps 1:1 with the updates, although responses to some requests may be
  /// empty.
  core.List<GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse>?
  responses;

  /// The label after updates were applied.
  ///
  /// This is only set if
  /// \[BatchUpdateLabelResponse2.include_label_in_response\] is `true` and
  /// there were no errors.
  GoogleAppsDriveLabelsV2betaLabel? updatedLabel;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse({
    this.responses,
    this.updatedLabel,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse.fromJson(core.Map json_)
    : this(
        responses:
            (json_['responses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        updatedLabel:
            json_.containsKey('updatedLabel')
                ? GoogleAppsDriveLabelsV2betaLabel.fromJson(
                  json_['updatedLabel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (responses != null) 'responses': responses!,
    if (updatedLabel != null) 'updatedLabel': updatedLabel!,
  };
}

/// Response following Field create.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse =
    $DeltaUpdateLabelResponseCreateFieldResponse;

/// Response following Selection Choice create.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse =
    $DeltaUpdateLabelResponseCreateSelectionChoiceResponse;

/// Response following Field delete.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse =
    $Empty;

/// Response following Choice delete.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse =
    $Empty;

/// Response following Field disable.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse =
    $Empty;

/// Response following Choice disable.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse =
    $Empty;

/// Response following Field enable.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse =
    $Empty;

/// Response following Choice enable.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse =
    $Empty;

/// A single response from an update.
class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse {
  /// Creates a new Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse?
  createField;

  /// Creates a new selection list option to add to a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse?
  createSelectionChoice;

  /// Deletes a Field from the label.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse?
  deleteField;

  /// Deletes a Choice from a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse?
  deleteSelectionChoice;

  /// Disables Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse?
  disableField;

  /// Disables a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse?
  disableSelectionChoice;

  /// Enables Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse?
  enableField;

  /// Enables a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse?
  enableSelectionChoice;

  /// Updates basic properties of a Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse?
  updateField;

  /// Update Field type and/or type options.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse?
  updateFieldType;

  /// Updated basic properties of a Label.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse?
  updateLabel;

  /// Updates a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse?
  updateSelectionChoiceProperties;

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse({
    this.createField,
    this.createSelectionChoice,
    this.deleteField,
    this.deleteSelectionChoice,
    this.disableField,
    this.disableSelectionChoice,
    this.enableField,
    this.enableSelectionChoice,
    this.updateField,
    this.updateFieldType,
    this.updateLabel,
    this.updateSelectionChoiceProperties,
  });

  GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse.fromJson(
    core.Map json_,
  ) : this(
        createField:
            json_.containsKey('createField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse.fromJson(
                  json_['createField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createSelectionChoice:
            json_.containsKey('createSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse.fromJson(
                  json_['createSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deleteField:
            json_.containsKey('deleteField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse.fromJson(
                  json_['deleteField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deleteSelectionChoice:
            json_.containsKey('deleteSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse.fromJson(
                  json_['deleteSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableField:
            json_.containsKey('disableField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse.fromJson(
                  json_['disableField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableSelectionChoice:
            json_.containsKey('disableSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse.fromJson(
                  json_['disableSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableField:
            json_.containsKey('enableField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse.fromJson(
                  json_['enableField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableSelectionChoice:
            json_.containsKey('enableSelectionChoice')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse.fromJson(
                  json_['enableSelectionChoice']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateField:
            json_.containsKey('updateField')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse.fromJson(
                  json_['updateField'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateFieldType:
            json_.containsKey('updateFieldType')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse.fromJson(
                  json_['updateFieldType']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateLabel:
            json_.containsKey('updateLabel')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse.fromJson(
                  json_['updateLabel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateSelectionChoiceProperties:
            json_.containsKey('updateSelectionChoiceProperties')
                ? GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse.fromJson(
                  json_['updateSelectionChoiceProperties']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createField != null) 'createField': createField!,
    if (createSelectionChoice != null)
      'createSelectionChoice': createSelectionChoice!,
    if (deleteField != null) 'deleteField': deleteField!,
    if (deleteSelectionChoice != null)
      'deleteSelectionChoice': deleteSelectionChoice!,
    if (disableField != null) 'disableField': disableField!,
    if (disableSelectionChoice != null)
      'disableSelectionChoice': disableSelectionChoice!,
    if (enableField != null) 'enableField': enableField!,
    if (enableSelectionChoice != null)
      'enableSelectionChoice': enableSelectionChoice!,
    if (updateField != null) 'updateField': updateField!,
    if (updateFieldType != null) 'updateFieldType': updateFieldType!,
    if (updateLabel != null) 'updateLabel': updateLabel!,
    if (updateSelectionChoiceProperties != null)
      'updateSelectionChoiceProperties': updateSelectionChoiceProperties!,
  };
}

/// Response following update to Field properties.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse =
    $DeltaUpdateLabelResponseUpdateFieldPropertiesResponse;

/// Response following update to Field type.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse =
    $Empty;

/// Response following update to Label properties.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse =
    $Empty;

/// Response following update to Selection Choice properties.
typedef GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse =
    $DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse;

/// Request to deprecate a published Label.
class GoogleAppsDriveLabelsV2betaDisableLabelRequest {
  /// Disabled policy to use.
  GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy? disabledPolicy;

  /// The BCP-47 language code to use for evaluating localized field labels.
  ///
  /// When not specified, values in the default configured language will be
  /// used.
  core.String? languageCode;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `disabled_policy` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  /// Provides control over how write requests are executed.
  ///
  /// Defaults to unset, which means last write wins.
  GoogleAppsDriveLabelsV2betaWriteControl? writeControl;

  GoogleAppsDriveLabelsV2betaDisableLabelRequest({
    this.disabledPolicy,
    this.languageCode,
    this.updateMask,
    this.useAdminAccess,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2betaDisableLabelRequest.fromJson(core.Map json_)
    : this(
        disabledPolicy:
            json_.containsKey('disabledPolicy')
                ? GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        updateMask: json_['updateMask'] as core.String?,
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
        writeControl:
            json_.containsKey('writeControl')
                ? GoogleAppsDriveLabelsV2betaWriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disabledPolicy != null) 'disabledPolicy': disabledPolicy!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (updateMask != null) 'updateMask': updateMask!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
    if (writeControl != null) 'writeControl': writeControl!,
  };
}

/// Request to enable a label.
class GoogleAppsDriveLabelsV2betaEnableLabelRequest {
  /// The BCP-47 language code to use for evaluating localized field labels.
  ///
  /// When not specified, values in the default configured language will be
  /// used.
  core.String? languageCode;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  /// Provides control over how write requests are executed.
  ///
  /// Defaults to unset, which means last write wins.
  GoogleAppsDriveLabelsV2betaWriteControl? writeControl;

  GoogleAppsDriveLabelsV2betaEnableLabelRequest({
    this.languageCode,
    this.useAdminAccess,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2betaEnableLabelRequest.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
        writeControl:
            json_.containsKey('writeControl')
                ? GoogleAppsDriveLabelsV2betaWriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languageCode != null) 'languageCode': languageCode!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
    if (writeControl != null) 'writeControl': writeControl!,
  };
}

/// Defines a field that has a display name, data type, and other configuration
/// options.
///
/// This field defines the kind of metadata that may be set on a Drive item.
class GoogleAppsDriveLabelsV2betaField {
  /// The capabilities this user has on this field and its value when the label
  /// is applied on Drive items.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities? appliedCapabilities;

  /// The time this field was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? creator;

  /// Date field options.
  GoogleAppsDriveLabelsV2betaFieldDateOptions? dateOptions;

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
  GoogleAppsDriveLabelsV2betaUserInfo? disabler;

  /// UI display hints for rendering a field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaFieldDisplayHints? displayHints;

  /// The key of a field, unique within a label or library.
  ///
  /// This value is autogenerated. Matches the regex: `([a-zA-Z0-9])+`
  ///
  /// Output only.
  core.String? id;

  /// Integer field options.
  GoogleAppsDriveLabelsV2betaFieldIntegerOptions? integerOptions;

  /// The lifecycle of this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLifecycle? lifecycle;

  /// The LockStatus of this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLockStatus? lockStatus;

  /// The basic properties of the field.
  GoogleAppsDriveLabelsV2betaFieldProperties? properties;

  /// The user who published this field.
  ///
  /// This value has no meaning when the field is not published.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? publisher;

  /// The key to use when constructing Drive search queries to find files based
  /// on values defined for this field on files.
  ///
  /// For example, "`{query_key}` \> 2001-01-01".
  ///
  /// Output only.
  core.String? queryKey;

  /// The capabilities this user has when editing this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities? schemaCapabilities;

  /// Selection field options.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptions? selectionOptions;

  /// Text field options.
  GoogleAppsDriveLabelsV2betaFieldTextOptions? textOptions;

  /// The time this field was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user who modified this field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? updater;

  /// User field options.
  GoogleAppsDriveLabelsV2betaFieldUserOptions? userOptions;

  GoogleAppsDriveLabelsV2betaField({
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

  GoogleAppsDriveLabelsV2betaField.fromJson(core.Map json_)
    : this(
        appliedCapabilities:
            json_.containsKey('appliedCapabilities')
                ? GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities.fromJson(
                  json_['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        creator:
            json_.containsKey('creator')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dateOptions:
            json_.containsKey('dateOptions')
                ? GoogleAppsDriveLabelsV2betaFieldDateOptions.fromJson(
                  json_['dateOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableTime: json_['disableTime'] as core.String?,
        disabler:
            json_.containsKey('disabler')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['disabler'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayHints:
            json_.containsKey('displayHints')
                ? GoogleAppsDriveLabelsV2betaFieldDisplayHints.fromJson(
                  json_['displayHints'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        integerOptions:
            json_.containsKey('integerOptions')
                ? GoogleAppsDriveLabelsV2betaFieldIntegerOptions.fromJson(
                  json_['integerOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        lifecycle:
            json_.containsKey('lifecycle')
                ? GoogleAppsDriveLabelsV2betaLifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lockStatus:
            json_.containsKey('lockStatus')
                ? GoogleAppsDriveLabelsV2betaLockStatus.fromJson(
                  json_['lockStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties:
            json_.containsKey('properties')
                ? GoogleAppsDriveLabelsV2betaFieldProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        publisher:
            json_.containsKey('publisher')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        queryKey: json_['queryKey'] as core.String?,
        schemaCapabilities:
            json_.containsKey('schemaCapabilities')
                ? GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities.fromJson(
                  json_['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        selectionOptions:
            json_.containsKey('selectionOptions')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptions.fromJson(
                  json_['selectionOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textOptions:
            json_.containsKey('textOptions')
                ? GoogleAppsDriveLabelsV2betaFieldTextOptions.fromJson(
                  json_['textOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        updater:
            json_.containsKey('updater')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['updater'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userOptions:
            json_.containsKey('userOptions')
                ? GoogleAppsDriveLabelsV2betaFieldUserOptions.fromJson(
                  json_['userOptions'] as core.Map<core.String, core.dynamic>,
                )
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
    if (schemaCapabilities != null) 'schemaCapabilities': schemaCapabilities!,
    if (selectionOptions != null) 'selectionOptions': selectionOptions!,
    if (textOptions != null) 'textOptions': textOptions!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (updater != null) 'updater': updater!,
    if (userOptions != null) 'userOptions': userOptions!,
  };
}

/// The capabilities related to this field on applied metadata.
typedef GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities =
    $FieldAppliedCapabilities;

/// Options for the date field type.
class GoogleAppsDriveLabelsV2betaFieldDateOptions {
  /// ICU date format.
  ///
  /// Output only.
  core.String? dateFormat;

  /// Localized date formatting option.
  ///
  /// Field values are rendered in this format according to their locale.
  /// Possible string values are:
  /// - "DATE_FORMAT_UNSPECIFIED" : Date format unspecified.
  /// - "LONG_DATE" : Includes full month name. For example, January 12, 1999
  /// (MMMM d, y)
  /// - "SHORT_DATE" : Short, numeric, representation. For example, 12/13/99
  /// (M/d/yy)
  core.String? dateFormatType;

  /// Maximum valid value (year, month, day).
  ///
  /// Output only.
  GoogleTypeDate? maxValue;

  /// Minimum valid value (year, month, day).
  ///
  /// Output only.
  GoogleTypeDate? minValue;

  GoogleAppsDriveLabelsV2betaFieldDateOptions({
    this.dateFormat,
    this.dateFormatType,
    this.maxValue,
    this.minValue,
  });

  GoogleAppsDriveLabelsV2betaFieldDateOptions.fromJson(core.Map json_)
    : this(
        dateFormat: json_['dateFormat'] as core.String?,
        dateFormatType: json_['dateFormatType'] as core.String?,
        maxValue:
            json_.containsKey('maxValue')
                ? GoogleTypeDate.fromJson(
                  json_['maxValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        minValue:
            json_.containsKey('minValue')
                ? GoogleTypeDate.fromJson(
                  json_['minValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateFormat != null) 'dateFormat': dateFormat!,
    if (dateFormatType != null) 'dateFormatType': dateFormatType!,
    if (maxValue != null) 'maxValue': maxValue!,
    if (minValue != null) 'minValue': minValue!,
  };
}

/// UI display hints for rendering a field.
typedef GoogleAppsDriveLabelsV2betaFieldDisplayHints = $FieldDisplayHints;

/// Options for the Integer field type.
typedef GoogleAppsDriveLabelsV2betaFieldIntegerOptions = $FieldIntegerOptions;

/// Field constants governing the structure of a Field; such as, the maximum
/// title length, minimum and maximum field values or length, etc.
class GoogleAppsDriveLabelsV2betaFieldLimits {
  /// Date Field limits.
  GoogleAppsDriveLabelsV2betaDateLimits? dateLimits;

  /// Integer Field limits.
  GoogleAppsDriveLabelsV2betaIntegerLimits? integerLimits;

  /// Long text Field limits.
  GoogleAppsDriveLabelsV2betaLongTextLimits? longTextLimits;

  /// Limits for Field description, also called help text.
  core.int? maxDescriptionLength;

  /// Limits for Field title.
  core.int? maxDisplayNameLength;

  /// Max length for the id.
  core.int? maxIdLength;

  /// Selection Field limits.
  GoogleAppsDriveLabelsV2betaSelectionLimits? selectionLimits;

  /// The relevant limits for the specified Field.Type.
  ///
  /// Text Field limits.
  GoogleAppsDriveLabelsV2betaTextLimits? textLimits;

  /// User Field limits.
  GoogleAppsDriveLabelsV2betaUserLimits? userLimits;

  GoogleAppsDriveLabelsV2betaFieldLimits({
    this.dateLimits,
    this.integerLimits,
    this.longTextLimits,
    this.maxDescriptionLength,
    this.maxDisplayNameLength,
    this.maxIdLength,
    this.selectionLimits,
    this.textLimits,
    this.userLimits,
  });

  GoogleAppsDriveLabelsV2betaFieldLimits.fromJson(core.Map json_)
    : this(
        dateLimits:
            json_.containsKey('dateLimits')
                ? GoogleAppsDriveLabelsV2betaDateLimits.fromJson(
                  json_['dateLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        integerLimits:
            json_.containsKey('integerLimits')
                ? GoogleAppsDriveLabelsV2betaIntegerLimits.fromJson(
                  json_['integerLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        longTextLimits:
            json_.containsKey('longTextLimits')
                ? GoogleAppsDriveLabelsV2betaLongTextLimits.fromJson(
                  json_['longTextLimits']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxDescriptionLength: json_['maxDescriptionLength'] as core.int?,
        maxDisplayNameLength: json_['maxDisplayNameLength'] as core.int?,
        maxIdLength: json_['maxIdLength'] as core.int?,
        selectionLimits:
            json_.containsKey('selectionLimits')
                ? GoogleAppsDriveLabelsV2betaSelectionLimits.fromJson(
                  json_['selectionLimits']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textLimits:
            json_.containsKey('textLimits')
                ? GoogleAppsDriveLabelsV2betaTextLimits.fromJson(
                  json_['textLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userLimits:
            json_.containsKey('userLimits')
                ? GoogleAppsDriveLabelsV2betaUserLimits.fromJson(
                  json_['userLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateLimits != null) 'dateLimits': dateLimits!,
    if (integerLimits != null) 'integerLimits': integerLimits!,
    if (longTextLimits != null) 'longTextLimits': longTextLimits!,
    if (maxDescriptionLength != null)
      'maxDescriptionLength': maxDescriptionLength!,
    if (maxDisplayNameLength != null)
      'maxDisplayNameLength': maxDisplayNameLength!,
    if (maxIdLength != null) 'maxIdLength': maxIdLength!,
    if (selectionLimits != null) 'selectionLimits': selectionLimits!,
    if (textLimits != null) 'textLimits': textLimits!,
    if (userLimits != null) 'userLimits': userLimits!,
  };
}

/// Options for a multi-valued variant of an associated field type.
typedef GoogleAppsDriveLabelsV2betaFieldListOptions = $FieldListOptions;

/// The basic properties of the field.
typedef GoogleAppsDriveLabelsV2betaFieldProperties = $FieldProperties;

/// The capabilities related to this field when editing the field.
typedef GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities =
    $FieldSchemaCapabilities;

/// Options for the selection field type.
class GoogleAppsDriveLabelsV2betaFieldSelectionOptions {
  /// The options available for this selection field.
  ///
  /// The list order is consistent, and modified with `insert_before_choice`.
  core.List<GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice>? choices;

  /// When specified, indicates this field supports a list of values.
  ///
  /// Once the field is published, this cannot be changed.
  GoogleAppsDriveLabelsV2betaFieldListOptions? listOptions;

  GoogleAppsDriveLabelsV2betaFieldSelectionOptions({
    this.choices,
    this.listOptions,
  });

  GoogleAppsDriveLabelsV2betaFieldSelectionOptions.fromJson(core.Map json_)
    : this(
        choices:
            (json_['choices'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        listOptions:
            json_.containsKey('listOptions')
                ? GoogleAppsDriveLabelsV2betaFieldListOptions.fromJson(
                  json_['listOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (choices != null) 'choices': choices!,
    if (listOptions != null) 'listOptions': listOptions!,
  };
}

/// Selection field choice.
class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice {
  /// The capabilities related to this choice on applied metadata.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities?
  appliedCapabilities;

  /// The time this choice was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? creator;

  /// The time this choice was disabled.
  ///
  /// This value has no meaning when the choice is not disabled.
  ///
  /// Output only.
  core.String? disableTime;

  /// The user who disabled this choice.
  ///
  /// This value has no meaning when the option is not disabled.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? disabler;

  /// UI display hints for rendering a choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints?
  displayHints;

  /// The unique value of the choice.
  ///
  /// This ID is autogenerated. Matches the regex: `([a-zA-Z0-9_])+`.
  core.String? id;

  /// Lifecycle of the choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLifecycle? lifecycle;

  /// The LockStatus of this choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLockStatus? lockStatus;

  /// Basic properties of the choice.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties? properties;

  /// The time this choice was published.
  ///
  /// This value has no meaning when the choice is not published.
  ///
  /// Output only.
  core.String? publishTime;

  /// The user who published this choice.
  ///
  /// This value has no meaning when the choice is not published.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? publisher;

  /// The capabilities related to this option when editing the option.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities?
  schemaCapabilities;

  /// The time this choice was updated last.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user who updated this choice last.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? updater;

  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice({
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

  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice.fromJson(
    core.Map json_,
  ) : this(
        appliedCapabilities:
            json_.containsKey('appliedCapabilities')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities.fromJson(
                  json_['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        creator:
            json_.containsKey('creator')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        disableTime: json_['disableTime'] as core.String?,
        disabler:
            json_.containsKey('disabler')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['disabler'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayHints:
            json_.containsKey('displayHints')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints.fromJson(
                  json_['displayHints'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        lifecycle:
            json_.containsKey('lifecycle')
                ? GoogleAppsDriveLabelsV2betaLifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lockStatus:
            json_.containsKey('lockStatus')
                ? GoogleAppsDriveLabelsV2betaLockStatus.fromJson(
                  json_['lockStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties:
            json_.containsKey('properties')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        publishTime: json_['publishTime'] as core.String?,
        publisher:
            json_.containsKey('publisher')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        schemaCapabilities:
            json_.containsKey('schemaCapabilities')
                ? GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities.fromJson(
                  json_['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        updater:
            json_.containsKey('updater')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['updater'] as core.Map<core.String, core.dynamic>,
                )
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
    if (schemaCapabilities != null) 'schemaCapabilities': schemaCapabilities!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (updater != null) 'updater': updater!,
  };
}

/// The capabilities related to this choice on applied metadata.
typedef GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities =
    $FieldSelectionOptionsChoiceAppliedCapabilities;

/// UI display hints for rendering an option.
class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints {
  /// The colors to use for the badge.
  ///
  /// Changed to Google Material colors based on the chosen
  /// `properties.badge_config.color`.
  GoogleAppsDriveLabelsV2betaBadgeColors? badgeColors;

  /// The priority of this badge.
  ///
  /// Used to compare and sort between multiple badges. A lower number means the
  /// badge should be shown first. When a badging configuration is not present,
  /// this will be 0. Otherwise, this will be set to
  /// `BadgeConfig.priority_override` or the default heuristic which prefers
  /// creation date of the label, and field and option priority.
  core.String? badgePriority;

  /// The dark-mode color to use for the badge.
  ///
  /// Changed to Google Material colors based on the chosen
  /// `properties.badge_config.color`.
  GoogleAppsDriveLabelsV2betaBadgeColors? darkBadgeColors;

  /// Whether the option should be shown in the UI as disabled.
  core.bool? disabled;

  /// This option should be hidden in the search menu when searching for Drive
  /// items.
  core.bool? hiddenInSearch;

  /// This option should be shown in the apply menu when applying values to a
  /// Drive item.
  core.bool? shownInApply;

  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints({
    this.badgeColors,
    this.badgePriority,
    this.darkBadgeColors,
    this.disabled,
    this.hiddenInSearch,
    this.shownInApply,
  });

  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints.fromJson(
    core.Map json_,
  ) : this(
        badgeColors:
            json_.containsKey('badgeColors')
                ? GoogleAppsDriveLabelsV2betaBadgeColors.fromJson(
                  json_['badgeColors'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        badgePriority: json_['badgePriority'] as core.String?,
        darkBadgeColors:
            json_.containsKey('darkBadgeColors')
                ? GoogleAppsDriveLabelsV2betaBadgeColors.fromJson(
                  json_['darkBadgeColors']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        disabled: json_['disabled'] as core.bool?,
        hiddenInSearch: json_['hiddenInSearch'] as core.bool?,
        shownInApply: json_['shownInApply'] as core.bool?,
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

/// Basic properties of the choice.
class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties {
  /// The badge configuration for this choice.
  ///
  /// When set, the label that owns this choice is considered a "badged label".
  GoogleAppsDriveLabelsV2betaBadgeConfig? badgeConfig;

  /// The description of this label.
  core.String? description;

  /// The display text to show in the UI identifying this field.
  ///
  /// Required.
  core.String? displayName;

  /// Input only.
  ///
  /// Insert or move this choice before the indicated choice. If empty, the
  /// choice is placed at the end of the list.
  core.String? insertBeforeChoice;

  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties({
    this.badgeConfig,
    this.description,
    this.displayName,
    this.insertBeforeChoice,
  });

  GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties.fromJson(
    core.Map json_,
  ) : this(
        badgeConfig:
            json_.containsKey('badgeConfig')
                ? GoogleAppsDriveLabelsV2betaBadgeConfig.fromJson(
                  json_['badgeConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        insertBeforeChoice: json_['insertBeforeChoice'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (badgeConfig != null) 'badgeConfig': badgeConfig!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (insertBeforeChoice != null) 'insertBeforeChoice': insertBeforeChoice!,
  };
}

/// The capabilities related to this choice when editing the choice.
typedef GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities =
    $FieldSelectionOptionsChoiceSchemaCapabilities;

/// Options for the Text field type.
typedef GoogleAppsDriveLabelsV2betaFieldTextOptions = $FieldTextOptions;

/// Options for the user field type.
class GoogleAppsDriveLabelsV2betaFieldUserOptions {
  /// When specified, indicates that this field supports a list of values.
  ///
  /// Once the field is published, this cannot be changed.
  GoogleAppsDriveLabelsV2betaFieldListOptions? listOptions;

  GoogleAppsDriveLabelsV2betaFieldUserOptions({this.listOptions});

  GoogleAppsDriveLabelsV2betaFieldUserOptions.fromJson(core.Map json_)
    : this(
        listOptions:
            json_.containsKey('listOptions')
                ? GoogleAppsDriveLabelsV2betaFieldListOptions.fromJson(
                  json_['listOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (listOptions != null) 'listOptions': listOptions!,
  };
}

/// Limits for integer Field type.
typedef GoogleAppsDriveLabelsV2betaIntegerLimits = $IntegerLimits;

/// A label defines a taxonomy that can be applied to Drive items in order to
/// organize and search across items.
///
/// Labels can be simple strings, or can contain fields that describe additional
/// metadata that can be further used to organize and search Drive items.
class GoogleAppsDriveLabelsV2betaLabel {
  /// The capabilities related to this label on applied metadata.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities? appliedCapabilities;

  /// Behavior of this label when it's applied to Drive items.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy? appliedLabelPolicy;

  /// The time this label was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? creator;

  /// The customer this label belongs to.
  ///
  /// For example: "customers/123abc789."
  ///
  /// Output only.
  core.String? customer;

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
  GoogleAppsDriveLabelsV2betaUserInfo? disabler;

  /// UI display hints for rendering the label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLabelDisplayHints? displayHints;

  /// The EnabledAppSettings for this Label.
  ///
  /// Optional.
  GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings? enabledAppSettings;

  /// List of fields in descending priority order.
  core.List<GoogleAppsDriveLabelsV2betaField>? fields;

  /// Globally unique identifier of this label.
  ///
  /// ID makes up part of the label `name`, but unlike `name`, ID is consistent
  /// between revisions. Matches the regex: `([a-zA-Z0-9])+`
  ///
  /// Output only.
  core.String? id;

  /// The type of label.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LABEL_TYPE_UNSPECIFIED" : Unknown label type.
  /// - "SHARED" : Shared labels may be shared with users to apply to Drive
  /// items.
  /// - "ADMIN" : Admin-owned label. Only creatable and editable by admins.
  /// Supports some additional admin-only features.
  /// - "GOOGLE_APP" : A label owned by an internal Google application rather
  /// than a customer. These labels are read-only.
  core.String? labelType;

  /// Custom URL to present to users to allow them to learn more about this
  /// label and how it should be used.
  core.String? learnMoreUri;

  /// The lifecycle state of the label including whether it's published,
  /// deprecated, and has draft changes.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLifecycle? lifecycle;

  /// The LockStatus of this label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLockStatus? lockStatus;

  /// Resource name of the label.
  ///
  /// Will be in the form of either: `labels/{id}` or
  /// `labels/{id}@{revision_id}` depending on the request. See `id` and
  /// `revision_id` below.
  ///
  /// Output only.
  core.String? name;

  /// The basic properties of the label.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaLabelProperties? properties;

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
  GoogleAppsDriveLabelsV2betaUserInfo? publisher;

  /// The time this label revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The user who created this label revision.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? revisionCreator;

  /// Revision ID of the label.
  ///
  /// Revision ID might be part of the label `name` depending on the request
  /// issued. A new revision is created whenever revisioned properties of a
  /// label are changed. Matches the regex: `([a-zA-Z0-9])+`
  ///
  /// Output only.
  core.String? revisionId;

  /// The capabilities the user has on this label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities? schemaCapabilities;

  GoogleAppsDriveLabelsV2betaLabel({
    this.appliedCapabilities,
    this.appliedLabelPolicy,
    this.createTime,
    this.creator,
    this.customer,
    this.disableTime,
    this.disabler,
    this.displayHints,
    this.enabledAppSettings,
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

  GoogleAppsDriveLabelsV2betaLabel.fromJson(core.Map json_)
    : this(
        appliedCapabilities:
            json_.containsKey('appliedCapabilities')
                ? GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities.fromJson(
                  json_['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        appliedLabelPolicy:
            json_.containsKey('appliedLabelPolicy')
                ? GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy.fromJson(
                  json_['appliedLabelPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        creator:
            json_.containsKey('creator')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        customer: json_['customer'] as core.String?,
        disableTime: json_['disableTime'] as core.String?,
        disabler:
            json_.containsKey('disabler')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['disabler'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayHints:
            json_.containsKey('displayHints')
                ? GoogleAppsDriveLabelsV2betaLabelDisplayHints.fromJson(
                  json_['displayHints'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enabledAppSettings:
            json_.containsKey('enabledAppSettings')
                ? GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings.fromJson(
                  json_['enabledAppSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) => GoogleAppsDriveLabelsV2betaField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        id: json_['id'] as core.String?,
        labelType: json_['labelType'] as core.String?,
        learnMoreUri: json_['learnMoreUri'] as core.String?,
        lifecycle:
            json_.containsKey('lifecycle')
                ? GoogleAppsDriveLabelsV2betaLifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lockStatus:
            json_.containsKey('lockStatus')
                ? GoogleAppsDriveLabelsV2betaLockStatus.fromJson(
                  json_['lockStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        properties:
            json_.containsKey('properties')
                ? GoogleAppsDriveLabelsV2betaLabelProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        publishTime: json_['publishTime'] as core.String?,
        publisher:
            json_.containsKey('publisher')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        revisionCreateTime: json_['revisionCreateTime'] as core.String?,
        revisionCreator:
            json_.containsKey('revisionCreator')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['revisionCreator']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        revisionId: json_['revisionId'] as core.String?,
        schemaCapabilities:
            json_.containsKey('schemaCapabilities')
                ? GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities.fromJson(
                  json_['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appliedCapabilities != null)
      'appliedCapabilities': appliedCapabilities!,
    if (appliedLabelPolicy != null) 'appliedLabelPolicy': appliedLabelPolicy!,
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (customer != null) 'customer': customer!,
    if (disableTime != null) 'disableTime': disableTime!,
    if (disabler != null) 'disabler': disabler!,
    if (displayHints != null) 'displayHints': displayHints!,
    if (enabledAppSettings != null) 'enabledAppSettings': enabledAppSettings!,
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
    if (revisionCreateTime != null) 'revisionCreateTime': revisionCreateTime!,
    if (revisionCreator != null) 'revisionCreator': revisionCreator!,
    if (revisionId != null) 'revisionId': revisionId!,
    if (schemaCapabilities != null) 'schemaCapabilities': schemaCapabilities!,
  };
}

/// The capabilities a user has on this label's applied metadata.
typedef GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities =
    $LabelAppliedCapabilities;

/// Behavior of this label when it's applied to Drive items.
typedef GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy =
    $LabelAppliedLabelPolicy;

/// UI display hints for rendering the label.
typedef GoogleAppsDriveLabelsV2betaLabelDisplayHints = $LabelDisplayHints;

/// Describes the Workspace apps in which the Label can be used.
class GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings {
  /// The list of Apps where the Label can be used.
  ///
  /// Optional.
  core.List<GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp>?
  enabledApps;

  GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings({this.enabledApps});

  GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings.fromJson(core.Map json_)
    : this(
        enabledApps:
            (json_['enabledApps'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabledApps != null) 'enabledApps': enabledApps!,
  };
}

/// An App where the Label can be used.
typedef GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp =
    $LabelEnabledAppSettingsEnabledApp;

/// Label constraints governing the structure of a Label; such as, the maximum
/// number of Fields allowed and maximum length of the label title.
class GoogleAppsDriveLabelsV2betaLabelLimits {
  /// The limits for Fields.
  GoogleAppsDriveLabelsV2betaFieldLimits? fieldLimits;

  /// The maximum number of published Fields that can be deleted.
  core.int? maxDeletedFields;

  /// The maximum number of characters allowed for the description.
  core.int? maxDescriptionLength;

  /// The maximum number of draft revisions that will be kept before deleting
  /// old drafts.
  core.int? maxDraftRevisions;

  /// The maximum number of Fields allowed within the label.
  core.int? maxFields;

  /// The maximum number of characters allowed for the title.
  core.int? maxTitleLength;

  /// Resource name.
  core.String? name;

  GoogleAppsDriveLabelsV2betaLabelLimits({
    this.fieldLimits,
    this.maxDeletedFields,
    this.maxDescriptionLength,
    this.maxDraftRevisions,
    this.maxFields,
    this.maxTitleLength,
    this.name,
  });

  GoogleAppsDriveLabelsV2betaLabelLimits.fromJson(core.Map json_)
    : this(
        fieldLimits:
            json_.containsKey('fieldLimits')
                ? GoogleAppsDriveLabelsV2betaFieldLimits.fromJson(
                  json_['fieldLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxDeletedFields: json_['maxDeletedFields'] as core.int?,
        maxDescriptionLength: json_['maxDescriptionLength'] as core.int?,
        maxDraftRevisions: json_['maxDraftRevisions'] as core.int?,
        maxFields: json_['maxFields'] as core.int?,
        maxTitleLength: json_['maxTitleLength'] as core.int?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldLimits != null) 'fieldLimits': fieldLimits!,
    if (maxDeletedFields != null) 'maxDeletedFields': maxDeletedFields!,
    if (maxDescriptionLength != null)
      'maxDescriptionLength': maxDescriptionLength!,
    if (maxDraftRevisions != null) 'maxDraftRevisions': maxDraftRevisions!,
    if (maxFields != null) 'maxFields': maxFields!,
    if (maxTitleLength != null) 'maxTitleLength': maxTitleLength!,
    if (name != null) 'name': name!,
  };
}

/// A Lock that can be applied to a Label, Field, or Choice.
class GoogleAppsDriveLabelsV2betaLabelLock {
  /// The user's capabilities on this LabelLock.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaLabelLockCapabilities? capabilities;

  /// The ID of the Selection Field Choice that should be locked.
  ///
  /// If present, `field_id` must also be present.
  core.String? choiceId;

  /// The time this LabelLock was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user whose credentials were used to create the LabelLock.
  ///
  /// This will not be present if no user was responsible for creating the
  /// LabelLock.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2betaUserInfo? creator;

  /// A timestamp indicating when this LabelLock was scheduled for deletion.
  ///
  /// This will be present only if this LabelLock is in the DELETING state.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The ID of the Field that should be locked.
  ///
  /// Empty if the whole Label should be locked.
  core.String? fieldId;

  /// Resource name of this LabelLock.
  ///
  /// Output only.
  core.String? name;

  /// This LabelLock's state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown state.
  /// - "ACTIVE" : The LabelLock is active and is being enforced by the server.
  /// - "DELETING" : The LabelLock is being deleted. The LabelLock will continue
  /// to be enforced by the server until it has been fully removed.
  core.String? state;

  GoogleAppsDriveLabelsV2betaLabelLock({
    this.capabilities,
    this.choiceId,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.fieldId,
    this.name,
    this.state,
  });

  GoogleAppsDriveLabelsV2betaLabelLock.fromJson(core.Map json_)
    : this(
        capabilities:
            json_.containsKey('capabilities')
                ? GoogleAppsDriveLabelsV2betaLabelLockCapabilities.fromJson(
                  json_['capabilities'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        choiceId: json_['choiceId'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        creator:
            json_.containsKey('creator')
                ? GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deleteTime: json_['deleteTime'] as core.String?,
        fieldId: json_['fieldId'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (capabilities != null) 'capabilities': capabilities!,
    if (choiceId != null) 'choiceId': choiceId!,
    if (createTime != null) 'createTime': createTime!,
    if (creator != null) 'creator': creator!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (fieldId != null) 'fieldId': fieldId!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// A description of a user's capabilities on a LabelLock.
typedef GoogleAppsDriveLabelsV2betaLabelLockCapabilities =
    $LabelLockCapabilities;

/// The permission that applies to a principal (user, group, audience) on a
/// label.
typedef GoogleAppsDriveLabelsV2betaLabelPermission = $LabelPermission;

/// Basic properties of the label.
typedef GoogleAppsDriveLabelsV2betaLabelProperties = $LabelProperties;

/// The capabilities related to this label when editing the label.
typedef GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities =
    $LabelSchemaCapabilities;

/// The lifecycle state of an object, such as label, field, or choice.
///
/// The lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT`
/// (starting state) * `UNPUBLISHED_DRAFT` -\> `PUBLISHED` * `UNPUBLISHED_DRAFT`
/// -\> (Deleted) * `PUBLISHED` -\> `DISABLED` * `DISABLED` -\> `PUBLISHED` *
/// `DISABLED` -\> (Deleted) The published and disabled states have some
/// distinct characteristics: * Published—Some kinds of changes might be made to
/// an object in this state, in which case `has_unpublished_changes` will be
/// true. Also, some kinds of changes are not permitted. Generally, any change
/// that would invalidate or cause new restrictions on existing metadata related
/// to the label are rejected. * Disabled—When disabled, the configured
/// `DisabledPolicy` takes effect.
class GoogleAppsDriveLabelsV2betaLifecycle {
  /// The policy that governs how to show a disabled label, field, or selection
  /// choice.
  GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy? disabledPolicy;

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
  /// the object can never return to this state. Once an object is published,
  /// certain kinds of changes are no longer permitted.
  /// - "PUBLISHED" : The object has been published. The object might have
  /// unpublished draft changes as indicated by `has_unpublished_changes`.
  /// - "DISABLED" : The object has been published and has since been disabled.
  /// The object might have unpublished draft changes as indicated by
  /// `has_unpublished_changes`.
  /// - "DELETED" : The object has been deleted.
  core.String? state;

  GoogleAppsDriveLabelsV2betaLifecycle({
    this.disabledPolicy,
    this.hasUnpublishedChanges,
    this.state,
  });

  GoogleAppsDriveLabelsV2betaLifecycle.fromJson(core.Map json_)
    : this(
        disabledPolicy:
            json_.containsKey('disabledPolicy')
                ? GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        hasUnpublishedChanges: json_['hasUnpublishedChanges'] as core.bool?,
        state: json_['state'] as core.String?,
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
typedef GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy =
    $LifecycleDisabledPolicy;

/// The response to a ListLabelLocksRequest.
class GoogleAppsDriveLabelsV2betaListLabelLocksResponse {
  /// LabelLocks.
  core.List<GoogleAppsDriveLabelsV2betaLabelLock>? labelLocks;

  /// The token of the next page in the response.
  core.String? nextPageToken;

  GoogleAppsDriveLabelsV2betaListLabelLocksResponse({
    this.labelLocks,
    this.nextPageToken,
  });

  GoogleAppsDriveLabelsV2betaListLabelLocksResponse.fromJson(core.Map json_)
    : this(
        labelLocks:
            (json_['labelLocks'] as core.List?)
                ?.map(
                  (value) => GoogleAppsDriveLabelsV2betaLabelLock.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labelLocks != null) 'labelLocks': labelLocks!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for listing the permissions on a Label.
class GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse {
  /// Label permissions.
  core.List<GoogleAppsDriveLabelsV2betaLabelPermission>? labelPermissions;

  /// The token of the next page in the response.
  core.String? nextPageToken;

  GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse({
    this.labelPermissions,
    this.nextPageToken,
  });

  GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse.fromJson(
    core.Map json_,
  ) : this(
        labelPermissions:
            (json_['labelPermissions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labelPermissions != null) 'labelPermissions': labelPermissions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for listing Labels.
class GoogleAppsDriveLabelsV2betaListLabelsResponse {
  /// Labels.
  core.List<GoogleAppsDriveLabelsV2betaLabel>? labels;

  /// The token of the next page in the response.
  core.String? nextPageToken;

  GoogleAppsDriveLabelsV2betaListLabelsResponse({
    this.labels,
    this.nextPageToken,
  });

  GoogleAppsDriveLabelsV2betaListLabelsResponse.fromJson(core.Map json_)
    : this(
        labels:
            (json_['labels'] as core.List?)
                ?.map(
                  (value) => GoogleAppsDriveLabelsV2betaLabel.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Limits for list-variant of a Field type.
typedef GoogleAppsDriveLabelsV2betaListLimits = $ListLimits;

/// Contains information about whether a label component should be considered
/// locked.
typedef GoogleAppsDriveLabelsV2betaLockStatus = $LockStatus;

/// Limits for long text Field type.
typedef GoogleAppsDriveLabelsV2betaLongTextLimits = $LongTextLimits;

/// Request to publish a label.
class GoogleAppsDriveLabelsV2betaPublishLabelRequest {
  /// The BCP-47 language code to use for evaluating localized field labels.
  ///
  /// When not specified, values in the default configured language will be
  /// used.
  core.String? languageCode;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  /// Provides control over how write requests are executed.
  ///
  /// Defaults to unset, which means last write wins.
  GoogleAppsDriveLabelsV2betaWriteControl? writeControl;

  GoogleAppsDriveLabelsV2betaPublishLabelRequest({
    this.languageCode,
    this.useAdminAccess,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2betaPublishLabelRequest.fromJson(core.Map json_)
    : this(
        languageCode: json_['languageCode'] as core.String?,
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
        writeControl:
            json_.containsKey('writeControl')
                ? GoogleAppsDriveLabelsV2betaWriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languageCode != null) 'languageCode': languageCode!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
    if (writeControl != null) 'writeControl': writeControl!,
  };
}

/// Limits for selection Field type.
class GoogleAppsDriveLabelsV2betaSelectionLimits {
  /// Limits for list-variant of a Field type.
  GoogleAppsDriveLabelsV2betaListLimits? listLimits;

  /// The max number of choices.
  core.int? maxChoices;

  /// Maximum number of deleted choices.
  core.int? maxDeletedChoices;

  /// Maximum length for display name.
  core.int? maxDisplayNameLength;

  /// Maximum ID length for a selection options.
  core.int? maxIdLength;

  GoogleAppsDriveLabelsV2betaSelectionLimits({
    this.listLimits,
    this.maxChoices,
    this.maxDeletedChoices,
    this.maxDisplayNameLength,
    this.maxIdLength,
  });

  GoogleAppsDriveLabelsV2betaSelectionLimits.fromJson(core.Map json_)
    : this(
        listLimits:
            json_.containsKey('listLimits')
                ? GoogleAppsDriveLabelsV2betaListLimits.fromJson(
                  json_['listLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxChoices: json_['maxChoices'] as core.int?,
        maxDeletedChoices: json_['maxDeletedChoices'] as core.int?,
        maxDisplayNameLength: json_['maxDisplayNameLength'] as core.int?,
        maxIdLength: json_['maxIdLength'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (listLimits != null) 'listLimits': listLimits!,
    if (maxChoices != null) 'maxChoices': maxChoices!,
    if (maxDeletedChoices != null) 'maxDeletedChoices': maxDeletedChoices!,
    if (maxDisplayNameLength != null)
      'maxDisplayNameLength': maxDisplayNameLength!,
    if (maxIdLength != null) 'maxIdLength': maxIdLength!,
  };
}

/// Limits for text Field type.
typedef GoogleAppsDriveLabelsV2betaTextLimits = $TextLimits;

/// Request to update the `CopyMode` of the given Label.
///
/// Changes to this policy are not revisioned, do not require publishing, and
/// take effect immediately. \
typedef GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest =
    $UpdateLabelCopyModeRequest;

/// Request to update the `EnabledAppSettings` of the given Label.
///
/// This change is not revisioned, does not require publishing, and takes effect
/// immediately. \
class GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest {
  /// The new `EnabledAppSettings` value for the Label.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings? enabledAppSettings;

  /// The BCP-47 language code to use for evaluating localized field labels.
  ///
  /// When not specified, values in the default configured language will be
  /// used.
  ///
  /// Optional.
  core.String? languageCode;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  ///
  /// Optional.
  core.bool? useAdminAccess;

  /// When specified, only certain fields belonging to the indicated view will
  /// be returned.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  core.String? view;

  GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest({
    this.enabledAppSettings,
    this.languageCode,
    this.useAdminAccess,
    this.view,
  });

  GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest.fromJson(
    core.Map json_,
  ) : this(
        enabledAppSettings:
            json_.containsKey('enabledAppSettings')
                ? GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings.fromJson(
                  json_['enabledAppSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
        view: json_['view'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabledAppSettings != null) 'enabledAppSettings': enabledAppSettings!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
    if (view != null) 'view': view!,
  };
}

/// Updates a Label Permission.
///
/// Permissions affect the Label resource as a whole, are not revisioned, and do
/// not require publishing.
class GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest {
  /// The permission to create or update on the Label.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2betaLabelPermission? labelPermission;

  /// The parent Label resource name.
  ///
  /// Required.
  core.String? parent;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest({
    this.labelPermission,
    this.parent,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest.fromJson(
    core.Map json_,
  ) : this(
        labelPermission:
            json_.containsKey('labelPermission')
                ? GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
                  json_['labelPermission']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        parent: json_['parent'] as core.String?,
        useAdminAccess: json_['useAdminAccess'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labelPermission != null) 'labelPermission': labelPermission!,
    if (parent != null) 'parent': parent!,
    if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
  };
}

/// The capabilities of a user.
typedef GoogleAppsDriveLabelsV2betaUserCapabilities = $UserCapabilities;

/// Information about a user.
typedef GoogleAppsDriveLabelsV2betaUserInfo = $UserInfo02;

/// Limits for Field.Type.USER.
class GoogleAppsDriveLabelsV2betaUserLimits {
  /// Limits for list-variant of a Field type.
  GoogleAppsDriveLabelsV2betaListLimits? listLimits;

  GoogleAppsDriveLabelsV2betaUserLimits({this.listLimits});

  GoogleAppsDriveLabelsV2betaUserLimits.fromJson(core.Map json_)
    : this(
        listLimits:
            json_.containsKey('listLimits')
                ? GoogleAppsDriveLabelsV2betaListLimits.fromJson(
                  json_['listLimits'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (listLimits != null) 'listLimits': listLimits!,
  };
}

/// Provides control over how write requests are executed.
///
/// When not specified, the last write wins.
typedef GoogleAppsDriveLabelsV2betaWriteControl = $WriteControl;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to and from
/// color representations in various languages over compactness. For example,
/// the fields of this representation can be trivially provided to the
/// constructor of `java.awt.Color` in Java; it can also be trivially provided
/// to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just
/// a little work, it can be easily formatted into a CSS `rgba()` string in
/// JavaScript. This reference page doesn't have information about the absolute
/// color space that should be used to interpret the RGB value—for example,
/// sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume
/// the sRGB color space. When color equality needs to be decided,
/// implementations, unless documented otherwise, treat two colors as equal if
/// all their red, green, blue, and alpha values each differ by at most `1e-5`.
/// Example (Java): import com.google.type.Color; // ... public static
/// java.awt.Color fromProto(Color protocolor) { float alpha =
/// protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
/// java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
/// protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color
/// color) { float red = (float) color.getRed(); float green = (float)
/// color.getGreen(); float blue = (float) color.getBlue(); float denominator =
/// 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red /
/// denominator) .setGreen(green / denominator) .setBlue(blue / denominator);
/// int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha(
/// FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build());
/// } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ...
/// static UIColor* fromProto(Color* protocolor) { float red = \[protocolor
/// red\]; float green = \[protocolor green\]; float blue = \[protocolor blue\];
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
