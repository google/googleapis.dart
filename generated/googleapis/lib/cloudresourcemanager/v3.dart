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

/// Cloud Resource Manager API - v3
///
/// Creates, reads, and updates metadata for Google Cloud Platform resource
/// containers.
///
/// For more information, see <https://cloud.google.com/resource-manager>
///
/// Create an instance of [CloudResourceManagerApi] to access these resources:
///
/// - [EffectiveTagsResource]
/// - [FoldersResource]
/// - [LiensResource]
/// - [OperationsResource]
/// - [OrganizationsResource]
/// - [ProjectsResource]
/// - [TagBindingsResource]
/// - [TagKeysResource]
/// - [TagValuesResource]
///   - [TagValuesTagHoldsResource]
library cloudresourcemanager.v3;

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

/// Creates, reads, and updates metadata for Google Cloud Platform resource
/// containers.
class CloudResourceManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  EffectiveTagsResource get effectiveTags => EffectiveTagsResource(_requester);
  FoldersResource get folders => FoldersResource(_requester);
  LiensResource get liens => LiensResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  TagBindingsResource get tagBindings => TagBindingsResource(_requester);
  TagKeysResource get tagKeys => TagKeysResource(_requester);
  TagValuesResource get tagValues => TagValuesResource(_requester);

  CloudResourceManagerApi(http.Client client,
      {core.String rootUrl = 'https://cloudresourcemanager.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class EffectiveTagsResource {
  final commons.ApiRequester _requester;

  EffectiveTagsResource(commons.ApiRequester client) : _requester = client;

  /// Return a list of effective tags for the given Google Cloud resource, as
  /// specified in `parent`.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of effective tags to return in
  /// the response. The server allows a maximum of 300 effective tags to return
  /// in a single page. If unspecified, the server will use 100 as the default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `ListEffectiveTags` that indicates from where this listing should
  /// continue.
  ///
  /// [parent] - Required. The full resource name of a resource for which you
  /// want to list the effective tags. E.g.
  /// "//cloudresourcemanager.googleapis.com/projects/123"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEffectiveTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEffectiveTagsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/effectiveTags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEffectiveTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a folder in the resource hierarchy.
  ///
  /// Returns an `Operation` which can be used to track the progress of the
  /// folder creation workflow. Upon success, the `Operation.response` field
  /// will be populated with the created Folder. In order to succeed, the
  /// addition of this new folder must not violate the folder naming, height, or
  /// fanout constraints. + The folder's `display_name` must be distinct from
  /// all other folders that share its parent. + The addition of the folder must
  /// not cause the active folder hierarchy to exceed a height of 10. Note, the
  /// full active + deleted folder hierarchy is allowed to reach a height of 20;
  /// this provides additional headroom when moving folders that contain deleted
  /// folders. + The addition of the folder must not cause the total number of
  /// folders under its parent to exceed 300. If the operation fails due to a
  /// folder constraint violation, some errors may be returned by the
  /// `CreateFolder` request, with status code `FAILED_PRECONDITION` and an
  /// error description. Other folder constraint violations will be communicated
  /// in the `Operation`, with the specific `PreconditionFailure` returned in
  /// the details list in the `Operation.error` field. The caller must have
  /// `resourcemanager.folders.create` permission on the identified parent.
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
    Folder request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/folders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Requests deletion of a folder.
  ///
  /// The folder is moved into the DELETE_REQUESTED state immediately, and is
  /// deleted approximately 30 days later. This method may only be called on an
  /// empty folder, where a folder is empty if it doesn't contain any folders or
  /// projects in the ACTIVE state. If called on a folder in DELETE_REQUESTED
  /// state the operation will result in a no-op success. The caller must have
  /// `resourcemanager.folders.delete` permission on the identified folder.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the folder to be deleted. Must be
  /// of the form `folders/{folder_id}`.
  /// Value must have pattern `^folders/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a folder identified by the supplied resource name.
  ///
  /// Valid folder resource names have the format `folders/{folder_id}` (for
  /// example, `folders/1234`). The caller must have
  /// `resourcemanager.folders.get` permission on the identified folder.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the folder to retrieve. Must be of
  /// the form `folders/{folder_id}`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Folder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Folder> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Folder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a folder.
  ///
  /// The returned policy may be empty if no such policy or resource exists. The
  /// `resource` field should be the folder's resource name, for example:
  /// "folders/1234". The caller must have
  /// `resourcemanager.folders.getIamPolicy` permission on the identified
  /// folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the folders that are direct descendants of supplied parent resource.
  ///
  /// `list()` provides a strongly consistent view of the folders underneath the
  /// specified parent resource. `list()` returns folders sorted based upon the
  /// (ascending) lexical ordering of their display_name. The caller must have
  /// `resourcemanager.folders.list` permission on the identified parent.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of folders to return in the
  /// response. The server can return fewer folders than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `ListFolders` that indicates where this listing should continue from.
  ///
  /// [parent] - Required. The resource name of the organization or folder whose
  /// folders are being listed. Must be of the form `folders/{folder_id}` or
  /// `organizations/{org_id}`. Access to this method is controlled by checking
  /// the `resourcemanager.folders.list` permission on the `parent`.
  ///
  /// [showDeleted] - Optional. Controls whether folders in the DELETE_REQUESTED
  /// state should be returned. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFoldersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFoldersResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/folders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFoldersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves a folder under a new resource parent.
  ///
  /// Returns an `Operation` which can be used to track the progress of the
  /// folder move workflow. Upon success, the `Operation.response` field will be
  /// populated with the moved folder. Upon failure, a `FolderOperationError`
  /// categorizing the failure cause will be returned - if the failure occurs
  /// synchronously then the `FolderOperationError` will be returned in the
  /// `Status.details` field. If it occurs asynchronously, then the
  /// FolderOperation will be returned in the `Operation.error` field. In
  /// addition, the `Operation.metadata` field will be populated with a
  /// `FolderOperation` message as an aid to stateless clients. Folder moves
  /// will be rejected if they violate either the naming, height, or fanout
  /// constraints described in the CreateFolder documentation. The caller must
  /// have `resourcemanager.folders.move` permission on the folder's current and
  /// proposed new parent.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Folder to move. Must be of the
  /// form folders/{folder_id}
  /// Value must have pattern `^folders/\[^/\]+$`.
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
  async.Future<Operation> move(
    MoveFolderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a folder, changing its `display_name`.
  ///
  /// Changes to the folder `display_name` will be rejected if they violate
  /// either the `display_name` formatting rules or the naming constraints
  /// described in the CreateFolder documentation. The folder's `display_name`
  /// must start and end with a letter or digit, may contain letters, digits,
  /// spaces, hyphens and underscores and can be between 3 and 30 characters.
  /// This is captured by the regular expression:
  /// `\p{L}\p{N}{1,28}[\p{L}\p{N}]`. The caller must have
  /// `resourcemanager.folders.update` permission on the identified folder. If
  /// the update fails due to the unique name constraint then a
  /// `PreconditionFailure` explaining this violation will be returned in the
  /// Status.details field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the folder. Its format is
  /// `folders/{folder_id}`, for example: "folders/1234".
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Fields to be updated. Only the `display_name` can
  /// be updated.
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
    Folder request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Search for folders that match specific filter criteria.
  ///
  /// `search()` provides an eventually consistent view of the folders a user
  /// has access to which meet the specified filter criteria. This will only
  /// return folders on which the caller has the permission
  /// `resourcemanager.folders.get`.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of folders to return in the
  /// response. The server can return fewer folders than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `SearchFolders` that indicates from where search should continue.
  ///
  /// [query] - Optional. Search criteria used to select the folders to return.
  /// If no search criteria is specified then all accessible folders will be
  /// returned. Query expressions can be used to restrict results based upon
  /// displayName, state and parent, where the operators `=` (`:`) `NOT`, `AND`
  /// and `OR` can be used along with the suffix wildcard symbol `*`. The
  /// `displayName` field in a query expression should use escaped quotes for
  /// values that include whitespace to prevent unexpected behavior. ``` | Field
  /// | Description |
  /// |-------------------------|----------------------------------------| |
  /// displayName | Filters by displayName. | | parent | Filters by parent (for
  /// example: folders/123). | | state, lifecycleState | Filters by state. | ```
  /// Some example queries are: * Query `displayName=Test*` returns Folder
  /// resources whose display name starts with "Test". * Query `state=ACTIVE`
  /// returns Folder resources with `state` set to `ACTIVE`. * Query
  /// `parent=folders/123` returns Folder resources that have `folders/123` as a
  /// parent resource. * Query `parent=folders/123 AND state=ACTIVE` returns
  /// active Folder resources that have `folders/123` as a parent resource. *
  /// Query `displayName=\\"Test String\\"` returns Folder resources with
  /// display names that include both "Test" and "String".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchFoldersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchFoldersResponse> search({
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/folders:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchFoldersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a folder, replacing any existing policy.
  ///
  /// The `resource` field should be the folder's resource name, for example:
  /// "folders/1234". The caller must have
  /// `resourcemanager.folders.setIamPolicy` permission on the identified
  /// folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified folder.
  ///
  /// The `resource` field should be the folder's resource name, for example:
  /// "folders/1234". There are no permissions required for making this API
  /// call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Cancels the deletion request for a folder.
  ///
  /// This method may be called on a folder in any state. If the folder is in
  /// the ACTIVE state the result will be a no-op success. In order to succeed,
  /// the folder's parent must be in the ACTIVE state. In addition,
  /// reintroducing the folder into the tree must not violate folder naming,
  /// height, and fanout constraints described in the CreateFolder
  /// documentation. The caller must have `resourcemanager.folders.undelete`
  /// permission on the identified folder.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the folder to undelete. Must be of
  /// the form `folders/{folder_id}`.
  /// Value must have pattern `^folders/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeleteFolderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LiensResource {
  final commons.ApiRequester _requester;

  LiensResource(commons.ApiRequester client) : _requester = client;

  /// Create a Lien which applies to the resource denoted by the `parent` field.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, applying to `projects/1234` requires permission
  /// `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the
  /// number of Liens which may be applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lien].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lien> create(
    Lien request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/liens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Lien.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a Lien by `name`.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.updateLiens`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name/identifier of the Lien to delete.
  /// Value must have pattern `^liens/.*$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a Lien by `name`.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.get`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name/identifier of the Lien.
  /// Value must have pattern `^liens/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lien].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lien> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Lien.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all Liens applied to the `parent` resource.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.get`.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of items to return. This is a suggestion
  /// for the server. The server can return fewer liens than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [parent] - Required. The name of the resource to list all attached Liens.
  /// For example, `projects/1234`. (google.api.field_policy).resource_type
  /// annotation is not set since the parent depends on the meta api
  /// implementation. This field could be a project or other sub project
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLiensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLiensResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/liens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLiensResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsResource(commons.ApiRequester client) : _requester = client;

  /// Fetches an organization resource identified by the specified resource
  /// name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Organization to fetch. This is
  /// the organization's relative path in the API, formatted as
  /// "organizations/\[organizationId\]". For example, "organizations/1234".
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Organization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Organization> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Organization.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for an organization resource.
  ///
  /// The policy may be empty if no such policy or resource exists. The
  /// `resource` field should be the organization's resource name, for example:
  /// "organizations/123". Authorization requires the IAM permission
  /// `resourcemanager.organizations.getIamPolicy` on the specified
  /// organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches organization resources that are visible to the user and satisfy
  /// the specified filter.
  ///
  /// This method returns organizations in an unspecified order. New
  /// organizations do not necessarily appear at the end of the results, and may
  /// take a small amount of time to appear. Search will only return
  /// organizations on which the user has the permission
  /// `resourcemanager.organizations.get`
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of organizations to return in
  /// the response. The server can return fewer organizations than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `SearchOrganizations` that indicates from where listing should
  /// continue.
  ///
  /// [query] - Optional. An optional query string used to filter the
  /// Organizations to return in the response. Query rules are case-insensitive.
  /// ``` | Field | Description |
  /// |------------------|--------------------------------------------| |
  /// directoryCustomerId, owner.directoryCustomerId | Filters by directory
  /// customer id. | | domain | Filters by domain. | ``` Organizations may be
  /// queried by `directoryCustomerId` or by `domain`, where the domain is a G
  /// Suite domain, for example: * Query `directorycustomerid:123456789` returns
  /// Organization resources with `owner.directory_customer_id` equal to
  /// `123456789`. * Query `domain:google.com` returns Organization resources
  /// corresponding to the domain `google.com`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchOrganizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchOrganizationsResponse> search({
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/organizations:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchOrganizationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on an organization resource.
  ///
  /// Replaces any existing policy. The `resource` field should be the
  /// organization's resource name, for example: "organizations/123".
  /// Authorization requires the IAM permission
  /// `resourcemanager.organizations.setIamPolicy` on the specified
  /// organization.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the permissions that a caller has on the specified organization.
  ///
  /// The `resource` field should be the organization's resource name, for
  /// example: "organizations/123". There are no permissions required for making
  /// this API call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Request that a new project be created.
  ///
  /// The result is an `Operation` which can be used to track the creation
  /// process. This process usually takes a few seconds, but can sometimes take
  /// much longer. The tracking `Operation` is automatically deleted after a few
  /// hours, so there is no need to call `DeleteOperation`.
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
    Project request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/projects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the project identified by the specified `name` (for example,
  /// `projects/415104041262`) for deletion.
  ///
  /// This method will only affect the project if it has a lifecycle state of
  /// ACTIVE. This method changes the Project's lifecycle state from ACTIVE to
  /// DELETE_REQUESTED. The deletion starts at an unspecified time, at which
  /// point the Project is no longer accessible. Until the deletion completes,
  /// you can check the lifecycle state checked by retrieving the project with
  /// GetProject, and the project remains visible to ListProjects. However, you
  /// cannot update the project. After the deletion completes, the project is
  /// not retrievable by the GetProject, ListProjects, and SearchProjects
  /// methods. This method behaves idempotently, such that deleting a
  /// `DELETE_REQUESTED` project will not cause an error, but also won't do
  /// anything. The caller must have `resourcemanager.projects.delete`
  /// permissions for this project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Project (for example,
  /// `projects/415104041262`).
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the project identified by the specified `name` (for example,
  /// `projects/415104041262`).
  ///
  /// The caller must have `resourcemanager.projects.get` permission for this
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the project (for example,
  /// `projects/415104041262`).
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Project.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the IAM access control policy for the specified project, in the
  /// format `projects/{ProjectIdOrNumber}` e.g. projects/123.
  ///
  /// Permission is denied if the policy or the resource do not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists projects that are direct children of the specified folder or
  /// organization resource.
  ///
  /// `list()` provides a strongly consistent view of the projects underneath
  /// the specified parent resource. `list()` returns projects sorted based upon
  /// the (ascending) lexical ordering of their `display_name`. The caller must
  /// have `resourcemanager.projects.list` permission on the identified parent.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of projects to return in the
  /// response. The server can return fewer projects than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to ListProjects that indicates from where listing should continue.
  ///
  /// [parent] - Required. The name of the parent resource to list projects
  /// under. For example, setting this field to 'folders/1234' would list all
  /// projects directly under that folder.
  ///
  /// [showDeleted] - Optional. Indicate that projects in the `DELETE_REQUESTED`
  /// state should also be returned. Normally only `ACTIVE` projects are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProjectsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/projects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProjectsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Move a project to another place in your resource hierarchy, under a new
  /// resource parent.
  ///
  /// Returns an operation which can be used to track the process of the project
  /// move workflow. Upon success, the `Operation.response` field will be
  /// populated with the moved project. The caller must have
  /// `resourcemanager.projects.move` permission on the project, on the
  /// project's current and proposed new parent. If project has no current
  /// parent, or it currently does not have an associated organization resource,
  /// you will also need the `resourcemanager.projects.setIamPolicy` permission
  /// in the project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the project to move.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> move(
    MoveProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the `display_name` and labels of the project identified by the
  /// specified `name` (for example, `projects/415104041262`).
  ///
  /// Deleting all labels requires an update mask for labels field. The caller
  /// must have `resourcemanager.projects.update` permission for this project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique resource name of the project. It is an
  /// int64 generated number prefixed by "projects/". Example:
  /// `projects/415104041262`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. An update mask to selectively update fields.
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
    Project request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Search for projects that the caller has both
  /// `resourcemanager.projects.get` permission on, and also satisfy the
  /// specified query.
  ///
  /// This method returns projects in an unspecified order. This method is
  /// eventually consistent with project mutations; this means that a newly
  /// created project may not appear in the results or recent updates to an
  /// existing project may not be reflected in the results. To retrieve the
  /// latest state of a project, use the GetProject method.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of projects to return in the
  /// response. The server can return fewer projects than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to ListProjects that indicates from where listing should continue.
  ///
  /// [query] - Optional. A query string for searching for projects that the
  /// caller has `resourcemanager.projects.get` permission to. If multiple
  /// fields are included in the query, then it will return results that match
  /// any of the fields. Some eligible fields are: ``` | Field | Description |
  /// |-------------------------|----------------------------------------------|
  /// | displayName, name | Filters by displayName. | | parent | Project's
  /// parent (for example: folders/123, organizations / * ). Prefer parent field
  /// over parent.type and parent.id.| | parent.type | Parent's type: `folder`
  /// or `organization`. | | parent.id | Parent's id number (for example: 123) |
  /// | id, projectId | Filters by projectId. | | state, lifecycleState |
  /// Filters by state. | | labels | Filters by label name or value. | |
  /// labels.\ (where *key* is the name of a label) | Filters by label name.|
  /// ``` Search expressions are case insensitive. Some examples queries: ``` |
  /// Query | Description |
  /// |------------------|-----------------------------------------------------|
  /// | name:how* | The project's name starts with "how". | | name:Howl | The
  /// project's name is `Howl` or `howl`. | | name:HOWL | Equivalent to above. |
  /// | NAME:howl | Equivalent to above. | | labels.color:* | The project has
  /// the label `color`. | | labels.color:red | The project's label `color` has
  /// the value `red`. | | labels.color:red labels.size:big | The project's
  /// label `color` has the value `red` or its label `size` has the value `big`.
  /// | ``` If no query is specified, the call will return projects for which
  /// the user has the `resourcemanager.projects.get` permission.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchProjectsResponse> search({
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/projects:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchProjectsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM access control policy for the specified project, in the
  /// format `projects/{ProjectIdOrNumber}` e.g. projects/123.
  ///
  /// CAUTION: This method will replace the existing policy, and cannot be used
  /// to append additional IAM settings. Note: Removing service accounts from
  /// policies or changing their roles can render services completely
  /// inoperable. It is important to understand how the service account is being
  /// used before removing or updating its roles. The following constraints
  /// apply when using `setIamPolicy()`: + Project does not support `allUsers`
  /// and `allAuthenticatedUsers` as `members` in a `Binding` of a `Policy`. +
  /// The owner role can be granted to a `user`, `serviceAccount`, or a group
  /// that is part of an organization. For example,
  /// group@myownpersonaldomain.com could be added as an owner to a project in
  /// the myownpersonaldomain.com organization, but not the examplepetstore.com
  /// organization. + Service accounts can be made owners of a project directly
  /// without any restrictions. However, to be added as an owner, a user must be
  /// invited using the Cloud Platform console and must accept the invitation. +
  /// A user cannot be granted the owner role using `setIamPolicy()`. The user
  /// must be granted the owner role using the Cloud Platform Console and must
  /// explicitly accept the invitation. + Invitations to grant the owner role
  /// cannot be sent using `setIamPolicy()`; they must be sent only using the
  /// Cloud Platform Console. + If the project is not part of an organization,
  /// there must be at least one owner who has accepted the Terms of Service
  /// (ToS) agreement in the policy. Calling `setIamPolicy()` to remove the last
  /// ToS-accepted owner from the policy will fail. This restriction also
  /// applies to legacy projects that no longer have owners who have accepted
  /// the ToS. Edits to IAM policies will be rejected until the lack of a
  /// ToS-accepting owner is rectified. If the project is part of an
  /// organization, you can remove all owners, potentially making the
  /// organization inaccessible.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified project, in the
  /// format `projects/{ProjectIdOrNumber}` e.g. projects/123..
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores the project identified by the specified `name` (for example,
  /// `projects/415104041262`).
  ///
  /// You can only use this method for a project that has a lifecycle state of
  /// DELETE_REQUESTED. After deletion starts, the project cannot be restored.
  /// The caller must have `resourcemanager.projects.undelete` permission for
  /// this project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the project (for example,
  /// `projects/415104041262`). Required.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeleteProjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TagBindingsResource {
  final commons.ApiRequester _requester;

  TagBindingsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a TagBinding between a TagValue and a Google Cloud resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [validateOnly] - Optional. Set to true to perform the validations
  /// necessary for creating the resource, but not actually perform the action.
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
    TagBinding request, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/tagBindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a TagBinding.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the TagBinding. This is a String of the
  /// form: `tagBindings/{id}` (e.g.
  /// `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
  /// Value must have pattern `^tagBindings/.*$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the TagBindings for the given Google Cloud resource, as specified
  /// with `parent`.
  ///
  /// NOTE: The `parent` field is expected to be a full resource name:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of TagBindings to return in the
  /// response. The server allows a maximum of 300 TagBindings to return. If
  /// unspecified, the server will use 100 as the default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `ListTagBindings` that indicates where this listing should continue
  /// from.
  ///
  /// [parent] - Required. The full resource name of a resource for which you
  /// want to list existing TagBindings. E.g.
  /// "//cloudresourcemanager.googleapis.com/projects/123"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTagBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagBindingsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/tagBindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTagBindingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TagKeysResource {
  final commons.ApiRequester _requester;

  TagKeysResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new TagKey.
  ///
  /// If another request with the same parameters is sent while the original
  /// request is in process, the second request will receive an error. A maximum
  /// of 1000 TagKeys can exist under a parent at any given time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [validateOnly] - Optional. Set to true to perform validations necessary
  /// for creating the resource, but not actually perform the action.
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
    TagKey request, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/tagKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a TagKey.
  ///
  /// The TagKey cannot be deleted if it has any child TagValues.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of a TagKey to be deleted in the
  /// format `tagKeys/123`. The TagKey cannot be a parent of any existing
  /// TagValues or it will not be deleted successfully.
  /// Value must have pattern `^tagKeys/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag known to the client for the expected state of
  /// the TagKey. This is to be used for optimistic concurrency.
  ///
  /// [validateOnly] - Optional. Set as true to perform validations necessary
  /// for deletion, but not actually perform the action.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a TagKey.
  ///
  /// This method will return `PERMISSION_DENIED` if the key does not exist or
  /// the user does not have permission to view it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A resource name in the format `tagKeys/{id}`, such as
  /// `tagKeys/123`.
  /// Value must have pattern `^tagKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TagKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TagKey> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TagKey.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a TagKey.
  ///
  /// The returned policy may be empty if no such policy or resource exists. The
  /// `resource` field should be the TagKey's resource name. For example,
  /// "tagKeys/1234". The caller must have
  /// `cloudresourcemanager.googleapis.com/tagKeys.getIamPolicy` permission on
  /// the specified TagKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^tagKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all TagKeys for a parent resource.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of TagKeys to return in the
  /// response. The server allows a maximum of 300 TagKeys to return. If
  /// unspecified, the server will use 100 as the default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `ListTagKey` that indicates where this listing should continue from.
  ///
  /// [parent] - Required. The resource name of the new TagKey's parent. Must be
  /// of the form `folders/{folder_id}` or `organizations/{org_id}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTagKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagKeysResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/tagKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTagKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the TagKey resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name for a TagKey. Must be in the format
  /// `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for
  /// the TagKey.
  /// Value must have pattern `^tagKeys/\[^/\]+$`.
  ///
  /// [updateMask] - Fields to be updated. The mask may only contain
  /// `description` or `etag`. If omitted entirely, both `description` and
  /// `etag` are assumed to be significant.
  ///
  /// [validateOnly] - Set as true to perform validations necessary for updating
  /// the resource, but not actually perform the action.
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
    TagKey request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a TagKey, replacing any existing policy.
  ///
  /// The `resource` field should be the TagKey's resource name. For example,
  /// "tagKeys/1234". The caller must have
  /// `resourcemanager.tagKeys.setIamPolicy` permission on the identified
  /// tagValue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^tagKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified TagKey.
  ///
  /// The `resource` field should be the TagKey's resource name. For example,
  /// "tagKeys/1234". There are no permissions required for making this API
  /// call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^tagKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TagValuesResource {
  final commons.ApiRequester _requester;

  TagValuesTagHoldsResource get tagHolds =>
      TagValuesTagHoldsResource(_requester);

  TagValuesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a TagValue as a child of the specified TagKey.
  ///
  /// If a another request with the same parameters is sent while the original
  /// request is in process the second request will receive an error. A maximum
  /// of 1000 TagValues can exist under a TagKey at any given time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [validateOnly] - Optional. Set as true to perform the validations
  /// necessary for creating the resource, but not actually perform the action.
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
    TagValue request, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/tagValues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a TagValue.
  ///
  /// The TagValue cannot have any bindings when it is deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for TagValue to be deleted in the format
  /// tagValues/456.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag known to the client for the expected state of
  /// the TagValue. This is to be used for optimistic concurrency.
  ///
  /// [validateOnly] - Optional. Set as true to perform the validations
  /// necessary for deletion, but not actually perform the action.
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
    core.String? etag,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a TagValue.
  ///
  /// This method will return `PERMISSION_DENIED` if the value does not exist or
  /// the user does not have permission to view it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name for TagValue to be fetched in the format
  /// `tagValues/456`.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TagValue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TagValue> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TagValue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a TagValue.
  ///
  /// The returned policy may be empty if no such policy or resource exists. The
  /// `resource` field should be the TagValue's resource name. For example:
  /// `tagValues/1234`. The caller must have the
  /// `cloudresourcemanager.googleapis.com/tagValues.getIamPolicy` permission on
  /// the identified TagValue to get the access control policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all TagValues for a specific TagKey.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The maximum number of TagValues to return in the
  /// response. The server allows a maximum of 300 TagValues to return. If
  /// unspecified, the server will use 100 as the default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `ListTagValues` that indicates where this listing should continue from.
  ///
  /// [parent] - Required. Resource name for TagKey, parent of the TagValues to
  /// be listed, in the format `tagKeys/123`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTagValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagValuesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v3/tagValues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTagValuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the TagValue resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Resource name for TagValue in the format
  /// `tagValues/456`.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Fields to be updated.
  ///
  /// [validateOnly] - Optional. True to perform validations necessary for
  /// updating the resource, but not actually perform the action.
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
    TagValue request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a TagValue, replacing any existing
  /// policy.
  ///
  /// The `resource` field should be the TagValue's resource name. For example:
  /// `tagValues/1234`. The caller must have
  /// `resourcemanager.tagValues.setIamPolicy` permission on the identified
  /// tagValue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified TagValue.
  ///
  /// The `resource` field should be the TagValue's resource name. For example:
  /// `tagValues/1234`. There are no permissions required for making this API
  /// call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v3/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TagValuesTagHoldsResource {
  final commons.ApiRequester _requester;

  TagValuesTagHoldsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a TagHold.
  ///
  /// Returns ALREADY_EXISTS if a TagHold with the same resource and origin
  /// exists under the same TagValue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the TagHold's parent TagValue.
  /// Must be of the form: `tagValues/{tag-value-id}`.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Set to true to perform the validations
  /// necessary for creating the resource, but not actually perform the action.
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
    TagHold request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/tagHolds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a TagHold.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the TagHold to delete. Must be of
  /// the form: `tagValues/{tag-value-id}/tagHolds/{tag-hold-id}`.
  /// Value must have pattern `^tagValues/\[^/\]+/tagHolds/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Set to true to perform the validations
  /// necessary for deleting the resource, but not actually perform the action.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists TagHolds under a TagValue.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent TagValue. Must be of
  /// the form: `tagValues/{tag-value-id}`.
  /// Value must have pattern `^tagValues/\[^/\]+$`.
  ///
  /// [filter] - Optional. Criteria used to select a subset of TagHolds parented
  /// by the TagValue to return. This field follows the syntax defined by
  /// aip.dev/160; the `holder` and `origin` fields are supported for filtering.
  /// Currently only `AND` syntax is supported. Some example queries are: *
  /// `holder =
  /// //compute.googleapis.com/compute/projects/myproject/regions/us-east-1/instanceGroupManagers/instance-group`
  /// * `origin = 35678234` * `holder =
  /// //compute.googleapis.com/compute/projects/myproject/regions/us-east-1/instanceGroupManagers/instance-group
  /// AND origin = 35678234`
  ///
  /// [pageSize] - Optional. The maximum number of TagHolds to return in the
  /// response. The server allows a maximum of 300 TagHolds to return. If
  /// unspecified, the server will use 100 as the default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to `ListTagHolds` that indicates where this listing should continue from.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTagHoldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTagHoldsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v3/' + core.Uri.encodeFull('$parent') + '/tagHolds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTagHoldsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// An EffectiveTag represents a tag that applies to a resource during policy
/// evaluation.
///
/// Tags can be either directly bound to a resource or inherited from its
/// ancestor. EffectiveTag contains the name and namespaced_name of the tag
/// value and tag key, with additional fields of `inherited` to indicate the
/// inheritance status of the effective tag.
class EffectiveTag {
  /// Indicates the inheritance status of a tag value attached to the given
  /// resource.
  ///
  /// If the tag value is inherited from one of the resource's ancestors,
  /// inherited will be true. If false, then the tag value is directly attached
  /// to the resource, inherited will be false.
  core.bool? inherited;

  /// The namespaced_name of the TagKey.
  ///
  /// Now only supported in the format of
  /// `{organization_id}/{tag_key_short_name}`. Other formats will be supported
  /// when we add non-org parented tags.
  core.String? namespacedTagKey;

  /// Namespaced name of the TagValue.
  ///
  /// Now only supported in the format
  /// `{organization_id}/{tag_key_short_name}/{tag_value_short_name}`. Other
  /// formats will be supported when we add non-org parented tags.
  core.String? namespacedTagValue;

  /// The name of the TagKey, in the format `tagKeys/{id}`, such as
  /// `tagKeys/123`.
  core.String? tagKey;

  /// Resource name for TagValue in the format `tagValues/456`.
  core.String? tagValue;

  EffectiveTag({
    this.inherited,
    this.namespacedTagKey,
    this.namespacedTagValue,
    this.tagKey,
    this.tagValue,
  });

  EffectiveTag.fromJson(core.Map json_)
      : this(
          inherited: json_.containsKey('inherited')
              ? json_['inherited'] as core.bool
              : null,
          namespacedTagKey: json_.containsKey('namespacedTagKey')
              ? json_['namespacedTagKey'] as core.String
              : null,
          namespacedTagValue: json_.containsKey('namespacedTagValue')
              ? json_['namespacedTagValue'] as core.String
              : null,
          tagKey: json_.containsKey('tagKey')
              ? json_['tagKey'] as core.String
              : null,
          tagValue: json_.containsKey('tagValue')
              ? json_['tagValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inherited != null) 'inherited': inherited!,
        if (namespacedTagKey != null) 'namespacedTagKey': namespacedTagKey!,
        if (namespacedTagValue != null)
          'namespacedTagValue': namespacedTagValue!,
        if (tagKey != null) 'tagKey': tagKey!,
        if (tagValue != null) 'tagValue': tagValue!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// A folder in an organization's resource hierarchy, used to organize that
/// organization's resources.
class Folder {
  /// Timestamp when the folder was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Timestamp when the folder was requested to be deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The folder's display name.
  ///
  /// A folder's display name must be unique amongst its siblings. For example,
  /// no two folders with the same parent can share the same display name. The
  /// display name must start and end with a letter or digit, may contain
  /// letters, digits, spaces, hyphens and underscores and can be no longer than
  /// 30 characters. This is captured by the regular expression:
  /// `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  core.String? displayName;

  /// A checksum computed by the server based on the current value of the folder
  /// resource.
  ///
  /// This may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The resource name of the folder.
  ///
  /// Its format is `folders/{folder_id}`, for example: "folders/1234".
  ///
  /// Output only.
  core.String? name;

  /// The folder's parent's resource name.
  ///
  /// Updates to the folder's parent must be performed using MoveFolder.
  ///
  /// Required.
  core.String? parent;

  /// The lifecycle state of the folder.
  ///
  /// Updates to the state must be performed using DeleteFolder and
  /// UndeleteFolder.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The folder has been marked for deletion by the
  /// user.
  core.String? state;

  /// Timestamp when the folder was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Folder({
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.name,
    this.parent,
    this.state,
    this.updateTime,
  });

  Folder.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// A Lien represents an encumbrance on the actions that can be performed on a
/// resource.
typedef Lien = $Lien;

/// The response of ListEffectiveTags.
class ListEffectiveTagsResponse {
  /// A possibly paginated list of effective tags for the specified resource.
  core.List<EffectiveTag>? effectiveTags;

  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token is
  /// returned. It encodes the position of the current result cursor. Feeding
  /// this value into a new list request with the `page_token` parameter gives
  /// the next page of the results. When `next_page_token` is not filled in,
  /// there is no next page and the list returned is the last page in the result
  /// set. Pagination tokens have a limited lifetime.
  core.String? nextPageToken;

  ListEffectiveTagsResponse({
    this.effectiveTags,
    this.nextPageToken,
  });

  ListEffectiveTagsResponse.fromJson(core.Map json_)
      : this(
          effectiveTags: json_.containsKey('effectiveTags')
              ? (json_['effectiveTags'] as core.List)
                  .map((value) => EffectiveTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effectiveTags != null) 'effectiveTags': effectiveTags!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The ListFolders response message.
class ListFoldersResponse {
  /// A possibly paginated list of folders that are direct descendants of the
  /// specified parent resource.
  core.List<Folder>? folders;

  /// A pagination token returned from a previous call to `ListFolders` that
  /// indicates from where listing should continue.
  core.String? nextPageToken;

  ListFoldersResponse({
    this.folders,
    this.nextPageToken,
  });

  ListFoldersResponse.fromJson(core.Map json_)
      : this(
          folders: json_.containsKey('folders')
              ? (json_['folders'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folders != null) 'folders': folders!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Liens.ListLiens.
class ListLiensResponse {
  /// A list of Liens.
  core.List<Lien>? liens;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListLiensResponse({
    this.liens,
    this.nextPageToken,
  });

  ListLiensResponse.fromJson(core.Map json_)
      : this(
          liens: json_.containsKey('liens')
              ? (json_['liens'] as core.List)
                  .map((value) => Lien.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (liens != null) 'liens': liens!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A page of the response received from the ListProjects method.
///
/// A paginated response where more pages are available has `next_page_token`
/// set. This token can be used in a subsequent request to retrieve the next
/// request page. NOTE: A response may contain fewer elements than the request
/// `page_size` and still have a `next_page_token`.
class ListProjectsResponse {
  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token is
  /// returned. It encodes the position of the current result cursor. Feeding
  /// this value into a new list request with the `page_token` parameter gives
  /// the next page of the results. When `next_page_token` is not filled in,
  /// there is no next page and the list returned is the last page in the result
  /// set. Pagination tokens have a limited lifetime.
  core.String? nextPageToken;

  /// The list of Projects under the parent.
  ///
  /// This list can be paginated.
  core.List<Project>? projects;

  ListProjectsResponse({
    this.nextPageToken,
    this.projects,
  });

  ListProjectsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          projects: json_.containsKey('projects')
              ? (json_['projects'] as core.List)
                  .map((value) => Project.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projects != null) 'projects': projects!,
      };
}

/// The ListTagBindings response.
class ListTagBindingsResponse {
  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token is
  /// returned. It encodes the position of the current result cursor. Feeding
  /// this value into a new list request with the `page_token` parameter gives
  /// the next page of the results. When `next_page_token` is not filled in,
  /// there is no next page and the list returned is the last page in the result
  /// set. Pagination tokens have a limited lifetime.
  core.String? nextPageToken;

  /// A possibly paginated list of TagBindings for the specified resource.
  core.List<TagBinding>? tagBindings;

  ListTagBindingsResponse({
    this.nextPageToken,
    this.tagBindings,
  });

  ListTagBindingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tagBindings: json_.containsKey('tagBindings')
              ? (json_['tagBindings'] as core.List)
                  .map((value) => TagBinding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tagBindings != null) 'tagBindings': tagBindings!,
      };
}

/// The ListTagHolds response.
class ListTagHoldsResponse {
  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token is
  /// returned. It encodes the position of the current result cursor. Feeding
  /// this value into a new list request with the `page_token` parameter gives
  /// the next page of the results. When `next_page_token` is not filled in,
  /// there is no next page and the list returned is the last page in the result
  /// set. Pagination tokens have a limited lifetime.
  core.String? nextPageToken;

  /// A possibly paginated list of TagHolds.
  core.List<TagHold>? tagHolds;

  ListTagHoldsResponse({
    this.nextPageToken,
    this.tagHolds,
  });

  ListTagHoldsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tagHolds: json_.containsKey('tagHolds')
              ? (json_['tagHolds'] as core.List)
                  .map((value) => TagHold.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tagHolds != null) 'tagHolds': tagHolds!,
      };
}

/// The ListTagKeys response message.
class ListTagKeysResponse {
  /// A pagination token returned from a previous call to `ListTagKeys` that
  /// indicates from where listing should continue.
  core.String? nextPageToken;

  /// List of TagKeys that live under the specified parent in the request.
  core.List<TagKey>? tagKeys;

  ListTagKeysResponse({
    this.nextPageToken,
    this.tagKeys,
  });

  ListTagKeysResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tagKeys: json_.containsKey('tagKeys')
              ? (json_['tagKeys'] as core.List)
                  .map((value) => TagKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tagKeys != null) 'tagKeys': tagKeys!,
      };
}

/// The ListTagValues response.
class ListTagValuesResponse {
  /// A pagination token returned from a previous call to `ListTagValues` that
  /// indicates from where listing should continue.
  ///
  /// This is currently not used, but the server may at any point start
  /// supplying a valid token.
  core.String? nextPageToken;

  /// A possibly paginated list of TagValues that are direct descendants of the
  /// specified parent TagKey.
  core.List<TagValue>? tagValues;

  ListTagValuesResponse({
    this.nextPageToken,
    this.tagValues,
  });

  ListTagValuesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tagValues: json_.containsKey('tagValues')
              ? (json_['tagValues'] as core.List)
                  .map((value) => TagValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tagValues != null) 'tagValues': tagValues!,
      };
}

/// The MoveFolder request message.
class MoveFolderRequest {
  /// The resource name of the folder or organization which should be the
  /// folder's new parent.
  ///
  /// Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  ///
  /// Required.
  core.String? destinationParent;

  MoveFolderRequest({
    this.destinationParent,
  });

  MoveFolderRequest.fromJson(core.Map json_)
      : this(
          destinationParent: json_.containsKey('destinationParent')
              ? json_['destinationParent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationParent != null) 'destinationParent': destinationParent!,
      };
}

/// The request sent to MoveProject method.
class MoveProjectRequest {
  /// The new parent to move the Project under.
  ///
  /// Required.
  core.String? destinationParent;

  MoveProjectRequest({
    this.destinationParent,
  });

  MoveProjectRequest.fromJson(core.Map json_)
      : this(
          destinationParent: json_.containsKey('destinationParent')
              ? json_['destinationParent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationParent != null) 'destinationParent': destinationParent!,
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

/// The root node in the resource hierarchy to which a particular entity's (a
/// company, for example) resources belong.
class Organization {
  /// Timestamp when the Organization was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Timestamp when the Organization was requested for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The G Suite / Workspace customer id used in the Directory API.
  ///
  /// Immutable.
  core.String? directoryCustomerId;

  /// A human-readable string that refers to the organization in the Google
  /// Cloud Console.
  ///
  /// This string is set by the server and cannot be changed. The string will be
  /// set to the primary domain (for example, "google.com") of the Google
  /// Workspace customer that owns the organization.
  ///
  /// Output only.
  core.String? displayName;

  /// A checksum computed by the server based on the current value of the
  /// Organization resource.
  ///
  /// This may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The resource name of the organization.
  ///
  /// This is the organization's relative path in the API. Its format is
  /// "organizations/\[organization_id\]". For example, "organizations/1234".
  ///
  /// Output only.
  core.String? name;

  /// The organization's current lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state. This is only useful for
  /// distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The organization has been marked for deletion by
  /// the user.
  core.String? state;

  /// Timestamp when the Organization was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  Organization({
    this.createTime,
    this.deleteTime,
    this.directoryCustomerId,
    this.displayName,
    this.etag,
    this.name,
    this.state,
    this.updateTime,
  });

  Organization.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          directoryCustomerId: json_.containsKey('directoryCustomerId')
              ? json_['directoryCustomerId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (directoryCustomerId != null)
          'directoryCustomerId': directoryCustomerId!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// A project is a high-level Google Cloud entity.
///
/// It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google
/// Cloud Platform resources.
class Project {
  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which this resource was requested for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// A user-assigned display name of the project.
  ///
  /// When present it must be between 4 to 30 characters. Allowed characters
  /// are: lowercase and uppercase letters, numbers, hyphen, single-quote,
  /// double-quote, space, and exclamation point. Example: `My Project`
  ///
  /// Optional.
  core.String? displayName;

  /// A checksum computed by the server based on the current value of the
  /// Project resource.
  ///
  /// This may be sent on update and delete requests to ensure the client has an
  /// up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// The labels associated with this project.
  ///
  /// Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Label
  /// values must be between 0 and 63 characters long and must conform to the
  /// regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?. No more than 256
  /// labels can be associated with a given resource. Clients should store
  /// labels in a representation such as JSON that does not depend on specific
  /// characters being disallowed. Example: `"myBusinessDimension" :
  /// "businessValue"`
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The unique resource name of the project.
  ///
  /// It is an int64 generated number prefixed by "projects/". Example:
  /// `projects/415104041262`
  ///
  /// Output only.
  core.String? name;

  /// A reference to a parent Resource.
  ///
  /// eg., `organizations/123` or `folders/876`.
  ///
  /// Optional.
  core.String? parent;

  /// The unique, user-assigned id of the project.
  ///
  /// It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must
  /// start with a letter. Trailing hyphens are prohibited. Example:
  /// `tokyo-rain-123`
  ///
  /// Immutable.
  core.String? projectId;

  /// The project lifecycle state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state. This is only used/useful for
  /// distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The project has been marked for deletion by the
  /// user (by invoking DeleteProject) or by the system (Google Cloud Platform).
  /// This can generally be reversed by invoking UndeleteProject.
  core.String? state;

  /// The most recent time this resource was modified.
  ///
  /// Output only.
  core.String? updateTime;

  Project({
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.parent,
    this.projectId,
    this.state,
    this.updateTime,
  });

  Project.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (projectId != null) 'projectId': projectId!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The response message for searching folders.
class SearchFoldersResponse {
  /// A possibly paginated folder search results.
  ///
  /// the specified parent resource.
  core.List<Folder>? folders;

  /// A pagination token returned from a previous call to `SearchFolders` that
  /// indicates from where searching should continue.
  core.String? nextPageToken;

  SearchFoldersResponse({
    this.folders,
    this.nextPageToken,
  });

  SearchFoldersResponse.fromJson(core.Map json_)
      : this(
          folders: json_.containsKey('folders')
              ? (json_['folders'] as core.List)
                  .map((value) => Folder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folders != null) 'folders': folders!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response returned from the `SearchOrganizations` method.
class SearchOrganizationsResponse {
  /// A pagination token to be used to retrieve the next page of results.
  ///
  /// If the result is too large to fit within the page size specified in the
  /// request, this field will be set with a token that can be used to fetch the
  /// next page of results. If this field is empty, it indicates that this
  /// response contains the last page of results.
  core.String? nextPageToken;

  /// The list of Organizations that matched the search query, possibly
  /// paginated.
  core.List<Organization>? organizations;

  SearchOrganizationsResponse({
    this.nextPageToken,
    this.organizations,
  });

  SearchOrganizationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          organizations: json_.containsKey('organizations')
              ? (json_['organizations'] as core.List)
                  .map((value) => Organization.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (organizations != null) 'organizations': organizations!,
      };
}

/// A page of the response received from the SearchProjects method.
///
/// A paginated response where more pages are available has `next_page_token`
/// set. This token can be used in a subsequent request to retrieve the next
/// request page.
class SearchProjectsResponse {
  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token is
  /// returned. It encodes the position of the current result cursor. Feeding
  /// this value into a new list request with the `page_token` parameter gives
  /// the next page of the results. When `next_page_token` is not filled in,
  /// there is no next page and the list returned is the last page in the result
  /// set. Pagination tokens have a limited lifetime.
  core.String? nextPageToken;

  /// The list of Projects that matched the list filter query.
  ///
  /// This list can be paginated.
  core.List<Project>? projects;

  SearchProjectsResponse({
    this.nextPageToken,
    this.projects,
  });

  SearchProjectsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          projects: json_.containsKey('projects')
              ? (json_['projects'] as core.List)
                  .map((value) => Project.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projects != null) 'projects': projects!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
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

/// A TagBinding represents a connection between a TagValue and a cloud resource
/// Once a TagBinding is created, the TagValue is applied to all the descendants
/// of the Google Cloud resource.
class TagBinding {
  /// The name of the TagBinding.
  ///
  /// This is a String of the form:
  /// `tagBindings/{full-resource-name}/{tag-value-name}` (e.g.
  /// `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).
  ///
  /// Output only.
  core.String? name;

  /// The full resource name of the resource the TagValue is bound to.
  ///
  /// E.g. `//cloudresourcemanager.googleapis.com/projects/123`
  core.String? parent;

  /// The TagValue of the TagBinding.
  ///
  /// Must be of the form `tagValues/456`.
  core.String? tagValue;

  TagBinding({
    this.name,
    this.parent,
    this.tagValue,
  });

  TagBinding.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          tagValue: json_.containsKey('tagValue')
              ? json_['tagValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (tagValue != null) 'tagValue': tagValue!,
      };
}

/// A TagHold represents the use of a TagValue that is not captured by
/// TagBindings.
///
/// If a TagValue has any TagHolds, deletion will be blocked. This resource is
/// intended to be created in the same cloud location as the `holder`.
class TagHold {
  /// The time this TagHold was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A URL where an end user can learn more about removing this hold.
  ///
  /// E.g.
  /// `https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing`
  ///
  /// Optional.
  core.String? helpLink;

  /// The name of the resource where the TagValue is being used.
  ///
  /// Must be less than 200 characters. E.g.
  /// `//compute.googleapis.com/compute/projects/myproject/regions/us-east-1/instanceGroupManagers/instance-group`
  ///
  /// Required.
  core.String? holder;

  /// The resource name of a TagHold.
  ///
  /// This is a String of the form:
  /// `tagValues/{tag-value-id}/tagHolds/{tag-hold-id}` (e.g.
  /// `tagValues/123/tagHolds/456`). This resource name is generated by the
  /// server.
  ///
  /// Output only.
  core.String? name;

  /// An optional string representing the origin of this request.
  ///
  /// This field should include human-understandable information to distinguish
  /// origins from each other. Must be less than 200 characters. E.g.
  /// `migs-35678234`
  ///
  /// Optional.
  core.String? origin;

  TagHold({
    this.createTime,
    this.helpLink,
    this.holder,
    this.name,
    this.origin,
  });

  TagHold.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          helpLink: json_.containsKey('helpLink')
              ? json_['helpLink'] as core.String
              : null,
          holder: json_.containsKey('holder')
              ? json_['holder'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          origin: json_.containsKey('origin')
              ? json_['origin'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (helpLink != null) 'helpLink': helpLink!,
        if (holder != null) 'holder': holder!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
      };
}

/// A TagKey, used to group a set of TagValues.
class TagKey {
  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// User-assigned description of the TagKey.
  ///
  /// Must not exceed 256 characters. Read-write.
  ///
  /// Optional.
  core.String? description;

  /// Entity tag which users can pass to prevent race conditions.
  ///
  /// This field is always set in server responses. See UpdateTagKeyRequest for
  /// details.
  ///
  /// Optional.
  core.String? etag;

  /// The resource name for a TagKey.
  ///
  /// Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the
  /// generated numeric id for the TagKey.
  ///
  /// Immutable.
  core.String? name;

  /// Namespaced name of the TagKey.
  ///
  /// Output only. Immutable.
  core.String? namespacedName;

  /// The resource name of the new TagKey's parent.
  ///
  /// Must be of the form `organizations/{org_id}`.
  ///
  /// Immutable.
  core.String? parent;

  /// A purpose denotes that this Tag is intended for use in policies of a
  /// specific policy engine, and will involve that policy engine in management
  /// operations involving this Tag.
  ///
  /// A purpose does not grant a policy engine exclusive rights to the Tag, and
  /// it may be referenced by other policy engines. A purpose cannot be changed
  /// once set.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PURPOSE_UNSPECIFIED" : Unspecified purpose.
  /// - "GCE_FIREWALL" : Purpose for Compute Engine firewalls. A corresponding
  /// purpose_data should be set for the network the tag is intended for. The
  /// key should be 'network' and the value should be in either of these two
  /// formats:
  /// -https://www.googleapis.com/compute/{compute_version}/projects/{project_id}/global/networks/{network_id}
  /// -{project_id}/{network_name} Examples:
  /// -https://www.googleapis.com/compute/staging_v1/projects/fail-closed-load-testing/global/networks/6992953698831725600
  /// -fail-closed-load-testing/load-testing-network
  core.String? purpose;

  /// Purpose data corresponds to the policy system that the tag is intended
  /// for.
  ///
  /// See documentation for `Purpose` for formatting of this field. Purpose data
  /// cannot be changed once set.
  ///
  /// Optional.
  core.Map<core.String, core.String>? purposeData;

  /// The user friendly name for a TagKey.
  ///
  /// The short name should be unique for TagKeys within the same tag namespace.
  /// The short name must be 1-63 characters, beginning and ending with an
  /// alphanumeric character (\[a-z0-9A-Z\]) with dashes (-), underscores (_),
  /// dots (.), and alphanumerics between.
  ///
  /// Required. Immutable.
  core.String? shortName;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  TagKey({
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.namespacedName,
    this.parent,
    this.purpose,
    this.purposeData,
    this.shortName,
    this.updateTime,
  });

  TagKey.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          namespacedName: json_.containsKey('namespacedName')
              ? json_['namespacedName'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          purpose: json_.containsKey('purpose')
              ? json_['purpose'] as core.String
              : null,
          purposeData: json_.containsKey('purposeData')
              ? (json_['purposeData'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          shortName: json_.containsKey('shortName')
              ? json_['shortName'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (namespacedName != null) 'namespacedName': namespacedName!,
        if (parent != null) 'parent': parent!,
        if (purpose != null) 'purpose': purpose!,
        if (purposeData != null) 'purposeData': purposeData!,
        if (shortName != null) 'shortName': shortName!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A TagValue is a child of a particular TagKey.
///
/// This is used to group cloud resources for the purpose of controlling them
/// using policies.
class TagValue {
  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// User-assigned description of the TagValue.
  ///
  /// Must not exceed 256 characters. Read-write.
  ///
  /// Optional.
  core.String? description;

  /// Entity tag which users can pass to prevent race conditions.
  ///
  /// This field is always set in server responses. See UpdateTagValueRequest
  /// for details.
  ///
  /// Optional.
  core.String? etag;

  /// Resource name for TagValue in the format `tagValues/456`.
  ///
  /// Immutable.
  core.String? name;

  /// Namespaced name of the TagValue.
  ///
  /// Now only supported in the format
  /// `{organization_id}/{tag_key_short_name}/{short_name}`. Other formats will
  /// be supported when we add non-org parented tags.
  ///
  /// Output only.
  core.String? namespacedName;

  /// The resource name of the new TagValue's parent TagKey.
  ///
  /// Must be of the form `tagKeys/{tag_key_id}`.
  ///
  /// Immutable.
  core.String? parent;

  /// User-assigned short name for TagValue.
  ///
  /// The short name should be unique for TagValues within the same parent
  /// TagKey. The short name must be 63 characters or less, beginning and ending
  /// with an alphanumeric character (\[a-z0-9A-Z\]) with dashes (-),
  /// underscores (_), dots (.), and alphanumerics between.
  ///
  /// Required. Immutable.
  core.String? shortName;

  /// Update time.
  ///
  /// Output only.
  core.String? updateTime;

  TagValue({
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.namespacedName,
    this.parent,
    this.shortName,
    this.updateTime,
  });

  TagValue.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          namespacedName: json_.containsKey('namespacedName')
              ? json_['namespacedName'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          shortName: json_.containsKey('shortName')
              ? json_['shortName'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (namespacedName != null) 'namespacedName': namespacedName!,
        if (parent != null) 'parent': parent!,
        if (shortName != null) 'shortName': shortName!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The UndeleteFolder request message.
typedef UndeleteFolderRequest = $Empty;

/// The request sent to the UndeleteProject method.
typedef UndeleteProjectRequest = $Empty;
