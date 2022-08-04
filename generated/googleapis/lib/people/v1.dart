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

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupFields != null) 'groupFields': [groupFields],
      if (maxMembers != null) 'maxMembers': ['${maxMembers}'],
      if (resourceNames != null) 'resourceNames': resourceNames,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/contactGroups:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BatchGetContactGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new contact group owned by the authenticated user.
  ///
  /// Created contact group names must be unique to the users contact groups.
  /// Attempting to create a group with a duplicate name will return a HTTP 409
  /// error. Mutate requests for the same user should be sent sequentially to
  /// avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/contactGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ContactGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete an existing contact group owned by the authenticated user by
  /// specifying a contact group resource name.
  ///
  /// Mutate requests for the same user should be sent sequentially to avoid
  /// increased latency and failures.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deleteContacts != null) 'deleteContacts': ['${deleteContacts}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupFields != null) 'groupFields': [groupFields],
      if (maxMembers != null) 'maxMembers': ['${maxMembers}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContactGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (groupFields != null) 'groupFields': [groupFields],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/contactGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListContactGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the name of an existing contact group owned by the authenticated
  /// user.
  ///
  /// Updated contact group names must be unique to the users contact groups.
  /// Attempting to create a group with a duplicate name will return a HTTP 409
  /// error. Mutate requests for the same user should be sent sequentially to
  /// avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ContactGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resourceName') + '/members:modify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ModifyContactGroupMembersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OtherContactsResource {
  final commons.ApiRequester _requester;

  OtherContactsResource(commons.ApiRequester client) : _requester = client;

  /// Copies an "Other contact" to a new contact in the user's "myContacts"
  /// group Mutate requests for the same user should be sent sequentially to
  /// avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$resourceName') +
        ':copyOtherContactToMyContactsGroup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Person.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all "Other contacts", that is contacts that are not in a contact
  /// group.
  ///
  /// "Other contacts" are typically auto created contacts from interactions.
  /// Sync tokens expire 7 days after the full sync. A request with an expired
  /// sync token will get an error with an
  /// [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/errors#error_info)
  /// with reason "EXPIRED_SYNC_TOKEN". In the case of such an error clients
  /// should make a full sync request without a `sync_token`. The first page of
  /// a full sync request has an additional quota. If the quota is exceeded, a
  /// 429 error will be returned. This quota is fixed and can not be increased.
  /// When the `sync_token` is specified, resources deleted since the last sync
  /// will be returned as a person with `PersonMetadata.deleted` set to true.
  /// When the `page_token` or `sync_token` is specified, all other request
  /// parameters must match the first call. Writes may have a propagation delay
  /// of several minutes for sync requests. Incremental syncs are not intended
  /// for read-after-write use cases. See example usage at \[List the user's
  /// other contacts that have
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
  /// READ_SOURCE_TYPE_CONTACT if not set. Possible values for this field are: *
  /// READ_SOURCE_TYPE_CONTACT *
  /// READ_SOURCE_TYPE_CONTACT,READ_SOURCE_TYPE_PROFILE Specifying
  /// READ_SOURCE_TYPE_PROFILE without specifying READ_SOURCE_TYPE_CONTACT is
  /// not permitted.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (requestSyncToken != null) 'requestSyncToken': ['${requestSyncToken}'],
      if (sources != null) 'sources': sources,
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/otherContacts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOtherContactsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/otherContacts:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PeopleResource {
  final commons.ApiRequester _requester;

  PeopleConnectionsResource get connections =>
      PeopleConnectionsResource(_requester);

  PeopleResource(commons.ApiRequester client) : _requester = client;

  /// Create a batch of new contacts and return the PersonResponses for the
  /// newly Mutate requests for the same user should be sent sequentially to
  /// avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:batchCreateContacts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateContactsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a batch of contacts.
  ///
  /// Any non-contact data will not be deleted. Mutate requests for the same
  /// user should be sent sequentially to avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:batchDeleteContacts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a batch of contacts and return a map of resource names to
  /// PersonResponses for the updated contacts.
  ///
  /// Mutate requests for the same user should be sent sequentially to avoid
  /// increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:batchUpdateContacts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateContactsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new contact and return the person resource for that contact.
  ///
  /// The request returns a 400 error if more than one field is specified on a
  /// field that is a singleton for contact sources: * biographies * birthdays *
  /// genders * names Mutate requests for the same user should be sent
  /// sequentially to avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:createContact';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Person.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a contact person.
  ///
  /// Any non-contact data will not be deleted. Mutate requests for the same
  /// user should be sent sequentially to avoid increased latency and failures.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':deleteContact';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a contact's photo.
  ///
  /// Mutate requests for the same user should be done sequentially to avoid //
  /// lock contention.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':deleteContactPhoto';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return DeleteContactPhotoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (requestMask_includeField != null)
        'requestMask.includeField': [requestMask_includeField],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resourceName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Person.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// resourceNames=\<name1\>&resourceNames=\<name2\>&... - To get information
  /// about the authenticated user, specify `people/me`. - To get information
  /// about a google account, specify `people/{account_id}`. - To get
  /// information about a contact, specify the resource name that identifies the
  /// contact as returned by `people.connections.list`. There is a maximum of
  /// 200 resource names.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (requestMask_includeField != null)
        'requestMask.includeField': [requestMask_includeField],
      if (resourceNames != null) 'resourceNames': resourceNames,
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:batchGet';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetPeopleResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mergeSources != null) 'mergeSources': mergeSources,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if (requestSyncToken != null) 'requestSyncToken': ['${requestSyncToken}'],
      if (sources != null) 'sources': sources,
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:listDirectoryPeople';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDirectoryPeopleResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:searchContacts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mergeSources != null) 'mergeSources': mergeSources,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (readMask != null) 'readMask': [readMask],
      if (sources != null) 'sources': sources,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/people:searchDirectoryPeople';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchDirectoryPeopleResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// biographies * birthdays * genders * names Mutate requests for the same
  /// user should be sent sequentially to avoid increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (personFields != null) 'personFields': [personFields],
      if (sources != null) 'sources': sources,
      if (updatePersonFields != null)
        'updatePersonFields': [updatePersonFields],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':updateContact';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Person.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a contact's photo.
  ///
  /// Mutate requests for the same user should be sent sequentially to avoid
  /// increased latency and failures.
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resourceName') + ':updateContactPhoto';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UpdateContactPhotoResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PeopleConnectionsResource {
  final commons.ApiRequester _requester;

  PeopleConnectionsResource(commons.ApiRequester client) : _requester = client;

  /// Provides a list of the authenticated user's contacts.
  ///
  /// Sync tokens expire 7 days after the full sync. A request with an expired
  /// sync token will get an error with an
  /// [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/errors#error_info)
  /// with reason "EXPIRED_SYNC_TOKEN". In the case of such an error clients
  /// should make a full sync request without a `sync_token`. The first page of
  /// a full sync request has an additional quota. If the quota is exceeded, a
  /// 429 error will be returned. This quota is fixed and can not be increased.
  /// When the `sync_token` is specified, resources deleted since the last sync
  /// will be returned as a person with `PersonMetadata.deleted` set to true.
  /// When the `page_token` or `sync_token` is specified, all other request
  /// parameters must match the first call. Writes may have a propagation delay
  /// of several minutes for sync requests. Incremental syncs are not intended
  /// for read-after-write use cases. See example usage at \[List the user's
  /// contacts that have
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resourceName') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  Address.fromJson(core.Map json_)
      : this(
          city: json_.containsKey('city') ? json_['city'] as core.String : null,
          country: json_.containsKey('country')
              ? json_['country'] as core.String
              : null,
          countryCode: json_.containsKey('countryCode')
              ? json_['countryCode'] as core.String
              : null,
          extendedAddress: json_.containsKey('extendedAddress')
              ? json_['extendedAddress'] as core.String
              : null,
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          formattedValue: json_.containsKey('formattedValue')
              ? json_['formattedValue'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          poBox:
              json_.containsKey('poBox') ? json_['poBox'] as core.String : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          streetAddress: json_.containsKey('streetAddress')
              ? json_['streetAddress'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (city != null) 'city': city!,
        if (country != null) 'country': country!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (extendedAddress != null) 'extendedAddress': extendedAddress!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!,
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

  AgeRangeType.fromJson(core.Map json_)
      : this(
          ageRange: json_.containsKey('ageRange')
              ? json_['ageRange'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ageRange != null) 'ageRange': ageRange!,
        if (metadata != null) 'metadata': metadata!,
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

  BatchCreateContactsRequest.fromJson(core.Map json_)
      : this(
          contacts: json_.containsKey('contacts')
              ? (json_['contacts'] as core.List)
                  .map((value) => ContactToCreate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readMask: json_.containsKey('readMask')
              ? json_['readMask'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null) 'contacts': contacts!,
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

  BatchCreateContactsResponse.fromJson(core.Map json_)
      : this(
          createdPeople: json_.containsKey('createdPeople')
              ? (json_['createdPeople'] as core.List)
                  .map((value) => PersonResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createdPeople != null) 'createdPeople': createdPeople!,
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

  BatchDeleteContactsRequest.fromJson(core.Map json_)
      : this(
          resourceNames: json_.containsKey('resourceNames')
              ? (json_['resourceNames'] as core.List)
                  .map((value) => value as core.String)
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

  BatchGetContactGroupsResponse.fromJson(core.Map json_)
      : this(
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => ContactGroupResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
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

  BatchUpdateContactsRequest.fromJson(core.Map json_)
      : this(
          contacts: json_.containsKey('contacts')
              ? (json_['contacts'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Person.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          readMask: json_.containsKey('readMask')
              ? json_['readMask'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contacts != null) 'contacts': contacts!,
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

  BatchUpdateContactsResponse.fromJson(core.Map json_)
      : this(
          updateResult: json_.containsKey('updateResult')
              ? (json_['updateResult'] as core.Map<core.String, core.dynamic>)
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
        if (updateResult != null) 'updateResult': updateResult!,
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

  Biography.fromJson(core.Map json_)
      : this(
          contentType: json_.containsKey('contentType')
              ? json_['contentType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentType != null) 'contentType': contentType!,
        if (metadata != null) 'metadata': metadata!,
        if (value != null) 'value': value!,
      };
}

/// A person's birthday.
///
/// At least one of the `date` and `text` fields are specified. The `date` and
/// `text` fields typically represent the same date, but are not guaranteed to.
/// Clients should always set the `date` field when mutating birthdays.
class Birthday {
  /// The structured date of the birthday.
  Date? date;

  /// Metadata about the birthday.
  FieldMetadata? metadata;

  /// Prefer to use the `date` field if set.
  ///
  /// A free-form string representing the user's birthday. This value is not
  /// validated.
  core.String? text;

  Birthday({
    this.date,
    this.metadata,
    this.text,
  });

  Birthday.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (metadata != null) 'metadata': metadata!,
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

  BraggingRights.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  CalendarUrl.fromJson(core.Map json_)
      : this(
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  ClientData.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (metadata != null) 'metadata': metadata!,
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

  ContactGroup.fromJson(core.Map json_)
      : this(
          clientData: json_.containsKey('clientData')
              ? (json_['clientData'] as core.List)
                  .map((value) => GroupClientData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          formattedName: json_.containsKey('formattedName')
              ? json_['formattedName'] as core.String
              : null,
          groupType: json_.containsKey('groupType')
              ? json_['groupType'] as core.String
              : null,
          memberCount: json_.containsKey('memberCount')
              ? json_['memberCount'] as core.int
              : null,
          memberResourceNames: json_.containsKey('memberResourceNames')
              ? (json_['memberResourceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? ContactGroupMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientData != null) 'clientData': clientData!,
        if (etag != null) 'etag': etag!,
        if (formattedName != null) 'formattedName': formattedName!,
        if (groupType != null) 'groupType': groupType!,
        if (memberCount != null) 'memberCount': memberCount!,
        if (memberResourceNames != null)
          'memberResourceNames': memberResourceNames!,
        if (metadata != null) 'metadata': metadata!,
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

  ContactGroupMembership.fromJson(core.Map json_)
      : this(
          contactGroupId: json_.containsKey('contactGroupId')
              ? json_['contactGroupId'] as core.String
              : null,
          contactGroupResourceName:
              json_.containsKey('contactGroupResourceName')
                  ? json_['contactGroupResourceName'] as core.String
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

  ContactGroupMetadata.fromJson(core.Map json_)
      : this(
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
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

  ContactGroupResponse.fromJson(core.Map json_)
      : this(
          contactGroup: json_.containsKey('contactGroup')
              ? ContactGroup.fromJson(
                  json_['contactGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          requestedResourceName: json_.containsKey('requestedResourceName')
              ? json_['requestedResourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroup != null) 'contactGroup': contactGroup!,
        if (requestedResourceName != null)
          'requestedResourceName': requestedResourceName!,
        if (status != null) 'status': status!,
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

  ContactToCreate.fromJson(core.Map json_)
      : this(
          contactPerson: json_.containsKey('contactPerson')
              ? Person.fromJson(
                  json_['contactPerson'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactPerson != null) 'contactPerson': contactPerson!,
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

  CopyOtherContactToMyContactsGroupRequest.fromJson(core.Map json_)
      : this(
          copyMask: json_.containsKey('copyMask')
              ? json_['copyMask'] as core.String
              : null,
          readMask: json_.containsKey('readMask')
              ? json_['readMask'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => value as core.String)
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

  CoverPhoto.fromJson(core.Map json_)
      : this(
          default_: json_.containsKey('default')
              ? json_['default'] as core.bool
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (metadata != null) 'metadata': metadata!,
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

  CreateContactGroupRequest.fromJson(core.Map json_)
      : this(
          contactGroup: json_.containsKey('contactGroup')
              ? ContactGroup.fromJson(
                  json_['contactGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          readGroupFields: json_.containsKey('readGroupFields')
              ? json_['readGroupFields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroup != null) 'contactGroup': contactGroup!,
        if (readGroupFields != null) 'readGroupFields': readGroupFields!,
      };
}

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

/// The response for deleting a contact's photo.
class DeleteContactPhotoResponse {
  /// The updated person, if person_fields is set in the
  /// DeleteContactPhotoRequest; otherwise this will be unset.
  Person? person;

  DeleteContactPhotoResponse({
    this.person,
  });

  DeleteContactPhotoResponse.fromJson(core.Map json_)
      : this(
          person: json_.containsKey('person')
              ? Person.fromJson(
                  json_['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
      };
}

/// A Google Workspace Domain membership.
class DomainMembership {
  /// True if the person is in the viewer's Google Workspace domain.
  core.bool? inViewerDomain;

  DomainMembership({
    this.inViewerDomain,
  });

  DomainMembership.fromJson(core.Map json_)
      : this(
          inViewerDomain: json_.containsKey('inViewerDomain')
              ? json_['inViewerDomain'] as core.bool
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

  EmailAddress.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

  Event.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  ExternalId.fromJson(core.Map json_)
      : this(
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  FieldMetadata.fromJson(core.Map json_)
      : this(
          primary: json_.containsKey('primary')
              ? json_['primary'] as core.bool
              : null,
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          sourcePrimary: json_.containsKey('sourcePrimary')
              ? json_['sourcePrimary'] as core.bool
              : null,
          verified: json_.containsKey('verified')
              ? json_['verified'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primary != null) 'primary': primary!,
        if (source != null) 'source': source!,
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

  FileAs.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  Gender.fromJson(core.Map json_)
      : this(
          addressMeAs: json_.containsKey('addressMeAs')
              ? json_['addressMeAs'] as core.String
              : null,
          formattedValue: json_.containsKey('formattedValue')
              ? json_['formattedValue'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressMeAs != null) 'addressMeAs': addressMeAs!,
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!,
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

  GetPeopleResponse.fromJson(core.Map json_)
      : this(
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => PersonResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
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

  GroupClientData.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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

  ImClient.fromJson(core.Map json_)
      : this(
          formattedProtocol: json_.containsKey('formattedProtocol')
              ? json_['formattedProtocol'] as core.String
              : null,
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedProtocol != null) 'formattedProtocol': formattedProtocol!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  Interest.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  ListConnectionsResponse.fromJson(core.Map json_)
      : this(
          connections: json_.containsKey('connections')
              ? (json_['connections'] as core.List)
                  .map((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
          totalItems: json_.containsKey('totalItems')
              ? json_['totalItems'] as core.int
              : null,
          totalPeople: json_.containsKey('totalPeople')
              ? json_['totalPeople'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connections != null) 'connections': connections!,
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

  ListContactGroupsResponse.fromJson(core.Map json_)
      : this(
          contactGroups: json_.containsKey('contactGroups')
              ? (json_['contactGroups'] as core.List)
                  .map((value) => ContactGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
          totalItems: json_.containsKey('totalItems')
              ? json_['totalItems'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroups != null) 'contactGroups': contactGroups!,
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

  ListDirectoryPeopleResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
          people: json_.containsKey('people')
              ? (json_['people'] as core.List)
                  .map((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (people != null) 'people': people!,
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

  ListOtherContactsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
          otherContacts: json_.containsKey('otherContacts')
              ? (json_['otherContacts'] as core.List)
                  .map((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (otherContacts != null) 'otherContacts': otherContacts!,
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

  Locale.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  Location.fromJson(core.Map json_)
      : this(
          buildingId: json_.containsKey('buildingId')
              ? json_['buildingId'] as core.String
              : null,
          current: json_.containsKey('current')
              ? json_['current'] as core.bool
              : null,
          deskCode: json_.containsKey('deskCode')
              ? json_['deskCode'] as core.String
              : null,
          floor:
              json_.containsKey('floor') ? json_['floor'] as core.String : null,
          floorSection: json_.containsKey('floorSection')
              ? json_['floorSection'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildingId != null) 'buildingId': buildingId!,
        if (current != null) 'current': current!,
        if (deskCode != null) 'deskCode': deskCode!,
        if (floor != null) 'floor': floor!,
        if (floorSection != null) 'floorSection': floorSection!,
        if (metadata != null) 'metadata': metadata!,
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

  Membership.fromJson(core.Map json_)
      : this(
          contactGroupMembership: json_.containsKey('contactGroupMembership')
              ? ContactGroupMembership.fromJson(json_['contactGroupMembership']
                  as core.Map<core.String, core.dynamic>)
              : null,
          domainMembership: json_.containsKey('domainMembership')
              ? DomainMembership.fromJson(json_['domainMembership']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroupMembership != null)
          'contactGroupMembership': contactGroupMembership!,
        if (domainMembership != null) 'domainMembership': domainMembership!,
        if (metadata != null) 'metadata': metadata!,
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

  MiscKeyword.fromJson(core.Map json_)
      : this(
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  ModifyContactGroupMembersRequest.fromJson(core.Map json_)
      : this(
          resourceNamesToAdd: json_.containsKey('resourceNamesToAdd')
              ? (json_['resourceNamesToAdd'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          resourceNamesToRemove: json_.containsKey('resourceNamesToRemove')
              ? (json_['resourceNamesToRemove'] as core.List)
                  .map((value) => value as core.String)
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

  ModifyContactGroupMembersResponse.fromJson(core.Map json_)
      : this(
          canNotRemoveLastContactGroupResourceNames:
              json_.containsKey('canNotRemoveLastContactGroupResourceNames')
                  ? (json_['canNotRemoveLastContactGroupResourceNames']
                          as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          notFoundResourceNames: json_.containsKey('notFoundResourceNames')
              ? (json_['notFoundResourceNames'] as core.List)
                  .map((value) => value as core.String)
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

  Name.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          displayNameLastFirst: json_.containsKey('displayNameLastFirst')
              ? json_['displayNameLastFirst'] as core.String
              : null,
          familyName: json_.containsKey('familyName')
              ? json_['familyName'] as core.String
              : null,
          givenName: json_.containsKey('givenName')
              ? json_['givenName'] as core.String
              : null,
          honorificPrefix: json_.containsKey('honorificPrefix')
              ? json_['honorificPrefix'] as core.String
              : null,
          honorificSuffix: json_.containsKey('honorificSuffix')
              ? json_['honorificSuffix'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          middleName: json_.containsKey('middleName')
              ? json_['middleName'] as core.String
              : null,
          phoneticFamilyName: json_.containsKey('phoneticFamilyName')
              ? json_['phoneticFamilyName'] as core.String
              : null,
          phoneticFullName: json_.containsKey('phoneticFullName')
              ? json_['phoneticFullName'] as core.String
              : null,
          phoneticGivenName: json_.containsKey('phoneticGivenName')
              ? json_['phoneticGivenName'] as core.String
              : null,
          phoneticHonorificPrefix: json_.containsKey('phoneticHonorificPrefix')
              ? json_['phoneticHonorificPrefix'] as core.String
              : null,
          phoneticHonorificSuffix: json_.containsKey('phoneticHonorificSuffix')
              ? json_['phoneticHonorificSuffix'] as core.String
              : null,
          phoneticMiddleName: json_.containsKey('phoneticMiddleName')
              ? json_['phoneticMiddleName'] as core.String
              : null,
          unstructuredName: json_.containsKey('unstructuredName')
              ? json_['unstructuredName'] as core.String
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
        if (metadata != null) 'metadata': metadata!,
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

  Nickname.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  Occupation.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  Organization.fromJson(core.Map json_)
      : this(
          costCenter: json_.containsKey('costCenter')
              ? json_['costCenter'] as core.String
              : null,
          current: json_.containsKey('current')
              ? json_['current'] as core.bool
              : null,
          department: json_.containsKey('department')
              ? json_['department'] as core.String
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          fullTimeEquivalentMillipercent:
              json_.containsKey('fullTimeEquivalentMillipercent')
                  ? json_['fullTimeEquivalentMillipercent'] as core.int
                  : null,
          jobDescription: json_.containsKey('jobDescription')
              ? json_['jobDescription'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          phoneticName: json_.containsKey('phoneticName')
              ? json_['phoneticName'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          symbol: json_.containsKey('symbol')
              ? json_['symbol'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (costCenter != null) 'costCenter': costCenter!,
        if (current != null) 'current': current!,
        if (department != null) 'department': department!,
        if (domain != null) 'domain': domain!,
        if (endDate != null) 'endDate': endDate!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (fullTimeEquivalentMillipercent != null)
          'fullTimeEquivalentMillipercent': fullTimeEquivalentMillipercent!,
        if (jobDescription != null) 'jobDescription': jobDescription!,
        if (location != null) 'location': location!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (phoneticName != null) 'phoneticName': phoneticName!,
        if (startDate != null) 'startDate': startDate!,
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

  Person.fromJson(core.Map json_)
      : this(
          addresses: json_.containsKey('addresses')
              ? (json_['addresses'] as core.List)
                  .map((value) => Address.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ageRange: json_.containsKey('ageRange')
              ? json_['ageRange'] as core.String
              : null,
          ageRanges: json_.containsKey('ageRanges')
              ? (json_['ageRanges'] as core.List)
                  .map((value) => AgeRangeType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          biographies: json_.containsKey('biographies')
              ? (json_['biographies'] as core.List)
                  .map((value) => Biography.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          birthdays: json_.containsKey('birthdays')
              ? (json_['birthdays'] as core.List)
                  .map((value) => Birthday.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          braggingRights: json_.containsKey('braggingRights')
              ? (json_['braggingRights'] as core.List)
                  .map((value) => BraggingRights.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          calendarUrls: json_.containsKey('calendarUrls')
              ? (json_['calendarUrls'] as core.List)
                  .map((value) => CalendarUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          clientData: json_.containsKey('clientData')
              ? (json_['clientData'] as core.List)
                  .map((value) => ClientData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          coverPhotos: json_.containsKey('coverPhotos')
              ? (json_['coverPhotos'] as core.List)
                  .map((value) => CoverPhoto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          emailAddresses: json_.containsKey('emailAddresses')
              ? (json_['emailAddresses'] as core.List)
                  .map((value) => EmailAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          events: json_.containsKey('events')
              ? (json_['events'] as core.List)
                  .map((value) => Event.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          externalIds: json_.containsKey('externalIds')
              ? (json_['externalIds'] as core.List)
                  .map((value) => ExternalId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fileAses: json_.containsKey('fileAses')
              ? (json_['fileAses'] as core.List)
                  .map((value) => FileAs.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          genders: json_.containsKey('genders')
              ? (json_['genders'] as core.List)
                  .map((value) => Gender.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imClients: json_.containsKey('imClients')
              ? (json_['imClients'] as core.List)
                  .map((value) => ImClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          interests: json_.containsKey('interests')
              ? (json_['interests'] as core.List)
                  .map((value) => Interest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locales: json_.containsKey('locales')
              ? (json_['locales'] as core.List)
                  .map((value) => Locale.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memberships: json_.containsKey('memberships')
              ? (json_['memberships'] as core.List)
                  .map((value) => Membership.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? PersonMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          miscKeywords: json_.containsKey('miscKeywords')
              ? (json_['miscKeywords'] as core.List)
                  .map((value) => MiscKeyword.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => Name.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nicknames: json_.containsKey('nicknames')
              ? (json_['nicknames'] as core.List)
                  .map((value) => Nickname.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          occupations: json_.containsKey('occupations')
              ? (json_['occupations'] as core.List)
                  .map((value) => Occupation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          organizations: json_.containsKey('organizations')
              ? (json_['organizations'] as core.List)
                  .map((value) => Organization.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          phoneNumbers: json_.containsKey('phoneNumbers')
              ? (json_['phoneNumbers'] as core.List)
                  .map((value) => PhoneNumber.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          photos: json_.containsKey('photos')
              ? (json_['photos'] as core.List)
                  .map((value) => Photo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relations: json_.containsKey('relations')
              ? (json_['relations'] as core.List)
                  .map((value) => Relation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationshipInterests: json_.containsKey('relationshipInterests')
              ? (json_['relationshipInterests'] as core.List)
                  .map((value) => RelationshipInterest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relationshipStatuses: json_.containsKey('relationshipStatuses')
              ? (json_['relationshipStatuses'] as core.List)
                  .map((value) => RelationshipStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          residences: json_.containsKey('residences')
              ? (json_['residences'] as core.List)
                  .map((value) => Residence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceName: json_.containsKey('resourceName')
              ? json_['resourceName'] as core.String
              : null,
          sipAddresses: json_.containsKey('sipAddresses')
              ? (json_['sipAddresses'] as core.List)
                  .map((value) => SipAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          skills: json_.containsKey('skills')
              ? (json_['skills'] as core.List)
                  .map((value) => Skill.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          taglines: json_.containsKey('taglines')
              ? (json_['taglines'] as core.List)
                  .map((value) => Tagline.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          urls: json_.containsKey('urls')
              ? (json_['urls'] as core.List)
                  .map((value) => Url.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          userDefined: json_.containsKey('userDefined')
              ? (json_['userDefined'] as core.List)
                  .map((value) => UserDefined.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null) 'addresses': addresses!,
        if (ageRange != null) 'ageRange': ageRange!,
        if (ageRanges != null) 'ageRanges': ageRanges!,
        if (biographies != null) 'biographies': biographies!,
        if (birthdays != null) 'birthdays': birthdays!,
        if (braggingRights != null) 'braggingRights': braggingRights!,
        if (calendarUrls != null) 'calendarUrls': calendarUrls!,
        if (clientData != null) 'clientData': clientData!,
        if (coverPhotos != null) 'coverPhotos': coverPhotos!,
        if (emailAddresses != null) 'emailAddresses': emailAddresses!,
        if (etag != null) 'etag': etag!,
        if (events != null) 'events': events!,
        if (externalIds != null) 'externalIds': externalIds!,
        if (fileAses != null) 'fileAses': fileAses!,
        if (genders != null) 'genders': genders!,
        if (imClients != null) 'imClients': imClients!,
        if (interests != null) 'interests': interests!,
        if (locales != null) 'locales': locales!,
        if (locations != null) 'locations': locations!,
        if (memberships != null) 'memberships': memberships!,
        if (metadata != null) 'metadata': metadata!,
        if (miscKeywords != null) 'miscKeywords': miscKeywords!,
        if (names != null) 'names': names!,
        if (nicknames != null) 'nicknames': nicknames!,
        if (occupations != null) 'occupations': occupations!,
        if (organizations != null) 'organizations': organizations!,
        if (phoneNumbers != null) 'phoneNumbers': phoneNumbers!,
        if (photos != null) 'photos': photos!,
        if (relations != null) 'relations': relations!,
        if (relationshipInterests != null)
          'relationshipInterests': relationshipInterests!,
        if (relationshipStatuses != null)
          'relationshipStatuses': relationshipStatuses!,
        if (residences != null) 'residences': residences!,
        if (resourceName != null) 'resourceName': resourceName!,
        if (sipAddresses != null) 'sipAddresses': sipAddresses!,
        if (skills != null) 'skills': skills!,
        if (taglines != null) 'taglines': taglines!,
        if (urls != null) 'urls': urls!,
        if (userDefined != null) 'userDefined': userDefined!,
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

  PersonMetadata.fromJson(core.Map json_)
      : this(
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          linkedPeopleResourceNames:
              json_.containsKey('linkedPeopleResourceNames')
                  ? (json_['linkedPeopleResourceNames'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          objectType: json_.containsKey('objectType')
              ? json_['objectType'] as core.String
              : null,
          previousResourceNames: json_.containsKey('previousResourceNames')
              ? (json_['previousResourceNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => Source.fromJson(
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
        if (sources != null) 'sources': sources!,
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

  PersonResponse.fromJson(core.Map json_)
      : this(
          httpStatusCode: json_.containsKey('httpStatusCode')
              ? json_['httpStatusCode'] as core.int
              : null,
          person: json_.containsKey('person')
              ? Person.fromJson(
                  json_['person'] as core.Map<core.String, core.dynamic>)
              : null,
          requestedResourceName: json_.containsKey('requestedResourceName')
              ? json_['requestedResourceName'] as core.String
              : null,
          status: json_.containsKey('status')
              ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpStatusCode != null) 'httpStatusCode': httpStatusCode!,
        if (person != null) 'person': person!,
        if (requestedResourceName != null)
          'requestedResourceName': requestedResourceName!,
        if (status != null) 'status': status!,
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

  PhoneNumber.fromJson(core.Map json_)
      : this(
          canonicalForm: json_.containsKey('canonicalForm')
              ? json_['canonicalForm'] as core.String
              : null,
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canonicalForm != null) 'canonicalForm': canonicalForm!,
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  Photo.fromJson(core.Map json_)
      : this(
          default_: json_.containsKey('default')
              ? json_['default'] as core.bool
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (metadata != null) 'metadata': metadata!,
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

  ProfileMetadata.fromJson(core.Map json_)
      : this(
          objectType: json_.containsKey('objectType')
              ? json_['objectType'] as core.String
              : null,
          userTypes: json_.containsKey('userTypes')
              ? (json_['userTypes'] as core.List)
                  .map((value) => value as core.String)
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

  Relation.fromJson(core.Map json_)
      : this(
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          person: json_.containsKey('person')
              ? json_['person'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  RelationshipInterest.fromJson(core.Map json_)
      : this(
          formattedValue: json_.containsKey('formattedValue')
              ? json_['formattedValue'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!,
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

  RelationshipStatus.fromJson(core.Map json_)
      : this(
          formattedValue: json_.containsKey('formattedValue')
              ? json_['formattedValue'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedValue != null) 'formattedValue': formattedValue!,
        if (metadata != null) 'metadata': metadata!,
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

  Residence.fromJson(core.Map json_)
      : this(
          current: json_.containsKey('current')
              ? json_['current'] as core.bool
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (current != null) 'current': current!,
        if (metadata != null) 'metadata': metadata!,
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

  SearchDirectoryPeopleResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          people: json_.containsKey('people')
              ? (json_['people'] as core.List)
                  .map((value) => Person.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (people != null) 'people': people!,
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

  SearchResponse.fromJson(core.Map json_)
      : this(
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => SearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null) 'results': results!,
      };
}

/// A result of a search query.
class SearchResult {
  /// The matched Person.
  Person? person;

  SearchResult({
    this.person,
  });

  SearchResult.fromJson(core.Map json_)
      : this(
          person: json_.containsKey('person')
              ? Person.fromJson(
                  json_['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
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

  SipAddress.fromJson(core.Map json_)
      : this(
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  Skill.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  Source.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          profileMetadata: json_.containsKey('profileMetadata')
              ? ProfileMetadata.fromJson(json_['profileMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (profileMetadata != null) 'profileMetadata': profileMetadata!,
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
typedef Status = $Status;

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

  Tagline.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
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

  UpdateContactGroupRequest.fromJson(core.Map json_)
      : this(
          contactGroup: json_.containsKey('contactGroup')
              ? ContactGroup.fromJson(
                  json_['contactGroup'] as core.Map<core.String, core.dynamic>)
              : null,
          readGroupFields: json_.containsKey('readGroupFields')
              ? json_['readGroupFields'] as core.String
              : null,
          updateGroupFields: json_.containsKey('updateGroupFields')
              ? json_['updateGroupFields'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contactGroup != null) 'contactGroup': contactGroup!,
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

  set photoBytesAsBytes(core.List<core.int> bytes_) {
    photoBytes =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  UpdateContactPhotoRequest.fromJson(core.Map json_)
      : this(
          personFields: json_.containsKey('personFields')
              ? json_['personFields'] as core.String
              : null,
          photoBytes: json_.containsKey('photoBytes')
              ? json_['photoBytes'] as core.String
              : null,
          sources: json_.containsKey('sources')
              ? (json_['sources'] as core.List)
                  .map((value) => value as core.String)
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

  UpdateContactPhotoResponse.fromJson(core.Map json_)
      : this(
          person: json_.containsKey('person')
              ? Person.fromJson(
                  json_['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
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

  Url.fromJson(core.Map json_)
      : this(
          formattedType: json_.containsKey('formattedType')
              ? json_['formattedType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formattedType != null) 'formattedType': formattedType!,
        if (metadata != null) 'metadata': metadata!,
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

  UserDefined.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? FieldMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (metadata != null) 'metadata': metadata!,
        if (value != null) 'value': value!,
      };
}
