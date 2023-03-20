// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// An API for managing Drive Labels
class DriveLabelsApi {
  final commons.ApiRequester _requester;

  LabelsResource get labels => LabelsResource(_requester);
  LimitsResource get limits => LimitsResource(_requester);
  UsersResource get users => UsersResource(_requester);

  DriveLabelsApi(http.Client client,
      {core.String rootUrl = 'https://drivelabels.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
  /// Completes with a [GoogleAppsDriveLabelsV2Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2Label> create(
    GoogleAppsDriveLabelsV2Label request, {
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

    const url_ = 'v2/labels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse> delta(
    GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':delta';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2Label> disable(
    GoogleAppsDriveLabelsV2DisableLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2Label> enable(
    GoogleAppsDriveLabelsV2EnableLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2ListLabelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2ListLabelsResponse> list({
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

    const url_ = 'v2/labels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2ListLabelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2Label> publish(
    GoogleAppsDriveLabelsV2PublishLabelRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2Label].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2Label> updateLabelCopyMode(
    GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':updateLabelCopyMode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2Label.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2LabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2LabelPermission> updatePermissions(
    GoogleAppsDriveLabelsV2LabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2LabelPermission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2ListLabelLocksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2ListLabelLocksResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/locks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2ListLabelLocksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/permissions:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse>
      batchUpdate(
    GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/permissions:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2LabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2LabelPermission> create(
    GoogleAppsDriveLabelsV2LabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2LabelPermission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2ListLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2ListLabelPermissionsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2ListLabelPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2LabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2LabelPermission> updatePermissions(
    GoogleAppsDriveLabelsV2LabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2LabelPermission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2ListLabelLocksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2ListLabelLocksResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/locks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2ListLabelLocksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/permissions:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse>
      batchUpdate(
    GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/permissions:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2LabelPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2LabelPermission> create(
    GoogleAppsDriveLabelsV2LabelPermission request,
    core.String parent, {
    core.bool? useAdminAccess,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (useAdminAccess != null) 'useAdminAccess': ['${useAdminAccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2LabelPermission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2ListLabelPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2ListLabelPermissionsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/permissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2ListLabelPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2LabelLimits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2LabelLimits> getLabel({
    core.String? name,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/limits/label';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2LabelLimits.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleAppsDriveLabelsV2UserCapabilities].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAppsDriveLabelsV2UserCapabilities> getCapabilities(
    core.String name, {
    core.String? customer,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customer != null) 'customer': [customer],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAppsDriveLabelsV2UserCapabilities.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The color derived from BadgeConfig and changed to the closest recommended
/// supported color.
class GoogleAppsDriveLabelsV2BadgeColors {
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

  GoogleAppsDriveLabelsV2BadgeColors({
    this.backgroundColor,
    this.foregroundColor,
    this.soloColor,
  });

  GoogleAppsDriveLabelsV2BadgeColors.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          foregroundColor: json_.containsKey('foregroundColor')
              ? GoogleTypeColor.fromJson(json_['foregroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          soloColor: json_.containsKey('soloColor')
              ? GoogleTypeColor.fromJson(
                  json_['soloColor'] as core.Map<core.String, core.dynamic>)
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
  /// When not specified, no badge is rendered. The background, foreground, and
  /// solo (light and dark mode) colors set here are changed in the Drive UI
  /// into the closest recommended supported color.
  GoogleTypeColor? color;

  /// Override the default global priority of this badge.
  ///
  /// When set to 0, the default priority heuristic is used.
  core.String? priorityOverride;

  GoogleAppsDriveLabelsV2BadgeConfig({
    this.color,
    this.priorityOverride,
  });

  GoogleAppsDriveLabelsV2BadgeConfig.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          priorityOverride: json_.containsKey('priorityOverride')
              ? json_['priorityOverride'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (priorityOverride != null) 'priorityOverride': priorityOverride!,
      };
}

/// Deletes one of more Label Permissions.
class GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest {
  /// The request message specifying the resources to update.
  ///
  /// Required.
  core.List<GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest>? requests;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access. If this is set, the use_admin_access field in the
  /// DeleteLabelPermissionRequest messages must either be empty or match this
  /// field.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest({
    this.requests,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest.fromJson(
      core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
        if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
      };
}

/// Updates one or more Label Permissions.
class GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest {
  /// The request message specifying the resources to update.
  ///
  /// Required.
  core.List<GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest>? requests;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access. If this is set, the use_admin_access field in the
  /// UpdateLabelPermissionRequest messages must either be empty or match this
  /// field.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest({
    this.requests,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest.fromJson(
      core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
        if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
      };
}

/// Response for updating one or more Label Permissions.
class GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse {
  /// Permissions updated.
  ///
  /// Required.
  core.List<GoogleAppsDriveLabelsV2LabelPermission>? permissions;

  GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse({
    this.permissions,
  });

  GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse.fromJson(
      core.Map json_)
      : this(
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2LabelPermission.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Limits for date Field type.
class GoogleAppsDriveLabelsV2DateLimits {
  /// Maximum value for the date Field type.
  GoogleTypeDate? maxValue;

  /// Minimum value for the date Field type.
  GoogleTypeDate? minValue;

  GoogleAppsDriveLabelsV2DateLimits({
    this.maxValue,
    this.minValue,
  });

  GoogleAppsDriveLabelsV2DateLimits.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? GoogleTypeDate.fromJson(
                  json_['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: json_.containsKey('minValue')
              ? GoogleTypeDate.fromJson(
                  json_['minValue'] as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest {
  /// Label Permission resource name.
  ///
  /// Required.
  core.String? name;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest({
    this.name,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
      };
}

/// The set of requests for updating aspects of a Label.
///
/// If any request is not valid, no requests will be applied.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest {
  /// The BCP-47 language code to use for evaluating localized Field labels when
  /// `include_label_in_response` is `true`.
  core.String? languageCode;

  /// A list of updates to apply to the Label.
  ///
  /// Requests will be applied in the order they are specified.
  core.List<GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest>? requests;

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
  GoogleAppsDriveLabelsV2WriteControl? writeControl;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest({
    this.languageCode,
    this.requests,
    this.useAdminAccess,
    this.view,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
          writeControl: json_.containsKey('writeControl')
              ? GoogleAppsDriveLabelsV2WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest {
  /// Field to create.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2Field? field;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest({
    this.field,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest.fromJson(
      core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? GoogleAppsDriveLabelsV2Field.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// Request to create a Selection Choice.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest {
  /// The Choice to create.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice? choice;

  /// The Selection Field in which a Choice will be created.
  ///
  /// Required.
  core.String? fieldId;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest({
    this.choice,
    this.fieldId,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest.fromJson(
      core.Map json_)
      : this(
          choice: json_.containsKey('choice')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.fromJson(
                  json_['choice'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (choice != null) 'choice': choice!,
        if (fieldId != null) 'fieldId': fieldId!,
      };
}

/// Request to delete the Field.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest {
  /// ID of the Field to delete.
  ///
  /// Required.
  core.String? id;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest({
    this.id,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest.fromJson(
      core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Request to delete a Choice.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest {
  /// The Selection Field from which a Choice will be deleted.
  ///
  /// Required.
  core.String? fieldId;

  /// Choice to delete.
  ///
  /// Required.
  core.String? id;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest({
    this.fieldId,
    this.id,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest.fromJson(
      core.Map json_)
      : this(
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (id != null) 'id': id!,
      };
}

/// Request to disable the Field.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest {
  /// Field Disabled Policy.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy? disabledPolicy;

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

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest({
    this.disabledPolicy,
    this.id,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest.fromJson(
      core.Map json_)
      : this(
          disabledPolicy: json_.containsKey('disabledPolicy')
              ? GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabledPolicy != null) 'disabledPolicy': disabledPolicy!,
        if (id != null) 'id': id!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request to disable a Choice.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest {
  /// The disabled policy to update.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy? disabledPolicy;

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

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest({
    this.disabledPolicy,
    this.fieldId,
    this.id,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest.fromJson(
      core.Map json_)
      : this(
          disabledPolicy: json_.containsKey('disabledPolicy')
              ? GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabledPolicy != null) 'disabledPolicy': disabledPolicy!,
        if (fieldId != null) 'fieldId': fieldId!,
        if (id != null) 'id': id!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request to enable the Field.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest {
  /// ID of the Field to enable.
  ///
  /// Required.
  core.String? id;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest({
    this.id,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest.fromJson(
      core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

/// Request to enable a Choice.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest {
  /// The Selection Field in which a Choice will be enabled.
  ///
  /// Required.
  core.String? fieldId;

  /// Choice to enable.
  ///
  /// Required.
  core.String? id;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest({
    this.fieldId,
    this.id,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest.fromJson(
      core.Map json_)
      : this(
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (id != null) 'id': id!,
      };
}

/// A single kind of update to apply to a Label.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest {
  /// Creates a new Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest? createField;

  /// Creates Choice within a Selection field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest?
      createSelectionChoice;

  /// Deletes a Field from the label.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest? deleteField;

  /// Delete a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest?
      deleteSelectionChoice;

  /// Disables the Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest?
      disableField;

  /// Disable a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest?
      disableSelectionChoice;

  /// Enables the Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest? enableField;

  /// Enable a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest?
      enableSelectionChoice;

  /// Updates basic properties of a Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest?
      updateField;

  /// Update Field type and/or type options.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest?
      updateFieldType;

  /// Updates the Label properties.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest?
      updateLabel;

  /// Update a Choice properties within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest?
      updateSelectionChoiceProperties;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest({
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

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest.fromJson(core.Map json_)
      : this(
          createField: json_.containsKey('createField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest
                  .fromJson(json_['createField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createSelectionChoice: json_.containsKey('createSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest
                  .fromJson(json_['createSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteField: json_.containsKey('deleteField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest
                  .fromJson(json_['deleteField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteSelectionChoice: json_.containsKey('deleteSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest
                  .fromJson(json_['deleteSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          disableField: json_.containsKey('disableField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest
                  .fromJson(json_['disableField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          disableSelectionChoice: json_.containsKey('disableSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest
                  .fromJson(json_['disableSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableField: json_.containsKey('enableField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest
                  .fromJson(json_['enableField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableSelectionChoice: json_.containsKey('enableSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest
                  .fromJson(json_['enableSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateField: json_.containsKey('updateField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest
                  .fromJson(json_['updateField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateFieldType: json_.containsKey('updateFieldType')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest
                  .fromJson(json_['updateFieldType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateLabel: json_.containsKey('updateLabel')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest
                  .fromJson(json_['updateLabel']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateSelectionChoiceProperties: json_
                  .containsKey('updateSelectionChoiceProperties')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
                  .fromJson(json_['updateSelectionChoiceProperties']
                      as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest {
  /// The Field to update.
  ///
  /// Required.
  core.String? id;

  /// Basic Field properties.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2FieldProperties? properties;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `properties` is implied and
  /// should not be specified. A single `*` can be used as short-hand for
  /// updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest({
    this.id,
    this.properties,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest.fromJson(
      core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          properties: json_.containsKey('properties')
              ? GoogleAppsDriveLabelsV2FieldProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (properties != null) 'properties': properties!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request to change the type of a Field.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest {
  /// Update field to Date.
  GoogleAppsDriveLabelsV2FieldDateOptions? dateOptions;

  /// The Field to update.
  ///
  /// Required.
  core.String? id;

  /// Update field to Integer.
  GoogleAppsDriveLabelsV2FieldIntegerOptions? integerOptions;

  /// Update field to Long Text.
  GoogleAppsDriveLabelsV2FieldLongTextOptions? longTextOptions;

  /// Update field to Selection.
  GoogleAppsDriveLabelsV2FieldSelectionOptions? selectionOptions;

  /// Update field to Text.
  GoogleAppsDriveLabelsV2FieldTextOptions? textOptions;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root of `type_options` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  /// Update field to User.
  GoogleAppsDriveLabelsV2FieldUserOptions? userOptions;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest({
    this.dateOptions,
    this.id,
    this.integerOptions,
    this.longTextOptions,
    this.selectionOptions,
    this.textOptions,
    this.updateMask,
    this.userOptions,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest.fromJson(
      core.Map json_)
      : this(
          dateOptions: json_.containsKey('dateOptions')
              ? GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(
                  json_['dateOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          integerOptions: json_.containsKey('integerOptions')
              ? GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(
                  json_['integerOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          longTextOptions: json_.containsKey('longTextOptions')
              ? GoogleAppsDriveLabelsV2FieldLongTextOptions.fromJson(
                  json_['longTextOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          selectionOptions: json_.containsKey('selectionOptions')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(
                  json_['selectionOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textOptions: json_.containsKey('textOptions')
              ? GoogleAppsDriveLabelsV2FieldTextOptions.fromJson(
                  json_['textOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
          userOptions: json_.containsKey('userOptions')
              ? GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(
                  json_['userOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateOptions != null) 'dateOptions': dateOptions!,
        if (id != null) 'id': id!,
        if (integerOptions != null) 'integerOptions': integerOptions!,
        if (longTextOptions != null) 'longTextOptions': longTextOptions!,
        if (selectionOptions != null) 'selectionOptions': selectionOptions!,
        if (textOptions != null) 'textOptions': textOptions!,
        if (updateMask != null) 'updateMask': updateMask!,
        if (userOptions != null) 'userOptions': userOptions!,
      };
}

/// Updates basic properties of a Label.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest {
  /// Label properties to update.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2LabelProperties? properties;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `label_properties` is
  /// implied and should not be specified. A single `*` can be used as
  /// short-hand for updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest({
    this.properties,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest.fromJson(
      core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? GoogleAppsDriveLabelsV2LabelProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request to update a Choice properties.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest {
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
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties? properties;

  /// The fields that should be updated.
  ///
  /// At least one field must be specified. The root `properties` is implied and
  /// should not be specified. A single `*` can be used as short-hand for
  /// updating every field.
  core.String? updateMask;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest({
    this.fieldId,
    this.id,
    this.properties,
    this.updateMask,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.fromJson(
      core.Map json_)
      : this(
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          properties: json_.containsKey('properties')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
                  .fromJson(json_['properties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (id != null) 'id': id!,
        if (properties != null) 'properties': properties!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Response for Label update.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse {
  /// The reply of the updates.
  ///
  /// This maps 1:1 with the updates, although responses to some requests may be
  /// empty.
  core.List<GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse>? responses;

  /// The label after updates were applied.
  ///
  /// This is only set if
  /// \[BatchUpdateLabelResponse2.include_label_in_response\] is `true` and
  /// there were no errors.
  GoogleAppsDriveLabelsV2Label? updatedLabel;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse({
    this.responses,
    this.updatedLabel,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse.fromJson(core.Map json_)
      : this(
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updatedLabel: json_.containsKey('updatedLabel')
              ? GoogleAppsDriveLabelsV2Label.fromJson(
                  json_['updatedLabel'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
        if (updatedLabel != null) 'updatedLabel': updatedLabel!,
      };
}

/// Response following Field create.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse {
  /// The field of the created field.
  ///
  /// When left blank in a create request, a key will be autogenerated and can
  /// be identified here.
  core.String? id;

  /// The priority of the created field.
  ///
  /// The priority may change from what was specified to assure contiguous
  /// priorities between fields (1-n).
  core.int? priority;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse({
    this.id,
    this.priority,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse.fromJson(
      core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (priority != null) 'priority': priority!,
      };
}

/// Response following Selection Choice create.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse {
  /// The server-generated id of the field.
  core.String? fieldId;

  /// The server-generated ID of the created choice within the Field
  core.String? id;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse({
    this.fieldId,
    this.id,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse.fromJson(
      core.Map json_)
      : this(
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (id != null) 'id': id!,
      };
}

/// Response following Field delete.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse
    = $Empty;

/// Response following Choice delete.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse
    = $Empty;

/// Response following Field disable.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse
    = $Empty;

/// Response following Choice disable.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse
    = $Empty;

/// Response following Field enable.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse
    = $Empty;

/// Response following Choice enable.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse
    = $Empty;

/// A single response from an update.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse {
  /// Creates a new Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse?
      createField;

  /// Creates a new selection list option to add to a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse?
      createSelectionChoice;

  /// Deletes a Field from the label.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse?
      deleteField;

  /// Deletes a Choice from a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse?
      deleteSelectionChoice;

  /// Disables Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse?
      disableField;

  /// Disables a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse?
      disableSelectionChoice;

  /// Enables Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse?
      enableField;

  /// Enables a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse?
      enableSelectionChoice;

  /// Updates basic properties of a Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse?
      updateField;

  /// Update Field type and/or type options.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse?
      updateFieldType;

  /// Updated basic properties of a Label.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse?
      updateLabel;

  /// Updates a Choice within a Selection Field.
  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse?
      updateSelectionChoiceProperties;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse({
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

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse.fromJson(
      core.Map json_)
      : this(
          createField: json_.containsKey('createField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse
                  .fromJson(json_['createField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createSelectionChoice: json_.containsKey('createSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse
                  .fromJson(json_['createSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteField: json_.containsKey('deleteField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse
                  .fromJson(json_['deleteField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteSelectionChoice: json_.containsKey('deleteSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse
                  .fromJson(json_['deleteSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          disableField: json_.containsKey('disableField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse
                  .fromJson(json_['disableField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          disableSelectionChoice: json_.containsKey('disableSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse
                  .fromJson(json_['disableSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableField: json_.containsKey('enableField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse
                  .fromJson(json_['enableField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableSelectionChoice: json_.containsKey('enableSelectionChoice')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse
                  .fromJson(json_['enableSelectionChoice']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateField: json_.containsKey('updateField')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse
                  .fromJson(json_['updateField']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateFieldType: json_.containsKey('updateFieldType')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse
                  .fromJson(json_['updateFieldType']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateLabel: json_.containsKey('updateLabel')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse
                  .fromJson(json_['updateLabel']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateSelectionChoiceProperties: json_
                  .containsKey('updateSelectionChoiceProperties')
              ? GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
                  .fromJson(json_['updateSelectionChoiceProperties']
                      as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse {
  /// The priority of the updated field.
  ///
  /// The priority may change from what was specified to assure contiguous
  /// priorities between fields (1-n).
  core.int? priority;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse({
    this.priority,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse.fromJson(
      core.Map json_)
      : this(
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priority != null) 'priority': priority!,
      };
}

/// Response following update to Field type.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse
    = $Empty;

/// Response following update to Label properties.
typedef GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse
    = $Empty;

/// Response following update to Selection Choice properties.
class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse {
  /// The priority of the updated choice.
  ///
  /// The priority may change from what was specified to assure contiguous
  /// priorities between choices (1-n).
  core.int? priority;

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse({
    this.priority,
  });

  GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse.fromJson(
      core.Map json_)
      : this(
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priority != null) 'priority': priority!,
      };
}

/// Request to deprecate a published Label.
class GoogleAppsDriveLabelsV2DisableLabelRequest {
  /// Disabled policy to use.
  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy? disabledPolicy;

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
  GoogleAppsDriveLabelsV2WriteControl? writeControl;

  GoogleAppsDriveLabelsV2DisableLabelRequest({
    this.disabledPolicy,
    this.languageCode,
    this.updateMask,
    this.useAdminAccess,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2DisableLabelRequest.fromJson(core.Map json_)
      : this(
          disabledPolicy: json_.containsKey('disabledPolicy')
              ? GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
          writeControl: json_.containsKey('writeControl')
              ? GoogleAppsDriveLabelsV2WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2EnableLabelRequest {
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
  GoogleAppsDriveLabelsV2WriteControl? writeControl;

  GoogleAppsDriveLabelsV2EnableLabelRequest({
    this.languageCode,
    this.useAdminAccess,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2EnableLabelRequest.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
          writeControl: json_.containsKey('writeControl')
              ? GoogleAppsDriveLabelsV2WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2Field {
  /// The capabilities this user has on this field and its value when the label
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

  /// UI display hints for rendering a field.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldDisplayHints? displayHints;

  /// The key of a field, unique within a label or library.
  ///
  /// This value is autogenerated. Matches the regex: `([a-zA-Z0-9])+`
  ///
  /// Output only.
  core.String? id;

  /// Integer field options.
  GoogleAppsDriveLabelsV2FieldIntegerOptions? integerOptions;

  /// The lifecycle of this field.
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
  /// on values defined for this field on files.
  ///
  /// For example, "`{query_key}` \> 2001-01-01".
  ///
  /// Output only.
  core.String? queryKey;

  /// The capabilities this user has when editing this field.
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

  GoogleAppsDriveLabelsV2Field.fromJson(core.Map json_)
      : this(
          appliedCapabilities: json_.containsKey('appliedCapabilities')
              ? GoogleAppsDriveLabelsV2FieldAppliedCapabilities.fromJson(
                  json_['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          dateOptions: json_.containsKey('dateOptions')
              ? GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(
                  json_['dateOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          disableTime: json_.containsKey('disableTime')
              ? json_['disableTime'] as core.String
              : null,
          disabler: json_.containsKey('disabler')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['disabler'] as core.Map<core.String, core.dynamic>)
              : null,
          displayHints: json_.containsKey('displayHints')
              ? GoogleAppsDriveLabelsV2FieldDisplayHints.fromJson(
                  json_['displayHints'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          integerOptions: json_.containsKey('integerOptions')
              ? GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(
                  json_['integerOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          lifecycle: json_.containsKey('lifecycle')
              ? GoogleAppsDriveLabelsV2Lifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          lockStatus: json_.containsKey('lockStatus')
              ? GoogleAppsDriveLabelsV2LockStatus.fromJson(
                  json_['lockStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: json_.containsKey('properties')
              ? GoogleAppsDriveLabelsV2FieldProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          publisher: json_.containsKey('publisher')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          queryKey: json_.containsKey('queryKey')
              ? json_['queryKey'] as core.String
              : null,
          schemaCapabilities: json_.containsKey('schemaCapabilities')
              ? GoogleAppsDriveLabelsV2FieldSchemaCapabilities.fromJson(
                  json_['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          selectionOptions: json_.containsKey('selectionOptions')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(
                  json_['selectionOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textOptions: json_.containsKey('textOptions')
              ? GoogleAppsDriveLabelsV2FieldTextOptions.fromJson(
                  json_['textOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          updater: json_.containsKey('updater')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['updater'] as core.Map<core.String, core.dynamic>)
              : null,
          userOptions: json_.containsKey('userOptions')
              ? GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(
                  json_['userOptions'] as core.Map<core.String, core.dynamic>)
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

  /// Whether the user can search for Drive items referencing this field.
  core.bool? canSearch;

  /// Whether the user can set this field on Drive items.
  core.bool? canWrite;

  GoogleAppsDriveLabelsV2FieldAppliedCapabilities({
    this.canRead,
    this.canSearch,
    this.canWrite,
  });

  GoogleAppsDriveLabelsV2FieldAppliedCapabilities.fromJson(core.Map json_)
      : this(
          canRead: json_.containsKey('canRead')
              ? json_['canRead'] as core.bool
              : null,
          canSearch: json_.containsKey('canSearch')
              ? json_['canSearch'] as core.bool
              : null,
          canWrite: json_.containsKey('canWrite')
              ? json_['canWrite'] as core.bool
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

  GoogleAppsDriveLabelsV2FieldDateOptions({
    this.dateFormat,
    this.dateFormatType,
    this.maxValue,
    this.minValue,
  });

  GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(core.Map json_)
      : this(
          dateFormat: json_.containsKey('dateFormat')
              ? json_['dateFormat'] as core.String
              : null,
          dateFormatType: json_.containsKey('dateFormatType')
              ? json_['dateFormatType'] as core.String
              : null,
          maxValue: json_.containsKey('maxValue')
              ? GoogleTypeDate.fromJson(
                  json_['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: json_.containsKey('minValue')
              ? GoogleTypeDate.fromJson(
                  json_['minValue'] as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2FieldDisplayHints {
  /// Whether the field should be shown in the UI as disabled.
  core.bool? disabled;

  /// This field should be hidden in the search menu when searching for Drive
  /// items.
  core.bool? hiddenInSearch;

  /// Whether the field should be shown as required in the UI.
  core.bool? required;

  /// This field should be shown in the apply menu when applying values to a
  /// Drive item.
  core.bool? shownInApply;

  GoogleAppsDriveLabelsV2FieldDisplayHints({
    this.disabled,
    this.hiddenInSearch,
    this.required,
    this.shownInApply,
  });

  GoogleAppsDriveLabelsV2FieldDisplayHints.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          hiddenInSearch: json_.containsKey('hiddenInSearch')
              ? json_['hiddenInSearch'] as core.bool
              : null,
          required: json_.containsKey('required')
              ? json_['required'] as core.bool
              : null,
          shownInApply: json_.containsKey('shownInApply')
              ? json_['shownInApply'] as core.bool
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

  GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// Field constants governing the structure of a Field; such as, the maximum
/// title length, minimum and maximum field values or length, etc.
class GoogleAppsDriveLabelsV2FieldLimits {
  /// Date Field limits.
  GoogleAppsDriveLabelsV2DateLimits? dateLimits;

  /// Integer Field limits.
  GoogleAppsDriveLabelsV2IntegerLimits? integerLimits;

  /// Long text Field limits.
  GoogleAppsDriveLabelsV2LongTextLimits? longTextLimits;

  /// Limits for Field description, also called help text.
  core.int? maxDescriptionLength;

  /// Limits for Field title.
  core.int? maxDisplayNameLength;

  /// Max length for the id.
  core.int? maxIdLength;

  /// Selection Field limits.
  GoogleAppsDriveLabelsV2SelectionLimits? selectionLimits;

  /// The relevant limits for the specified Field.Type.
  ///
  /// Text Field limits.
  GoogleAppsDriveLabelsV2TextLimits? textLimits;

  /// User Field limits.
  GoogleAppsDriveLabelsV2UserLimits? userLimits;

  GoogleAppsDriveLabelsV2FieldLimits({
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

  GoogleAppsDriveLabelsV2FieldLimits.fromJson(core.Map json_)
      : this(
          dateLimits: json_.containsKey('dateLimits')
              ? GoogleAppsDriveLabelsV2DateLimits.fromJson(
                  json_['dateLimits'] as core.Map<core.String, core.dynamic>)
              : null,
          integerLimits: json_.containsKey('integerLimits')
              ? GoogleAppsDriveLabelsV2IntegerLimits.fromJson(
                  json_['integerLimits'] as core.Map<core.String, core.dynamic>)
              : null,
          longTextLimits: json_.containsKey('longTextLimits')
              ? GoogleAppsDriveLabelsV2LongTextLimits.fromJson(
                  json_['longTextLimits']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maxDescriptionLength: json_.containsKey('maxDescriptionLength')
              ? json_['maxDescriptionLength'] as core.int
              : null,
          maxDisplayNameLength: json_.containsKey('maxDisplayNameLength')
              ? json_['maxDisplayNameLength'] as core.int
              : null,
          maxIdLength: json_.containsKey('maxIdLength')
              ? json_['maxIdLength'] as core.int
              : null,
          selectionLimits: json_.containsKey('selectionLimits')
              ? GoogleAppsDriveLabelsV2SelectionLimits.fromJson(
                  json_['selectionLimits']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textLimits: json_.containsKey('textLimits')
              ? GoogleAppsDriveLabelsV2TextLimits.fromJson(
                  json_['textLimits'] as core.Map<core.String, core.dynamic>)
              : null,
          userLimits: json_.containsKey('userLimits')
              ? GoogleAppsDriveLabelsV2UserLimits.fromJson(
                  json_['userLimits'] as core.Map<core.String, core.dynamic>)
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
class GoogleAppsDriveLabelsV2FieldListOptions {
  /// Maximum number of entries permitted.
  core.int? maxEntries;

  GoogleAppsDriveLabelsV2FieldListOptions({
    this.maxEntries,
  });

  GoogleAppsDriveLabelsV2FieldListOptions.fromJson(core.Map json_)
      : this(
          maxEntries: json_.containsKey('maxEntries')
              ? json_['maxEntries'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxEntries != null) 'maxEntries': maxEntries!,
      };
}

/// Options the Long Text field type.
typedef GoogleAppsDriveLabelsV2FieldLongTextOptions = $TextOptions;

/// The basic properties of the field.
class GoogleAppsDriveLabelsV2FieldProperties {
  /// The display text to show in the UI identifying this field.
  ///
  /// Required.
  core.String? displayName;

  /// Input only.
  ///
  /// Insert or move this field before the indicated field. If empty, the field
  /// is placed at the end of the list.
  core.String? insertBeforeField;

  /// Whether the field should be marked as required.
  core.bool? required;

  GoogleAppsDriveLabelsV2FieldProperties({
    this.displayName,
    this.insertBeforeField,
    this.required,
  });

  GoogleAppsDriveLabelsV2FieldProperties.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          insertBeforeField: json_.containsKey('insertBeforeField')
              ? json_['insertBeforeField'] as core.String
              : null,
          required: json_.containsKey('required')
              ? json_['required'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (insertBeforeField != null) 'insertBeforeField': insertBeforeField!,
        if (required != null) 'required': required!,
      };
}

/// The capabilities related to this field when editing the field.
class GoogleAppsDriveLabelsV2FieldSchemaCapabilities {
  /// Whether the user can delete this field.
  ///
  /// The user must have permission and the field must be deprecated.
  core.bool? canDelete;

  /// Whether the user can disable this field.
  ///
  /// The user must have permission and this field must not already be disabled.
  core.bool? canDisable;

  /// Whether the user can enable this field.
  ///
  /// The user must have permission and this field must be disabled.
  core.bool? canEnable;

  /// Whether the user can change this field.
  core.bool? canUpdate;

  GoogleAppsDriveLabelsV2FieldSchemaCapabilities({
    this.canDelete,
    this.canDisable,
    this.canEnable,
    this.canUpdate,
  });

  GoogleAppsDriveLabelsV2FieldSchemaCapabilities.fromJson(core.Map json_)
      : this(
          canDelete: json_.containsKey('canDelete')
              ? json_['canDelete'] as core.bool
              : null,
          canDisable: json_.containsKey('canDisable')
              ? json_['canDisable'] as core.bool
              : null,
          canEnable: json_.containsKey('canEnable')
              ? json_['canEnable'] as core.bool
              : null,
          canUpdate: json_.containsKey('canUpdate')
              ? json_['canUpdate'] as core.bool
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

  /// When specified, indicates this field supports a list of values.
  ///
  /// Once the field is published, this cannot be changed.
  GoogleAppsDriveLabelsV2FieldListOptions? listOptions;

  GoogleAppsDriveLabelsV2FieldSelectionOptions({
    this.choices,
    this.listOptions,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(core.Map json_)
      : this(
          choices: json_.containsKey('choices')
              ? (json_['choices'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          listOptions: json_.containsKey('listOptions')
              ? GoogleAppsDriveLabelsV2FieldListOptions.fromJson(
                  json_['listOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (choices != null) 'choices': choices!,
        if (listOptions != null) 'listOptions': listOptions!,
      };
}

/// Selection field choice.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice {
  /// The capabilities related to this choice on applied metadata.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities?
      appliedCapabilities;

  /// The time this choice was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who created this choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2UserInfo? creator;

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
  GoogleAppsDriveLabelsV2UserInfo? disabler;

  /// UI display hints for rendering a choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints? displayHints;

  /// The unique value of the choice.
  ///
  /// This ID is autogenerated. Matches the regex: `([a-zA-Z0-9_])+`.
  core.String? id;

  /// Lifecycle of the choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2Lifecycle? lifecycle;

  /// The LockStatus of this choice.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LockStatus? lockStatus;

  /// Basic properties of the choice.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties? properties;

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
  GoogleAppsDriveLabelsV2UserInfo? publisher;

  /// The capabilities related to this option when editing the option.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities?
      schemaCapabilities;

  /// The time this choice was updated last.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user who updated this choice last.
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

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.fromJson(core.Map json_)
      : this(
          appliedCapabilities: json_.containsKey('appliedCapabilities')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
                  .fromJson(json_['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          disableTime: json_.containsKey('disableTime')
              ? json_['disableTime'] as core.String
              : null,
          disabler: json_.containsKey('disabler')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['disabler'] as core.Map<core.String, core.dynamic>)
              : null,
          displayHints: json_.containsKey('displayHints')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
                  .fromJson(json_['displayHints']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          lifecycle: json_.containsKey('lifecycle')
              ? GoogleAppsDriveLabelsV2Lifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          lockStatus: json_.containsKey('lockStatus')
              ? GoogleAppsDriveLabelsV2LockStatus.fromJson(
                  json_['lockStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: json_.containsKey('properties')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
                  .fromJson(json_['properties']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishTime: json_.containsKey('publishTime')
              ? json_['publishTime'] as core.String
              : null,
          publisher: json_.containsKey('publisher')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          schemaCapabilities: json_.containsKey('schemaCapabilities')
              ? GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
                  .fromJson(json_['schemaCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          updater: json_.containsKey('updater')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['updater'] as core.Map<core.String, core.dynamic>)
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

/// The capabilities related to this choice on applied metadata.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities {
  /// Whether the user can read related applied metadata on items.
  core.bool? canRead;

  /// Whether the user can use this choice in search queries.
  core.bool? canSearch;

  /// Whether the user can select this choice on an item.
  core.bool? canSelect;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities({
    this.canRead,
    this.canSearch,
    this.canSelect,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities.fromJson(
      core.Map json_)
      : this(
          canRead: json_.containsKey('canRead')
              ? json_['canRead'] as core.bool
              : null,
          canSearch: json_.containsKey('canSearch')
              ? json_['canSearch'] as core.bool
              : null,
          canSelect: json_.containsKey('canSelect')
              ? json_['canSelect'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canRead != null) 'canRead': canRead!,
        if (canSearch != null) 'canSearch': canSearch!,
        if (canSelect != null) 'canSelect': canSelect!,
      };
}

/// UI display hints for rendering an option.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints {
  /// The colors to use for the badge.
  ///
  /// Changed to Google Material colors based on the chosen
  /// `properties.badge_config.color`.
  GoogleAppsDriveLabelsV2BadgeColors? badgeColors;

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
  GoogleAppsDriveLabelsV2BadgeColors? darkBadgeColors;

  /// Whether the option should be shown in the UI as disabled.
  core.bool? disabled;

  /// This option should be hidden in the search menu when searching for Drive
  /// items.
  core.bool? hiddenInSearch;

  /// This option should be shown in the apply menu when applying values to a
  /// Drive item.
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
      core.Map json_)
      : this(
          badgeColors: json_.containsKey('badgeColors')
              ? GoogleAppsDriveLabelsV2BadgeColors.fromJson(
                  json_['badgeColors'] as core.Map<core.String, core.dynamic>)
              : null,
          badgePriority: json_.containsKey('badgePriority')
              ? json_['badgePriority'] as core.String
              : null,
          darkBadgeColors: json_.containsKey('darkBadgeColors')
              ? GoogleAppsDriveLabelsV2BadgeColors.fromJson(
                  json_['darkBadgeColors']
                      as core.Map<core.String, core.dynamic>)
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          hiddenInSearch: json_.containsKey('hiddenInSearch')
              ? json_['hiddenInSearch'] as core.bool
              : null,
          shownInApply: json_.containsKey('shownInApply')
              ? json_['shownInApply'] as core.bool
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

/// Basic properties of the choice.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties {
  /// The badge configuration for this choice.
  ///
  /// When set, the label that owns this choice is considered a "badged label".
  GoogleAppsDriveLabelsV2BadgeConfig? badgeConfig;

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

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties({
    this.badgeConfig,
    this.description,
    this.displayName,
    this.insertBeforeChoice,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties.fromJson(
      core.Map json_)
      : this(
          badgeConfig: json_.containsKey('badgeConfig')
              ? GoogleAppsDriveLabelsV2BadgeConfig.fromJson(
                  json_['badgeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          insertBeforeChoice: json_.containsKey('insertBeforeChoice')
              ? json_['insertBeforeChoice'] as core.String
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

/// The capabilities related to this choice when editing the choice.
class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities {
  /// Whether the user can delete this choice.
  core.bool? canDelete;

  /// Whether the user can disable this choice.
  core.bool? canDisable;

  /// Whether the user can enable this choice.
  core.bool? canEnable;

  /// Whether the user can update this choice.
  core.bool? canUpdate;

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities({
    this.canDelete,
    this.canDisable,
    this.canEnable,
    this.canUpdate,
  });

  GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities.fromJson(
      core.Map json_)
      : this(
          canDelete: json_.containsKey('canDelete')
              ? json_['canDelete'] as core.bool
              : null,
          canDisable: json_.containsKey('canDisable')
              ? json_['canDisable'] as core.bool
              : null,
          canEnable: json_.containsKey('canEnable')
              ? json_['canEnable'] as core.bool
              : null,
          canUpdate: json_.containsKey('canUpdate')
              ? json_['canUpdate'] as core.bool
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
typedef GoogleAppsDriveLabelsV2FieldTextOptions = $TextOptions;

/// Options for the user field type.
class GoogleAppsDriveLabelsV2FieldUserOptions {
  /// When specified, indicates that this field supports a list of values.
  ///
  /// Once the field is published, this cannot be changed.
  GoogleAppsDriveLabelsV2FieldListOptions? listOptions;

  GoogleAppsDriveLabelsV2FieldUserOptions({
    this.listOptions,
  });

  GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(core.Map json_)
      : this(
          listOptions: json_.containsKey('listOptions')
              ? GoogleAppsDriveLabelsV2FieldListOptions.fromJson(
                  json_['listOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listOptions != null) 'listOptions': listOptions!,
      };
}

/// Limits for integer Field type.
class GoogleAppsDriveLabelsV2IntegerLimits {
  /// Maximum value for an integer Field type.
  core.String? maxValue;

  /// Minimum value for an integer Field type.
  core.String? minValue;

  GoogleAppsDriveLabelsV2IntegerLimits({
    this.maxValue,
    this.minValue,
  });

  GoogleAppsDriveLabelsV2IntegerLimits.fromJson(core.Map json_)
      : this(
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
      };
}

/// A label defines a taxonomy that can be applied to Drive items in order to
/// organize and search across items.
///
/// Labels can be simple strings, or can contain fields that describe additional
/// metadata that can be further used to organize and search Drive items.
class GoogleAppsDriveLabelsV2Label {
  /// The capabilities related to this label on applied metadata.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelAppliedCapabilities? appliedCapabilities;

  /// Behavior of this label when it's applied to Drive items.
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

  /// UI display hints for rendering the label.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelDisplayHints? displayHints;

  /// List of fields in descending priority order.
  core.List<GoogleAppsDriveLabelsV2Field>? fields;

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

  GoogleAppsDriveLabelsV2Label.fromJson(core.Map json_)
      : this(
          appliedCapabilities: json_.containsKey('appliedCapabilities')
              ? GoogleAppsDriveLabelsV2LabelAppliedCapabilities.fromJson(
                  json_['appliedCapabilities']
                      as core.Map<core.String, core.dynamic>)
              : null,
          appliedLabelPolicy: json_.containsKey('appliedLabelPolicy')
              ? GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy.fromJson(
                  json_['appliedLabelPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          disableTime: json_.containsKey('disableTime')
              ? json_['disableTime'] as core.String
              : null,
          disabler: json_.containsKey('disabler')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['disabler'] as core.Map<core.String, core.dynamic>)
              : null,
          displayHints: json_.containsKey('displayHints')
              ? GoogleAppsDriveLabelsV2LabelDisplayHints.fromJson(
                  json_['displayHints'] as core.Map<core.String, core.dynamic>)
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => GoogleAppsDriveLabelsV2Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labelType: json_.containsKey('labelType')
              ? json_['labelType'] as core.String
              : null,
          learnMoreUri: json_.containsKey('learnMoreUri')
              ? json_['learnMoreUri'] as core.String
              : null,
          lifecycle: json_.containsKey('lifecycle')
              ? GoogleAppsDriveLabelsV2Lifecycle.fromJson(
                  json_['lifecycle'] as core.Map<core.String, core.dynamic>)
              : null,
          lockStatus: json_.containsKey('lockStatus')
              ? GoogleAppsDriveLabelsV2LockStatus.fromJson(
                  json_['lockStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          properties: json_.containsKey('properties')
              ? GoogleAppsDriveLabelsV2LabelProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          publishTime: json_.containsKey('publishTime')
              ? json_['publishTime'] as core.String
              : null,
          publisher: json_.containsKey('publisher')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          revisionCreateTime: json_.containsKey('revisionCreateTime')
              ? json_['revisionCreateTime'] as core.String
              : null,
          revisionCreator: json_.containsKey('revisionCreator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['revisionCreator']
                      as core.Map<core.String, core.dynamic>)
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          schemaCapabilities: json_.containsKey('schemaCapabilities')
              ? GoogleAppsDriveLabelsV2LabelSchemaCapabilities.fromJson(
                  json_['schemaCapabilities']
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

/// The capabilities a user has on this label's applied metadata.
class GoogleAppsDriveLabelsV2LabelAppliedCapabilities {
  /// Whether the user can apply this label to items.
  core.bool? canApply;

  /// Whether the user can read applied metadata related to this label.
  core.bool? canRead;

  /// Whether the user can remove this label from items.
  core.bool? canRemove;

  GoogleAppsDriveLabelsV2LabelAppliedCapabilities({
    this.canApply,
    this.canRead,
    this.canRemove,
  });

  GoogleAppsDriveLabelsV2LabelAppliedCapabilities.fromJson(core.Map json_)
      : this(
          canApply: json_.containsKey('canApply')
              ? json_['canApply'] as core.bool
              : null,
          canRead: json_.containsKey('canRead')
              ? json_['canRead'] as core.bool
              : null,
          canRemove: json_.containsKey('canRemove')
              ? json_['canRemove'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canApply != null) 'canApply': canApply!,
        if (canRead != null) 'canRead': canRead!,
        if (canRemove != null) 'canRemove': canRemove!,
      };
}

/// Behavior of this label when it's applied to Drive items.
class GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy {
  /// Indicates how the applied label and field values should be copied when a
  /// Drive item is copied.
  /// Possible string values are:
  /// - "COPY_MODE_UNSPECIFIED" : Copy mode unspecified.
  /// - "DO_NOT_COPY" : The applied label and field values are not copied by
  /// default when the Drive item it's applied to is copied.
  /// - "ALWAYS_COPY" : The applied label and field values are always copied
  /// when the Drive item it's applied to is copied. Only admins can use this
  /// mode.
  /// - "COPY_APPLIABLE" : The applied label and field values are copied if the
  /// label is appliable by the user making the copy.
  core.String? copyMode;

  GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy({
    this.copyMode,
  });

  GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy.fromJson(core.Map json_)
      : this(
          copyMode: json_.containsKey('copyMode')
              ? json_['copyMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copyMode != null) 'copyMode': copyMode!,
      };
}

/// UI display hints for rendering the label.
class GoogleAppsDriveLabelsV2LabelDisplayHints {
  /// Whether the label should be shown in the UI as disabled.
  core.bool? disabled;

  /// This label should be hidden in the search menu when searching for Drive
  /// items.
  core.bool? hiddenInSearch;

  /// Order to display label in a list.
  core.String? priority;

  /// This label should be shown in the apply menu when applying values to a
  /// Drive item.
  core.bool? shownInApply;

  GoogleAppsDriveLabelsV2LabelDisplayHints({
    this.disabled,
    this.hiddenInSearch,
    this.priority,
    this.shownInApply,
  });

  GoogleAppsDriveLabelsV2LabelDisplayHints.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          hiddenInSearch: json_.containsKey('hiddenInSearch')
              ? json_['hiddenInSearch'] as core.bool
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
          shownInApply: json_.containsKey('shownInApply')
              ? json_['shownInApply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (hiddenInSearch != null) 'hiddenInSearch': hiddenInSearch!,
        if (priority != null) 'priority': priority!,
        if (shownInApply != null) 'shownInApply': shownInApply!,
      };
}

/// Label constraints governing the structure of a Label; such as, the maximum
/// number of Fields allowed and maximum length of the label title.
class GoogleAppsDriveLabelsV2LabelLimits {
  /// The limits for Fields.
  GoogleAppsDriveLabelsV2FieldLimits? fieldLimits;

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

  GoogleAppsDriveLabelsV2LabelLimits({
    this.fieldLimits,
    this.maxDeletedFields,
    this.maxDescriptionLength,
    this.maxDraftRevisions,
    this.maxFields,
    this.maxTitleLength,
    this.name,
  });

  GoogleAppsDriveLabelsV2LabelLimits.fromJson(core.Map json_)
      : this(
          fieldLimits: json_.containsKey('fieldLimits')
              ? GoogleAppsDriveLabelsV2FieldLimits.fromJson(
                  json_['fieldLimits'] as core.Map<core.String, core.dynamic>)
              : null,
          maxDeletedFields: json_.containsKey('maxDeletedFields')
              ? json_['maxDeletedFields'] as core.int
              : null,
          maxDescriptionLength: json_.containsKey('maxDescriptionLength')
              ? json_['maxDescriptionLength'] as core.int
              : null,
          maxDraftRevisions: json_.containsKey('maxDraftRevisions')
              ? json_['maxDraftRevisions'] as core.int
              : null,
          maxFields: json_.containsKey('maxFields')
              ? json_['maxFields'] as core.int
              : null,
          maxTitleLength: json_.containsKey('maxTitleLength')
              ? json_['maxTitleLength'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
class GoogleAppsDriveLabelsV2LabelLock {
  /// The user's capabilities on this LabelLock.
  ///
  /// Output only.
  GoogleAppsDriveLabelsV2LabelLockCapabilities? capabilities;

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
  GoogleAppsDriveLabelsV2UserInfo? creator;

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

  GoogleAppsDriveLabelsV2LabelLock({
    this.capabilities,
    this.choiceId,
    this.createTime,
    this.creator,
    this.deleteTime,
    this.fieldId,
    this.name,
    this.state,
  });

  GoogleAppsDriveLabelsV2LabelLock.fromJson(core.Map json_)
      : this(
          capabilities: json_.containsKey('capabilities')
              ? GoogleAppsDriveLabelsV2LabelLockCapabilities.fromJson(
                  json_['capabilities'] as core.Map<core.String, core.dynamic>)
              : null,
          choiceId: json_.containsKey('choiceId')
              ? json_['choiceId'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? GoogleAppsDriveLabelsV2UserInfo.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          fieldId: json_.containsKey('fieldId')
              ? json_['fieldId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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
class GoogleAppsDriveLabelsV2LabelLockCapabilities {
  /// True if the user is authorized to view the policy.
  core.bool? canViewPolicy;

  GoogleAppsDriveLabelsV2LabelLockCapabilities({
    this.canViewPolicy,
  });

  GoogleAppsDriveLabelsV2LabelLockCapabilities.fromJson(core.Map json_)
      : this(
          canViewPolicy: json_.containsKey('canViewPolicy')
              ? json_['canViewPolicy'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canViewPolicy != null) 'canViewPolicy': canViewPolicy!,
      };
}

/// The permission that applies to a principal (user, group, audience) on a
/// label.
class GoogleAppsDriveLabelsV2LabelPermission {
  /// Audience to grant a role to.
  ///
  /// The magic value of `audiences/default` may be used to apply the role to
  /// the default audience in the context of the organization that owns the
  /// Label.
  core.String? audience;

  /// Specifies the email address for a user or group pricinpal.
  ///
  /// Not populated for audience principals. User and Group permissions may only
  /// be inserted using email address. On update requests, if email address is
  /// specified, no principal should be specified.
  core.String? email;

  /// Group resource name.
  core.String? group;

  /// Resource name of this permission.
  core.String? name;

  /// Person resource name.
  core.String? person;

  /// The role the principal should have.
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
  core.String? role;

  GoogleAppsDriveLabelsV2LabelPermission({
    this.audience,
    this.email,
    this.group,
    this.name,
    this.person,
    this.role,
  });

  GoogleAppsDriveLabelsV2LabelPermission.fromJson(core.Map json_)
      : this(
          audience: json_.containsKey('audience')
              ? json_['audience'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          person: json_.containsKey('person')
              ? json_['person'] as core.String
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audience != null) 'audience': audience!,
        if (email != null) 'email': email!,
        if (group != null) 'group': group!,
        if (name != null) 'name': name!,
        if (person != null) 'person': person!,
        if (role != null) 'role': role!,
      };
}

/// Basic properties of the label.
class GoogleAppsDriveLabelsV2LabelProperties {
  /// The description of the label.
  core.String? description;

  /// Title of the label.
  ///
  /// Required.
  core.String? title;

  GoogleAppsDriveLabelsV2LabelProperties({
    this.description,
    this.title,
  });

  GoogleAppsDriveLabelsV2LabelProperties.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

/// The capabilities related to this label when editing the label.
class GoogleAppsDriveLabelsV2LabelSchemaCapabilities {
  /// Whether the user can delete this label.
  ///
  /// The user must have permission and the label must be disabled.
  core.bool? canDelete;

  /// Whether the user can disable this label.
  ///
  /// The user must have permission and this label must not already be disabled.
  core.bool? canDisable;

  /// Whether the user can enable this label.
  ///
  /// The user must have permission and this label must be disabled.
  core.bool? canEnable;

  /// Whether the user can change this label.
  core.bool? canUpdate;

  GoogleAppsDriveLabelsV2LabelSchemaCapabilities({
    this.canDelete,
    this.canDisable,
    this.canEnable,
    this.canUpdate,
  });

  GoogleAppsDriveLabelsV2LabelSchemaCapabilities.fromJson(core.Map json_)
      : this(
          canDelete: json_.containsKey('canDelete')
              ? json_['canDelete'] as core.bool
              : null,
          canDisable: json_.containsKey('canDisable')
              ? json_['canDisable'] as core.bool
              : null,
          canEnable: json_.containsKey('canEnable')
              ? json_['canEnable'] as core.bool
              : null,
          canUpdate: json_.containsKey('canUpdate')
              ? json_['canUpdate'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canDelete != null) 'canDelete': canDelete!,
        if (canDisable != null) 'canDisable': canDisable!,
        if (canEnable != null) 'canEnable': canEnable!,
        if (canUpdate != null) 'canUpdate': canUpdate!,
      };
}

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
  /// the object can never return to this state. Once an object is published,
  /// certain kinds of changes are no longer permitted.
  /// - "PUBLISHED" : The object has been published. The object might have
  /// unpublished draft changes as indicated by `has_unpublished_changes`.
  /// - "DISABLED" : The object has been published and has since been disabled.
  /// The object might have unpublished draft changes as indicated by
  /// `has_unpublished_changes`.
  /// - "DELETED" : The object has been deleted.
  core.String? state;

  GoogleAppsDriveLabelsV2Lifecycle({
    this.disabledPolicy,
    this.hasUnpublishedChanges,
    this.state,
  });

  GoogleAppsDriveLabelsV2Lifecycle.fromJson(core.Map json_)
      : this(
          disabledPolicy: json_.containsKey('disabledPolicy')
              ? GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
                  json_['disabledPolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          hasUnpublishedChanges: json_.containsKey('hasUnpublishedChanges')
              ? json_['hasUnpublishedChanges'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
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
  /// * When `false`, the object is generally shown in the UI as disabled but it
  /// appears in the search results when searching for Drive items. * When
  /// `true`, the object is generally hidden in the UI when searching for Drive
  /// items.
  core.bool? hideInSearch;

  /// Whether to show this disabled object in the apply menu on Drive items.
  ///
  /// * When `true`, the object is generally shown in the UI as disabled and is
  /// unselectable. * When `false`, the object is generally hidden in the UI.
  core.bool? showInApply;

  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy({
    this.hideInSearch,
    this.showInApply,
  });

  GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(core.Map json_)
      : this(
          hideInSearch: json_.containsKey('hideInSearch')
              ? json_['hideInSearch'] as core.bool
              : null,
          showInApply: json_.containsKey('showInApply')
              ? json_['showInApply'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hideInSearch != null) 'hideInSearch': hideInSearch!,
        if (showInApply != null) 'showInApply': showInApply!,
      };
}

/// The response to a ListLabelLocksRequest.
class GoogleAppsDriveLabelsV2ListLabelLocksResponse {
  /// LabelLocks.
  core.List<GoogleAppsDriveLabelsV2LabelLock>? labelLocks;

  /// The token of the next page in the response.
  core.String? nextPageToken;

  GoogleAppsDriveLabelsV2ListLabelLocksResponse({
    this.labelLocks,
    this.nextPageToken,
  });

  GoogleAppsDriveLabelsV2ListLabelLocksResponse.fromJson(core.Map json_)
      : this(
          labelLocks: json_.containsKey('labelLocks')
              ? (json_['labelLocks'] as core.List)
                  .map((value) => GoogleAppsDriveLabelsV2LabelLock.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelLocks != null) 'labelLocks': labelLocks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for listing the permissions on a Label.
class GoogleAppsDriveLabelsV2ListLabelPermissionsResponse {
  /// Label permissions.
  core.List<GoogleAppsDriveLabelsV2LabelPermission>? labelPermissions;

  /// The token of the next page in the response.
  core.String? nextPageToken;

  GoogleAppsDriveLabelsV2ListLabelPermissionsResponse({
    this.labelPermissions,
    this.nextPageToken,
  });

  GoogleAppsDriveLabelsV2ListLabelPermissionsResponse.fromJson(core.Map json_)
      : this(
          labelPermissions: json_.containsKey('labelPermissions')
              ? (json_['labelPermissions'] as core.List)
                  .map((value) =>
                      GoogleAppsDriveLabelsV2LabelPermission.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelPermissions != null) 'labelPermissions': labelPermissions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  GoogleAppsDriveLabelsV2ListLabelsResponse.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => GoogleAppsDriveLabelsV2Label.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Limits for list-variant of a Field type.
class GoogleAppsDriveLabelsV2ListLimits {
  /// Maximum number of values allowed for the Field type.
  core.int? maxEntries;

  GoogleAppsDriveLabelsV2ListLimits({
    this.maxEntries,
  });

  GoogleAppsDriveLabelsV2ListLimits.fromJson(core.Map json_)
      : this(
          maxEntries: json_.containsKey('maxEntries')
              ? json_['maxEntries'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxEntries != null) 'maxEntries': maxEntries!,
      };
}

/// Contains information about whether a label component should be considered
/// locked.
class GoogleAppsDriveLabelsV2LockStatus {
  /// Indicates whether this label component is the (direct) target of a
  /// LabelLock.
  ///
  /// A label component can be implicitly locked even if it's not the direct
  /// target of a LabelLock, in which case this field is set to false.
  ///
  /// Output only.
  core.bool? locked;

  GoogleAppsDriveLabelsV2LockStatus({
    this.locked,
  });

  GoogleAppsDriveLabelsV2LockStatus.fromJson(core.Map json_)
      : this(
          locked:
              json_.containsKey('locked') ? json_['locked'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locked != null) 'locked': locked!,
      };
}

/// Limits for long text Field type.
class GoogleAppsDriveLabelsV2LongTextLimits {
  /// Maximum length allowed for a long text Field type.
  core.int? maxLength;

  /// Minimum length allowed for a long text Field type.
  core.int? minLength;

  GoogleAppsDriveLabelsV2LongTextLimits({
    this.maxLength,
    this.minLength,
  });

  GoogleAppsDriveLabelsV2LongTextLimits.fromJson(core.Map json_)
      : this(
          maxLength: json_.containsKey('maxLength')
              ? json_['maxLength'] as core.int
              : null,
          minLength: json_.containsKey('minLength')
              ? json_['minLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxLength != null) 'maxLength': maxLength!,
        if (minLength != null) 'minLength': minLength!,
      };
}

/// Request to publish a label.
class GoogleAppsDriveLabelsV2PublishLabelRequest {
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
  GoogleAppsDriveLabelsV2WriteControl? writeControl;

  GoogleAppsDriveLabelsV2PublishLabelRequest({
    this.languageCode,
    this.useAdminAccess,
    this.writeControl,
  });

  GoogleAppsDriveLabelsV2PublishLabelRequest.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
          writeControl: json_.containsKey('writeControl')
              ? GoogleAppsDriveLabelsV2WriteControl.fromJson(
                  json_['writeControl'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
        if (writeControl != null) 'writeControl': writeControl!,
      };
}

/// Limits for selection Field type.
class GoogleAppsDriveLabelsV2SelectionLimits {
  /// Limits for list-variant of a Field type.
  GoogleAppsDriveLabelsV2ListLimits? listLimits;

  /// The max number of choices.
  core.int? maxChoices;

  /// Maximum number of deleted choices.
  core.int? maxDeletedChoices;

  /// Maximum length for display name.
  core.int? maxDisplayNameLength;

  /// Maximum ID length for a selection options.
  core.int? maxIdLength;

  GoogleAppsDriveLabelsV2SelectionLimits({
    this.listLimits,
    this.maxChoices,
    this.maxDeletedChoices,
    this.maxDisplayNameLength,
    this.maxIdLength,
  });

  GoogleAppsDriveLabelsV2SelectionLimits.fromJson(core.Map json_)
      : this(
          listLimits: json_.containsKey('listLimits')
              ? GoogleAppsDriveLabelsV2ListLimits.fromJson(
                  json_['listLimits'] as core.Map<core.String, core.dynamic>)
              : null,
          maxChoices: json_.containsKey('maxChoices')
              ? json_['maxChoices'] as core.int
              : null,
          maxDeletedChoices: json_.containsKey('maxDeletedChoices')
              ? json_['maxDeletedChoices'] as core.int
              : null,
          maxDisplayNameLength: json_.containsKey('maxDisplayNameLength')
              ? json_['maxDisplayNameLength'] as core.int
              : null,
          maxIdLength: json_.containsKey('maxIdLength')
              ? json_['maxIdLength'] as core.int
              : null,
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
class GoogleAppsDriveLabelsV2TextLimits {
  /// Maximum length allowed for a text Field type.
  core.int? maxLength;

  /// Minimum length allowed for a text Field type.
  core.int? minLength;

  GoogleAppsDriveLabelsV2TextLimits({
    this.maxLength,
    this.minLength,
  });

  GoogleAppsDriveLabelsV2TextLimits.fromJson(core.Map json_)
      : this(
          maxLength: json_.containsKey('maxLength')
              ? json_['maxLength'] as core.int
              : null,
          minLength: json_.containsKey('minLength')
              ? json_['minLength'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxLength != null) 'maxLength': maxLength!,
        if (minLength != null) 'minLength': minLength!,
      };
}

/// Request to update the `CopyMode` of the given Label.
///
/// Changes to this policy are not revisioned, do not require publishing, and
/// take effect immediately. \
class GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest {
  /// Indicates how the applied Label, and Field values should be copied when a
  /// Drive item is copied.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COPY_MODE_UNSPECIFIED" : Copy mode unspecified.
  /// - "DO_NOT_COPY" : The applied label and field values are not copied by
  /// default when the Drive item it's applied to is copied.
  /// - "ALWAYS_COPY" : The applied label and field values are always copied
  /// when the Drive item it's applied to is copied. Only admins can use this
  /// mode.
  /// - "COPY_APPLIABLE" : The applied label and field values are copied if the
  /// label is appliable by the user making the copy.
  core.String? copyMode;

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

  /// When specified, only certain fields belonging to the indicated view will
  /// be returned.
  /// Possible string values are:
  /// - "LABEL_VIEW_BASIC" : Implies the field mask:
  /// `name,id,revision_id,label_type,properties.*`
  /// - "LABEL_VIEW_FULL" : All possible fields.
  core.String? view;

  GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest({
    this.copyMode,
    this.languageCode,
    this.useAdminAccess,
    this.view,
  });

  GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest.fromJson(core.Map json_)
      : this(
          copyMode: json_.containsKey('copyMode')
              ? json_['copyMode'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copyMode != null) 'copyMode': copyMode!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
        if (view != null) 'view': view!,
      };
}

/// Updates a Label Permission.
///
/// Permissions affect the Label resource as a whole, are not revisioned, and do
/// not require publishing.
class GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest {
  /// The permission to create or update on the Label.
  ///
  /// Required.
  GoogleAppsDriveLabelsV2LabelPermission? labelPermission;

  /// The parent Label resource name.
  ///
  /// Required.
  core.String? parent;

  /// Set to `true` in order to use the user's admin credentials.
  ///
  /// The server will verify the user is an admin for the Label before allowing
  /// access.
  core.bool? useAdminAccess;

  GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest({
    this.labelPermission,
    this.parent,
    this.useAdminAccess,
  });

  GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest.fromJson(core.Map json_)
      : this(
          labelPermission: json_.containsKey('labelPermission')
              ? GoogleAppsDriveLabelsV2LabelPermission.fromJson(
                  json_['labelPermission']
                      as core.Map<core.String, core.dynamic>)
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          useAdminAccess: json_.containsKey('useAdminAccess')
              ? json_['useAdminAccess'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelPermission != null) 'labelPermission': labelPermission!,
        if (parent != null) 'parent': parent!,
        if (useAdminAccess != null) 'useAdminAccess': useAdminAccess!,
      };
}

/// The capabilities of a user.
class GoogleAppsDriveLabelsV2UserCapabilities {
  /// Whether the user is allowed access to the label manager.
  ///
  /// Output only.
  core.bool? canAccessLabelManager;

  /// Whether the user is an administrator for the shared labels feature.
  ///
  /// Output only.
  core.bool? canAdministrateLabels;

  /// Whether the user is allowed to create new admin labels.
  ///
  /// Output only.
  core.bool? canCreateAdminLabels;

  /// Whether the user is allowed to create new shared labels.
  ///
  /// Output only.
  core.bool? canCreateSharedLabels;

  /// Resource name for the user capabilities.
  ///
  /// Output only.
  core.String? name;

  GoogleAppsDriveLabelsV2UserCapabilities({
    this.canAccessLabelManager,
    this.canAdministrateLabels,
    this.canCreateAdminLabels,
    this.canCreateSharedLabels,
    this.name,
  });

  GoogleAppsDriveLabelsV2UserCapabilities.fromJson(core.Map json_)
      : this(
          canAccessLabelManager: json_.containsKey('canAccessLabelManager')
              ? json_['canAccessLabelManager'] as core.bool
              : null,
          canAdministrateLabels: json_.containsKey('canAdministrateLabels')
              ? json_['canAdministrateLabels'] as core.bool
              : null,
          canCreateAdminLabels: json_.containsKey('canCreateAdminLabels')
              ? json_['canCreateAdminLabels'] as core.bool
              : null,
          canCreateSharedLabels: json_.containsKey('canCreateSharedLabels')
              ? json_['canCreateSharedLabels'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canAccessLabelManager != null)
          'canAccessLabelManager': canAccessLabelManager!,
        if (canAdministrateLabels != null)
          'canAdministrateLabels': canAdministrateLabels!,
        if (canCreateAdminLabels != null)
          'canCreateAdminLabels': canCreateAdminLabels!,
        if (canCreateSharedLabels != null)
          'canCreateSharedLabels': canCreateSharedLabels!,
        if (name != null) 'name': name!,
      };
}

/// Information about a user.
class GoogleAppsDriveLabelsV2UserInfo {
  /// The identifier for this user that can be used with the People API to get
  /// more information.
  ///
  /// For example, people/12345678.
  core.String? person;

  GoogleAppsDriveLabelsV2UserInfo({
    this.person,
  });

  GoogleAppsDriveLabelsV2UserInfo.fromJson(core.Map json_)
      : this(
          person: json_.containsKey('person')
              ? json_['person'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
      };
}

/// Limits for Field.Type.USER.
class GoogleAppsDriveLabelsV2UserLimits {
  /// Limits for list-variant of a Field type.
  GoogleAppsDriveLabelsV2ListLimits? listLimits;

  GoogleAppsDriveLabelsV2UserLimits({
    this.listLimits,
  });

  GoogleAppsDriveLabelsV2UserLimits.fromJson(core.Map json_)
      : this(
          listLimits: json_.containsKey('listLimits')
              ? GoogleAppsDriveLabelsV2ListLimits.fromJson(
                  json_['listLimits'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listLimits != null) 'listLimits': listLimits!,
      };
}

/// Provides control over how write requests are executed.
///
/// When not specified, the last write wins.
class GoogleAppsDriveLabelsV2WriteControl {
  /// The revision_id of the label that the write request will be applied to.
  ///
  /// If this is not the latest revision of the label, the request will not be
  /// processed and will return a 400 Bad Request error.
  core.String? requiredRevisionId;

  GoogleAppsDriveLabelsV2WriteControl({
    this.requiredRevisionId,
  });

  GoogleAppsDriveLabelsV2WriteControl.fromJson(core.Map json_)
      : this(
          requiredRevisionId: json_.containsKey('requiredRevisionId')
              ? json_['requiredRevisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requiredRevisionId != null)
          'requiredRevisionId': requiredRevisionId!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

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
