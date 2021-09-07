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

/// People API - v1
///
/// Provides access to information about profiles and contacts.
///
/// For more information, see <https://developers.google.com/people/>
///
/// Create an instance of [PeopleServiceApi] to access these resources:
///
/// - [ContactGroupsResource]
///   - [ContactGroupsMembersResource]
/// - [OtherContactsResource]
/// - [PeopleResource]
///   - [PeopleConnectionsResource]
library people.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides access to information about profiles and contacts.
class PeopleServiceApi {
  /// See, edit, download, and permanently delete your contacts
  static const contactsScope = 'https://www.googleapis.com/auth/contacts';

  /// See and download contact info automatically saved in your "Other contacts"
  static const contactsOtherReadonlyScope =
      'https://www.googleapis.com/auth/contacts.other.readonly';

  /// See and download your contacts
  static const contactsReadonlyScope =
      'https://www.googleapis.com/auth/contacts.readonly';

  /// See and download your organization's GSuite directory
  static const directoryReadonlyScope =
      'https://www.googleapis.com/auth/directory.readonly';

  /// View your street addresses
  static const userAddressesReadScope =
      'https://www.googleapis.com/auth/user.addresses.read';

  /// See and download your exact date of birth
  static const userBirthdayReadScope =
      'https://www.googleapis.com/auth/user.birthday.read';

  /// See and download all of your Google Account email addresses
  static const userEmailsReadScope =
      'https://www.googleapis.com/auth/user.emails.read';

  /// See your gender
  static const userGenderReadScope =
      'https://www.googleapis.com/auth/user.gender.read';

  /// See your education, work history and org info
  static const userOrganizationReadScope =
      'https://www.googleapis.com/auth/user.organization.read';

  /// See and download your personal phone numbers
  static const userPhonenumbersReadScope =
      'https://www.googleapis.com/auth/user.phonenumbers.read';

  /// See your primary Google Account email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  /// See your personal info, including any personal info you've made publicly
  /// available
  static const userinfoProfileScope =
      'https://www.googleapis.com/auth/userinfo.profile';

  final commons.ApiRequester _requester;

  ContactGroupsResource get contactGroups => ContactGroupsResource(_requester);
  OtherContactsResource get otherContacts => OtherContactsResource(_requester);
  PeopleResource get people => PeopleResource(_requester);

