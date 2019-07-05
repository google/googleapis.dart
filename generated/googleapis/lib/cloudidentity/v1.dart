// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudidentity.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudidentity/v1';

/// API for provisioning and managing identity resources.
class CloudidentityApi {
  /// See, change, create, and delete any of the Cloud Identity Groups that you
  /// can access, including the members of each group
  static const CloudIdentityGroupsScope =
      "https://www.googleapis.com/auth/cloud-identity.groups";

  /// See any Cloud Identity Groups that you can access, including group members
  /// and their emails
  static const CloudIdentityGroupsReadonlyScope =
      "https://www.googleapis.com/auth/cloud-identity.groups.readonly";

  final commons.ApiRequester _requester;

  GroupsResourceApi get groups => new GroupsResourceApi(_requester);

  CloudidentityApi(http.Client client,
      {core.String rootUrl = "https://cloudidentity.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class GroupsResourceApi {
  final commons.ApiRequester _requester;

  GroupsMembershipsResourceApi get memberships =>
      new GroupsMembershipsResourceApi(_requester);

  GroupsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a Group.
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
  async.Future<Operation> create(Group request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/groups';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a Group.
  ///
  /// Request parameters:
  ///
  /// [name] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Group in the format: `groups/{group_id}`, where `group_id` is the unique
  /// ID
  /// assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
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
  async.Future<Operation> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Retrieves a Group.
  ///
  /// Request parameters:
  ///
  /// [name] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Group in the format: `groups/{group_id}`, where `group_id` is the unique
  /// ID
  /// assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// List groups within a customer or a domain.
  ///
  /// Request parameters:
  ///
  /// [parent] - `Required`. May be made Optional in the future.
  /// Customer ID to list all groups from.
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [pageSize] - The default page size is 200 (max 1000) for the BASIC view,
  /// and 50
  /// (max 500) for the FULL view.
  ///
  /// [view] - Group resource view to be returned. Defaults to [View.BASIC]().
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(
      {core.String parent,
      core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent != null) {
      _queryParams["parent"] = [parent];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/groups';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListGroupsResponse.fromJson(data));
  }

  /// Looks up [resource
  /// name](https://cloud.google.com/apis/design/resource_names) of a Group by
  /// its EntityKey.
  ///
  /// Request parameters:
  ///
  /// [groupKey_namespace] - Namespaces provide isolation for IDs, so an ID only
  /// needs to be unique
  /// within its namespace.
  ///
  /// Namespaces are currently only created as part of IdentitySource creation
  /// from Admin Console. A namespace `"identitysources/{identity_source_id}"`
  /// is
  /// created corresponding to every Identity Source `identity_source_id`.
  ///
  /// [groupKey_id] - The ID of the entity within the given namespace. The ID
  /// must be unique
  /// within its namespace.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupGroupNameResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupGroupNameResponse> lookup(
      {core.String groupKey_namespace,
      core.String groupKey_id,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (groupKey_namespace != null) {
      _queryParams["groupKey.namespace"] = [groupKey_namespace];
    }
    if (groupKey_id != null) {
      _queryParams["groupKey.id"] = [groupKey_id];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/groups:lookup';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new LookupGroupNameResponse.fromJson(data));
  }

  /// Updates a Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Group in the format: `groups/{group_id}`, where group_id is the unique ID
  /// assigned to the Group.
  ///
  /// Must be left blank while creating a Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [updateMask] - Editable fields: `display_name`, `description`
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
  async.Future<Operation> patch(Group request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Searches for Groups.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - The next_page_token value returned from a previous search
  /// request, if any.
  ///
  /// [pageSize] - The default page size is 200 (max 1000) for the BASIC view,
  /// and 50
  /// (max 500) for the FULL view.
  ///
  /// [query] - `Required`. Query string for performing search on groups. Users
  /// can search
  /// on parent and label attributes of groups.
  /// EXACT match ('==') is supported on parent, and CONTAINS match ('in') is
  /// supported on labels.
  ///
  /// [view] - Group resource view to be returned. Defaults to [View.BASIC]().
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchGroupsResponse> search(
      {core.String pageToken,
      core.int pageSize,
      core.String query,
      core.String view,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/groups:search';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchGroupsResponse.fromJson(data));
  }
}

class GroupsMembershipsResourceApi {
  final commons.ApiRequester _requester;

  GroupsMembershipsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Membership.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Group to create Membership within. Format: `groups/{group_id}`, where
  /// `group_id` is the unique ID assigned to the Group.
  /// Value must have pattern "^groups/[^/]+$".
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
  async.Future<Operation> create(Membership request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/memberships';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a Membership.
  ///
  /// Request parameters:
  ///
  /// [name] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Membership to be deleted.
  ///
  /// Format: `groups/{group_id}/memberships/{member_id}`, where `group_id` is
  /// the unique ID assigned to the Group to which Membership belongs to, and
  /// member_id is the unique ID assigned to the member.
  /// Value must have pattern "^groups/[^/]+/memberships/[^/]+$".
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
  async.Future<Operation> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Retrieves a Membership.
  ///
  /// Request parameters:
  ///
  /// [name] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Membership to be retrieved.
  ///
  /// Format: `groups/{group_id}/memberships/{member_id}`, where `group_id` is
  /// the unique id assigned to the Group to which Membership belongs to, and
  /// `member_id` is the unique ID assigned to the member.
  /// Value must have pattern "^groups/[^/]+/memberships/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Membership].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Membership> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Membership.fromJson(data));
  }

  /// List Memberships within a Group.
  ///
  /// Request parameters:
  ///
  /// [parent] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Group to list Memberships within.
  ///
  /// Format: `groups/{group_id}`, where `group_id` is the unique ID assigned to
  /// the Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous list
  /// request, if any.
  ///
  /// [pageSize] - The default page size is 200 (max 1000) for the BASIC view,
  /// and 50
  /// (max 500) for the FULL view.
  ///
  /// [view] - Membership resource view to be returned. Defaults to View.BASIC.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "BASIC" : A BASIC.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMembershipsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMembershipsResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String view,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/memberships';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMembershipsResponse.fromJson(data));
  }

  /// Looks up [resource
  /// name](https://cloud.google.com/apis/design/resource_names) of a Membership
  /// within a Group by member's EntityKey.
  ///
  /// Request parameters:
  ///
  /// [parent] - [Resource
  /// name](https://cloud.google.com/apis/design/resource_names) of the
  /// Group to lookup Membership within.
  ///
  /// Format: `groups/{group_id}`, where `group_id` is the unique ID assigned to
  /// the Group.
  /// Value must have pattern "^groups/[^/]+$".
  ///
  /// [memberKey_id] - The ID of the entity within the given namespace. The ID
  /// must be unique
  /// within its namespace.
  ///
  /// [memberKey_namespace] - Namespaces provide isolation for IDs, so an ID
  /// only needs to be unique
  /// within its namespace.
  ///
  /// Namespaces are currently only created as part of IdentitySource creation
  /// from Admin Console. A namespace `"identitysources/{identity_source_id}"`
  /// is
  /// created corresponding to every Identity Source `identity_source_id`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupMembershipNameResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupMembershipNameResponse> lookup(core.String parent,
      {core.String memberKey_id,
      core.String memberKey_namespace,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (memberKey_id != null) {
      _queryParams["memberKey.id"] = [memberKey_id];
    }
    if (memberKey_namespace != null) {
      _queryParams["memberKey.namespace"] = [memberKey_namespace];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/memberships:lookup';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new LookupMembershipNameResponse.fromJson(data));
  }
}

/// An EntityKey uniquely identifies an Entity. Namespaces are used to provide
/// isolation for IDs. A single ID can be reused across namespaces but the
/// combination of a namespace and an ID must be unique.
class EntityKey {
  /// The ID of the entity within the given namespace. The ID must be unique
  /// within its namespace.
  core.String id;

  /// Namespaces provide isolation for IDs, so an ID only needs to be unique
  /// within its namespace.
  ///
  /// Namespaces are currently only created as part of IdentitySource creation
  /// from Admin Console. A namespace `"identitysources/{identity_source_id}"`
  /// is
  /// created corresponding to every Identity Source `identity_source_id`.
  core.String namespace;

  EntityKey();

  EntityKey.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("namespace")) {
      namespace = _json["namespace"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (namespace != null) {
      _json["namespace"] = namespace;
    }
    return _json;
  }
}

/// Resource representing a Group.
class Group {
  /// The time when the Group was created.
  /// Output only.
  core.String createTime;

  /// An extended description to help users determine the purpose of a Group.
  /// For
  /// example, you can include information about who should join the Group, the
  /// types of messages to send to the Group, links to FAQs about the Group, or
  /// related Groups. Maximum length is 4,096 characters.
  core.String description;

  /// The Group's display name.
  core.String displayName;

  /// EntityKey of the Group.
  ///
  /// Must be set when creating a Group, read-only afterwards.
  EntityKey groupKey;

  /// `Required`. Labels for Group resource.
  /// For creating Groups under a namespace, set label key to
  /// 'labels/system/groups/external' and label value as empty.
  core.Map<core.String, core.String> labels;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the
  /// Group in the format: `groups/{group_id}`, where group_id is the unique ID
  /// assigned to the Group.
  ///
  /// Must be left blank while creating a Group.
  core.String name;

  /// The entity under which this Group resides in Cloud Identity resource
  /// hierarchy. Must be set when creating a Group, read-only afterwards.
  ///
  /// Currently allowed types: `identitysources`.
  core.String parent;

  /// The time when the Group was last updated.
  /// Output only.
  core.String updateTime;

  Group();

  Group.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("groupKey")) {
      groupKey = new EntityKey.fromJson(_json["groupKey"]);
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (groupKey != null) {
      _json["groupKey"] = (groupKey).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Response message for ListGroups operation.
class ListGroupsResponse {
  /// Groups returned in response to list request.
  /// The results are not sorted.
  core.List<Group> groups;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results available for listing.
  core.String nextPageToken;

  ListGroupsResponse();

  ListGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("groups")) {
      groups = (_json["groups"] as core.List)
          .map<Group>((value) => new Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groups != null) {
      _json["groups"] = groups.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListMembershipsResponse {
  /// List of Memberships.
  core.List<Membership> memberships;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results available for listing.
  core.String nextPageToken;

  ListMembershipsResponse();

  ListMembershipsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("memberships")) {
      memberships = (_json["memberships"] as core.List)
          .map<Membership>((value) => new Membership.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (memberships != null) {
      _json["memberships"] =
          memberships.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class LookupGroupNameResponse {
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the
  /// Group in the format: `groups/{group_id}`, where `group_id` is the unique
  /// ID
  /// assigned to the Group.
  core.String name;

  LookupGroupNameResponse();

  LookupGroupNameResponse.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

class LookupMembershipNameResponse {
  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the
  /// Membership being looked up.
  ///
  /// Format: `groups/{group_id}/memberships/{member_id}`, where `group_id` is
  /// the unique ID assigned to the Group to which Membership belongs to, and
  /// `member_id` is the unique ID assigned to the member.
  core.String name;

  LookupMembershipNameResponse();

  LookupMembershipNameResponse.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Resource representing a Membership within a Group
class Membership {
  /// Creation timestamp of the Membership. Output only.
  core.String createTime;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of
  /// the
  /// Membership in the format: `groups/{group_id}/memberships/{member_id}`,
  /// where group_id is the unique ID assigned to the Group to which Membership
  /// belongs to, and member_id is the unique ID assigned to the member
  ///
  /// Must be left blank while creating a Membership.
  core.String name;

  /// EntityKey of the entity to be added as the member. Must be set while
  /// creating a Membership, read-only afterwards.
  ///
  /// Currently allowed entity types: `Users`, `Groups`.
  EntityKey preferredMemberKey;

  /// Roles for a member within the Group.
  ///
  /// Currently supported MembershipRoles: `"MEMBER"`.
  core.List<MembershipRole> roles;

  /// Last updated timestamp of the Membership. Output only.
  core.String updateTime;

  Membership();

  Membership.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("preferredMemberKey")) {
      preferredMemberKey = new EntityKey.fromJson(_json["preferredMemberKey"]);
    }
    if (_json.containsKey("roles")) {
      roles = (_json["roles"] as core.List)
          .map<MembershipRole>((value) => new MembershipRole.fromJson(value))
          .toList();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (preferredMemberKey != null) {
      _json["preferredMemberKey"] = (preferredMemberKey).toJson();
    }
    if (roles != null) {
      _json["roles"] = roles.map((value) => (value).toJson()).toList();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Resource representing a role within a Membership.
class MembershipRole {
  /// MembershipRole in string format.
  ///
  /// Currently supported MembershipRoles: `"MEMBER"`.
  core.String name;

  MembershipRole();

  MembershipRole.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

class SearchGroupsResponse {
  /// List of Groups satisfying the search query.
  core.List<Group> groups;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results available for specified query.
  core.String nextPageToken;

  SearchGroupsResponse();

  SearchGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("groups")) {
      groups = (_json["groups"] as core.List)
          .map<Group>((value) => new Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groups != null) {
      _json["groups"] = groups.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}