  PeopleServiceApi(http.Client client,
      {core.String rootUrl = 'https://people.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ContactGroupsResource {
  final commons.ApiRequester _requester;

  ContactGroupsMembersResource get members =>
      ContactGroupsMembersResource(_requester);

  ContactGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Get a list of contact groups owned by the authenticated user by specifying
  /// a list of contact group resource names.
  ///
  /// Request parameters:
  ///
  /// [groupFields] - Optional. A field mask to restrict which fields on the
  /// group are returned. Defaults to `metadata`, `groupType`, `memberCount`,
  /// and `name` if not set or set to empty. Valid fields are: * clientData *
  /// groupType * memberCount * metadata * name
  ///
  /// [maxMembers] - Optional. Specifies the maximum number of members to return
  /// for each group. Defaults to 0 if not set, which will return zero members.
  ///
  /// [resourceNames] - Required. The resource names of the contact groups to
  /// get. There is a maximum of 200 resource names.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetContactGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetContactGroupsResponse> batchGet({
    core.String? groupFields,
    core.int? maxMembers,
    core.List<core.String>? resourceNames,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (groupFields != null) 'groupFields': [groupFields],
      if (maxMembers != null) 'maxMembers': ['${maxMembers}'],
      if (resourceNames != null) 'resourceNames': resourceNames,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/contactGroups:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BatchGetContactGroupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new contact group owned by the authenticated user.
  ///
  /// Created contact group names must be unique to the users contact groups.
  /// Attempting to create a group with a duplicate name will return a HTTP 409
  /// error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContactGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContactGroup> create(
    CreateContactGroupRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/contactGroups';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ContactGroup.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete an existing contact group owned by the authenticated user by
  /// specifying a contact group resource name.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the contact group to
  /// delete.
  /// Value must have pattern `^contactGroups/\[^/\]+$`.
  ///
  /// [deleteContacts] - Optional. Set to true to also delete the contacts in
  /// the specified group.
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
    core.String resourceName, {
    core.bool? deleteContacts,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (deleteContacts != null) 'deleteContacts': ['${deleteContacts}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get a specific contact group owned by the authenticated user by specifying
  /// a contact group resource name.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the contact group to get.
  /// Value must have pattern `^contactGroups/\[^/\]+$`.
  ///
  /// [groupFields] - Optional. A field mask to restrict which fields on the
  /// group are returned. Defaults to `metadata`, `groupType`, `memberCount`,
  /// and `name` if not set or set to empty. Valid fields are: * clientData *
  /// groupType * memberCount * metadata * name
  ///
  /// [maxMembers] - Optional. Specifies the maximum number of members to
  /// return. Defaults to 0 if not set, which will return zero members.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContactGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContactGroup> get(
    core.String resourceName, {
    core.String? groupFields,
    core.int? maxMembers,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (groupFields != null) 'groupFields': [groupFields],
      if (maxMembers != null) 'maxMembers': ['${maxMembers}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ContactGroup.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all contact groups owned by the authenticated user.
  ///
  /// Members of the contact groups are not populated.
  ///
  /// Request parameters:
  ///
  /// [groupFields] - Optional. A field mask to restrict which fields on the
  /// group are returned. Defaults to `metadata`, `groupType`, `memberCount`,
  /// and `name` if not set or set to empty. Valid fields are: * clientData *
  /// groupType * memberCount * metadata * name
  ///
  /// [pageSize] - Optional. The maximum number of resources to return. Valid
  /// values are between 1 and 1000, inclusive. Defaults to 30 if not set or set
  /// to 0.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// call to \[ListContactGroups\](/people/api/rest/v1/contactgroups/list).
  /// Requests the next page of resources.
  ///
  /// [syncToken] - Optional. A sync token, returned by a previous call to
  /// `contactgroups.list`. Only resources changed since the sync token was
  /// created will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListContactGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListContactGroupsResponse> list({
    core.String? groupFields,
    core.int? pageSize,
    core.String? pageToken,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (groupFields != null) 'groupFields': [groupFields],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/contactGroups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListContactGroupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the name of an existing contact group owned by the authenticated
  /// user.
  ///
  /// Updated contact group names must be unique to the users contact groups.
  /// Attempting to create a group with a duplicate name will return a HTTP 409
  /// error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - The resource name for the contact group, assigned by the
  /// server. An ASCII string, in the form of
  /// `contactGroups/{contact_group_id}`.
  /// Value must have pattern `^contactGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContactGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContactGroup> update(
    UpdateContactGroupRequest request,
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ContactGroup.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ContactGroupsMembersResource {
  final commons.ApiRequester _requester;

  ContactGroupsMembersResource(commons.ApiRequester client)
      : _requester = client;

  /// Modify the members of a contact group owned by the authenticated user.
  ///
  /// The only system contact groups that can have members added are
  /// `contactGroups/myContacts` and `contactGroups/starred`. Other system
  /// contact groups are deprecated and can only have contacts removed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the contact group to
  /// modify.
  /// Value must have pattern `^contactGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ModifyContactGroupMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ModifyContactGroupMembersResponse> modify(
    ModifyContactGroupMembersRequest request,
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resourceName') + '/members:modify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ModifyContactGroupMembersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class OtherContactsResource {
  final commons.ApiRequester _requester;

  OtherContactsResource(commons.ApiRequester client) : _requester = client;

  /// Copies an "Other contact" to a new contact in the user's "myContacts"
  /// group
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the "Other contact" to
  /// copy.
  /// Value must have pattern `^otherContacts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Person].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Person> copyOtherContactToMyContactsGroup(
    CopyOtherContactToMyContactsGroupRequest request,
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$resourceName') +
        ':copyOtherContactToMyContactsGroup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Person.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all "Other contacts", that is contacts that are not in a contact
  /// group.
  ///
  /// "Other contacts" are typically auto created contacts from interactions.
  /// Sync tokens expire 7 days after the full sync. A request with an expired
  /// sync token will result in a 410 error. In the case of such an error
  /// clients should make a full sync request without a `sync_token`. The first
  /// page of a full sync request has an additional quota. If the quota is
  /// exceeded, a 429 error will be returned. This quota is fixed and can not be
  /// increased. When the `sync_token` is specified, resources deleted since the
  /// last sync will be returned as a person with `PersonMetadata.deleted` set
  /// to true. When the `page_token` or `sync_token` is specified, all other
  /// request parameters must match the first call. Writes may have a
  /// propagation delay of several minutes for sync requests. Incremental syncs
  /// are not intended for read-after-write use cases. See example usage at
  /// \[List the user's other contacts that have
  /// changed\](/people/v1/other-contacts#list_the_users_other_contacts_that_have_changed).
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The number of "Other contacts" to include in the
  /// response. Valid values are between 1 and 1000, inclusive. Defaults to 100
  /// if not set or set to 0.
  ///
  /// [pageToken] - Optional. A page token, received from a previous response
  /// `next_page_token`. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `otherContacts.list` must
  /// match the first call that provided the page token.
  ///
  /// [readMask] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. What values are valid depend on what ReadSourceType is used.
  /// If READ_SOURCE_TYPE_CONTACT is used, valid values are: * emailAddresses *
  /// metadata * names * phoneNumbers * photos If READ_SOURCE_TYPE_PROFILE is
  /// used, valid values are: * addresses * ageRanges * biographies * birthdays
  /// * calendarUrls * clientData * coverPhotos * emailAddresses * events *
  /// externalIds * genders * imClients * interests * locales * locations *
  /// memberships * metadata * miscKeywords * names * nicknames * occupations *
  /// organizations * phoneNumbers * photos * relations * sipAddresses * skills
  /// * urls * userDefined
  ///
  /// [requestSyncToken] - Optional. Whether the response should return
  /// `next_sync_token` on the last page of results. It can be used to get
  /// incremental changes since the last request by setting it on the request
  /// `sync_token`. More details about sync behavior at `otherContacts.list`.
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT if not set.
  ///
  /// [syncToken] - Optional. A sync token, received from a previous response
  /// `next_sync_token` Provide this to retrieve only the resources changed
  /// since the last request. When syncing, all other parameters provided to
  /// `otherContacts.list` must match the first call that provided the sync
  /// token. More details about sync behavior at `otherContacts.list`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOtherContactsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOtherContactsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.bool? requestSyncToken,
    core.List<core.String>? sources,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (requestSyncToken != null) 'requestSyncToken': ['${requestSyncToken}'],
      if (sources != null) 'sources': sources,
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/otherContacts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOtherContactsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provides a list of contacts in the authenticated user's other contacts
  /// that matches the search query.
  ///
  /// The query matches on a contact's `names`, `emailAddresses`, and
  /// `phoneNumbers` fields that are from the OTHER_CONTACT source.
  /// **IMPORTANT**: Before searching, clients should send a warmup request with
  /// an empty query to update the cache. See
  /// https://developers.google.com/people/v1/other-contacts#search_the_users_other_contacts
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The number of results to return. Defaults to 10 if
  /// field is not set, or set to 0. Values greater than 30 will be capped to
  /// 30.
  ///
  /// [query] - Required. The plain-text query for the request. The query is
  /// used to match prefix phrases of the fields on a person. For example, a
  /// person with name "foo name" matches queries such as "f", "fo", "foo", "foo
  /// n", "nam", etc., but not "oo n".
  ///
  /// [readMask] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * emailAddresses * metadata * names *
  /// phoneNumbers
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchResponse> search({
    core.int? pageSize,
    core.String? query,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/otherContacts:search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PeopleResource {
  final commons.ApiRequester _requester;

  PeopleConnectionsResource get connections =>
      PeopleConnectionsResource(_requester);

  PeopleResource(commons.ApiRequester client) : _requester = client;

  /// Create a batch of new contacts and return the PersonResponses for the
  /// newly created contacts.
  ///
  /// Limited to 10 parallel requests per user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateContactsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateContactsResponse> batchCreateContacts(
    BatchCreateContactsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:batchCreateContacts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchCreateContactsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a batch of contacts.
  ///
  /// Any non-contact data will not be deleted. Limited to 10 parallel requests
  /// per user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Empty> batchDeleteContacts(
    BatchDeleteContactsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:batchDeleteContacts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update a batch of contacts and return a map of resource names to
  /// PersonResponses for the updated contacts.
  ///
  /// Limited to 10 parallel requests per user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateContactsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateContactsResponse> batchUpdateContacts(
    BatchUpdateContactsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:batchUpdateContacts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchUpdateContactsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new contact and return the person resource for that contact.
  ///
  /// The request returns a 400 error if more than one field is specified on a
  /// field that is a singleton for contact sources: * biographies * birthdays *
  /// genders * names
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [personFields] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Defaults to all fields if not set. Valid values are: *
  /// addresses * ageRanges * biographies * birthdays * calendarUrls *
  /// clientData * coverPhotos * emailAddresses * events * externalIds * genders
  /// * imClients * interests * locales * locations * memberships * metadata *
  /// miscKeywords * names * nicknames * occupations * organizations *
  /// phoneNumbers * photos * relations * sipAddresses * skills * urls *
  /// userDefined
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Person].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Person> createContact(
    Person request, {
    core.String? personFields,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:createContact';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Person.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a contact person.
  ///
  /// Any non-contact data will not be deleted.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the contact to delete.
  /// Value must have pattern `^people/\[^/\]+$`.
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
  async.Future<Empty> deleteContact(
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':deleteContact';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a contact's photo.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the contact whose photo
  /// will be deleted.
  /// Value must have pattern `^people/\[^/\]+$`.
  ///
  /// [personFields] - Optional. A field mask to restrict which fields on the
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Defaults to empty if not set, which will skip the post mutate
  /// get. Valid values are: * addresses * ageRanges * biographies * birthdays *
  /// calendarUrls * clientData * coverPhotos * emailAddresses * events *
  /// externalIds * genders * imClients * interests * locales * locations *
  /// memberships * metadata * miscKeywords * names * nicknames * occupations *
  /// organizations * phoneNumbers * photos * relations * sipAddresses * skills
  /// * urls * userDefined
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteContactPhotoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteContactPhotoResponse> deleteContactPhoto(
    core.String resourceName, {
    core.String? personFields,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':deleteContactPhoto';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return DeleteContactPhotoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provides information about a person by specifying a resource name.
  ///
  /// Use `people/me` to indicate the authenticated user. The request returns a
  /// 400 error if 'personFields' is not specified.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name of the person to provide
  /// information about. - To get information about the authenticated user,
  /// specify `people/me`. - To get information about a google account, specify
  /// `people/{account_id}`. - To get information about a contact, specify the
  /// resource name that identifies the contact as returned by
  /// `people.connections.list`.
  /// Value must have pattern `^people/\[^/\]+$`.
  ///
  /// [personFields] - Required. A field mask to restrict which fields on the
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * addresses * ageRanges * biographies *
  /// birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
  /// events * externalIds * genders * imClients * interests * locales *
  /// locations * memberships * metadata * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * photos * relations *
  /// sipAddresses * skills * urls * userDefined
  ///
  /// [requestMask_includeField] - Required. Comma-separated list of person
  /// fields to be included in the response. Each path should start with
  /// `person.`: for example, `person.names` or `person.photos`.
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_PROFILE and READ_SOURCE_TYPE_CONTACT if not set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Person].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Person> get(
    core.String resourceName, {
    core.String? personFields,
    core.String? requestMask_includeField,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (requestMask_includeField != null)
        'requestMask.includeField': [requestMask_includeField],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resourceName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Person.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Provides information about a list of specific people by specifying a list
  /// of requested resource names.
  ///
  /// Use `people/me` to indicate the authenticated user. The request returns a
  /// 400 error if 'personFields' is not specified.
  ///
  /// Request parameters:
  ///
  /// [personFields] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * addresses * ageRanges * biographies *
  /// birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
  /// events * externalIds * genders * imClients * interests * locales *
  /// locations * memberships * metadata * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * photos * relations *
  /// sipAddresses * skills * urls * userDefined
  ///
  /// [requestMask_includeField] - Required. Comma-separated list of person
  /// fields to be included in the response. Each path should start with
  /// `person.`: for example, `person.names` or `person.photos`.
  ///
  /// [resourceNames] - Required. The resource names of the people to provide
  /// information about. It's repeatable. The URL query parameter should be
  /// resourceNames=<name1>&resourceNames=<name2>&... - To get information about
  /// the authenticated user, specify `people/me`. - To get information about a
  /// google account, specify `people/{account_id}`. - To get information about
  /// a contact, specify the resource name that identifies the contact as
  /// returned by `people.connections.list`. There is a maximum of 200 resource
  /// names.
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetPeopleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetPeopleResponse> getBatchGet({
    core.String? personFields,
    core.String? requestMask_includeField,
    core.List<core.String>? resourceNames,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (requestMask_includeField != null)
        'requestMask.includeField': [requestMask_includeField],
      if (resourceNames != null) 'resourceNames': resourceNames,
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetPeopleResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provides a list of domain profiles and domain contacts in the
  /// authenticated user's domain directory.
  ///
  /// When the `sync_token` is specified, resources deleted since the last sync
  /// will be returned as a person with `PersonMetadata.deleted` set to true.
  /// When the `page_token` or `sync_token` is specified, all other request
  /// parameters must match the first call. Writes may have a propagation delay
  /// of several minutes for sync requests. Incremental syncs are not intended
  /// for read-after-write use cases. See example usage at \[List the directory
  /// people that have
  /// changed\](/people/v1/directory#list_the_directory_people_that_have_changed).
  ///
  /// Request parameters:
  ///
  /// [mergeSources] - Optional. Additional data to merge into the directory
  /// sources if they are connected through verified join keys such as email
  /// addresses or phone numbers.
  ///
  /// [pageSize] - Optional. The number of people to include in the response.
  /// Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set
  /// or set to 0.
  ///
  /// [pageToken] - Optional. A page token, received from a previous response
  /// `next_page_token`. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `people.listDirectoryPeople`
  /// must match the first call that provided the page token.
  ///
  /// [readMask] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * addresses * ageRanges * biographies *
  /// birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
  /// events * externalIds * genders * imClients * interests * locales *
  /// locations * memberships * metadata * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * photos * relations *
  /// sipAddresses * skills * urls * userDefined
  ///
  /// [requestSyncToken] - Optional. Whether the response should return
  /// `next_sync_token`. It can be used to get incremental changes since the
  /// last request by setting it on the request `sync_token`. More details about
  /// sync behavior at `people.listDirectoryPeople`.
  ///
  /// [sources] - Required. Directory sources to return.
  ///
  /// [syncToken] - Optional. A sync token, received from a previous response
  /// `next_sync_token` Provide this to retrieve only the resources changed
  /// since the last request. When syncing, all other parameters provided to
  /// `people.listDirectoryPeople` must match the first call that provided the
  /// sync token. More details about sync behavior at
  /// `people.listDirectoryPeople`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDirectoryPeopleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDirectoryPeopleResponse> listDirectoryPeople({
    core.List<core.String>? mergeSources,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.bool? requestSyncToken,
    core.List<core.String>? sources,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (mergeSources != null) 'mergeSources': mergeSources,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (requestSyncToken != null) 'requestSyncToken': ['${requestSyncToken}'],
      if (sources != null) 'sources': sources,
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:listDirectoryPeople';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDirectoryPeopleResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provides a list of contacts in the authenticated user's grouped contacts
  /// that matches the search query.
  ///
  /// The query matches on a contact's `names`, `nickNames`, `emailAddresses`,
  /// `phoneNumbers`, and `organizations` fields that are from the CONTACT
  /// source. **IMPORTANT**: Before searching, clients should send a warmup
  /// request with an empty query to update the cache. See
  /// https://developers.google.com/people/v1/contacts#search_the_users_contacts
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional. The number of results to return. Defaults to 10 if
  /// field is not set, or set to 0. Values greater than 30 will be capped to
  /// 30.
  ///
  /// [query] - Required. The plain-text query for the request. The query is
  /// used to match prefix phrases of the fields on a person. For example, a
  /// person with name "foo name" matches queries such as "f", "fo", "foo", "foo
  /// n", "nam", etc., but not "oo n".
  ///
  /// [readMask] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * addresses * ageRanges * biographies *
  /// birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
  /// events * externalIds * genders * imClients * interests * locales *
  /// locations * memberships * metadata * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * photos * relations *
  /// sipAddresses * skills * urls * userDefined
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT if not set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchResponse> searchContacts({
    core.int? pageSize,
    core.String? query,
    core.String? readMask,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:searchContacts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provides a list of domain profiles and domain contacts in the
  /// authenticated user's domain directory that match the search query.
  ///
  /// Request parameters:
  ///
  /// [mergeSources] - Optional. Additional data to merge into the directory
  /// sources if they are connected through verified join keys such as email
  /// addresses or phone numbers.
  ///
  /// [pageSize] - Optional. The number of people to include in the response.
  /// Valid values are between 1 and 500, inclusive. Defaults to 100 if not set
  /// or set to 0.
  ///
  /// [pageToken] - Optional. A page token, received from a previous response
  /// `next_page_token`. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `SearchDirectoryPeople` must
  /// match the first call that provided the page token.
  ///
  /// [query] - Required. Prefix query that matches fields in the person. Does
  /// NOT use the read_mask for determining what fields to match.
  ///
  /// [readMask] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * addresses * ageRanges * biographies *
  /// birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
  /// events * externalIds * genders * imClients * interests * locales *
  /// locations * memberships * metadata * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * photos * relations *
  /// sipAddresses * skills * urls * userDefined
  ///
  /// [sources] - Required. Directory sources to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchDirectoryPeopleResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchDirectoryPeopleResponse> searchDirectoryPeople({
    core.List<core.String>? mergeSources,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? readMask,
    core.List<core.String>? sources,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (mergeSources != null) 'mergeSources': mergeSources,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/people:searchDirectoryPeople';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchDirectoryPeopleResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update contact data for an existing contact person.
  ///
  /// Any non-contact data will not be modified. Any non-contact data in the
  /// person to update will be ignored. All fields specified in the
  /// `update_mask` will be replaced. The server returns a 400 error if
  /// `person.metadata.sources` is not specified for the contact to be updated
  /// or if there is no contact source. The server returns a 400 error with
  /// reason `"failedPrecondition"` if `person.metadata.sources.etag` is
  /// different than the contact's etag, which indicates the contact has changed
  /// since its data was read. Clients should get the latest person and merge
  /// their updates into the latest person. The server returns a 400 error if
  /// `memberships` are being updated and there are no contact group memberships
  /// specified on the person. The server returns a 400 error if more than one
  /// field is specified on a field that is a singleton for contact sources: *
  /// biographies * birthdays * genders * names
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - The resource name for the person, assigned by the server.
  /// An ASCII string with a max length of 27 characters, in the form of
  /// `people/{person_id}`.
  /// Value must have pattern `^people/\[^/\]+$`.
  ///
  /// [personFields] - Optional. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Defaults to all fields if not set. Valid values are: *
  /// addresses * ageRanges * biographies * birthdays * calendarUrls *
  /// clientData * coverPhotos * emailAddresses * events * externalIds * genders
  /// * imClients * interests * locales * locations * memberships * metadata *
  /// miscKeywords * names * nicknames * occupations * organizations *
  /// phoneNumbers * photos * relations * sipAddresses * skills * urls *
  /// userDefined
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
  ///
  /// [updatePersonFields] - Required. A field mask to restrict which fields on
  /// the person are updated. Multiple fields can be specified by separating
  /// them with commas. All updated fields will be replaced. Valid values are: *
  /// addresses * biographies * birthdays * calendarUrls * clientData *
  /// emailAddresses * events * externalIds * genders * imClients * interests *
  /// locales * locations * memberships * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * relations * sipAddresses *
  /// urls * userDefined
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Person].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Person> updateContact(
    Person request,
    core.String resourceName, {
    core.String? personFields,
    core.List<core.String>? sources,
    core.String? updatePersonFields,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (sources != null) 'sources': sources,
      if (updatePersonFields != null)
        'updatePersonFields': [updatePersonFields],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':updateContact';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Person.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update a contact's photo.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. Person resource name
  /// Value must have pattern `^people/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UpdateContactPhotoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UpdateContactPhotoResponse> updateContactPhoto(
    UpdateContactPhotoRequest request,
    core.String resourceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':updateContactPhoto';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return UpdateContactPhotoResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PeopleConnectionsResource {
  final commons.ApiRequester _requester;

  PeopleConnectionsResource(commons.ApiRequester client) : _requester = client;

  /// Provides a list of the authenticated user's contacts.
  ///
  /// Sync tokens expire 7 days after the full sync. A request with an expired
  /// sync token will result in a 410 error. In the case of such an error
  /// clients should make a full sync request without a `sync_token`. The first
  /// page of a full sync request has an additional quota. If the quota is
  /// exceeded, a 429 error will be returned. This quota is fixed and can not be
  /// increased. When the `sync_token` is specified, resources deleted since the
  /// last sync will be returned as a person with `PersonMetadata.deleted` set
  /// to true. When the `page_token` or `sync_token` is specified, all other
  /// request parameters must match the first call. Writes may have a
  /// propagation delay of several minutes for sync requests. Incremental syncs
  /// are not intended for read-after-write use cases. See example usage at
  /// \[List the user's contacts that have
  /// changed\](/people/v1/contacts#list_the_users_contacts_that_have_changed).
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Required. The resource name to return connections for.
  /// Only `people/me` is valid.
  /// Value must have pattern `^people/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The number of connections to include in the
  /// response. Valid values are between 1 and 1000, inclusive. Defaults to 100
  /// if not set or set to 0.
  ///
  /// [pageToken] - Optional. A page token, received from a previous response
  /// `next_page_token`. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `people.connections.list`
  /// must match the first call that provided the page token.
  ///
  /// [personFields] - Required. A field mask to restrict which fields on each
  /// person are returned. Multiple fields can be specified by separating them
  /// with commas. Valid values are: * addresses * ageRanges * biographies *
  /// birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
  /// events * externalIds * genders * imClients * interests * locales *
  /// locations * memberships * metadata * miscKeywords * names * nicknames *
  /// occupations * organizations * phoneNumbers * photos * relations *
  /// sipAddresses * skills * urls * userDefined
  ///
  /// [requestMask_includeField] - Required. Comma-separated list of person
  /// fields to be included in the response. Each path should start with
  /// `person.`: for example, `person.names` or `person.photos`.
  ///
  /// [requestSyncToken] - Optional. Whether the response should return
  /// `next_sync_token` on the last page of results. It can be used to get
  /// incremental changes since the last request by setting it on the request
  /// `sync_token`. More details about sync behavior at
  /// `people.connections.list`.
  ///
  /// [sortOrder] - Optional. The order in which the connections should be
  /// sorted. Defaults to `LAST_MODIFIED_ASCENDING`.
  /// Possible string values are:
  /// - "LAST_MODIFIED_ASCENDING" : Sort people by when they were changed; older
  /// entries first.
  /// - "LAST_MODIFIED_DESCENDING" : Sort people by when they were changed;
  /// newer entries first.
  /// - "FIRST_NAME_ASCENDING" : Sort people by first name.
  /// - "LAST_NAME_ASCENDING" : Sort people by last name.
  ///
  /// [sources] - Optional. A mask of what source types to return. Defaults to
  /// READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.
  ///
  /// [syncToken] - Optional. A sync token, received from a previous response
  /// `next_sync_token` Provide this to retrieve only the resources changed
  /// since the last request. When syncing, all other parameters provided to
  /// `people.connections.list` must match the first call that provided the sync
  /// token. More details about sync behavior at `people.connections.list`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
    core.String resourceName, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? personFields,
    core.String? requestMask_includeField,
    core.bool? requestSyncToken,
    core.String? sortOrder,
    core.List<core.String>? sources,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (personFields != null) 'personFields': [personFields],
      if (requestMask_includeField != null)
        'requestMask.includeField': [requestMask_includeField],
      if (requestSyncToken != null) 'requestSyncToken': ['${requestSyncToken}'],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (sources != null) 'sources': sources,
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resourceName') + '/connections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConnectionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A person's physical address.
///
/// May be a P.O. box or street address. All fields are optional.
class Address {
  /// The city of the address.
  core.String? city;

  /// The country of the address.
  core.String? country;

  /// The \[ISO 3166-1 alpha-2\](http://www.iso.org/iso/country_codes.htm)
  /// country code of the address.
  core.String? countryCode;

  /// The extended address of the address; for example, the apartment number.
  core.String? extendedAddress;

  /// The type of the address translated and formatted in the viewer's account
  /// locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// The unstructured value of the address.
  ///
  /// If this is not set by the user it will be automatically constructed from
  /// structured values.
  core.String? formattedValue;

  /// Metadata about the address.
  FieldMetadata? metadata;

  /// The P.O. box of the address.
  core.String? poBox;

  /// The postal code of the address.
  core.String? postalCode;

  /// The region of the address; for example, the state or province.
  core.String? region;

  /// The street address.
  core.String? streetAddress;

  /// The type of the address.
  ///
  /// The type can be custom or one of these predefined values: * `home` *
  /// `work` * `other`
  core.String? type;

  Address({
    this.city,
    this.country,
    this.countryCode,
    this.extendedAddress,
    this.formattedType,
    this.formattedValue,
    this.metadata,
    this.poBox,
    this.postalCode,
    this.region,
    this.streetAddress,
    this.type,
  });

  Address.fromJson(core.Map _json)
      : this(
          city: _json.containsKey('city') ? _json['city'] as core.String : null,
          country: _json.containsKey('country')
              ? _json['country'] as core.String
              : null,
          countryCode: _json.containsKey('countryCode')
              ? _json['countryCode'] as core.String
              : null,
          extendedAddress: _json.containsKey('extendedAddress')
              ? _json['extendedAddress'] as core.String
              : null,
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          formattedValue: _json.containsKey('formattedValue')
              ? _json['formattedValue'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          poBox:
              _json.containsKey('poBox') ? _json['poBox'] as core.String : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          streetAddress: _json.containsKey('streetAddress')
              ? _json['streetAddress'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (city != null) 'city': city!,
        if (country != null) 'country': country!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (extendedAddress != null) 'extendedAddress': extendedAddress!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (poBox != null) 'poBox': poBox!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (region != null) 'region': region!,
        if (streetAddress != null) 'streetAddress': streetAddress!,
        if (type != null) 'type': type!,
      };
}

/// A person's age range.
class AgeRangeType {
  /// The age range.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Unspecified.
  /// - "LESS_THAN_EIGHTEEN" : Younger than eighteen.
  /// - "EIGHTEEN_TO_TWENTY" : Between eighteen and twenty.
  /// - "TWENTY_ONE_OR_OLDER" : Twenty-one and older.
  core.String? ageRange;

  /// Metadata about the age range.
  FieldMetadata? metadata;

  AgeRangeType({
    this.ageRange,
    this.metadata,
  });

  AgeRangeType.fromJson(core.Map _json)
      : this(
          ageRange: _json.containsKey('ageRange')
              ? _json['ageRange'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRange != null) 'ageRange': ageRange!,
        if (metadata != null) 'metadata': metadata!.toJson(),
      };
}

/// A request to create a batch of contacts.
class BatchCreateContactsRequest {
  /// The contact to create.
  ///
  /// Allows up to 200 contacts in a single request.
  ///
  /// Required.
  core.List<ContactToCreate>? contacts;

  /// A field mask to restrict which fields on each person are returned in the
  /// response.
  ///
  /// Multiple fields can be specified by separating them with commas. If read
  /// mask is left empty, the post-mutate-get is skipped and no data will be
  /// returned in the response. Valid values are: * addresses * ageRanges *
  /// biographies * birthdays * calendarUrls * clientData * coverPhotos *
  /// emailAddresses * events * externalIds * genders * imClients * interests *
  /// locales * locations * memberships * metadata * miscKeywords * names *
  /// nicknames * occupations * organizations * phoneNumbers * photos *
  /// relations * sipAddresses * skills * urls * userDefined
  ///
  /// Required.
  core.String? readMask;

  /// A mask of what source types to return in the post mutate read.
  ///
  /// Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not
  /// set.
  ///
  /// Optional.
  core.List<core.String>? sources;

  BatchCreateContactsRequest({
    this.contacts,
    this.readMask,
    this.sources,
  });

  BatchCreateContactsRequest.fromJson(core.Map _json)
      : this(
          contacts: _json.containsKey('contacts')
              ? (_json['contacts'] as core.List)
                  .map<ContactToCreate>((value) => ContactToCreate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readMask: _json.containsKey('readMask')
              ? _json['readMask'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null)
          'contacts': contacts!.map((value) => value.toJson()).toList(),
        if (readMask != null) 'readMask': readMask!,
        if (sources != null) 'sources': sources!,
      };
}

/// If not successful, returns BatchCreateContactsErrorDetails which contains a
/// list of errors for each invalid contact.
///
/// The response to a request to create a batch of contacts.
class BatchCreateContactsResponse {
  /// The contacts that were created, unless the request `read_mask` is empty.
  core.List<PersonResponse>? createdPeople;

  BatchCreateContactsResponse({
    this.createdPeople,
  });

  BatchCreateContactsResponse.fromJson(core.Map _json)
      : this(
          createdPeople: _json.containsKey('createdPeople')
              ? (_json['createdPeople'] as core.List)
                  .map<PersonResponse>((value) => PersonResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdPeople != null)
          'createdPeople':
              createdPeople!.map((value) => value.toJson()).toList(),
      };
}

/// A request to delete a batch of existing contacts.
class BatchDeleteContactsRequest {
  /// The resource names of the contact to delete.
  ///
  /// It's repeatable. Allows up to 500 resource names in a single request.
  ///
  /// Required.
  core.List<core.String>? resourceNames;

  BatchDeleteContactsRequest({
    this.resourceNames,
  });

  BatchDeleteContactsRequest.fromJson(core.Map _json)
      : this(
          resourceNames: _json.containsKey('resourceNames')
              ? (_json['resourceNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceNames != null) 'resourceNames': resourceNames!,
      };
}

/// The response to a batch get contact groups request.
class BatchGetContactGroupsResponse {
  /// The list of responses for each requested contact group resource.
  core.List<ContactGroupResponse>? responses;

  BatchGetContactGroupsResponse({
    this.responses,
  });

  BatchGetContactGroupsResponse.fromJson(core.Map _json)
      : this(
          responses: _json.containsKey('responses')
              ? (_json['responses'] as core.List)
                  .map<ContactGroupResponse>((value) =>
                      ContactGroupResponse.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null)
          'responses': responses!.map((value) => value.toJson()).toList(),
      };
}

/// A request to update a batch of contacts.
class BatchUpdateContactsRequest {
  /// A map of resource names to the person data to be updated.
  ///
  /// Allows up to 200 contacts in a single request.
  ///
  /// Required.
  core.Map<core.String, Person>? contacts;

  /// A field mask to restrict which fields on each person are returned.
  ///
  /// Multiple fields can be specified by separating them with commas. If read
  /// mask is left empty, the post-mutate-get is skipped and no data will be
  /// returned in the response. Valid values are: * addresses * ageRanges *
  /// biographies * birthdays * calendarUrls * clientData * coverPhotos *
  /// emailAddresses * events * externalIds * genders * imClients * interests *
  /// locales * locations * memberships * metadata * miscKeywords * names *
  /// nicknames * occupations * organizations * phoneNumbers * photos *
  /// relations * sipAddresses * skills * urls * userDefined
  ///
  /// Required.
  core.String? readMask;

  /// A mask of what source types to return.
  ///
  /// Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not
  /// set.
  ///
  /// Optional.
  core.List<core.String>? sources;

  /// A field mask to restrict which fields on the person are updated.
  ///
  /// Multiple fields can be specified by separating them with commas. All
  /// specified fields will be replaced, or cleared if left empty for each
  /// person. Valid values are: * addresses * biographies * birthdays *
  /// calendarUrls * clientData * emailAddresses * events * externalIds *
  /// genders * imClients * interests * locales * locations * memberships *
  /// miscKeywords * names * nicknames * occupations * organizations *
  /// phoneNumbers * relations * sipAddresses * urls * userDefined
  ///
  /// Required.
  core.String? updateMask;

  BatchUpdateContactsRequest({
    this.contacts,
    this.readMask,
    this.sources,
    this.updateMask,
  });

  BatchUpdateContactsRequest.fromJson(core.Map _json)
      : this(
          contacts: _json.containsKey('contacts')
              ? (_json['contacts'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Person.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          readMask: _json.containsKey('readMask')
              ? _json['readMask'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null)
          'contacts':
              contacts!.map((key, item) => core.MapEntry(key, item.toJson())),
        if (readMask != null) 'readMask': readMask!,
        if (sources != null) 'sources': sources!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// If not successful, returns BatchUpdateContactsErrorDetails, a list of errors
/// corresponding to each contact.
///
/// The response to a request to update a batch of contacts.
class BatchUpdateContactsResponse {
  /// A map of resource names to the contacts that were updated, unless the
  /// request `read_mask` is empty.
  core.Map<core.String, PersonResponse>? updateResult;

  BatchUpdateContactsResponse({
    this.updateResult,
  });

  BatchUpdateContactsResponse.fromJson(core.Map _json)
      : this(
          updateResult: _json.containsKey('updateResult')
              ? (_json['updateResult'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    PersonResponse.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updateResult != null)
          'updateResult': updateResult!
              .map((key, item) => core.MapEntry(key, item.toJson())),
      };
}

/// A person's short biography.
class Biography {
  /// The content type of the biography.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified.
  /// - "TEXT_PLAIN" : Plain text.
  /// - "TEXT_HTML" : HTML text.
  core.String? contentType;

  /// Metadata about the biography.
  FieldMetadata? metadata;

  /// The short biography.
  core.String? value;

  Biography({
    this.contentType,
    this.metadata,
    this.value,
  });

  Biography.fromJson(core.Map _json)
      : this(
          contentType: _json.containsKey('contentType')
              ? _json['contentType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A person's birthday.
///
/// At least one of the `date` and `text` fields are specified. The `date` and
/// `text` fields typically represent the same date, but are not guaranteed to.
class Birthday {
  /// The date of the birthday.
  Date? date;

  /// Metadata about the birthday.
  FieldMetadata? metadata;

  /// A free-form string representing the user's birthday.
  core.String? text;

  Birthday({
    this.date,
    this.metadata,
    this.text,
  });

  Birthday.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!.toJson(),
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (text != null) 'text': text!,
      };
}

/// **DEPRECATED**: No data will be returned A person's bragging rights.
class BraggingRights {
  /// Metadata about the bragging rights.
  FieldMetadata? metadata;

  /// The bragging rights; for example, `climbed mount everest`.
  core.String? value;

  BraggingRights({
    this.metadata,
    this.value,
  });

  BraggingRights.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A person's calendar URL.
class CalendarUrl {
  /// The type of the calendar URL translated and formatted in the viewer's
  /// account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the calendar URL.
  FieldMetadata? metadata;

  /// The type of the calendar URL.
  ///
  /// The type can be custom or one of these predefined values: * `home` *
  /// `freeBusy` * `work`
  core.String? type;

  /// The calendar URL.
  core.String? url;

  CalendarUrl({
    this.formattedType,
    this.metadata,
    this.type,
    this.url,
  });

  CalendarUrl.fromJson(core.Map _json)
      : this(
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
}

/// Arbitrary client data that is populated by clients.
///
/// Duplicate keys and values are allowed.
class ClientData {
  /// The client specified key of the client data.
  core.String? key;

  /// Metadata about the client data.
  FieldMetadata? metadata;

  /// The client specified value of the client data.
  core.String? value;

  ClientData({
    this.key,
    this.metadata,
    this.value,
  });

  ClientData.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A contact group.
class ContactGroup {
  /// The group's client data.
  core.List<GroupClientData>? clientData;

  /// The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the
  /// resource.
  ///
  /// Used for web cache validation.
  core.String? etag;

  /// The name translated and formatted in the viewer's account locale or the
  /// `Accept-Language` HTTP header locale for system groups names.
  ///
  /// Group names set by the owner are the same as name.
  ///
  /// Output only.
  core.String? formattedName;

  /// The contact group type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GROUP_TYPE_UNSPECIFIED" : Unspecified.
  /// - "USER_CONTACT_GROUP" : User defined contact group.
  /// - "SYSTEM_CONTACT_GROUP" : System defined contact group.
  core.String? groupType;

  /// The total number of contacts in the group irrespective of max members in
  /// specified in the request.
  ///
  /// Output only.
  core.int? memberCount;

  /// The list of contact person resource names that are members of the contact
  /// group.
  ///
  /// The field is only populated for GET requests and will only return as many
  /// members as `maxMembers` in the get request.
  ///
  /// Output only.
  core.List<core.String>? memberResourceNames;

  /// Metadata about the contact group.
  ///
  /// Output only.
  ContactGroupMetadata? metadata;

  /// The contact group name set by the group owner or a system provided name
  /// for system groups.
  ///
  /// For \[`contactGroups.create`\](/people/api/rest/v1/contactGroups/create)
  /// or \[`contactGroups.update`\](/people/api/rest/v1/contactGroups/update)
  /// the name must be unique to the users contact groups. Attempting to create
  /// a group with a duplicate name will return a HTTP 409 error.
  core.String? name;

  /// The resource name for the contact group, assigned by the server.
  ///
  /// An ASCII string, in the form of `contactGroups/{contact_group_id}`.
  core.String? resourceName;

  ContactGroup({
    this.clientData,
    this.etag,
    this.formattedName,
    this.groupType,
    this.memberCount,
    this.memberResourceNames,
    this.metadata,
    this.name,
    this.resourceName,
  });

  ContactGroup.fromJson(core.Map _json)
      : this(
          clientData: _json.containsKey('clientData')
              ? (_json['clientData'] as core.List)
                  .map<GroupClientData>((value) => GroupClientData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          formattedName: _json.containsKey('formattedName')
              ? _json['formattedName'] as core.String
              : null,
          groupType: _json.containsKey('groupType')
              ? _json['groupType'] as core.String
              : null,
          memberCount: _json.containsKey('memberCount')
              ? _json['memberCount'] as core.int
              : null,
          memberResourceNames: _json.containsKey('memberResourceNames')
              ? (_json['memberResourceNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? ContactGroupMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientData != null)
          'clientData': clientData!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (formattedName != null) 'formattedName': formattedName!,
        if (groupType != null) 'groupType': groupType!,
        if (memberCount != null) 'memberCount': memberCount!,
        if (memberResourceNames != null)
          'memberResourceNames': memberResourceNames!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (name != null) 'name': name!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// A Google contact group membership.
class ContactGroupMembership {
  /// The contact group ID for the contact group membership.
  ///
  /// Output only.
  core.String? contactGroupId;

  /// The resource name for the contact group, assigned by the server.
  ///
  /// An ASCII string, in the form of `contactGroups/{contact_group_id}`. Only
  /// contact_group_resource_name can be used for modifying memberships. Any
  /// contact group membership can be removed, but only user group or
  /// "myContacts" or "starred" system groups memberships can be added. A
  /// contact must always have at least one contact group membership.
  core.String? contactGroupResourceName;

  ContactGroupMembership({
    this.contactGroupId,
    this.contactGroupResourceName,
  });

  ContactGroupMembership.fromJson(core.Map _json)
      : this(
          contactGroupId: _json.containsKey('contactGroupId')
              ? _json['contactGroupId'] as core.String
              : null,
          contactGroupResourceName:
              _json.containsKey('contactGroupResourceName')
                  ? _json['contactGroupResourceName'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroupId != null) 'contactGroupId': contactGroupId!,
        if (contactGroupResourceName != null)
          'contactGroupResourceName': contactGroupResourceName!,
      };
}

/// The metadata about a contact group.
class ContactGroupMetadata {
  /// True if the contact group resource has been deleted.
  ///
  /// Populated only for
  /// \[`ListContactGroups`\](/people/api/rest/v1/contactgroups/list) requests
  /// that include a sync token.
  ///
  /// Output only.
  core.bool? deleted;

  /// The time the group was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ContactGroupMetadata({
    this.deleted,
    this.updateTime,
  });

  ContactGroupMetadata.fromJson(core.Map _json)
      : this(
          deleted: _json.containsKey('deleted')
              ? _json['deleted'] as core.bool
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleted != null) 'deleted': deleted!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The response for a specific contact group.
class ContactGroupResponse {
  /// The contact group.
  ContactGroup? contactGroup;

  /// The original requested resource name.
  core.String? requestedResourceName;

  /// The status of the response.
  Status? status;

  ContactGroupResponse({
    this.contactGroup,
    this.requestedResourceName,
    this.status,
  });

  ContactGroupResponse.fromJson(core.Map _json)
      : this(
          contactGroup: _json.containsKey('contactGroup')
              ? ContactGroup.fromJson(
                  _json['contactGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          requestedResourceName: _json.containsKey('requestedResourceName')
              ? _json['requestedResourceName'] as core.String
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroup != null) 'contactGroup': contactGroup!.toJson(),
        if (requestedResourceName != null)
          'requestedResourceName': requestedResourceName!,
        if (status != null) 'status': status!.toJson(),
      };
}

/// A wrapper that contains the person data to populate a newly created source.
class ContactToCreate {
  /// The person data to populate a newly created source.
  ///
  /// Required.
  Person? contactPerson;

  ContactToCreate({
    this.contactPerson,
  });

  ContactToCreate.fromJson(core.Map _json)
      : this(
          contactPerson: _json.containsKey('contactPerson')
              ? Person.fromJson(
                  _json['contactPerson'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactPerson != null) 'contactPerson': contactPerson!.toJson(),
      };
}

/// A request to copy an "Other contact" to my contacts group.
class CopyOtherContactToMyContactsGroupRequest {
  /// A field mask to restrict which fields are copied into the new contact.
  ///
  /// Valid values are: * emailAddresses * names * phoneNumbers
  ///
  /// Required.
  core.String? copyMask;

  /// A field mask to restrict which fields on the person are returned.
  ///
  /// Multiple fields can be specified by separating them with commas. Defaults
  /// to the copy mask with metadata and membership fields if not set. Valid
  /// values are: * addresses * ageRanges * biographies * birthdays *
  /// calendarUrls * clientData * coverPhotos * emailAddresses * events *
  /// externalIds * genders * imClients * interests * locales * locations *
  /// memberships * metadata * miscKeywords * names * nicknames * occupations *
  /// organizations * phoneNumbers * photos * relations * sipAddresses * skills
  /// * urls * userDefined
  ///
  /// Optional.
  core.String? readMask;

  /// A mask of what source types to return.
  ///
  /// Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not
  /// set.
  ///
  /// Optional.
  core.List<core.String>? sources;

  CopyOtherContactToMyContactsGroupRequest({
    this.copyMask,
    this.readMask,
    this.sources,
  });

  CopyOtherContactToMyContactsGroupRequest.fromJson(core.Map _json)
      : this(
          copyMask: _json.containsKey('copyMask')
              ? _json['copyMask'] as core.String
              : null,
          readMask: _json.containsKey('readMask')
              ? _json['readMask'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copyMask != null) 'copyMask': copyMask!,
        if (readMask != null) 'readMask': readMask!,
        if (sources != null) 'sources': sources!,
      };
}

/// A person's cover photo.
///
/// A large image shown on the person's profile page that represents who they
/// are or what they care about.
class CoverPhoto {
  /// True if the cover photo is the default cover photo; false if the cover
  /// photo is a user-provided cover photo.
  core.bool? default_;

  /// Metadata about the cover photo.
  FieldMetadata? metadata;

  /// The URL of the cover photo.
  core.String? url;

  CoverPhoto({
    this.default_,
    this.metadata,
    this.url,
  });

  CoverPhoto.fromJson(core.Map _json)
      : this(
          default_: _json.containsKey('default')
              ? _json['default'] as core.bool
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (url != null) 'url': url!,
      };
}

/// A request to create a new contact group.
class CreateContactGroupRequest {
  /// The contact group to create.
  ///
  /// Required.
  ContactGroup? contactGroup;

  /// A field mask to restrict which fields on the group are returned.
  ///
  /// Defaults to `metadata`, `groupType`, and `name` if not set or set to
  /// empty. Valid fields are: * clientData * groupType * metadata * name
  ///
  /// Optional.
  core.String? readGroupFields;

  CreateContactGroupRequest({
    this.contactGroup,
    this.readGroupFields,
  });

  CreateContactGroupRequest.fromJson(core.Map _json)
      : this(
          contactGroup: _json.containsKey('contactGroup')
              ? ContactGroup.fromJson(
                  _json['contactGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          readGroupFields: _json.containsKey('readGroupFields')
              ? _json['readGroupFields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroup != null) 'contactGroup': contactGroup!.toJson(),
        if (readGroupFields != null) 'readGroupFields': readGroupFields!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  Date({
    this.day,
    this.month,
    this.year,
  });

  Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// The response for deleting a contact's photo.
class DeleteContactPhotoResponse {
  /// The updated person, if person_fields is set in the
  /// DeleteContactPhotoRequest; otherwise this will be unset.
  Person? person;

  DeleteContactPhotoResponse({
    this.person,
  });

  DeleteContactPhotoResponse.fromJson(core.Map _json)
      : this(
          person: _json.containsKey('person')
              ? Person.fromJson(
                  _json['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!.toJson(),
      };
}

/// A Google Workspace Domain membership.
class DomainMembership {
  /// True if the person is in the viewer's Google Workspace domain.
  core.bool? inViewerDomain;

  DomainMembership({
    this.inViewerDomain,
  });

  DomainMembership.fromJson(core.Map _json)
      : this(
          inViewerDomain: _json.containsKey('inViewerDomain')
              ? _json['inViewerDomain'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inViewerDomain != null) 'inViewerDomain': inViewerDomain!,
      };
}

/// A person's email address.
class EmailAddress {
  /// The display name of the email.
  core.String? displayName;

  /// The type of the email address translated and formatted in the viewer's
  /// account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the email address.
  FieldMetadata? metadata;

  /// The type of the email address.
  ///
  /// The type can be custom or one of these predefined values: * `home` *
  /// `work` * `other`
  core.String? type;

  /// The email address.
  core.String? value;

  EmailAddress({
    this.displayName,
    this.formattedType,
    this.metadata,
    this.type,
    this.value,
  });

  EmailAddress.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// An event related to the person.
class Event {
  /// The date of the event.
  Date? date;

  /// The type of the event translated and formatted in the viewer's account
  /// locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the event.
  FieldMetadata? metadata;

  /// The type of the event.
  ///
  /// The type can be custom or one of these predefined values: * `anniversary`
  /// * `other`
  core.String? type;

  Event({
    this.date,
    this.formattedType,
    this.metadata,
    this.type,
  });

  Event.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!.toJson(),
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// An identifier from an external entity related to the person.
class ExternalId {
  /// The type of the event translated and formatted in the viewer's account
  /// locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the external ID.
  FieldMetadata? metadata;

  /// The type of the external ID.
  ///
  /// The type can be custom or one of these predefined values: * `account` *
  /// `customer` * `loginId` * `network` * `organization`
  core.String? type;

  /// The value of the external ID.
  core.String? value;

  ExternalId({
    this.formattedType,
    this.metadata,
    this.type,
    this.value,
  });

  ExternalId.fromJson(core.Map _json)
      : this(
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Metadata about a field.
class FieldMetadata {
  /// True if the field is the primary field for all sources in the person.
  ///
  /// Each person will have at most one field with `primary` set to true.
  ///
  /// Output only.
  core.bool? primary;

  /// The source of the field.
  Source? source;

  /// True if the field is the primary field for the source.
  ///
  /// Each source must have at most one field with `source_primary` set to true.
  core.bool? sourcePrimary;

  /// True if the field is verified; false if the field is unverified.
  ///
  /// A verified field is typically a name, email address, phone number, or
  /// website that has been confirmed to be owned by the person.
  ///
  /// Output only.
  core.bool? verified;

  FieldMetadata({
    this.primary,
    this.source,
    this.sourcePrimary,
    this.verified,
  });

  FieldMetadata.fromJson(core.Map _json)
      : this(
          primary: _json.containsKey('primary')
              ? _json['primary'] as core.bool
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
          sourcePrimary: _json.containsKey('sourcePrimary')
              ? _json['sourcePrimary'] as core.bool
              : null,
          verified: _json.containsKey('verified')
              ? _json['verified'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primary != null) 'primary': primary!,
        if (source != null) 'source': source!.toJson(),
        if (sourcePrimary != null) 'sourcePrimary': sourcePrimary!,
        if (verified != null) 'verified': verified!,
      };
}

/// The name that should be used to sort the person in a list.
class FileAs {
  /// Metadata about the file-as.
  FieldMetadata? metadata;

  /// The file-as value
  core.String? value;

  FileAs({
    this.metadata,
    this.value,
  });

  FileAs.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A person's gender.
class Gender {
  /// Free form text field for pronouns that should be used to address the
  /// person.
  ///
  /// Common values are: * `he`/`him` * `she`/`her` * `they`/`them`
  core.String? addressMeAs;

  /// The value of the gender translated and formatted in the viewer's account
  /// locale or the `Accept-Language` HTTP header locale.
  ///
  /// Unspecified or custom value are not localized.
  ///
  /// Output only.
  core.String? formattedValue;

  /// Metadata about the gender.
  FieldMetadata? metadata;

  /// The gender for the person.
  ///
  /// The gender can be custom or one of these predefined values: * `male` *
  /// `female` * `unspecified`
  core.String? value;

  Gender({
    this.addressMeAs,
    this.formattedValue,
    this.metadata,
    this.value,
  });

  Gender.fromJson(core.Map _json)
      : this(
          addressMeAs: _json.containsKey('addressMeAs')
              ? _json['addressMeAs'] as core.String
              : null,
          formattedValue: _json.containsKey('formattedValue')
              ? _json['formattedValue'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressMeAs != null) 'addressMeAs': addressMeAs!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// The response to a get request for a list of people by resource name.
class GetPeopleResponse {
  /// The response for each requested resource name.
  core.List<PersonResponse>? responses;

  GetPeopleResponse({
    this.responses,
  });

  GetPeopleResponse.fromJson(core.Map _json)
      : this(
          responses: _json.containsKey('responses')
              ? (_json['responses'] as core.List)
                  .map<PersonResponse>((value) => PersonResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null)
          'responses': responses!.map((value) => value.toJson()).toList(),
      };
}

/// Arbitrary client data that is populated by clients.
///
/// Duplicate keys and values are allowed.
class GroupClientData {
  /// The client specified key of the client data.
  core.String? key;

  /// The client specified value of the client data.
  core.String? value;

  GroupClientData({
    this.key,
    this.value,
  });

  GroupClientData.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// A person's instant messaging client.
class ImClient {
  /// The protocol of the IM client formatted in the viewer's account locale or
  /// the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedProtocol;

  /// The type of the IM client translated and formatted in the viewer's account
  /// locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the IM client.
  FieldMetadata? metadata;

  /// The protocol of the IM client.
  ///
  /// The protocol can be custom or one of these predefined values: * `aim` *
  /// `msn` * `yahoo` * `skype` * `qq` * `googleTalk` * `icq` * `jabber` *
  /// `netMeeting`
  core.String? protocol;

  /// The type of the IM client.
  ///
  /// The type can be custom or one of these predefined values: * `home` *
  /// `work` * `other`
  core.String? type;

  /// The user name used in the IM client.
  core.String? username;

  ImClient({
    this.formattedProtocol,
    this.formattedType,
    this.metadata,
    this.protocol,
    this.type,
    this.username,
  });

  ImClient.fromJson(core.Map _json)
      : this(
          formattedProtocol: _json.containsKey('formattedProtocol')
              ? _json['formattedProtocol'] as core.String
              : null,
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedProtocol != null) 'formattedProtocol': formattedProtocol!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (protocol != null) 'protocol': protocol!,
        if (type != null) 'type': type!,
        if (username != null) 'username': username!,
      };
}

/// One of the person's interests.
class Interest {
  /// Metadata about the interest.
  FieldMetadata? metadata;

  /// The interest; for example, `stargazing`.
  core.String? value;

  Interest({
    this.metadata,
    this.value,
  });

  Interest.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// The response to a request for the authenticated user's connections.
class ListConnectionsResponse {
  /// The list of people that the requestor is connected to.
  core.List<Person>? connections;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A token, which can be sent as `sync_token` to retrieve changes since the
  /// last request.
  ///
  /// Request must set `request_sync_token` to return the sync token. When the
  /// response is paginated, only the last page will contain `nextSyncToken`.
  core.String? nextSyncToken;

  /// The total number of items in the list without pagination.
  core.int? totalItems;

  /// **DEPRECATED** (Please use totalItems) The total number of people in the
  /// list without pagination.
  core.int? totalPeople;

  ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
    this.nextSyncToken,
    this.totalItems,
    this.totalPeople,
  });

  ListConnectionsResponse.fromJson(core.Map _json)
      : this(
          connections: _json.containsKey('connections')
              ? (_json['connections'] as core.List)
                  .map<Person>((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          nextSyncToken: _json.containsKey('nextSyncToken')
              ? _json['nextSyncToken'] as core.String
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.int
              : null,
          totalPeople: _json.containsKey('totalPeople')
              ? _json['totalPeople'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null)
          'connections': connections!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (totalItems != null) 'totalItems': totalItems!,
        if (totalPeople != null) 'totalPeople': totalPeople!,
      };
}

/// The response to a list contact groups request.
class ListContactGroupsResponse {
  /// The list of contact groups.
  ///
  /// Members of the contact groups are not populated.
  core.List<ContactGroup>? contactGroups;

  /// The token that can be used to retrieve the next page of results.
  core.String? nextPageToken;

  /// The token that can be used to retrieve changes since the last request.
  core.String? nextSyncToken;

  /// The total number of items in the list without pagination.
  core.int? totalItems;

  ListContactGroupsResponse({
    this.contactGroups,
    this.nextPageToken,
    this.nextSyncToken,
    this.totalItems,
  });

  ListContactGroupsResponse.fromJson(core.Map _json)
      : this(
          contactGroups: _json.containsKey('contactGroups')
              ? (_json['contactGroups'] as core.List)
                  .map<ContactGroup>((value) => ContactGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          nextSyncToken: _json.containsKey('nextSyncToken')
              ? _json['nextSyncToken'] as core.String
              : null,
          totalItems: _json.containsKey('totalItems')
              ? _json['totalItems'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroups != null)
          'contactGroups':
              contactGroups!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (totalItems != null) 'totalItems': totalItems!,
      };
}

/// The response to a request for the authenticated user's domain directory.
class ListDirectoryPeopleResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A token, which can be sent as `sync_token` to retrieve changes since the
  /// last request.
  ///
  /// Request must set `request_sync_token` to return the sync token.
  core.String? nextSyncToken;

  /// The list of people in the domain directory.
  core.List<Person>? people;

  ListDirectoryPeopleResponse({
    this.nextPageToken,
    this.nextSyncToken,
    this.people,
  });

  ListDirectoryPeopleResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          nextSyncToken: _json.containsKey('nextSyncToken')
              ? _json['nextSyncToken'] as core.String
              : null,
          people: _json.containsKey('people')
              ? (_json['people'] as core.List)
                  .map<Person>((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (people != null)
          'people': people!.map((value) => value.toJson()).toList(),
      };
}

/// The response to a request for the authenticated user's "Other contacts".
class ListOtherContactsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A token, which can be sent as `sync_token` to retrieve changes since the
  /// last request.
  ///
  /// Request must set `request_sync_token` to return the sync token.
  core.String? nextSyncToken;

  /// The list of "Other contacts" returned as Person resources.
  ///
  /// "Other contacts" support a limited subset of fields. See
  /// ListOtherContactsRequest.request_mask for more detailed information.
  core.List<Person>? otherContacts;

  /// The total number of other contacts in the list without pagination.
  core.int? totalSize;

  ListOtherContactsResponse({
    this.nextPageToken,
    this.nextSyncToken,
    this.otherContacts,
    this.totalSize,
  });

  ListOtherContactsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          nextSyncToken: _json.containsKey('nextSyncToken')
              ? _json['nextSyncToken'] as core.String
              : null,
          otherContacts: _json.containsKey('otherContacts')
              ? (_json['otherContacts'] as core.List)
                  .map<Person>((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (otherContacts != null)
          'otherContacts':
              otherContacts!.map((value) => value.toJson()).toList(),
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// A person's locale preference.
class Locale {
  /// Metadata about the locale.
  FieldMetadata? metadata;

  /// The well-formed [IETF BCP 47](https://tools.ietf.org/html/bcp47) language
  /// tag representing the locale.
  core.String? value;

  Locale({
    this.metadata,
    this.value,
  });

  Locale.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A person's location.
class Location {
  /// The building identifier.
  core.String? buildingId;

  /// Whether the location is the current location.
  core.bool? current;

  /// The individual desk location.
  core.String? deskCode;

  /// The floor name or number.
  core.String? floor;

  /// The floor section in `floor_name`.
  core.String? floorSection;

  /// Metadata about the location.
  FieldMetadata? metadata;

  /// The type of the location.
  ///
  /// The type can be custom or one of these predefined values: * `desk` *
  /// `grewUp`
  core.String? type;

  /// The free-form value of the location.
  core.String? value;

  Location({
    this.buildingId,
    this.current,
    this.deskCode,
    this.floor,
    this.floorSection,
    this.metadata,
    this.type,
    this.value,
  });

  Location.fromJson(core.Map _json)
      : this(
          buildingId: _json.containsKey('buildingId')
              ? _json['buildingId'] as core.String
              : null,
          current: _json.containsKey('current')
              ? _json['current'] as core.bool
              : null,
          deskCode: _json.containsKey('deskCode')
              ? _json['deskCode'] as core.String
              : null,
          floor:
              _json.containsKey('floor') ? _json['floor'] as core.String : null,
          floorSection: _json.containsKey('floorSection')
              ? _json['floorSection'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildingId != null) 'buildingId': buildingId!,
        if (current != null) 'current': current!,
        if (deskCode != null) 'deskCode': deskCode!,
        if (floor != null) 'floor': floor!,
        if (floorSection != null) 'floorSection': floorSection!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A person's membership in a group.
///
/// Only contact group memberships can be modified.
class Membership {
  /// The contact group membership.
  ContactGroupMembership? contactGroupMembership;

  /// The domain membership.
  ///
  /// Output only.
  DomainMembership? domainMembership;

  /// Metadata about the membership.
  FieldMetadata? metadata;

  Membership({
    this.contactGroupMembership,
    this.domainMembership,
    this.metadata,
  });

  Membership.fromJson(core.Map _json)
      : this(
          contactGroupMembership: _json.containsKey('contactGroupMembership')
              ? ContactGroupMembership.fromJson(_json['contactGroupMembership']
                  as core.Map<core.String, core.dynamic>)
              : null,
          domainMembership: _json.containsKey('domainMembership')
              ? DomainMembership.fromJson(_json['domainMembership']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroupMembership != null)
          'contactGroupMembership': contactGroupMembership!.toJson(),
        if (domainMembership != null)
          'domainMembership': domainMembership!.toJson(),
        if (metadata != null) 'metadata': metadata!.toJson(),
      };
}

/// A person's miscellaneous keyword.
class MiscKeyword {
  /// The type of the miscellaneous keyword translated and formatted in the
  /// viewer's account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the miscellaneous keyword.
  FieldMetadata? metadata;

  /// The miscellaneous keyword type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified.
  /// - "OUTLOOK_BILLING_INFORMATION" : Outlook field for billing information.
  /// - "OUTLOOK_DIRECTORY_SERVER" : Outlook field for directory server.
  /// - "OUTLOOK_KEYWORD" : Outlook field for keyword.
  /// - "OUTLOOK_MILEAGE" : Outlook field for mileage.
  /// - "OUTLOOK_PRIORITY" : Outlook field for priority.
  /// - "OUTLOOK_SENSITIVITY" : Outlook field for sensitivity.
  /// - "OUTLOOK_SUBJECT" : Outlook field for subject.
  /// - "OUTLOOK_USER" : Outlook field for user.
  /// - "HOME" : Home.
  /// - "WORK" : Work.
  /// - "OTHER" : Other.
  core.String? type;

  /// The value of the miscellaneous keyword.
  core.String? value;

  MiscKeyword({
    this.formattedType,
    this.metadata,
    this.type,
    this.value,
  });

  MiscKeyword.fromJson(core.Map _json)
      : this(
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A request to modify an existing contact group's members.
///
/// Contacts can be removed from any group but they can only be added to a user
/// group or "myContacts" or "starred" system groups.
class ModifyContactGroupMembersRequest {
  /// The resource names of the contact people to add in the form of
  /// `people/{person_id}`.
  ///
  /// The total number of resource names in `resource_names_to_add` and
  /// `resource_names_to_remove` must be less than or equal to 1000.
  ///
  /// Optional.
  core.List<core.String>? resourceNamesToAdd;

  /// The resource names of the contact people to remove in the form of
  /// `people/{person_id}`.
  ///
  /// The total number of resource names in `resource_names_to_add` and
  /// `resource_names_to_remove` must be less than or equal to 1000.
  ///
  /// Optional.
  core.List<core.String>? resourceNamesToRemove;

  ModifyContactGroupMembersRequest({
    this.resourceNamesToAdd,
    this.resourceNamesToRemove,
  });

  ModifyContactGroupMembersRequest.fromJson(core.Map _json)
      : this(
          resourceNamesToAdd: _json.containsKey('resourceNamesToAdd')
              ? (_json['resourceNamesToAdd'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          resourceNamesToRemove: _json.containsKey('resourceNamesToRemove')
              ? (_json['resourceNamesToRemove'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceNamesToAdd != null)
          'resourceNamesToAdd': resourceNamesToAdd!,
        if (resourceNamesToRemove != null)
          'resourceNamesToRemove': resourceNamesToRemove!,
      };
}

/// The response to a modify contact group members request.
class ModifyContactGroupMembersResponse {
  /// The contact people resource names that cannot be removed from their last
  /// contact group.
  core.List<core.String>? canNotRemoveLastContactGroupResourceNames;

  /// The contact people resource names that were not found.
  core.List<core.String>? notFoundResourceNames;

  ModifyContactGroupMembersResponse({
    this.canNotRemoveLastContactGroupResourceNames,
    this.notFoundResourceNames,
  });

  ModifyContactGroupMembersResponse.fromJson(core.Map _json)
      : this(
          canNotRemoveLastContactGroupResourceNames:
              _json.containsKey('canNotRemoveLastContactGroupResourceNames')
                  ? (_json['canNotRemoveLastContactGroupResourceNames']
                          as core.List)
                      .map<core.String>((value) => value as core.String)
                      .toList()
                  : null,
          notFoundResourceNames: _json.containsKey('notFoundResourceNames')
              ? (_json['notFoundResourceNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canNotRemoveLastContactGroupResourceNames != null)
          'canNotRemoveLastContactGroupResourceNames':
              canNotRemoveLastContactGroupResourceNames!,
        if (notFoundResourceNames != null)
          'notFoundResourceNames': notFoundResourceNames!,
      };
}

/// A person's name.
///
/// If the name is a mononym, the family name is empty.
class Name {
  /// The display name formatted according to the locale specified by the
  /// viewer's account or the `Accept-Language` HTTP header.
  ///
  /// Output only.
  core.String? displayName;

  /// The display name with the last name first formatted according to the
  /// locale specified by the viewer's account or the `Accept-Language` HTTP
  /// header.
  ///
  /// Output only.
  core.String? displayNameLastFirst;

  /// The family name.
  core.String? familyName;

  /// The given name.
  core.String? givenName;

  /// The honorific prefixes, such as `Mrs.` or `Dr.`
  core.String? honorificPrefix;

  /// The honorific suffixes, such as `Jr.`
  core.String? honorificSuffix;

  /// Metadata about the name.
  FieldMetadata? metadata;

  /// The middle name(s).
  core.String? middleName;

  /// The family name spelled as it sounds.
  core.String? phoneticFamilyName;

  /// The full name spelled as it sounds.
  core.String? phoneticFullName;

  /// The given name spelled as it sounds.
  core.String? phoneticGivenName;

  /// The honorific prefixes spelled as they sound.
  core.String? phoneticHonorificPrefix;

  /// The honorific suffixes spelled as they sound.
  core.String? phoneticHonorificSuffix;

  /// The middle name(s) spelled as they sound.
  core.String? phoneticMiddleName;

  /// The free form name value.
  core.String? unstructuredName;

  Name({
    this.displayName,
    this.displayNameLastFirst,
    this.familyName,
    this.givenName,
    this.honorificPrefix,
    this.honorificSuffix,
    this.metadata,
    this.middleName,
    this.phoneticFamilyName,
    this.phoneticFullName,
    this.phoneticGivenName,
    this.phoneticHonorificPrefix,
    this.phoneticHonorificSuffix,
    this.phoneticMiddleName,
    this.unstructuredName,
  });

  Name.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          displayNameLastFirst: _json.containsKey('displayNameLastFirst')
              ? _json['displayNameLastFirst'] as core.String
              : null,
          familyName: _json.containsKey('familyName')
              ? _json['familyName'] as core.String
              : null,
          givenName: _json.containsKey('givenName')
              ? _json['givenName'] as core.String
              : null,
          honorificPrefix: _json.containsKey('honorificPrefix')
              ? _json['honorificPrefix'] as core.String
              : null,
          honorificSuffix: _json.containsKey('honorificSuffix')
              ? _json['honorificSuffix'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          middleName: _json.containsKey('middleName')
              ? _json['middleName'] as core.String
              : null,
          phoneticFamilyName: _json.containsKey('phoneticFamilyName')
              ? _json['phoneticFamilyName'] as core.String
              : null,
          phoneticFullName: _json.containsKey('phoneticFullName')
              ? _json['phoneticFullName'] as core.String
              : null,
          phoneticGivenName: _json.containsKey('phoneticGivenName')
              ? _json['phoneticGivenName'] as core.String
              : null,
          phoneticHonorificPrefix: _json.containsKey('phoneticHonorificPrefix')
              ? _json['phoneticHonorificPrefix'] as core.String
              : null,
          phoneticHonorificSuffix: _json.containsKey('phoneticHonorificSuffix')
              ? _json['phoneticHonorificSuffix'] as core.String
              : null,
          phoneticMiddleName: _json.containsKey('phoneticMiddleName')
              ? _json['phoneticMiddleName'] as core.String
              : null,
          unstructuredName: _json.containsKey('unstructuredName')
              ? _json['unstructuredName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (displayNameLastFirst != null)
          'displayNameLastFirst': displayNameLastFirst!,
        if (familyName != null) 'familyName': familyName!,
        if (givenName != null) 'givenName': givenName!,
        if (honorificPrefix != null) 'honorificPrefix': honorificPrefix!,
        if (honorificSuffix != null) 'honorificSuffix': honorificSuffix!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (middleName != null) 'middleName': middleName!,
        if (phoneticFamilyName != null)
          'phoneticFamilyName': phoneticFamilyName!,
        if (phoneticFullName != null) 'phoneticFullName': phoneticFullName!,
        if (phoneticGivenName != null) 'phoneticGivenName': phoneticGivenName!,
        if (phoneticHonorificPrefix != null)
          'phoneticHonorificPrefix': phoneticHonorificPrefix!,
        if (phoneticHonorificSuffix != null)
          'phoneticHonorificSuffix': phoneticHonorificSuffix!,
        if (phoneticMiddleName != null)
          'phoneticMiddleName': phoneticMiddleName!,
        if (unstructuredName != null) 'unstructuredName': unstructuredName!,
      };
}

/// A person's nickname.
class Nickname {
  /// Metadata about the nickname.
  FieldMetadata? metadata;

  /// The type of the nickname.
  /// Possible string values are:
  /// - "DEFAULT" : Generic nickname.
  /// - "MAIDEN_NAME" : Maiden name or birth family name. Used when the person's
  /// family name has changed as a result of marriage.
  /// - "INITIALS" : Initials.
  /// - "GPLUS" : Google+ profile nickname.
  /// - "OTHER_NAME" : A professional affiliation or other name; for example,
  /// `Dr. Smith.`
  /// - "ALTERNATE_NAME" : Alternate name person is known by.
  /// - "SHORT_NAME" : A shorter version of the person's name.
  core.String? type;

  /// The nickname.
  core.String? value;

  Nickname({
    this.metadata,
    this.type,
    this.value,
  });

  Nickname.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A person's occupation.
class Occupation {
  /// Metadata about the occupation.
  FieldMetadata? metadata;

  /// The occupation; for example, `carpenter`.
  core.String? value;

  Occupation({
    this.metadata,
    this.value,
  });

  Occupation.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A person's past or current organization.
///
/// Overlapping date ranges are permitted.
class Organization {
  /// The person's cost center at the organization.
  core.String? costCenter;

  /// True if the organization is the person's current organization; false if
  /// the organization is a past organization.
  core.bool? current;

  /// The person's department at the organization.
  core.String? department;

  /// The domain name associated with the organization; for example,
  /// `google.com`.
  core.String? domain;

  /// The end date when the person left the organization.
  Date? endDate;

  /// The type of the organization translated and formatted in the viewer's
  /// account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// The person's full-time equivalent millipercent within the organization
  /// (100000 = 100%).
  core.int? fullTimeEquivalentMillipercent;

  /// The person's job description at the organization.
  core.String? jobDescription;

  /// The location of the organization office the person works at.
  core.String? location;

  /// Metadata about the organization.
  FieldMetadata? metadata;

  /// The name of the organization.
  core.String? name;

  /// The phonetic name of the organization.
  core.String? phoneticName;

  /// The start date when the person joined the organization.
  Date? startDate;

  /// The symbol associated with the organization; for example, a stock ticker
  /// symbol, abbreviation, or acronym.
  core.String? symbol;

  /// The person's job title at the organization.
  core.String? title;

  /// The type of the organization.
  ///
  /// The type can be custom or one of these predefined values: * `work` *
  /// `school`
  core.String? type;

  Organization({
    this.costCenter,
    this.current,
    this.department,
    this.domain,
    this.endDate,
    this.formattedType,
    this.fullTimeEquivalentMillipercent,
    this.jobDescription,
    this.location,
    this.metadata,
    this.name,
    this.phoneticName,
    this.startDate,
    this.symbol,
    this.title,
    this.type,
  });

  Organization.fromJson(core.Map _json)
      : this(
          costCenter: _json.containsKey('costCenter')
              ? _json['costCenter'] as core.String
              : null,
          current: _json.containsKey('current')
              ? _json['current'] as core.bool
              : null,
          department: _json.containsKey('department')
              ? _json['department'] as core.String
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          endDate: _json.containsKey('endDate')
              ? Date.fromJson(
                  _json['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          fullTimeEquivalentMillipercent:
              _json.containsKey('fullTimeEquivalentMillipercent')
                  ? _json['fullTimeEquivalentMillipercent'] as core.int
                  : null,
          jobDescription: _json.containsKey('jobDescription')
              ? _json['jobDescription'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          phoneticName: _json.containsKey('phoneticName')
              ? _json['phoneticName'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? Date.fromJson(
                  _json['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          symbol: _json.containsKey('symbol')
              ? _json['symbol'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (costCenter != null) 'costCenter': costCenter!,
        if (current != null) 'current': current!,
        if (department != null) 'department': department!,
        if (domain != null) 'domain': domain!,
        if (endDate != null) 'endDate': endDate!.toJson(),
        if (formattedType != null) 'formattedType': formattedType!,
        if (fullTimeEquivalentMillipercent != null)
          'fullTimeEquivalentMillipercent': fullTimeEquivalentMillipercent!,
        if (jobDescription != null) 'jobDescription': jobDescription!,
        if (location != null) 'location': location!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (name != null) 'name': name!,
        if (phoneticName != null) 'phoneticName': phoneticName!,
        if (startDate != null) 'startDate': startDate!.toJson(),
        if (symbol != null) 'symbol': symbol!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// Information about a person merged from various data sources such as the
/// authenticated user's contacts and profile data.
///
/// Most fields can have multiple items. The items in a field have no guaranteed
/// order, but each non-empty field is guaranteed to have exactly one field with
/// `metadata.primary` set to true.
class Person {
  /// The person's street addresses.
  core.List<Address>? addresses;

  /// **DEPRECATED** (Please use `person.ageRanges` instead) The person's age
  /// range.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED" : Unspecified.
  /// - "LESS_THAN_EIGHTEEN" : Younger than eighteen.
  /// - "EIGHTEEN_TO_TWENTY" : Between eighteen and twenty.
  /// - "TWENTY_ONE_OR_OLDER" : Twenty-one and older.
  core.String? ageRange;

  /// The person's age ranges.
  ///
  /// Output only.
  core.List<AgeRangeType>? ageRanges;

  /// The person's biographies.
  ///
  /// This field is a singleton for contact sources.
  core.List<Biography>? biographies;

  /// The person's birthdays.
  ///
  /// This field is a singleton for contact sources.
  core.List<Birthday>? birthdays;

  /// **DEPRECATED**: No data will be returned The person's bragging rights.
  core.List<BraggingRights>? braggingRights;

  /// The person's calendar URLs.
  core.List<CalendarUrl>? calendarUrls;

  /// The person's client data.
  core.List<ClientData>? clientData;

  /// The person's cover photos.
  ///
  /// Output only.
  core.List<CoverPhoto>? coverPhotos;

  /// The person's email addresses.
  ///
  /// For `people.connections.list` and `otherContacts.list` the number of email
  /// addresses is limited to 100. If a Person has more email addresses the
  /// entire set can be obtained by calling GetPeople.
  core.List<EmailAddress>? emailAddresses;

  /// The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the
  /// resource.
  ///
  /// Used for web cache validation.
  core.String? etag;

  /// The person's events.
  core.List<Event>? events;

  /// The person's external IDs.
  core.List<ExternalId>? externalIds;

  /// The person's file-ases.
  core.List<FileAs>? fileAses;

  /// The person's genders.
  ///
  /// This field is a singleton for contact sources.
  core.List<Gender>? genders;

  /// The person's instant messaging clients.
  core.List<ImClient>? imClients;

  /// The person's interests.
  core.List<Interest>? interests;

  /// The person's locale preferences.
  core.List<Locale>? locales;

  /// The person's locations.
  core.List<Location>? locations;

  /// The person's group memberships.
  core.List<Membership>? memberships;

  /// Metadata about the person.
  ///
  /// Output only.
  PersonMetadata? metadata;

  /// The person's miscellaneous keywords.
  core.List<MiscKeyword>? miscKeywords;

  /// The person's names.
  ///
  /// This field is a singleton for contact sources.
  core.List<Name>? names;

  /// The person's nicknames.
  core.List<Nickname>? nicknames;

  /// The person's occupations.
  core.List<Occupation>? occupations;

  /// The person's past or current organizations.
  core.List<Organization>? organizations;

  /// The person's phone numbers.
  ///
  /// For `people.connections.list` and `otherContacts.list` the number of phone
  /// numbers is limited to 100. If a Person has more phone numbers the entire
  /// set can be obtained by calling GetPeople.
  core.List<PhoneNumber>? phoneNumbers;

  /// The person's photos.
  ///
  /// Output only.
  core.List<Photo>? photos;

  /// The person's relations.
  core.List<Relation>? relations;

  /// **DEPRECATED**: No data will be returned The person's relationship
  /// interests.
  ///
  /// Output only.
  core.List<RelationshipInterest>? relationshipInterests;

  /// **DEPRECATED**: No data will be returned The person's relationship
  /// statuses.
  ///
  /// Output only.
  core.List<RelationshipStatus>? relationshipStatuses;

  /// **DEPRECATED**: (Please use `person.locations` instead) The person's
  /// residences.
  core.List<Residence>? residences;

  /// The resource name for the person, assigned by the server.
  ///
  /// An ASCII string with a max length of 27 characters, in the form of
  /// `people/{person_id}`.
  core.String? resourceName;

  /// The person's SIP addresses.
  core.List<SipAddress>? sipAddresses;

  /// The person's skills.
  core.List<Skill>? skills;

  /// **DEPRECATED**: No data will be returned The person's taglines.
  ///
  /// Output only.
  core.List<Tagline>? taglines;

  /// The person's associated URLs.
  core.List<Url>? urls;

  /// The person's user defined data.
  core.List<UserDefined>? userDefined;

  Person({
    this.addresses,
    this.ageRange,
    this.ageRanges,
    this.biographies,
    this.birthdays,
    this.braggingRights,
    this.calendarUrls,
    this.clientData,
    this.coverPhotos,
    this.emailAddresses,
    this.etag,
    this.events,
    this.externalIds,
    this.fileAses,
    this.genders,
    this.imClients,
    this.interests,
    this.locales,
    this.locations,
    this.memberships,
    this.metadata,
    this.miscKeywords,
    this.names,
    this.nicknames,
    this.occupations,
    this.organizations,
    this.phoneNumbers,
    this.photos,
    this.relations,
    this.relationshipInterests,
    this.relationshipStatuses,
    this.residences,
    this.resourceName,
    this.sipAddresses,
    this.skills,
    this.taglines,
    this.urls,
    this.userDefined,
  });

  Person.fromJson(core.Map _json)
      : this(
          addresses: _json.containsKey('addresses')
              ? (_json['addresses'] as core.List)
                  .map<Address>((value) => Address.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ageRange: _json.containsKey('ageRange')
              ? _json['ageRange'] as core.String
              : null,
          ageRanges: _json.containsKey('ageRanges')
              ? (_json['ageRanges'] as core.List)
                  .map<AgeRangeType>((value) => AgeRangeType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          biographies: _json.containsKey('biographies')
              ? (_json['biographies'] as core.List)
                  .map<Biography>((value) => Biography.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          birthdays: _json.containsKey('birthdays')
              ? (_json['birthdays'] as core.List)
                  .map<Birthday>((value) => Birthday.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          braggingRights: _json.containsKey('braggingRights')
              ? (_json['braggingRights'] as core.List)
                  .map<BraggingRights>((value) => BraggingRights.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          calendarUrls: _json.containsKey('calendarUrls')
              ? (_json['calendarUrls'] as core.List)
                  .map<CalendarUrl>((value) => CalendarUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          clientData: _json.containsKey('clientData')
              ? (_json['clientData'] as core.List)
                  .map<ClientData>((value) => ClientData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          coverPhotos: _json.containsKey('coverPhotos')
              ? (_json['coverPhotos'] as core.List)
                  .map<CoverPhoto>((value) => CoverPhoto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          emailAddresses: _json.containsKey('emailAddresses')
              ? (_json['emailAddresses'] as core.List)
                  .map<EmailAddress>((value) => EmailAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          events: _json.containsKey('events')
              ? (_json['events'] as core.List)
                  .map<Event>((value) => Event.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          externalIds: _json.containsKey('externalIds')
              ? (_json['externalIds'] as core.List)
                  .map<ExternalId>((value) => ExternalId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fileAses: _json.containsKey('fileAses')
              ? (_json['fileAses'] as core.List)
                  .map<FileAs>((value) => FileAs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          genders: _json.containsKey('genders')
              ? (_json['genders'] as core.List)
                  .map<Gender>((value) => Gender.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imClients: _json.containsKey('imClients')
              ? (_json['imClients'] as core.List)
                  .map<ImClient>((value) => ImClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          interests: _json.containsKey('interests')
              ? (_json['interests'] as core.List)
                  .map<Interest>((value) => Interest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locales: _json.containsKey('locales')
              ? (_json['locales'] as core.List)
                  .map<Locale>((value) => Locale.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<Location>((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memberships: _json.containsKey('memberships')
              ? (_json['memberships'] as core.List)
                  .map<Membership>((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? PersonMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          miscKeywords: _json.containsKey('miscKeywords')
              ? (_json['miscKeywords'] as core.List)
                  .map<MiscKeyword>((value) => MiscKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map<Name>((value) => Name.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nicknames: _json.containsKey('nicknames')
              ? (_json['nicknames'] as core.List)
                  .map<Nickname>((value) => Nickname.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          occupations: _json.containsKey('occupations')
              ? (_json['occupations'] as core.List)
                  .map<Occupation>((value) => Occupation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          organizations: _json.containsKey('organizations')
              ? (_json['organizations'] as core.List)
                  .map<Organization>((value) => Organization.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          phoneNumbers: _json.containsKey('phoneNumbers')
              ? (_json['phoneNumbers'] as core.List)
                  .map<PhoneNumber>((value) => PhoneNumber.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          photos: _json.containsKey('photos')
              ? (_json['photos'] as core.List)
                  .map<Photo>((value) => Photo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relations: _json.containsKey('relations')
              ? (_json['relations'] as core.List)
                  .map<Relation>((value) => Relation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationshipInterests: _json.containsKey('relationshipInterests')
              ? (_json['relationshipInterests'] as core.List)
                  .map<RelationshipInterest>((value) =>
                      RelationshipInterest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationshipStatuses: _json.containsKey('relationshipStatuses')
              ? (_json['relationshipStatuses'] as core.List)
                  .map<RelationshipStatus>((value) =>
                      RelationshipStatus.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          residences: _json.containsKey('residences')
              ? (_json['residences'] as core.List)
                  .map<Residence>((value) => Residence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
          sipAddresses: _json.containsKey('sipAddresses')
              ? (_json['sipAddresses'] as core.List)
                  .map<SipAddress>((value) => SipAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          skills: _json.containsKey('skills')
              ? (_json['skills'] as core.List)
                  .map<Skill>((value) => Skill.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          taglines: _json.containsKey('taglines')
              ? (_json['taglines'] as core.List)
                  .map<Tagline>((value) => Tagline.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          urls: _json.containsKey('urls')
              ? (_json['urls'] as core.List)
                  .map<Url>((value) => Url.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          userDefined: _json.containsKey('userDefined')
              ? (_json['userDefined'] as core.List)
                  .map<UserDefined>((value) => UserDefined.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null)
          'addresses': addresses!.map((value) => value.toJson()).toList(),
        if (ageRange != null) 'ageRange': ageRange!,
        if (ageRanges != null)
          'ageRanges': ageRanges!.map((value) => value.toJson()).toList(),
        if (biographies != null)
          'biographies': biographies!.map((value) => value.toJson()).toList(),
        if (birthdays != null)
          'birthdays': birthdays!.map((value) => value.toJson()).toList(),
        if (braggingRights != null)
          'braggingRights':
              braggingRights!.map((value) => value.toJson()).toList(),
        if (calendarUrls != null)
          'calendarUrls': calendarUrls!.map((value) => value.toJson()).toList(),
        if (clientData != null)
          'clientData': clientData!.map((value) => value.toJson()).toList(),
        if (coverPhotos != null)
          'coverPhotos': coverPhotos!.map((value) => value.toJson()).toList(),
        if (emailAddresses != null)
          'emailAddresses':
              emailAddresses!.map((value) => value.toJson()).toList(),
        if (etag != null) 'etag': etag!,
        if (events != null)
          'events': events!.map((value) => value.toJson()).toList(),
        if (externalIds != null)
          'externalIds': externalIds!.map((value) => value.toJson()).toList(),
        if (fileAses != null)
          'fileAses': fileAses!.map((value) => value.toJson()).toList(),
        if (genders != null)
          'genders': genders!.map((value) => value.toJson()).toList(),
        if (imClients != null)
          'imClients': imClients!.map((value) => value.toJson()).toList(),
        if (interests != null)
          'interests': interests!.map((value) => value.toJson()).toList(),
        if (locales != null)
          'locales': locales!.map((value) => value.toJson()).toList(),
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
        if (memberships != null)
          'memberships': memberships!.map((value) => value.toJson()).toList(),
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (miscKeywords != null)
          'miscKeywords': miscKeywords!.map((value) => value.toJson()).toList(),
        if (names != null)
          'names': names!.map((value) => value.toJson()).toList(),
        if (nicknames != null)
          'nicknames': nicknames!.map((value) => value.toJson()).toList(),
        if (occupations != null)
          'occupations': occupations!.map((value) => value.toJson()).toList(),
        if (organizations != null)
          'organizations':
              organizations!.map((value) => value.toJson()).toList(),
        if (phoneNumbers != null)
          'phoneNumbers': phoneNumbers!.map((value) => value.toJson()).toList(),
        if (photos != null)
          'photos': photos!.map((value) => value.toJson()).toList(),
        if (relations != null)
          'relations': relations!.map((value) => value.toJson()).toList(),
        if (relationshipInterests != null)
          'relationshipInterests':
              relationshipInterests!.map((value) => value.toJson()).toList(),
        if (relationshipStatuses != null)
          'relationshipStatuses':
              relationshipStatuses!.map((value) => value.toJson()).toList(),
        if (residences != null)
          'residences': residences!.map((value) => value.toJson()).toList(),
        if (resourceName != null) 'resourceName': resourceName!,
        if (sipAddresses != null)
          'sipAddresses': sipAddresses!.map((value) => value.toJson()).toList(),
        if (skills != null)
          'skills': skills!.map((value) => value.toJson()).toList(),
        if (taglines != null)
          'taglines': taglines!.map((value) => value.toJson()).toList(),
        if (urls != null) 'urls': urls!.map((value) => value.toJson()).toList(),
        if (userDefined != null)
          'userDefined': userDefined!.map((value) => value.toJson()).toList(),
      };
}

/// The metadata about a person.
class PersonMetadata {
  /// True if the person resource has been deleted.
  ///
  /// Populated only for `people.connections.list` and `otherContacts.list` sync
  /// requests.
  ///
  /// Output only.
  core.bool? deleted;

  /// Resource names of people linked to this resource.
  ///
  /// Output only.
  core.List<core.String>? linkedPeopleResourceNames;

  /// **DEPRECATED** (Please use
  /// `person.metadata.sources.profileMetadata.objectType` instead) The type of
  /// the person object.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OBJECT_TYPE_UNSPECIFIED" : Unspecified.
  /// - "PERSON" : Person.
  /// - "PAGE" :
  /// [Currents Page.](https://workspace.google.com/products/currents/)
  core.String? objectType;

  /// Any former resource names this person has had.
  ///
  /// Populated only for `people.connections.list` requests that include a sync
  /// token. The resource name may change when adding or removing fields that
  /// link a contact and profile such as a verified email, verified phone
  /// number, or profile URL.
  ///
  /// Output only.
  core.List<core.String>? previousResourceNames;

  /// The sources of data for the person.
  core.List<Source>? sources;

  PersonMetadata({
    this.deleted,
    this.linkedPeopleResourceNames,
    this.objectType,
    this.previousResourceNames,
    this.sources,
  });

  PersonMetadata.fromJson(core.Map _json)
      : this(
          deleted: _json.containsKey('deleted')
              ? _json['deleted'] as core.bool
              : null,
          linkedPeopleResourceNames:
              _json.containsKey('linkedPeopleResourceNames')
                  ? (_json['linkedPeopleResourceNames'] as core.List)
                      .map<core.String>((value) => value as core.String)
                      .toList()
                  : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          previousResourceNames: _json.containsKey('previousResourceNames')
              ? (_json['previousResourceNames'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map<Source>((value) => Source.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleted != null) 'deleted': deleted!,
        if (linkedPeopleResourceNames != null)
          'linkedPeopleResourceNames': linkedPeopleResourceNames!,
        if (objectType != null) 'objectType': objectType!,
        if (previousResourceNames != null)
          'previousResourceNames': previousResourceNames!,
        if (sources != null)
          'sources': sources!.map((value) => value.toJson()).toList(),
      };
}

/// The response for a single person
class PersonResponse {
  /// **DEPRECATED** (Please use status instead)
  /// [HTTP 1.1 status code](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html).
  core.int? httpStatusCode;

  /// The person.
  Person? person;

  /// The original requested resource name.
  ///
  /// May be different than the resource name on the returned person. The
  /// resource name can change when adding or removing fields that link a
  /// contact and profile such as a verified email, verified phone number, or a
  /// profile URL.
  core.String? requestedResourceName;

  /// The status of the response.
  Status? status;

  PersonResponse({
    this.httpStatusCode,
    this.person,
    this.requestedResourceName,
    this.status,
  });

  PersonResponse.fromJson(core.Map _json)
      : this(
          httpStatusCode: _json.containsKey('httpStatusCode')
              ? _json['httpStatusCode'] as core.int
              : null,
          person: _json.containsKey('person')
              ? Person.fromJson(
                  _json['person'] as core.Map<core.String, core.dynamic>)
              : null,
          requestedResourceName: _json.containsKey('requestedResourceName')
              ? _json['requestedResourceName'] as core.String
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpStatusCode != null) 'httpStatusCode': httpStatusCode!,
        if (person != null) 'person': person!.toJson(),
        if (requestedResourceName != null)
          'requestedResourceName': requestedResourceName!,
        if (status != null) 'status': status!.toJson(),
      };
}

/// A person's phone number.
class PhoneNumber {
  /// The canonicalized \[ITU-T
  /// E.164\](https://law.resource.org/pub/us/cfr/ibr/004/itu-t.E.164.1.2008.pdf)
  /// form of the phone number.
  ///
  /// Output only.
  core.String? canonicalForm;

  /// The type of the phone number translated and formatted in the viewer's
  /// account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the phone number.
  FieldMetadata? metadata;

  /// The type of the phone number.
  ///
  /// The type can be custom or one of these predefined values: * `home` *
  /// `work` * `mobile` * `homeFax` * `workFax` * `otherFax` * `pager` *
  /// `workMobile` * `workPager` * `main` * `googleVoice` * `other`
  core.String? type;

  /// The phone number.
  core.String? value;

  PhoneNumber({
    this.canonicalForm,
    this.formattedType,
    this.metadata,
    this.type,
    this.value,
  });

  PhoneNumber.fromJson(core.Map _json)
      : this(
          canonicalForm: _json.containsKey('canonicalForm')
              ? _json['canonicalForm'] as core.String
              : null,
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalForm != null) 'canonicalForm': canonicalForm!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A person's photo.
///
/// A picture shown next to the person's name to help others recognize the
/// person.
class Photo {
  /// True if the photo is a default photo; false if the photo is a
  /// user-provided photo.
  core.bool? default_;

  /// Metadata about the photo.
  FieldMetadata? metadata;

  /// The URL of the photo.
  ///
  /// You can change the desired size by appending a query parameter `sz={size}`
  /// at the end of the url, where {size} is the size in pixels. Example:
  /// https://lh3.googleusercontent.com/-T_wVWLlmg7w/AAAAAAAAAAI/AAAAAAAABa8/00gzXvDBYqw/s100/photo.jpg?sz=50
  core.String? url;

  Photo({
    this.default_,
    this.metadata,
    this.url,
  });

  Photo.fromJson(core.Map _json)
      : this(
          default_: _json.containsKey('default')
              ? _json['default'] as core.bool
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (url != null) 'url': url!,
      };
}

/// The metadata about a profile.
class ProfileMetadata {
  /// The profile object type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OBJECT_TYPE_UNSPECIFIED" : Unspecified.
  /// - "PERSON" : Person.
  /// - "PAGE" :
  /// [Currents Page.](https://workspace.google.com/products/currents/)
  core.String? objectType;

  /// The user types.
  ///
  /// Output only.
  core.List<core.String>? userTypes;

  ProfileMetadata({
    this.objectType,
    this.userTypes,
  });

  ProfileMetadata.fromJson(core.Map _json)
      : this(
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          userTypes: _json.containsKey('userTypes')
              ? (_json['userTypes'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectType != null) 'objectType': objectType!,
        if (userTypes != null) 'userTypes': userTypes!,
      };
}

/// A person's relation to another person.
class Relation {
  /// The type of the relation translated and formatted in the viewer's account
  /// locale or the locale specified in the Accept-Language HTTP header.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the relation.
  FieldMetadata? metadata;

  /// The name of the other person this relation refers to.
  core.String? person;

  /// The person's relation to the other person.
  ///
  /// The type can be custom or one of these predefined values: * `spouse` *
  /// `child` * `mother` * `father` * `parent` * `brother` * `sister` * `friend`
  /// * `relative` * `domesticPartner` * `manager` * `assistant` * `referredBy`
  /// * `partner`
  core.String? type;

  Relation({
    this.formattedType,
    this.metadata,
    this.person,
    this.type,
  });

  Relation.fromJson(core.Map _json)
      : this(
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          person: _json.containsKey('person')
              ? _json['person'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (person != null) 'person': person!,
        if (type != null) 'type': type!,
      };
}

/// **DEPRECATED**: No data will be returned A person's relationship interest .
class RelationshipInterest {
  /// The value of the relationship interest translated and formatted in the
  /// viewer's account locale or the locale specified in the Accept-Language
  /// HTTP header.
  ///
  /// Output only.
  core.String? formattedValue;

  /// Metadata about the relationship interest.
  FieldMetadata? metadata;

  /// The kind of relationship the person is looking for.
  ///
  /// The value can be custom or one of these predefined values: * `friend` *
  /// `date` * `relationship` * `networking`
  core.String? value;

  RelationshipInterest({
    this.formattedValue,
    this.metadata,
    this.value,
  });

  RelationshipInterest.fromJson(core.Map _json)
      : this(
          formattedValue: _json.containsKey('formattedValue')
              ? _json['formattedValue'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// **DEPRECATED**: No data will be returned A person's relationship status.
class RelationshipStatus {
  /// The value of the relationship status translated and formatted in the
  /// viewer's account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedValue;

  /// Metadata about the relationship status.
  FieldMetadata? metadata;

  /// The relationship status.
  ///
  /// The value can be custom or one of these predefined values: * `single` *
  /// `inARelationship` * `engaged` * `married` * `itsComplicated` *
  /// `openRelationship` * `widowed` * `inDomesticPartnership` * `inCivilUnion`
  core.String? value;

  RelationshipStatus({
    this.formattedValue,
    this.metadata,
    this.value,
  });

  RelationshipStatus.fromJson(core.Map _json)
      : this(
          formattedValue: _json.containsKey('formattedValue')
              ? _json['formattedValue'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// **DEPRECATED**: Please use `person.locations` instead.
///
/// A person's past or current residence.
class Residence {
  /// True if the residence is the person's current residence; false if the
  /// residence is a past residence.
  core.bool? current;

  /// Metadata about the residence.
  FieldMetadata? metadata;

  /// The address of the residence.
  core.String? value;

  Residence({
    this.current,
    this.metadata,
    this.value,
  });

  Residence.fromJson(core.Map _json)
      : this(
          current: _json.containsKey('current')
              ? _json['current'] as core.bool
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (current != null) 'current': current!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// The response to a request for people in the authenticated user's domain
/// directory that match the specified query.
class SearchDirectoryPeopleResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of people in the domain directory that match the query.
  core.List<Person>? people;

  /// The total number of items in the list without pagination.
  core.int? totalSize;

  SearchDirectoryPeopleResponse({
    this.nextPageToken,
    this.people,
    this.totalSize,
  });

  SearchDirectoryPeopleResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          people: _json.containsKey('people')
              ? (_json['people'] as core.List)
                  .map<Person>((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (people != null)
          'people': people!.map((value) => value.toJson()).toList(),
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// The response to a search request for the authenticated user, given a query.
class SearchResponse {
  /// The results of the request.
  core.List<SearchResult>? results;

  SearchResponse({
    this.results,
  });

  SearchResponse.fromJson(core.Map _json)
      : this(
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map<SearchResult>((value) => SearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null)
          'results': results!.map((value) => value.toJson()).toList(),
      };
}

/// A result of a search query.
class SearchResult {
  /// The matched Person.
  Person? person;

  SearchResult({
    this.person,
  });

  SearchResult.fromJson(core.Map _json)
      : this(
          person: _json.containsKey('person')
              ? Person.fromJson(
                  _json['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!.toJson(),
      };
}

/// A person's SIP address.
///
/// Session Initial Protocol addresses are used for VoIP communications to make
/// voice or video calls over the internet.
class SipAddress {
  /// The type of the SIP address translated and formatted in the viewer's
  /// account locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the SIP address.
  FieldMetadata? metadata;

  /// The type of the SIP address.
  ///
  /// The type can be custom or or one of these predefined values: * `home` *
  /// `work` * `mobile` * `other`
  core.String? type;

  /// The SIP address in the
  /// [RFC 3261 19.1](https://tools.ietf.org/html/rfc3261#section-19.1) SIP URI
  /// format.
  core.String? value;

  SipAddress({
    this.formattedType,
    this.metadata,
    this.type,
    this.value,
  });

  SipAddress.fromJson(core.Map _json)
      : this(
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A skill that the person has.
class Skill {
  /// Metadata about the skill.
  FieldMetadata? metadata;

  /// The skill; for example, `underwater basket weaving`.
  core.String? value;

  Skill({
    this.metadata,
    this.value,
  });

  Skill.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// The source of a field.
class Source {
  /// **Only populated in `person.metadata.sources`.** The
  /// [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the source.
  ///
  /// Used for web cache validation.
  core.String? etag;

  /// The unique identifier within the source type generated by the server.
  core.String? id;

  /// **Only populated in `person.metadata.sources`.** Metadata about a source
  /// of type PROFILE.
  ///
  /// Output only.
  ProfileMetadata? profileMetadata;

  /// The source type.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Unspecified.
  /// - "ACCOUNT" : [Google Account](https://accounts.google.com).
  /// - "PROFILE" : [Google profile](https://profiles.google.com). You can view
  /// the profile at
  /// \[https://profiles.google.com/\](https://profiles.google.com/){id}, where
  /// {id} is the source id.
  /// - "DOMAIN_PROFILE" :
  /// [Google Workspace domain profile](https://support.google.com/a/answer/1628008).
  /// - "CONTACT" : [Google contact](https://contacts.google.com). You can view
  /// the contact at
  /// \[https://contact.google.com/\](https://contact.google.com/){id}, where
  /// {id} is the source id.
  /// - "OTHER_CONTACT" : \[Google "Other
  /// contact"\](https://contacts.google.com/other).
  /// - "DOMAIN_CONTACT" :
  /// [Google Workspace domain shared contact](https://support.google.com/a/answer/9281635).
  core.String? type;

  /// **Only populated in `person.metadata.sources`.** Last update timestamp of
  /// this source.
  ///
  /// Output only.
  core.String? updateTime;

  Source({
    this.etag,
    this.id,
    this.profileMetadata,
    this.type,
    this.updateTime,
  });

  Source.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          profileMetadata: _json.containsKey('profileMetadata')
              ? ProfileMetadata.fromJson(_json['profileMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (profileMetadata != null)
          'profileMetadata': profileMetadata!.toJson(),
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  Status({
    this.code,
    this.details,
    this.message,
  });

  Status.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

/// **DEPRECATED**: No data will be returned A brief one-line description of the
/// person.
class Tagline {
  /// Metadata about the tagline.
  FieldMetadata? metadata;

  /// The tagline.
  core.String? value;

  Tagline({
    this.metadata,
    this.value,
  });

  Tagline.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}

/// A request to update an existing user contact group.
///
/// All updated fields will be replaced.
class UpdateContactGroupRequest {
  /// The contact group to update.
  ///
  /// Required.
  ContactGroup? contactGroup;

  /// A field mask to restrict which fields on the group are returned.
  ///
  /// Defaults to `metadata`, `groupType`, and `name` if not set or set to
  /// empty. Valid fields are: * clientData * groupType * memberCount * metadata
  /// * name
  ///
  /// Optional.
  core.String? readGroupFields;

  /// A field mask to restrict which fields on the group are updated.
  ///
  /// Multiple fields can be specified by separating them with commas. Defaults
  /// to `name` if not set or set to empty. Updated fields are replaced. Valid
  /// values are: * clientData * name
  ///
  /// Optional.
  core.String? updateGroupFields;

  UpdateContactGroupRequest({
    this.contactGroup,
    this.readGroupFields,
    this.updateGroupFields,
  });

  UpdateContactGroupRequest.fromJson(core.Map _json)
      : this(
          contactGroup: _json.containsKey('contactGroup')
              ? ContactGroup.fromJson(
                  _json['contactGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          readGroupFields: _json.containsKey('readGroupFields')
              ? _json['readGroupFields'] as core.String
              : null,
          updateGroupFields: _json.containsKey('updateGroupFields')
              ? _json['updateGroupFields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroup != null) 'contactGroup': contactGroup!.toJson(),
        if (readGroupFields != null) 'readGroupFields': readGroupFields!,
        if (updateGroupFields != null) 'updateGroupFields': updateGroupFields!,
      };
}

/// A request to update an existing contact's photo.
///
/// All requests must have a valid photo format: JPEG or PNG.
class UpdateContactPhotoRequest {
  /// A field mask to restrict which fields on the person are returned.
  ///
  /// Multiple fields can be specified by separating them with commas. Defaults
  /// to empty if not set, which will skip the post mutate get. Valid values
  /// are: * addresses * ageRanges * biographies * birthdays * calendarUrls *
  /// clientData * coverPhotos * emailAddresses * events * externalIds * genders
  /// * imClients * interests * locales * locations * memberships * metadata *
  /// miscKeywords * names * nicknames * occupations * organizations *
  /// phoneNumbers * photos * relations * sipAddresses * skills * urls *
  /// userDefined
  ///
  /// Optional.
  core.String? personFields;

  /// Raw photo bytes
  ///
  /// Required.
  core.String? photoBytes;
  core.List<core.int> get photoBytesAsBytes =>
      convert.base64.decode(photoBytes!);

  set photoBytesAsBytes(core.List<core.int> _bytes) {
    photoBytes =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A mask of what source types to return.
  ///
  /// Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not
  /// set.
  ///
  /// Optional.
  core.List<core.String>? sources;

  UpdateContactPhotoRequest({
    this.personFields,
    this.photoBytes,
    this.sources,
  });

  UpdateContactPhotoRequest.fromJson(core.Map _json)
      : this(
          personFields: _json.containsKey('personFields')
              ? _json['personFields'] as core.String
              : null,
          photoBytes: _json.containsKey('photoBytes')
              ? _json['photoBytes'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (personFields != null) 'personFields': personFields!,
        if (photoBytes != null) 'photoBytes': photoBytes!,
        if (sources != null) 'sources': sources!,
      };
}

/// The response for updating a contact's photo.
class UpdateContactPhotoResponse {
  /// The updated person, if person_fields is set in the
  /// UpdateContactPhotoRequest; otherwise this will be unset.
  Person? person;

  UpdateContactPhotoResponse({
    this.person,
  });

  UpdateContactPhotoResponse.fromJson(core.Map _json)
      : this(
          person: _json.containsKey('person')
              ? Person.fromJson(
                  _json['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!.toJson(),
      };
}

/// A person's associated URLs.
class Url {
  /// The type of the URL translated and formatted in the viewer's account
  /// locale or the `Accept-Language` HTTP header locale.
  ///
  /// Output only.
  core.String? formattedType;

  /// Metadata about the URL.
  FieldMetadata? metadata;

  /// The type of the URL.
  ///
  /// The type can be custom or one of these predefined values: * `home` *
  /// `work` * `blog` * `profile` * `homePage` * `ftp` * `reservations` *
  /// `appInstallPage`: website for a Currents application. * `other`
  core.String? type;

  /// The URL.
  core.String? value;

  Url({
    this.formattedType,
    this.metadata,
    this.type,
    this.value,
  });

  Url.fromJson(core.Map _json)
      : this(
          formattedType: _json.containsKey('formattedType')
              ? _json['formattedType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// Arbitrary user data that is populated by the end users.
class UserDefined {
  /// The end user specified key of the user defined data.
  core.String? key;

  /// Metadata about the user defined data.
  FieldMetadata? metadata;

  /// The end user specified value of the user defined data.
  core.String? value;

  UserDefined({
    this.key,
    this.metadata,
    this.value,
  });

  UserDefined.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (metadata != null) 'metadata': metadata!.toJson(),
        if (value != null) 'value': value!,
      };
}
