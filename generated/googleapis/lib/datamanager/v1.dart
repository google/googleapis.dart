// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Data Manager API - v1
///
/// A unified ingestion API for data partners, agencies and advertisers to
/// connect first-party data across Google advertising products.
///
/// For more information, see <https://developers.google.com/data-manager>
///
/// Create an instance of [DataManagerApi] to access these resources:
///
/// - [AccountTypesResource]
///   - [AccountTypesAccountsResource]
///     - [AccountTypesAccountsInsightsResource]
///     - [AccountTypesAccountsPartnerLinksResource]
///     - [AccountTypesAccountsUserListDirectLicensesResource]
///     - [AccountTypesAccountsUserListGlobalLicensesResource]
/// -
/// [AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource]
///     - [AccountTypesAccountsUserListsResource]
/// - [AdEventsResource]
/// - [AudienceMembersResource]
/// - [EventsResource]
/// - [RequestStatusResource]
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

/// A unified ingestion API for data partners, agencies and advertisers to
/// connect first-party data across Google advertising products.
class DataManagerApi {
  /// See, edit, create, import, or delete your customer data in Google Ads,
  /// Google Marketing Platform (Campaign Manager 360, Search Ads 360, Display &
  /// Video 360), and Google Analytics
  static const datamanagerScope = 'https://www.googleapis.com/auth/datamanager';

  /// View, create, or delete your partner links in Google Ads, Marketing
  /// Platform (Campaign Manager 360, Search Ads 360, Display & Video 360), and
  /// Analytics
  static const datamanagerPartnerlinkScope =
      'https://www.googleapis.com/auth/datamanager.partnerlink';

  final commons.ApiRequester _requester;

  AccountTypesResource get accountTypes => AccountTypesResource(_requester);
  AdEventsResource get adEvents => AdEventsResource(_requester);
  AudienceMembersResource get audienceMembers =>
      AudienceMembersResource(_requester);
  EventsResource get events => EventsResource(_requester);
  RequestStatusResource get requestStatus => RequestStatusResource(_requester);

  DataManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://datamanager.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountTypesResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsResource get accounts =>
      AccountTypesAccountsResource(_requester);

  AccountTypesResource(commons.ApiRequester client) : _requester = client;
}

class AccountTypesAccountsResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsInsightsResource get insights =>
      AccountTypesAccountsInsightsResource(_requester);
  AccountTypesAccountsPartnerLinksResource get partnerLinks =>
      AccountTypesAccountsPartnerLinksResource(_requester);
  AccountTypesAccountsUserListDirectLicensesResource
  get userListDirectLicenses =>
      AccountTypesAccountsUserListDirectLicensesResource(_requester);
  AccountTypesAccountsUserListGlobalLicensesResource
  get userListGlobalLicenses =>
      AccountTypesAccountsUserListGlobalLicensesResource(_requester);
  AccountTypesAccountsUserListsResource get userLists =>
      AccountTypesAccountsUserListsResource(_requester);

  AccountTypesAccountsResource(commons.ApiRequester client)
    : _requester = client;
}

class AccountTypesAccountsInsightsResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsInsightsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveInsightsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveInsightsResponse> retrieve(
    RetrieveInsightsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/insights:retrieve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RetrieveInsightsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsPartnerLinksResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsPartnerLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartnerLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartnerLink> create(
    PartnerLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/partnerLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PartnerLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/partnerLinks/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchPartnerLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchPartnerLinksResponse> search(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/partnerLinks:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchPartnerLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListDirectLicensesResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListDirectLicensesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListDirectLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListDirectLicense> create(
    UserListDirectLicense request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListDirectLicenses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListDirectLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListDirectLicenses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListDirectLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListDirectLicense> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserListDirectLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListDirectLicensesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListDirectLicensesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListDirectLicenses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListDirectLicensesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListDirectLicenses/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListDirectLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListDirectLicense> patch(
    UserListDirectLicense request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListDirectLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListGlobalLicensesResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource
  get userListGlobalLicenseCustomerInfos =>
      AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource(
        _requester,
      );

  AccountTypesAccountsUserListGlobalLicensesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListGlobalLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListGlobalLicense> create(
    UserListGlobalLicense request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListGlobalLicenses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListGlobalLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListGlobalLicenses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListGlobalLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListGlobalLicense> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserListGlobalLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListGlobalLicensesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListGlobalLicensesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/userListGlobalLicenses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListGlobalLicensesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListGlobalLicenses/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserListGlobalLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserListGlobalLicense> patch(
    UserListGlobalLicense request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserListGlobalLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userListGlobalLicenses/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListGlobalLicenseCustomerInfosResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListGlobalLicenseCustomerInfosResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/userListGlobalLicenseCustomerInfos';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListGlobalLicenseCustomerInfosResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountTypesAccountsUserListsResource {
  final commons.ApiRequester _requester;

  AccountTypesAccountsUserListsResource(commons.ApiRequester client)
    : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [validateOnly] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> create(
    UserList request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [validateOnly] - null
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern `^accountTypes/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^accountTypes/\[^/\]+/accounts/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [updateMask] - null
  ///
  /// [validateOnly] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> patch(
    UserList request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdEventsResource {
  final commons.ApiRequester _requester;

  AdEventsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestAdEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestAdEventsResponse> ingest(
    IngestAdEventsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/adEvents:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestAdEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AudienceMembersResource {
  final commons.ApiRequester _requester;

  AudienceMembersResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestAudienceMembersResponse> ingest(
    IngestAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/audienceMembers:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveAudienceMembersResponse> remove(
    RemoveAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/audienceMembers:remove';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoveAllAudienceMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoveAllAudienceMembersResponse> removeAll(
    RemoveAllAudienceMembersRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/audienceMembers:removeAll';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemoveAllAudienceMembersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EventsResource {
  final commons.ApiRequester _requester;

  EventsResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestEventsResponse> ingest(
    IngestEventsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/events:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestEventsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class RequestStatusResource {
  final commons.ApiRequester _requester;

  RequestStatusResource(commons.ApiRequester client) : _requester = client;

  /// Request parameters:
  ///
  /// [requestId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetrieveRequestStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetrieveRequestStatusResponse> retrieve({
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/requestStatus:retrieve';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RetrieveRequestStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AdEvent {
  ///
  /// Possible string values are:
  /// - "AD_FORMAT_UNSPECIFIED"
  /// - "AD_FORMAT_AR"
  /// - "AD_FORMAT_AUDIO"
  /// - "AD_FORMAT_BANNER"
  /// - "AD_FORMAT_BUMPER"
  /// - "AD_FORMAT_CAROUSEL"
  /// - "AD_FORMAT_COLLECTION"
  /// - "AD_FORMAT_IMAGE"
  /// - "AD_FORMAT_INTERACTIVE"
  /// - "AD_FORMAT_INTERSTITIAL"
  /// - "AD_FORMAT_IN_FEED"
  /// - "AD_FORMAT_IN_STREAM"
  /// - "AD_FORMAT_IN_STREAM_SKIPPABLE"
  /// - "AD_FORMAT_IN_STREAM_NON_SKIPPABLE"
  /// - "AD_FORMAT_NATIVE"
  /// - "AD_FORMAT_SHORTS"
  /// - "AD_FORMAT_STORY"
  /// - "AD_FORMAT_SPONSORED"
  /// - "AD_FORMAT_VIDEO"
  core.String? adFormat;
  core.String? adFormatString;
  core.String? adGroupId;
  core.int? adHeight;
  core.String? adId;

  ///
  /// Possible string values are:
  /// - "AD_PLACEMENT_UNSPECIFIED"
  /// - "AD_PLACEMENT_DISCOVER"
  /// - "AD_PLACEMENT_FEED"
  /// - "AD_PLACEMENT_FOOTER"
  /// - "AD_PLACEMENT_HEADER"
  /// - "AD_PLACEMENT_HOME"
  /// - "AD_PLACEMENT_IN_CONTENT"
  /// - "AD_PLACEMENT_PROMOTED"
  /// - "AD_PLACEMENT_SEARCH"
  /// - "AD_PLACEMENT_STORY"
  core.String? adPlacement;
  core.String? adPlacementString;

  ///
  /// Possible string values are:
  /// - "AD_TYPE_UNSPECIFIED"
  /// - "AD_TYPE_DISPLAY"
  /// - "AD_TYPE_TEXT"
  /// - "AD_TYPE_IMAGE"
  /// - "AD_TYPE_RICH_MEDIA"
  /// - "AD_TYPE_HTML"
  /// - "AD_TYPE_AUDIO"
  /// - "AD_TYPE_VIDEO"
  core.String? adType;
  core.String? adTypeString;
  core.int? adWidth;
  core.String? advertiserId;

  ///
  /// Possible string values are:
  /// - "ATTRIBUTION_HINT_UNSPECIFIED"
  /// - "ATTRIBUTION_HINT_CONVERTED"
  /// - "ATTRIBUTION_HINT_NOT_CONVERTED"
  core.String? attributionHint;
  core.String? campaignId;
  core.String? campaignName;
  DeviceInfo? deviceInfo;
  core.String? eventId;

  ///
  /// Possible string values are:
  /// - "EVENT_SUBTYPE_UNSPECIFIED"
  /// - "EVENT_SUBTYPE_IMPRESSION"
  /// - "EVENT_SUBTYPE_ENGAGED_VIEW"
  /// - "EVENT_SUBTYPE_ONSITE_CLICK"
  /// - "EVENT_SUBTYPE_OUTBOUND_CLICK"
  core.String? eventSubtype;
  core.String? eventSubtypeString;

  ///
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED"
  /// - "EVENT_TYPE_VIEW"
  /// - "EVENT_TYPE_CLICK"
  core.String? eventType;
  core.String? ipAddress;
  core.bool? measurementAllowed;
  core.String? medium;
  core.String? mobileDeviceId;

  ///
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED"
  /// - "PLATFORM_IOS"
  /// - "PLATFORM_ANDROID"
  /// - "PLATFORM_WEB"
  core.String? platform;
  core.String? platformString;

  ///
  /// Possible string values are:
  /// - "PLATFORM_TYPE_UNSPECIFIED"
  /// - "PLATFORM_TYPE_MOBILE"
  /// - "PLATFORM_TYPE_DESKTOP"
  /// - "PLATFORM_TYPE_CTV"
  /// - "PLATFORM_TYPE_PHONE"
  /// - "PLATFORM_TYPE_TABLET"
  core.String? platformType;
  core.String? platformTypeString;
  core.String? regionCode;
  core.String? source;

  ///
  /// Possible string values are:
  /// - "TARGETING_TYPE_UNSPECIFIED"
  /// - "TARGETING_TYPE_AUDIENCE"
  /// - "TARGETING_TYPE_CONTEXTUAL"
  /// - "TARGETING_TYPE_DEMOGRAPHIC"
  /// - "TARGETING_TYPE_DEVICE"
  /// - "TARGETING_TYPE_GEO"
  /// - "TARGETING_TYPE_INTEREST"
  /// - "TARGETING_TYPE_PURCHASE_INTENT"
  /// - "TARGETING_TYPE_REMARKETING"
  core.String? targetingType;
  core.String? targetingTypeString;
  core.String? timestamp;
  UserData? userData;
  ViewabilityInfo? viewabilityInfo;

  AdEvent({
    this.adFormat,
    this.adFormatString,
    this.adGroupId,
    this.adHeight,
    this.adId,
    this.adPlacement,
    this.adPlacementString,
    this.adType,
    this.adTypeString,
    this.adWidth,
    this.advertiserId,
    this.attributionHint,
    this.campaignId,
    this.campaignName,
    this.deviceInfo,
    this.eventId,
    this.eventSubtype,
    this.eventSubtypeString,
    this.eventType,
    this.ipAddress,
    this.measurementAllowed,
    this.medium,
    this.mobileDeviceId,
    this.platform,
    this.platformString,
    this.platformType,
    this.platformTypeString,
    this.regionCode,
    this.source,
    this.targetingType,
    this.targetingTypeString,
    this.timestamp,
    this.userData,
    this.viewabilityInfo,
  });

  AdEvent.fromJson(core.Map json_)
    : this(
        adFormat: json_['adFormat'] as core.String?,
        adFormatString: json_['adFormatString'] as core.String?,
        adGroupId: json_['adGroupId'] as core.String?,
        adHeight: json_['adHeight'] as core.int?,
        adId: json_['adId'] as core.String?,
        adPlacement: json_['adPlacement'] as core.String?,
        adPlacementString: json_['adPlacementString'] as core.String?,
        adType: json_['adType'] as core.String?,
        adTypeString: json_['adTypeString'] as core.String?,
        adWidth: json_['adWidth'] as core.int?,
        advertiserId: json_['advertiserId'] as core.String?,
        attributionHint: json_['attributionHint'] as core.String?,
        campaignId: json_['campaignId'] as core.String?,
        campaignName: json_['campaignName'] as core.String?,
        deviceInfo: json_.containsKey('deviceInfo')
            ? DeviceInfo.fromJson(
                json_['deviceInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventId: json_['eventId'] as core.String?,
        eventSubtype: json_['eventSubtype'] as core.String?,
        eventSubtypeString: json_['eventSubtypeString'] as core.String?,
        eventType: json_['eventType'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        measurementAllowed: json_['measurementAllowed'] as core.bool?,
        medium: json_['medium'] as core.String?,
        mobileDeviceId: json_['mobileDeviceId'] as core.String?,
        platform: json_['platform'] as core.String?,
        platformString: json_['platformString'] as core.String?,
        platformType: json_['platformType'] as core.String?,
        platformTypeString: json_['platformTypeString'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        source: json_['source'] as core.String?,
        targetingType: json_['targetingType'] as core.String?,
        targetingTypeString: json_['targetingTypeString'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        viewabilityInfo: json_.containsKey('viewabilityInfo')
            ? ViewabilityInfo.fromJson(
                json_['viewabilityInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adFormat = this.adFormat;
    final adFormatString = this.adFormatString;
    final adGroupId = this.adGroupId;
    final adHeight = this.adHeight;
    final adId = this.adId;
    final adPlacement = this.adPlacement;
    final adPlacementString = this.adPlacementString;
    final adType = this.adType;
    final adTypeString = this.adTypeString;
    final adWidth = this.adWidth;
    final advertiserId = this.advertiserId;
    final attributionHint = this.attributionHint;
    final campaignId = this.campaignId;
    final campaignName = this.campaignName;
    final deviceInfo = this.deviceInfo;
    final eventId = this.eventId;
    final eventSubtype = this.eventSubtype;
    final eventSubtypeString = this.eventSubtypeString;
    final eventType = this.eventType;
    final ipAddress = this.ipAddress;
    final measurementAllowed = this.measurementAllowed;
    final medium = this.medium;
    final mobileDeviceId = this.mobileDeviceId;
    final platform = this.platform;
    final platformString = this.platformString;
    final platformType = this.platformType;
    final platformTypeString = this.platformTypeString;
    final regionCode = this.regionCode;
    final source = this.source;
    final targetingType = this.targetingType;
    final targetingTypeString = this.targetingTypeString;
    final timestamp = this.timestamp;
    final userData = this.userData;
    final viewabilityInfo = this.viewabilityInfo;
    return {
      'adFormat': ?adFormat,
      'adFormatString': ?adFormatString,
      'adGroupId': ?adGroupId,
      'adHeight': ?adHeight,
      'adId': ?adId,
      'adPlacement': ?adPlacement,
      'adPlacementString': ?adPlacementString,
      'adType': ?adType,
      'adTypeString': ?adTypeString,
      'adWidth': ?adWidth,
      'advertiserId': ?advertiserId,
      'attributionHint': ?attributionHint,
      'campaignId': ?campaignId,
      'campaignName': ?campaignName,
      'deviceInfo': ?deviceInfo,
      'eventId': ?eventId,
      'eventSubtype': ?eventSubtype,
      'eventSubtypeString': ?eventSubtypeString,
      'eventType': ?eventType,
      'ipAddress': ?ipAddress,
      'measurementAllowed': ?measurementAllowed,
      'medium': ?medium,
      'mobileDeviceId': ?mobileDeviceId,
      'platform': ?platform,
      'platformString': ?platformString,
      'platformType': ?platformType,
      'platformTypeString': ?platformTypeString,
      'regionCode': ?regionCode,
      'source': ?source,
      'targetingType': ?targetingType,
      'targetingTypeString': ?targetingTypeString,
      'timestamp': ?timestamp,
      'userData': ?userData,
      'viewabilityInfo': ?viewabilityInfo,
    };
  }
}

class AdIdentifiers {
  core.String? dclid;
  core.List<EncryptedUserId>? encryptedUserIds;
  core.String? gbraid;
  core.String? gclid;
  core.String? impressionId;
  DeviceInfo? landingPageDeviceInfo;
  core.String? matchId;
  core.String? mobileDeviceId;
  core.String? ppid;
  core.String? sessionAttributes;
  core.String? visitorPpid;
  core.String? wbraid;

  AdIdentifiers({
    this.dclid,
    this.encryptedUserIds,
    this.gbraid,
    this.gclid,
    this.impressionId,
    this.landingPageDeviceInfo,
    this.matchId,
    this.mobileDeviceId,
    this.ppid,
    this.sessionAttributes,
    this.visitorPpid,
    this.wbraid,
  });

  AdIdentifiers.fromJson(core.Map json_)
    : this(
        dclid: json_['dclid'] as core.String?,
        encryptedUserIds: (json_['encryptedUserIds'] as core.List?)
            ?.map(
              (value) => EncryptedUserId.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        gbraid: json_['gbraid'] as core.String?,
        gclid: json_['gclid'] as core.String?,
        impressionId: json_['impressionId'] as core.String?,
        landingPageDeviceInfo: json_.containsKey('landingPageDeviceInfo')
            ? DeviceInfo.fromJson(
                json_['landingPageDeviceInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        matchId: json_['matchId'] as core.String?,
        mobileDeviceId: json_['mobileDeviceId'] as core.String?,
        ppid: json_['ppid'] as core.String?,
        sessionAttributes: json_['sessionAttributes'] as core.String?,
        visitorPpid: json_['visitorPpid'] as core.String?,
        wbraid: json_['wbraid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dclid = this.dclid;
    final encryptedUserIds = this.encryptedUserIds;
    final gbraid = this.gbraid;
    final gclid = this.gclid;
    final impressionId = this.impressionId;
    final landingPageDeviceInfo = this.landingPageDeviceInfo;
    final matchId = this.matchId;
    final mobileDeviceId = this.mobileDeviceId;
    final ppid = this.ppid;
    final sessionAttributes = this.sessionAttributes;
    final visitorPpid = this.visitorPpid;
    final wbraid = this.wbraid;
    return {
      'dclid': ?dclid,
      'encryptedUserIds': ?encryptedUserIds,
      'gbraid': ?gbraid,
      'gclid': ?gclid,
      'impressionId': ?impressionId,
      'landingPageDeviceInfo': ?landingPageDeviceInfo,
      'matchId': ?matchId,
      'mobileDeviceId': ?mobileDeviceId,
      'ppid': ?ppid,
      'sessionAttributes': ?sessionAttributes,
      'visitorPpid': ?visitorPpid,
      'wbraid': ?wbraid,
    };
  }
}

class AddressInfo {
  core.String? addressLine;
  core.String? administrativeArea;
  core.String? city;
  core.String? familyName;
  core.String? givenName;
  core.String? postalCode;
  core.String? regionCode;

  AddressInfo({
    this.addressLine,
    this.administrativeArea,
    this.city,
    this.familyName,
    this.givenName,
    this.postalCode,
    this.regionCode,
  });

  AddressInfo.fromJson(core.Map json_)
    : this(
        addressLine: json_['addressLine'] as core.String?,
        administrativeArea: json_['administrativeArea'] as core.String?,
        city: json_['city'] as core.String?,
        familyName: json_['familyName'] as core.String?,
        givenName: json_['givenName'] as core.String?,
        postalCode: json_['postalCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final addressLine = this.addressLine;
    final administrativeArea = this.administrativeArea;
    final city = this.city;
    final familyName = this.familyName;
    final givenName = this.givenName;
    final postalCode = this.postalCode;
    final regionCode = this.regionCode;
    return {
      'addressLine': ?addressLine,
      'administrativeArea': ?administrativeArea,
      'city': ?city,
      'familyName': ?familyName,
      'givenName': ?givenName,
      'postalCode': ?postalCode,
      'regionCode': ?regionCode,
    };
  }
}

class AudienceMember {
  CompositeData? compositeData;
  Consent? consent;
  core.List<core.String>? destinationReferences;
  GoogleUserIdData? googleUserIdData;
  MobileData? mobileData;
  PairData? pairData;
  PartnerProvidedIdData? partnerProvidedIdData;
  PpidData? ppidData;
  UserData? userData;
  UserIdData? userIdData;

  AudienceMember({
    this.compositeData,
    this.consent,
    this.destinationReferences,
    this.googleUserIdData,
    this.mobileData,
    this.pairData,
    this.partnerProvidedIdData,
    this.ppidData,
    this.userData,
    this.userIdData,
  });

  AudienceMember.fromJson(core.Map json_)
    : this(
        compositeData: json_.containsKey('compositeData')
            ? CompositeData.fromJson(
                json_['compositeData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinationReferences: (json_['destinationReferences'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        googleUserIdData: json_.containsKey('googleUserIdData')
            ? GoogleUserIdData.fromJson(
                json_['googleUserIdData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileData: json_.containsKey('mobileData')
            ? MobileData.fromJson(
                json_['mobileData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairData: json_.containsKey('pairData')
            ? PairData.fromJson(
                json_['pairData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerProvidedIdData: json_.containsKey('partnerProvidedIdData')
            ? PartnerProvidedIdData.fromJson(
                json_['partnerProvidedIdData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ppidData: json_.containsKey('ppidData')
            ? PpidData.fromJson(
                json_['ppidData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdData: json_.containsKey('userIdData')
            ? UserIdData.fromJson(
                json_['userIdData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeData = this.compositeData;
    final consent = this.consent;
    final destinationReferences = this.destinationReferences;
    final googleUserIdData = this.googleUserIdData;
    final mobileData = this.mobileData;
    final pairData = this.pairData;
    final partnerProvidedIdData = this.partnerProvidedIdData;
    final ppidData = this.ppidData;
    final userData = this.userData;
    final userIdData = this.userIdData;
    return {
      'compositeData': ?compositeData,
      'consent': ?consent,
      'destinationReferences': ?destinationReferences,
      'googleUserIdData': ?googleUserIdData,
      'mobileData': ?mobileData,
      'pairData': ?pairData,
      'partnerProvidedIdData': ?partnerProvidedIdData,
      'ppidData': ?ppidData,
      'userData': ?userData,
      'userIdData': ?userIdData,
    };
  }
}

class AwsWrappedKeyInfo {
  core.String? encryptedDek;
  core.String? kekUri;

  ///
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED"
  /// - "XCHACHA20_POLY1305"
  core.String? keyType;
  core.String? roleArn;

  AwsWrappedKeyInfo({
    this.encryptedDek,
    this.kekUri,
    this.keyType,
    this.roleArn,
  });

  AwsWrappedKeyInfo.fromJson(core.Map json_)
    : this(
        encryptedDek: json_['encryptedDek'] as core.String?,
        kekUri: json_['kekUri'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        roleArn: json_['roleArn'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptedDek = this.encryptedDek;
    final kekUri = this.kekUri;
    final keyType = this.keyType;
    final roleArn = this.roleArn;
    return {
      'encryptedDek': ?encryptedDek,
      'kekUri': ?kekUri,
      'keyType': ?keyType,
      'roleArn': ?roleArn,
    };
  }
}

class Baseline {
  Location? baselineLocation;
  core.bool? locationAutoDetectionEnabled;

  Baseline({this.baselineLocation, this.locationAutoDetectionEnabled});

  Baseline.fromJson(core.Map json_)
    : this(
        baselineLocation: json_.containsKey('baselineLocation')
            ? Location.fromJson(
                json_['baselineLocation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        locationAutoDetectionEnabled:
            json_['locationAutoDetectionEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baselineLocation = this.baselineLocation;
    final locationAutoDetectionEnabled = this.locationAutoDetectionEnabled;
    return {
      'baselineLocation': ?baselineLocation,
      'locationAutoDetectionEnabled': ?locationAutoDetectionEnabled,
    };
  }
}

class CartData {
  core.List<core.String>? couponCodes;
  core.List<Item>? items;
  core.String? merchantFeedLabel;
  core.String? merchantFeedLanguageCode;
  core.String? merchantId;
  core.double? transactionDiscount;

  CartData({
    this.couponCodes,
    this.items,
    this.merchantFeedLabel,
    this.merchantFeedLanguageCode,
    this.merchantId,
    this.transactionDiscount,
  });

  CartData.fromJson(core.Map json_)
    : this(
        couponCodes: (json_['couponCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        items: (json_['items'] as core.List?)
            ?.map(
              (value) =>
                  Item.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        merchantFeedLabel: json_['merchantFeedLabel'] as core.String?,
        merchantFeedLanguageCode:
            json_['merchantFeedLanguageCode'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        transactionDiscount: (json_['transactionDiscount'] as core.num?)
            ?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final couponCodes = this.couponCodes;
    final items = this.items;
    final merchantFeedLabel = this.merchantFeedLabel;
    final merchantFeedLanguageCode = this.merchantFeedLanguageCode;
    final merchantId = this.merchantId;
    final transactionDiscount = this.transactionDiscount;
    return {
      'couponCodes': ?couponCodes,
      'items': ?items,
      'merchantFeedLabel': ?merchantFeedLabel,
      'merchantFeedLanguageCode': ?merchantFeedLanguageCode,
      'merchantId': ?merchantId,
      'transactionDiscount': ?transactionDiscount,
    };
  }
}

class CompositeData {
  core.List<IpData>? ipData;
  UserData? userData;

  CompositeData({this.ipData, this.userData});

  CompositeData.fromJson(core.Map json_)
    : this(
        ipData: (json_['ipData'] as core.List?)
            ?.map(
              (value) =>
                  IpData.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipData = this.ipData;
    final userData = this.userData;
    return {'ipData': ?ipData, 'userData': ?userData};
  }
}

class Consent {
  ///
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED"
  /// - "CONSENT_GRANTED"
  /// - "CONSENT_DENIED"
  core.String? adPersonalization;

  ///
  /// Possible string values are:
  /// - "CONSENT_STATUS_UNSPECIFIED"
  /// - "CONSENT_GRANTED"
  /// - "CONSENT_DENIED"
  core.String? adUserData;

  Consent({this.adPersonalization, this.adUserData});

  Consent.fromJson(core.Map json_)
    : this(
        adPersonalization: json_['adPersonalization'] as core.String?,
        adUserData: json_['adUserData'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adPersonalization = this.adPersonalization;
    final adUserData = this.adUserData;
    return {'adPersonalization': ?adPersonalization, 'adUserData': ?adUserData};
  }
}

class ContactIdInfo {
  ///
  /// Possible string values are:
  /// - "DATA_SOURCE_TYPE_UNSPECIFIED"
  /// - "DATA_SOURCE_TYPE_FIRST_PARTY"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_CREDIT_BUREAU"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_VOTER_FILE"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_PARTNER_DATA"
  core.String? dataSourceType;
  core.int? matchRatePercentage;

  ContactIdInfo({this.dataSourceType, this.matchRatePercentage});

  ContactIdInfo.fromJson(core.Map json_)
    : this(
        dataSourceType: json_['dataSourceType'] as core.String?,
        matchRatePercentage: json_['matchRatePercentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceType = this.dataSourceType;
    final matchRatePercentage = this.matchRatePercentage;
    return {
      'dataSourceType': ?dataSourceType,
      'matchRatePercentage': ?matchRatePercentage,
    };
  }
}

class CoordinatorKeyInfo {
  core.String? keyId;

  CoordinatorKeyInfo({this.keyId});

  CoordinatorKeyInfo.fromJson(core.Map json_)
    : this(keyId: json_['keyId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final keyId = this.keyId;
    return {'keyId': ?keyId};
  }
}

typedef CustomVariable = $CustomVariable;

class DataTypeCount {
  core.String? count;

  ///
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED"
  /// - "EMAIL"
  /// - "PHONE_NUMBER"
  /// - "ADDRESS"
  /// - "IP_ADDRESS"
  core.String? type;

  DataTypeCount({this.count, this.type});

  DataTypeCount.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final count = this.count;
    final type = this.type;
    return {'count': ?count, 'type': ?type};
  }
}

class Destination {
  ProductAccount? linkedAccount;
  ProductAccount? loginAccount;
  ProductAccount? operatingAccount;
  core.String? productDestinationId;
  core.String? reference;

  Destination({
    this.linkedAccount,
    this.loginAccount,
    this.operatingAccount,
    this.productDestinationId,
    this.reference,
  });

  Destination.fromJson(core.Map json_)
    : this(
        linkedAccount: json_.containsKey('linkedAccount')
            ? ProductAccount.fromJson(
                json_['linkedAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        loginAccount: json_.containsKey('loginAccount')
            ? ProductAccount.fromJson(
                json_['loginAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operatingAccount: json_.containsKey('operatingAccount')
            ? ProductAccount.fromJson(
                json_['operatingAccount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        productDestinationId: json_['productDestinationId'] as core.String?,
        reference: json_['reference'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final linkedAccount = this.linkedAccount;
    final loginAccount = this.loginAccount;
    final operatingAccount = this.operatingAccount;
    final productDestinationId = this.productDestinationId;
    final reference = this.reference;
    return {
      'linkedAccount': ?linkedAccount,
      'loginAccount': ?loginAccount,
      'operatingAccount': ?operatingAccount,
      'productDestinationId': ?productDestinationId,
      'reference': ?reference,
    };
  }
}

class DeviceInfo {
  core.String? brand;
  core.String? browser;
  core.String? browserVersion;
  core.String? category;
  core.String? ipAddress;
  core.String? languageCode;
  core.String? model;
  core.String? operatingSystem;
  core.String? operatingSystemVersion;
  core.int? screenHeight;
  core.int? screenWidth;
  core.String? userAgent;

  DeviceInfo({
    this.brand,
    this.browser,
    this.browserVersion,
    this.category,
    this.ipAddress,
    this.languageCode,
    this.model,
    this.operatingSystem,
    this.operatingSystemVersion,
    this.screenHeight,
    this.screenWidth,
    this.userAgent,
  });

  DeviceInfo.fromJson(core.Map json_)
    : this(
        brand: json_['brand'] as core.String?,
        browser: json_['browser'] as core.String?,
        browserVersion: json_['browserVersion'] as core.String?,
        category: json_['category'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        languageCode: json_['languageCode'] as core.String?,
        model: json_['model'] as core.String?,
        operatingSystem: json_['operatingSystem'] as core.String?,
        operatingSystemVersion: json_['operatingSystemVersion'] as core.String?,
        screenHeight: json_['screenHeight'] as core.int?,
        screenWidth: json_['screenWidth'] as core.int?,
        userAgent: json_['userAgent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final brand = this.brand;
    final browser = this.browser;
    final browserVersion = this.browserVersion;
    final category = this.category;
    final ipAddress = this.ipAddress;
    final languageCode = this.languageCode;
    final model = this.model;
    final operatingSystem = this.operatingSystem;
    final operatingSystemVersion = this.operatingSystemVersion;
    final screenHeight = this.screenHeight;
    final screenWidth = this.screenWidth;
    final userAgent = this.userAgent;
    return {
      'brand': ?brand,
      'browser': ?browser,
      'browserVersion': ?browserVersion,
      'category': ?category,
      'ipAddress': ?ipAddress,
      'languageCode': ?languageCode,
      'model': ?model,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'screenHeight': ?screenHeight,
      'screenWidth': ?screenWidth,
      'userAgent': ?userAgent,
    };
  }
}

typedef Empty = $Empty;

class EncryptedUserId {
  core.String? encryptedId;
  core.String? entityId;

  ///
  /// Possible string values are:
  /// - "ENCRYPTION_ENTITY_TYPE_UNSPECIFIED"
  /// - "CAMPAIGN_MANAGER_ACCOUNT"
  /// - "CAMPAIGN_MANAGER_ADVERTISER"
  /// - "DISPLAY_VIDEO_PARTNER"
  /// - "DISPLAY_VIDEO_ADVERTISER"
  /// - "GOOGLE_ADS_CUSTOMER"
  /// - "GOOGLE_AD_MANAGER_NETWORK_CODE"
  core.String? entityType;

  ///
  /// Possible string values are:
  /// - "ENCRYPTION_SOURCE_UNSPECIFIED"
  /// - "AD_SERVING"
  /// - "DATA_TRANSFER"
  core.String? source;

  EncryptedUserId({
    this.encryptedId,
    this.entityId,
    this.entityType,
    this.source,
  });

  EncryptedUserId.fromJson(core.Map json_)
    : this(
        encryptedId: json_['encryptedId'] as core.String?,
        entityId: json_['entityId'] as core.String?,
        entityType: json_['entityType'] as core.String?,
        source: json_['source'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptedId = this.encryptedId;
    final entityId = this.entityId;
    final entityType = this.entityType;
    final source = this.source;
    return {
      'encryptedId': ?encryptedId,
      'entityId': ?entityId,
      'entityType': ?entityType,
      'source': ?source,
    };
  }
}

class EncryptionInfo {
  AwsWrappedKeyInfo? awsWrappedKeyInfo;
  CoordinatorKeyInfo? coordinatorKeyInfo;
  GcpWrappedKeyInfo? gcpWrappedKeyInfo;

  EncryptionInfo({
    this.awsWrappedKeyInfo,
    this.coordinatorKeyInfo,
    this.gcpWrappedKeyInfo,
  });

  EncryptionInfo.fromJson(core.Map json_)
    : this(
        awsWrappedKeyInfo: json_.containsKey('awsWrappedKeyInfo')
            ? AwsWrappedKeyInfo.fromJson(
                json_['awsWrappedKeyInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        coordinatorKeyInfo: json_.containsKey('coordinatorKeyInfo')
            ? CoordinatorKeyInfo.fromJson(
                json_['coordinatorKeyInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        gcpWrappedKeyInfo: json_.containsKey('gcpWrappedKeyInfo')
            ? GcpWrappedKeyInfo.fromJson(
                json_['gcpWrappedKeyInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final awsWrappedKeyInfo = this.awsWrappedKeyInfo;
    final coordinatorKeyInfo = this.coordinatorKeyInfo;
    final gcpWrappedKeyInfo = this.gcpWrappedKeyInfo;
    return {
      'awsWrappedKeyInfo': ?awsWrappedKeyInfo,
      'coordinatorKeyInfo': ?coordinatorKeyInfo,
      'gcpWrappedKeyInfo': ?gcpWrappedKeyInfo,
    };
  }
}

class ErrorCount {
  ///
  /// Possible string values are:
  /// - "PROCESSING_ERROR_REASON_UNSPECIFIED"
  /// - "PROCESSING_ERROR_REASON_INVALID_CUSTOM_VARIABLE"
  /// - "PROCESSING_ERROR_REASON_CUSTOM_VARIABLE_NOT_ENABLED"
  /// - "PROCESSING_ERROR_REASON_EVENT_TOO_OLD"
  /// - "PROCESSING_ERROR_REASON_DENIED_CONSENT"
  /// - "PROCESSING_ERROR_REASON_NO_CONSENT"
  /// - "PROCESSING_ERROR_REASON_UNKNOWN_CONSENT"
  /// - "PROCESSING_ERROR_REASON_DUPLICATE_GCLID"
  /// - "PROCESSING_ERROR_REASON_DUPLICATE_TRANSACTION_ID"
  /// - "PROCESSING_ERROR_REASON_INVALID_GBRAID"
  /// - "PROCESSING_ERROR_REASON_INVALID_GCLID"
  /// - "PROCESSING_ERROR_REASON_INVALID_MERCHANT_ID"
  /// - "PROCESSING_ERROR_REASON_INVALID_WBRAID"
  /// - "PROCESSING_ERROR_REASON_INTERNAL_ERROR"
  /// -
  /// "PROCESSING_ERROR_REASON_DESTINATION_ACCOUNT_ENHANCED_CONVERSIONS_TERMS_NOT_SIGNED"
  /// - "PROCESSING_ERROR_REASON_INVALID_EVENT"
  /// - "PROCESSING_ERROR_REASON_INSUFFICIENT_MATCHED_TRANSACTIONS"
  /// - "PROCESSING_ERROR_REASON_INSUFFICIENT_TRANSACTIONS"
  /// - "PROCESSING_ERROR_REASON_INVALID_FORMAT"
  /// - "PROCESSING_ERROR_REASON_DECRYPTION_ERROR"
  /// - "PROCESSING_ERROR_REASON_DEK_DECRYPTION_ERROR"
  /// - "PROCESSING_ERROR_REASON_INVALID_WIP"
  /// - "PROCESSING_ERROR_REASON_INVALID_KEK"
  /// - "PROCESSING_ERROR_REASON_WIP_AUTH_FAILED"
  /// - "PROCESSING_ERROR_REASON_KEK_PERMISSION_DENIED"
  /// - "PROCESSING_ERROR_REASON_AWS_AUTH_FAILED"
  /// - "PROCESSING_ERROR_REASON_USER_IDENTIFIER_DECRYPTION_ERROR"
  /// - "PROCESSING_ERROR_OPERATING_ACCOUNT_MISMATCH_FOR_AD_IDENTIFIER"
  /// -
  /// "PROCESSING_ERROR_REASON_ONE_PER_CLICK_CONVERSION_ACTION_NOT_PERMITTED_WITH_BRAID"
  /// - "PROCESSING_ERROR_REASON_MATCH_ID_NOT_FOUND"
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_MATCH_ID"
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_GCLID"
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_DCLID"
  /// - "PROCESSING_ERROR_REASON_INVALID_AD_IDENTIFIERS"
  /// - "PROCESSING_ERROR_REASON_INVALID_MOBILE_ID_FORMAT"
  /// - "PROCESSING_ERROR_REASON_ORIGINAL_CONVERSIONS_NOT_FOUND"
  /// - "PROCESSING_ERROR_REASON_EVENT_ID_DECODE_ERROR"
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND_FOR_IMPRESSION_ID"
  /// - "PROCESSING_ERROR_REASON_USER_ID_NOT_FOUND"
  /// - "PROCESSING_ERROR_REASON_CONVERSION_PRECEDES_CLICK"
  /// - "PROCESSING_ERROR_REASON_TOO_RECENT_CLICK"
  /// - "PROCESSING_ERROR_REASON_INVALID_CLICK"
  /// - "PROCESSING_ERROR_REASON_INVALID_OPERATING_ACCOUNT_FOR_CLICK"
  /// - "PROCESSING_ERROR_REASON_CLICK_NOT_FOUND"
  /// - "PROCESSING_ERROR_REASON_EXTERNAL_ATTRIBUTION_DATA_MISSING"
  core.String? reason;
  core.String? recordCount;

  ErrorCount({this.reason, this.recordCount});

  ErrorCount.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final recordCount = this.recordCount;
    return {'reason': ?reason, 'recordCount': ?recordCount};
  }
}

class ErrorInfo {
  core.List<ErrorCount>? errorCounts;

  ErrorInfo({this.errorCounts});

  ErrorInfo.fromJson(core.Map json_)
    : this(
        errorCounts: (json_['errorCounts'] as core.List?)
            ?.map(
              (value) => ErrorCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCounts = this.errorCounts;
    return {'errorCounts': ?errorCounts};
  }
}

class Event {
  AdIdentifiers? adIdentifiers;
  core.List<EventParameter>? additionalEventParameters;
  core.String? appInstanceId;
  CartData? cartData;
  core.String? clientId;
  Consent? consent;
  core.double? conversionCount;
  core.double? conversionValue;
  core.String? currency;
  core.List<CustomVariable>? customVariables;
  core.List<core.String>? destinationReferences;
  DeviceInfo? eventDeviceInfo;
  EventLocation? eventLocation;
  core.String? eventName;

  ///
  /// Possible string values are:
  /// - "EVENT_SOURCE_UNSPECIFIED"
  /// - "WEB"
  /// - "APP"
  /// - "IN_STORE"
  /// - "PHONE"
  /// - "MESSAGE"
  /// - "OTHER"
  core.String? eventSource;
  core.String? eventTimestamp;
  core.List<ExperimentalField>? experimentalFields;
  core.String? lastUpdatedTimestamp;
  UserData? thirdPartyUserData;
  core.String? transactionId;
  UserData? userData;
  core.String? userId;
  UserProperties? userProperties;

  Event({
    this.adIdentifiers,
    this.additionalEventParameters,
    this.appInstanceId,
    this.cartData,
    this.clientId,
    this.consent,
    this.conversionCount,
    this.conversionValue,
    this.currency,
    this.customVariables,
    this.destinationReferences,
    this.eventDeviceInfo,
    this.eventLocation,
    this.eventName,
    this.eventSource,
    this.eventTimestamp,
    this.experimentalFields,
    this.lastUpdatedTimestamp,
    this.thirdPartyUserData,
    this.transactionId,
    this.userData,
    this.userId,
    this.userProperties,
  });

  Event.fromJson(core.Map json_)
    : this(
        adIdentifiers: json_.containsKey('adIdentifiers')
            ? AdIdentifiers.fromJson(
                json_['adIdentifiers'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        additionalEventParameters:
            (json_['additionalEventParameters'] as core.List?)
                ?.map(
                  (value) => EventParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        appInstanceId: json_['appInstanceId'] as core.String?,
        cartData: json_.containsKey('cartData')
            ? CartData.fromJson(
                json_['cartData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        clientId: json_['clientId'] as core.String?,
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        conversionCount: (json_['conversionCount'] as core.num?)?.toDouble(),
        conversionValue: (json_['conversionValue'] as core.num?)?.toDouble(),
        currency: json_['currency'] as core.String?,
        customVariables: (json_['customVariables'] as core.List?)
            ?.map(
              (value) => CustomVariable.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        destinationReferences: (json_['destinationReferences'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        eventDeviceInfo: json_.containsKey('eventDeviceInfo')
            ? DeviceInfo.fromJson(
                json_['eventDeviceInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventLocation: json_.containsKey('eventLocation')
            ? EventLocation.fromJson(
                json_['eventLocation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventName: json_['eventName'] as core.String?,
        eventSource: json_['eventSource'] as core.String?,
        eventTimestamp: json_['eventTimestamp'] as core.String?,
        experimentalFields: (json_['experimentalFields'] as core.List?)
            ?.map(
              (value) => ExperimentalField.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        lastUpdatedTimestamp: json_['lastUpdatedTimestamp'] as core.String?,
        thirdPartyUserData: json_.containsKey('thirdPartyUserData')
            ? UserData.fromJson(
                json_['thirdPartyUserData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transactionId: json_['transactionId'] as core.String?,
        userData: json_.containsKey('userData')
            ? UserData.fromJson(
                json_['userData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userId: json_['userId'] as core.String?,
        userProperties: json_.containsKey('userProperties')
            ? UserProperties.fromJson(
                json_['userProperties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adIdentifiers = this.adIdentifiers;
    final additionalEventParameters = this.additionalEventParameters;
    final appInstanceId = this.appInstanceId;
    final cartData = this.cartData;
    final clientId = this.clientId;
    final consent = this.consent;
    final conversionCount = this.conversionCount;
    final conversionValue = this.conversionValue;
    final currency = this.currency;
    final customVariables = this.customVariables;
    final destinationReferences = this.destinationReferences;
    final eventDeviceInfo = this.eventDeviceInfo;
    final eventLocation = this.eventLocation;
    final eventName = this.eventName;
    final eventSource = this.eventSource;
    final eventTimestamp = this.eventTimestamp;
    final experimentalFields = this.experimentalFields;
    final lastUpdatedTimestamp = this.lastUpdatedTimestamp;
    final thirdPartyUserData = this.thirdPartyUserData;
    final transactionId = this.transactionId;
    final userData = this.userData;
    final userId = this.userId;
    final userProperties = this.userProperties;
    return {
      'adIdentifiers': ?adIdentifiers,
      'additionalEventParameters': ?additionalEventParameters,
      'appInstanceId': ?appInstanceId,
      'cartData': ?cartData,
      'clientId': ?clientId,
      'consent': ?consent,
      'conversionCount': ?conversionCount,
      'conversionValue': ?conversionValue,
      'currency': ?currency,
      'customVariables': ?customVariables,
      'destinationReferences': ?destinationReferences,
      'eventDeviceInfo': ?eventDeviceInfo,
      'eventLocation': ?eventLocation,
      'eventName': ?eventName,
      'eventSource': ?eventSource,
      'eventTimestamp': ?eventTimestamp,
      'experimentalFields': ?experimentalFields,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'thirdPartyUserData': ?thirdPartyUserData,
      'transactionId': ?transactionId,
      'userData': ?userData,
      'userId': ?userId,
      'userProperties': ?userProperties,
    };
  }
}

class EventLocation {
  core.String? city;
  core.String? continentCode;
  core.String? regionCode;
  core.String? storeId;
  core.String? subcontinentCode;
  core.String? subdivisionCode;

  EventLocation({
    this.city,
    this.continentCode,
    this.regionCode,
    this.storeId,
    this.subcontinentCode,
    this.subdivisionCode,
  });

  EventLocation.fromJson(core.Map json_)
    : this(
        city: json_['city'] as core.String?,
        continentCode: json_['continentCode'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        storeId: json_['storeId'] as core.String?,
        subcontinentCode: json_['subcontinentCode'] as core.String?,
        subdivisionCode: json_['subdivisionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final city = this.city;
    final continentCode = this.continentCode;
    final regionCode = this.regionCode;
    final storeId = this.storeId;
    final subcontinentCode = this.subcontinentCode;
    final subdivisionCode = this.subdivisionCode;
    return {
      'city': ?city,
      'continentCode': ?continentCode,
      'regionCode': ?regionCode,
      'storeId': ?storeId,
      'subcontinentCode': ?subcontinentCode,
      'subdivisionCode': ?subdivisionCode,
    };
  }
}

typedef EventParameter = $Parameter;

class ExperimentalField {
  core.String? field;
  core.String? value;

  ExperimentalField({this.field, this.value});

  ExperimentalField.fromJson(core.Map json_)
    : this(
        field: json_['field'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    final value = this.value;
    return {'field': ?field, 'value': ?value};
  }
}

class FieldWarning {
  core.String? description;
  core.String? field;

  ///
  /// Possible string values are:
  /// - "WARNING_REASON_UNSPECIFIED"
  /// - "WARNING_REASON_CUSTOM_VARIABLE_NOT_ENABLED"
  /// - "WARNING_REASON_CUSTOM_VARIABLE_NOT_PREDEFINED"
  /// - "WARNING_REASON_CART_DATA_NOT_SUPPORTED_WITH_GBRAID_OR_WBRAID"
  /// - "WARNING_REASON_CART_DATA_ITEM_MERCHANT_PRODUCT_ID_MISSING"
  /// - "WARNING_REASON_CART_DATA_ITEM_UNIT_PRICE_MISSING"
  /// - "WARNING_REASON_GENERIC"
  /// - "WARNING_REASON_INVALID_CLIENT_ID"
  /// - "WARNING_REASON_INVALID_SUBDIVISION_CODE"
  /// - "WARNING_REASON_INVALID_REGION_CODE"
  /// - "WARNING_REASON_INVALID_SUBCONTINENT_CODE"
  /// - "WARNING_REASON_INVALID_CONTINENT_CODE"
  /// - "WARNING_REASON_INVALID_DEVICE_CATEGORY"
  /// - "WARNING_REASON_INVALID_DEVICE_SCREEN_RESOLUTION"
  /// - "WARNING_REASON_INVALID_MERCHANT_ID"
  core.String? reason;

  FieldWarning({this.description, this.field, this.reason});

  FieldWarning.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        field: json_['field'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final field = this.field;
    final reason = this.reason;
    return {'description': ?description, 'field': ?field, 'reason': ?reason};
  }
}

class GcpWrappedKeyInfo {
  core.String? encryptedDek;
  core.String? kekUri;

  ///
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED"
  /// - "XCHACHA20_POLY1305"
  core.String? keyType;
  core.String? wipProvider;

  GcpWrappedKeyInfo({
    this.encryptedDek,
    this.kekUri,
    this.keyType,
    this.wipProvider,
  });

  GcpWrappedKeyInfo.fromJson(core.Map json_)
    : this(
        encryptedDek: json_['encryptedDek'] as core.String?,
        kekUri: json_['kekUri'] as core.String?,
        keyType: json_['keyType'] as core.String?,
        wipProvider: json_['wipProvider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final encryptedDek = this.encryptedDek;
    final kekUri = this.kekUri;
    final keyType = this.keyType;
    final wipProvider = this.wipProvider;
    return {
      'encryptedDek': ?encryptedDek,
      'kekUri': ?kekUri,
      'keyType': ?keyType,
      'wipProvider': ?wipProvider,
    };
  }
}

class GoogleUserIdData {
  core.List<core.String>? googleUserIds;

  GoogleUserIdData({this.googleUserIds});

  GoogleUserIdData.fromJson(core.Map json_)
    : this(
        googleUserIds: (json_['googleUserIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final googleUserIds = this.googleUserIds;
    return {'googleUserIds': ?googleUserIds};
  }
}

class IngestAdEventsRequest {
  core.List<AdEvent>? adEvents;
  EncryptionInfo? encryptionInfo;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? validateOnly;

  IngestAdEventsRequest({
    this.adEvents,
    this.encryptionInfo,
    this.validateOnly,
  });

  IngestAdEventsRequest.fromJson(core.Map json_)
    : this(
        adEvents: (json_['adEvents'] as core.List?)
            ?.map(
              (value) => AdEvent.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adEvents = this.adEvents;
    final encryptionInfo = this.encryptionInfo;
    final validateOnly = this.validateOnly;
    return {
      'adEvents': ?adEvents,
      'encryptionInfo': ?encryptionInfo,
      'validateOnly': ?validateOnly,
    };
  }
}

typedef IngestAdEventsResponse = $Empty;

class IngestAudienceMembersRequest {
  core.List<AudienceMember>? audienceMembers;
  Consent? consent;
  core.List<Destination>? destinations;

  ///
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED"
  /// - "HEX"
  /// - "BASE64"
  core.String? encoding;
  EncryptionInfo? encryptionInfo;
  TermsOfService? termsOfService;
  core.bool? validateOnly;

  IngestAudienceMembersRequest({
    this.audienceMembers,
    this.consent,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.termsOfService,
    this.validateOnly,
  });

  IngestAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        audienceMembers: (json_['audienceMembers'] as core.List?)
            ?.map(
              (value) => AudienceMember.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        termsOfService: json_.containsKey('termsOfService')
            ? TermsOfService.fromJson(
                json_['termsOfService'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceMembers = this.audienceMembers;
    final consent = this.consent;
    final destinations = this.destinations;
    final encoding = this.encoding;
    final encryptionInfo = this.encryptionInfo;
    final termsOfService = this.termsOfService;
    final validateOnly = this.validateOnly;
    return {
      'audienceMembers': ?audienceMembers,
      'consent': ?consent,
      'destinations': ?destinations,
      'encoding': ?encoding,
      'encryptionInfo': ?encryptionInfo,
      'termsOfService': ?termsOfService,
      'validateOnly': ?validateOnly,
    };
  }
}

class IngestAudienceMembersResponse {
  core.List<FieldWarning>? fieldWarnings;
  core.String? requestId;

  IngestAudienceMembersResponse({this.fieldWarnings, this.requestId});

  IngestAudienceMembersResponse.fromJson(core.Map json_)
    : this(
        fieldWarnings: (json_['fieldWarnings'] as core.List?)
            ?.map(
              (value) => FieldWarning.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldWarnings = this.fieldWarnings;
    final requestId = this.requestId;
    return {'fieldWarnings': ?fieldWarnings, 'requestId': ?requestId};
  }
}

class IngestAudienceMembersStatus {
  IngestCompositeDataStatus? compositeDataIngestionStatus;
  IngestGoogleUserIdDataStatus? googleUserIdDataIngestionStatus;
  IngestMobileDataStatus? mobileDataIngestionStatus;
  IngestPairDataStatus? pairDataIngestionStatus;
  IngestPartnerProvidedIdDataStatus? partnerProvidedIdDataIngestionStatus;
  IngestPpidDataStatus? ppidDataIngestionStatus;
  IngestUserDataStatus? userDataIngestionStatus;
  IngestUserIdDataStatus? userIdDataIngestionStatus;

  IngestAudienceMembersStatus({
    this.compositeDataIngestionStatus,
    this.googleUserIdDataIngestionStatus,
    this.mobileDataIngestionStatus,
    this.pairDataIngestionStatus,
    this.partnerProvidedIdDataIngestionStatus,
    this.ppidDataIngestionStatus,
    this.userDataIngestionStatus,
    this.userIdDataIngestionStatus,
  });

  IngestAudienceMembersStatus.fromJson(core.Map json_)
    : this(
        compositeDataIngestionStatus:
            json_.containsKey('compositeDataIngestionStatus')
            ? IngestCompositeDataStatus.fromJson(
                json_['compositeDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleUserIdDataIngestionStatus:
            json_.containsKey('googleUserIdDataIngestionStatus')
            ? IngestGoogleUserIdDataStatus.fromJson(
                json_['googleUserIdDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileDataIngestionStatus:
            json_.containsKey('mobileDataIngestionStatus')
            ? IngestMobileDataStatus.fromJson(
                json_['mobileDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairDataIngestionStatus: json_.containsKey('pairDataIngestionStatus')
            ? IngestPairDataStatus.fromJson(
                json_['pairDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerProvidedIdDataIngestionStatus:
            json_.containsKey('partnerProvidedIdDataIngestionStatus')
            ? IngestPartnerProvidedIdDataStatus.fromJson(
                json_['partnerProvidedIdDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ppidDataIngestionStatus: json_.containsKey('ppidDataIngestionStatus')
            ? IngestPpidDataStatus.fromJson(
                json_['ppidDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userDataIngestionStatus: json_.containsKey('userDataIngestionStatus')
            ? IngestUserDataStatus.fromJson(
                json_['userDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdDataIngestionStatus:
            json_.containsKey('userIdDataIngestionStatus')
            ? IngestUserIdDataStatus.fromJson(
                json_['userIdDataIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeDataIngestionStatus = this.compositeDataIngestionStatus;
    final googleUserIdDataIngestionStatus =
        this.googleUserIdDataIngestionStatus;
    final mobileDataIngestionStatus = this.mobileDataIngestionStatus;
    final pairDataIngestionStatus = this.pairDataIngestionStatus;
    final partnerProvidedIdDataIngestionStatus =
        this.partnerProvidedIdDataIngestionStatus;
    final ppidDataIngestionStatus = this.ppidDataIngestionStatus;
    final userDataIngestionStatus = this.userDataIngestionStatus;
    final userIdDataIngestionStatus = this.userIdDataIngestionStatus;
    return {
      'compositeDataIngestionStatus': ?compositeDataIngestionStatus,
      'googleUserIdDataIngestionStatus': ?googleUserIdDataIngestionStatus,
      'mobileDataIngestionStatus': ?mobileDataIngestionStatus,
      'pairDataIngestionStatus': ?pairDataIngestionStatus,
      'partnerProvidedIdDataIngestionStatus':
          ?partnerProvidedIdDataIngestionStatus,
      'ppidDataIngestionStatus': ?ppidDataIngestionStatus,
      'userDataIngestionStatus': ?userDataIngestionStatus,
      'userIdDataIngestionStatus': ?userIdDataIngestionStatus,
    };
  }
}

class IngestCompositeDataStatus {
  core.List<DataTypeCount>? dataTypeCounts;
  core.String? recordCount;

  ///
  /// Possible string values are:
  /// - "MATCH_RATE_RANGE_UNKNOWN"
  /// - "MATCH_RATE_RANGE_NOT_ELIGIBLE"
  /// - "MATCH_RATE_RANGE_LESS_THAN_20"
  /// - "MATCH_RATE_RANGE_20_TO_30"
  /// - "MATCH_RATE_RANGE_31_TO_40"
  /// - "MATCH_RATE_RANGE_41_TO_50"
  /// - "MATCH_RATE_RANGE_51_TO_60"
  /// - "MATCH_RATE_RANGE_61_TO_70"
  /// - "MATCH_RATE_RANGE_71_TO_80"
  /// - "MATCH_RATE_RANGE_81_TO_90"
  /// - "MATCH_RATE_RANGE_91_TO_100"
  core.String? uploadMatchRateRange;

  IngestCompositeDataStatus({
    this.dataTypeCounts,
    this.recordCount,
    this.uploadMatchRateRange,
  });

  IngestCompositeDataStatus.fromJson(core.Map json_)
    : this(
        dataTypeCounts: (json_['dataTypeCounts'] as core.List?)
            ?.map(
              (value) => DataTypeCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        recordCount: json_['recordCount'] as core.String?,
        uploadMatchRateRange: json_['uploadMatchRateRange'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataTypeCounts = this.dataTypeCounts;
    final recordCount = this.recordCount;
    final uploadMatchRateRange = this.uploadMatchRateRange;
    return {
      'dataTypeCounts': ?dataTypeCounts,
      'recordCount': ?recordCount,
      'uploadMatchRateRange': ?uploadMatchRateRange,
    };
  }
}

class IngestEventsRequest {
  Consent? consent;
  core.List<Destination>? destinations;

  ///
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED"
  /// - "HEX"
  /// - "BASE64"
  core.String? encoding;
  EncryptionInfo? encryptionInfo;
  core.List<Event>? events;
  core.bool? validateOnly;

  IngestEventsRequest({
    this.consent,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.events,
    this.validateOnly,
  });

  IngestEventsRequest.fromJson(core.Map json_)
    : this(
        consent: json_.containsKey('consent')
            ? Consent.fromJson(
                json_['consent'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        events: (json_['events'] as core.List?)
            ?.map(
              (value) =>
                  Event.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consent = this.consent;
    final destinations = this.destinations;
    final encoding = this.encoding;
    final encryptionInfo = this.encryptionInfo;
    final events = this.events;
    final validateOnly = this.validateOnly;
    return {
      'consent': ?consent,
      'destinations': ?destinations,
      'encoding': ?encoding,
      'encryptionInfo': ?encryptionInfo,
      'events': ?events,
      'validateOnly': ?validateOnly,
    };
  }
}

class IngestEventsResponse {
  core.List<FieldWarning>? fieldWarnings;
  core.String? requestId;

  IngestEventsResponse({this.fieldWarnings, this.requestId});

  IngestEventsResponse.fromJson(core.Map json_)
    : this(
        fieldWarnings: (json_['fieldWarnings'] as core.List?)
            ?.map(
              (value) => FieldWarning.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldWarnings = this.fieldWarnings;
    final requestId = this.requestId;
    return {'fieldWarnings': ?fieldWarnings, 'requestId': ?requestId};
  }
}

class IngestEventsStatus {
  core.String? recordCount;

  IngestEventsStatus({this.recordCount});

  IngestEventsStatus.fromJson(core.Map json_)
    : this(recordCount: json_['recordCount'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    return {'recordCount': ?recordCount};
  }
}

typedef IngestGoogleUserIdDataStatus = $GoogleUserIdDataStatus;
typedef IngestMobileDataStatus = $MobileDataStatus;
typedef IngestPairDataStatus = $PairDataStatus;
typedef IngestPartnerProvidedIdDataStatus = $PartnerProvidedIdDataStatus;
typedef IngestPpidDataStatus = $PpidDataStatus;

class IngestUserDataStatus {
  core.String? recordCount;

  ///
  /// Possible string values are:
  /// - "MATCH_RATE_RANGE_UNKNOWN"
  /// - "MATCH_RATE_RANGE_NOT_ELIGIBLE"
  /// - "MATCH_RATE_RANGE_LESS_THAN_20"
  /// - "MATCH_RATE_RANGE_20_TO_30"
  /// - "MATCH_RATE_RANGE_31_TO_40"
  /// - "MATCH_RATE_RANGE_41_TO_50"
  /// - "MATCH_RATE_RANGE_51_TO_60"
  /// - "MATCH_RATE_RANGE_61_TO_70"
  /// - "MATCH_RATE_RANGE_71_TO_80"
  /// - "MATCH_RATE_RANGE_81_TO_90"
  /// - "MATCH_RATE_RANGE_91_TO_100"
  core.String? uploadMatchRateRange;
  core.String? userIdentifierCount;

  IngestUserDataStatus({
    this.recordCount,
    this.uploadMatchRateRange,
    this.userIdentifierCount,
  });

  IngestUserDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        uploadMatchRateRange: json_['uploadMatchRateRange'] as core.String?,
        userIdentifierCount: json_['userIdentifierCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final uploadMatchRateRange = this.uploadMatchRateRange;
    final userIdentifierCount = this.userIdentifierCount;
    return {
      'recordCount': ?recordCount,
      'uploadMatchRateRange': ?uploadMatchRateRange,
      'userIdentifierCount': ?userIdentifierCount,
    };
  }
}

typedef IngestUserIdDataStatus = $UserIdDataStatus;

class IngestedUserListInfo {
  ContactIdInfo? contactIdInfo;
  MobileIdInfo? mobileIdInfo;
  PairIdInfo? pairIdInfo;
  PartnerAudienceInfo? partnerAudienceInfo;
  PseudonymousIdInfo? pseudonymousIdInfo;
  core.List<core.String>? uploadKeyTypes;
  UserIdInfo? userIdInfo;

  IngestedUserListInfo({
    this.contactIdInfo,
    this.mobileIdInfo,
    this.pairIdInfo,
    this.partnerAudienceInfo,
    this.pseudonymousIdInfo,
    this.uploadKeyTypes,
    this.userIdInfo,
  });

  IngestedUserListInfo.fromJson(core.Map json_)
    : this(
        contactIdInfo: json_.containsKey('contactIdInfo')
            ? ContactIdInfo.fromJson(
                json_['contactIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileIdInfo: json_.containsKey('mobileIdInfo')
            ? MobileIdInfo.fromJson(
                json_['mobileIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairIdInfo: json_.containsKey('pairIdInfo')
            ? PairIdInfo.fromJson(
                json_['pairIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerAudienceInfo: json_.containsKey('partnerAudienceInfo')
            ? PartnerAudienceInfo.fromJson(
                json_['partnerAudienceInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pseudonymousIdInfo: json_.containsKey('pseudonymousIdInfo')
            ? PseudonymousIdInfo.fromJson(
                json_['pseudonymousIdInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        uploadKeyTypes: (json_['uploadKeyTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        userIdInfo: json_.containsKey('userIdInfo')
            ? UserIdInfo.fromJson(
                json_['userIdInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contactIdInfo = this.contactIdInfo;
    final mobileIdInfo = this.mobileIdInfo;
    final pairIdInfo = this.pairIdInfo;
    final partnerAudienceInfo = this.partnerAudienceInfo;
    final pseudonymousIdInfo = this.pseudonymousIdInfo;
    final uploadKeyTypes = this.uploadKeyTypes;
    final userIdInfo = this.userIdInfo;
    return {
      'contactIdInfo': ?contactIdInfo,
      'mobileIdInfo': ?mobileIdInfo,
      'pairIdInfo': ?pairIdInfo,
      'partnerAudienceInfo': ?partnerAudienceInfo,
      'pseudonymousIdInfo': ?pseudonymousIdInfo,
      'uploadKeyTypes': ?uploadKeyTypes,
      'userIdInfo': ?userIdInfo,
    };
  }
}

class IpData {
  core.String? ipAddress;
  core.String? observeEndTime;
  core.String? observeStartTime;

  IpData({this.ipAddress, this.observeEndTime, this.observeStartTime});

  IpData.fromJson(core.Map json_)
    : this(
        ipAddress: json_['ipAddress'] as core.String?,
        observeEndTime: json_['observeEndTime'] as core.String?,
        observeStartTime: json_['observeStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipAddress = this.ipAddress;
    final observeEndTime = this.observeEndTime;
    final observeStartTime = this.observeStartTime;
    return {
      'ipAddress': ?ipAddress,
      'observeEndTime': ?observeEndTime,
      'observeStartTime': ?observeStartTime,
    };
  }
}

class Item {
  core.List<ItemParameter>? additionalItemParameters;
  core.double? conversionValue;
  core.List<ItemCustomVariable>? customVariables;
  core.String? itemId;
  core.String? merchantFeedLabel;
  core.String? merchantFeedLanguageCode;
  core.String? merchantId;
  core.String? merchantProductId;
  core.String? quantity;
  core.double? unitPrice;

  Item({
    this.additionalItemParameters,
    this.conversionValue,
    this.customVariables,
    this.itemId,
    this.merchantFeedLabel,
    this.merchantFeedLanguageCode,
    this.merchantId,
    this.merchantProductId,
    this.quantity,
    this.unitPrice,
  });

  Item.fromJson(core.Map json_)
    : this(
        additionalItemParameters:
            (json_['additionalItemParameters'] as core.List?)
                ?.map(
                  (value) => ItemParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        conversionValue: (json_['conversionValue'] as core.num?)?.toDouble(),
        customVariables: (json_['customVariables'] as core.List?)
            ?.map(
              (value) => ItemCustomVariable.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        itemId: json_['itemId'] as core.String?,
        merchantFeedLabel: json_['merchantFeedLabel'] as core.String?,
        merchantFeedLanguageCode:
            json_['merchantFeedLanguageCode'] as core.String?,
        merchantId: json_['merchantId'] as core.String?,
        merchantProductId: json_['merchantProductId'] as core.String?,
        quantity: json_['quantity'] as core.String?,
        unitPrice: (json_['unitPrice'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalItemParameters = this.additionalItemParameters;
    final conversionValue = this.conversionValue;
    final customVariables = this.customVariables;
    final itemId = this.itemId;
    final merchantFeedLabel = this.merchantFeedLabel;
    final merchantFeedLanguageCode = this.merchantFeedLanguageCode;
    final merchantId = this.merchantId;
    final merchantProductId = this.merchantProductId;
    final quantity = this.quantity;
    final unitPrice = this.unitPrice;
    return {
      'additionalItemParameters': ?additionalItemParameters,
      'conversionValue': ?conversionValue,
      'customVariables': ?customVariables,
      'itemId': ?itemId,
      'merchantFeedLabel': ?merchantFeedLabel,
      'merchantFeedLanguageCode': ?merchantFeedLanguageCode,
      'merchantId': ?merchantId,
      'merchantProductId': ?merchantProductId,
      'quantity': ?quantity,
      'unitPrice': ?unitPrice,
    };
  }
}

typedef ItemCustomVariable = $CustomVariable;
typedef ItemParameter = $Parameter;

class ListUserListDirectLicensesResponse {
  core.String? nextPageToken;
  core.List<UserListDirectLicense>? userListDirectLicenses;

  ListUserListDirectLicensesResponse({
    this.nextPageToken,
    this.userListDirectLicenses,
  });

  ListUserListDirectLicensesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userListDirectLicenses: (json_['userListDirectLicenses'] as core.List?)
            ?.map(
              (value) => UserListDirectLicense.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userListDirectLicenses = this.userListDirectLicenses;
    return {
      'nextPageToken': ?nextPageToken,
      'userListDirectLicenses': ?userListDirectLicenses,
    };
  }
}

class ListUserListGlobalLicenseCustomerInfosResponse {
  core.String? nextPageToken;
  core.List<UserListGlobalLicenseCustomerInfo>?
  userListGlobalLicenseCustomerInfos;

  ListUserListGlobalLicenseCustomerInfosResponse({
    this.nextPageToken,
    this.userListGlobalLicenseCustomerInfos,
  });

  ListUserListGlobalLicenseCustomerInfosResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userListGlobalLicenseCustomerInfos:
            (json_['userListGlobalLicenseCustomerInfos'] as core.List?)
                ?.map(
                  (value) => UserListGlobalLicenseCustomerInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userListGlobalLicenseCustomerInfos =
        this.userListGlobalLicenseCustomerInfos;
    return {
      'nextPageToken': ?nextPageToken,
      'userListGlobalLicenseCustomerInfos': ?userListGlobalLicenseCustomerInfos,
    };
  }
}

class ListUserListGlobalLicensesResponse {
  core.String? nextPageToken;
  core.List<UserListGlobalLicense>? userListGlobalLicenses;

  ListUserListGlobalLicensesResponse({
    this.nextPageToken,
    this.userListGlobalLicenses,
  });

  ListUserListGlobalLicensesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userListGlobalLicenses: (json_['userListGlobalLicenses'] as core.List?)
            ?.map(
              (value) => UserListGlobalLicense.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userListGlobalLicenses = this.userListGlobalLicenses;
    return {
      'nextPageToken': ?nextPageToken,
      'userListGlobalLicenses': ?userListGlobalLicenses,
    };
  }
}

class ListUserListsResponse {
  core.String? nextPageToken;
  core.List<UserList>? userLists;

  ListUserListsResponse({this.nextPageToken, this.userLists});

  ListUserListsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        userLists: (json_['userLists'] as core.List?)
            ?.map(
              (value) => UserList.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final userLists = this.userLists;
    return {'nextPageToken': ?nextPageToken, 'userLists': ?userLists};
  }
}

class Location {
  core.List<core.String>? regionCodes;

  Location({this.regionCodes});

  Location.fromJson(core.Map json_)
    : this(
        regionCodes: (json_['regionCodes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regionCodes = this.regionCodes;
    return {'regionCodes': ?regionCodes};
  }
}

class MarketingDataInsight {
  core.List<MarketingDataInsightsAttribute>? attributes;

  ///
  /// Possible string values are:
  /// - "AUDIENCE_INSIGHTS_DIMENSION_UNSPECIFIED"
  /// - "AUDIENCE_INSIGHTS_DIMENSION_UNKNOWN"
  /// - "AFFINITY_USER_INTEREST"
  /// - "IN_MARKET_USER_INTEREST"
  /// - "AGE_RANGE"
  /// - "GENDER"
  core.String? dimension;

  MarketingDataInsight({this.attributes, this.dimension});

  MarketingDataInsight.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes'] as core.List?)
            ?.map(
              (value) => MarketingDataInsightsAttribute.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dimension: json_['dimension'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final attributes = this.attributes;
    final dimension = this.dimension;
    return {'attributes': ?attributes, 'dimension': ?dimension};
  }
}

class MarketingDataInsightsAttribute {
  ///
  /// Possible string values are:
  /// - "AGE_RANGE_UNSPECIFIED"
  /// - "AGE_RANGE_UNKNOWN"
  /// - "AGE_RANGE_18_24"
  /// - "AGE_RANGE_25_34"
  /// - "AGE_RANGE_35_44"
  /// - "AGE_RANGE_45_54"
  /// - "AGE_RANGE_55_64"
  /// - "AGE_RANGE_65_UP"
  core.String? ageRange;

  ///
  /// Possible string values are:
  /// - "GENDER_UNSPECIFIED"
  /// - "GENDER_UNKNOWN"
  /// - "GENDER_MALE"
  /// - "GENDER_FEMALE"
  core.String? gender;
  core.double? lift;
  core.String? userInterestId;

  MarketingDataInsightsAttribute({
    this.ageRange,
    this.gender,
    this.lift,
    this.userInterestId,
  });

  MarketingDataInsightsAttribute.fromJson(core.Map json_)
    : this(
        ageRange: json_['ageRange'] as core.String?,
        gender: json_['gender'] as core.String?,
        lift: (json_['lift'] as core.num?)?.toDouble(),
        userInterestId: json_['userInterestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ageRange = this.ageRange;
    final gender = this.gender;
    final lift = this.lift;
    final userInterestId = this.userInterestId;
    return {
      'ageRange': ?ageRange,
      'gender': ?gender,
      'lift': ?lift,
      'userInterestId': ?userInterestId,
    };
  }
}

class MobileData {
  core.List<core.String>? mobileIds;

  MobileData({this.mobileIds});

  MobileData.fromJson(core.Map json_)
    : this(
        mobileIds: (json_['mobileIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mobileIds = this.mobileIds;
    return {'mobileIds': ?mobileIds};
  }
}

class MobileIdInfo {
  core.String? appId;

  ///
  /// Possible string values are:
  /// - "DATA_SOURCE_TYPE_UNSPECIFIED"
  /// - "DATA_SOURCE_TYPE_FIRST_PARTY"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_CREDIT_BUREAU"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_VOTER_FILE"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_PARTNER_DATA"
  core.String? dataSourceType;

  ///
  /// Possible string values are:
  /// - "KEY_SPACE_UNSPECIFIED"
  /// - "IOS"
  /// - "ANDROID"
  core.String? keySpace;

  MobileIdInfo({this.appId, this.dataSourceType, this.keySpace});

  MobileIdInfo.fromJson(core.Map json_)
    : this(
        appId: json_['appId'] as core.String?,
        dataSourceType: json_['dataSourceType'] as core.String?,
        keySpace: json_['keySpace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appId = this.appId;
    final dataSourceType = this.dataSourceType;
    final keySpace = this.keySpace;
    return {
      'appId': ?appId,
      'dataSourceType': ?dataSourceType,
      'keySpace': ?keySpace,
    };
  }
}

class PairData {
  core.List<core.String>? pairIds;

  PairData({this.pairIds});

  PairData.fromJson(core.Map json_)
    : this(
        pairIds: (json_['pairIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pairIds = this.pairIds;
    return {'pairIds': ?pairIds};
  }
}

class PairIdInfo {
  core.String? advertiserIdentifierCount;
  core.String? cleanRoomIdentifier;
  core.int? matchRatePercentage;
  core.String? publisherId;
  core.String? publisherName;

  PairIdInfo({
    this.advertiserIdentifierCount,
    this.cleanRoomIdentifier,
    this.matchRatePercentage,
    this.publisherId,
    this.publisherName,
  });

  PairIdInfo.fromJson(core.Map json_)
    : this(
        advertiserIdentifierCount:
            json_['advertiserIdentifierCount'] as core.String?,
        cleanRoomIdentifier: json_['cleanRoomIdentifier'] as core.String?,
        matchRatePercentage: json_['matchRatePercentage'] as core.int?,
        publisherId: json_['publisherId'] as core.String?,
        publisherName: json_['publisherName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final advertiserIdentifierCount = this.advertiserIdentifierCount;
    final cleanRoomIdentifier = this.cleanRoomIdentifier;
    final matchRatePercentage = this.matchRatePercentage;
    final publisherId = this.publisherId;
    final publisherName = this.publisherName;
    return {
      'advertiserIdentifierCount': ?advertiserIdentifierCount,
      'cleanRoomIdentifier': ?cleanRoomIdentifier,
      'matchRatePercentage': ?matchRatePercentage,
      'publisherId': ?publisherId,
      'publisherName': ?publisherName,
    };
  }
}

class PartnerAudienceInfo {
  core.String? commercePartner;

  ///
  /// Possible string values are:
  /// - "PARTNER_AUDIENCE_SOURCE_UNSPECIFIED"
  /// - "COMMERCE_AUDIENCE"
  /// - "LINEAR_TV_AUDIENCE"
  /// - "AGENCY_PROVIDER_AUDIENCE"
  core.String? partnerAudienceSource;

  PartnerAudienceInfo({this.commercePartner, this.partnerAudienceSource});

  PartnerAudienceInfo.fromJson(core.Map json_)
    : this(
        commercePartner: json_['commercePartner'] as core.String?,
        partnerAudienceSource: json_['partnerAudienceSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commercePartner = this.commercePartner;
    final partnerAudienceSource = this.partnerAudienceSource;
    return {
      'commercePartner': ?commercePartner,
      'partnerAudienceSource': ?partnerAudienceSource,
    };
  }
}

class PartnerCustomerAccount {
  core.String? accountId;
  core.String? accountName;
  core.String? accountType;

  PartnerCustomerAccount({this.accountId, this.accountName, this.accountType});

  PartnerCustomerAccount.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountName: json_['accountName'] as core.String?,
        accountType: json_['accountType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final accountName = this.accountName;
    final accountType = this.accountType;
    return {
      'accountId': ?accountId,
      'accountName': ?accountName,
      'accountType': ?accountType,
    };
  }
}

class PartnerLink {
  ///
  /// Possible string values are:
  /// - "FEATURE_SET_UNSPECIFIED"
  /// - "FEATURE_SET_AUDIENCE_AND_EVENT_MANAGEMENT"
  /// - "FEATURE_SET_AD_EVENT_MANAGEMENT"
  core.String? featureSet;
  core.String? name;
  ProductAccount? owningAccount;
  ProductAccount? partnerAccount;
  PartnerCustomerAccount? partnerCustomerAccount;
  core.String? partnerLinkId;
  PartnerLinkMetadata? partnerLinkMetadata;

  PartnerLink({
    this.featureSet,
    this.name,
    this.owningAccount,
    this.partnerAccount,
    this.partnerCustomerAccount,
    this.partnerLinkId,
    this.partnerLinkMetadata,
  });

  PartnerLink.fromJson(core.Map json_)
    : this(
        featureSet: json_['featureSet'] as core.String?,
        name: json_['name'] as core.String?,
        owningAccount: json_.containsKey('owningAccount')
            ? ProductAccount.fromJson(
                json_['owningAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerAccount: json_.containsKey('partnerAccount')
            ? ProductAccount.fromJson(
                json_['partnerAccount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerCustomerAccount: json_.containsKey('partnerCustomerAccount')
            ? PartnerCustomerAccount.fromJson(
                json_['partnerCustomerAccount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerLinkId: json_['partnerLinkId'] as core.String?,
        partnerLinkMetadata: json_.containsKey('partnerLinkMetadata')
            ? PartnerLinkMetadata.fromJson(
                json_['partnerLinkMetadata']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final featureSet = this.featureSet;
    final name = this.name;
    final owningAccount = this.owningAccount;
    final partnerAccount = this.partnerAccount;
    final partnerCustomerAccount = this.partnerCustomerAccount;
    final partnerLinkId = this.partnerLinkId;
    final partnerLinkMetadata = this.partnerLinkMetadata;
    return {
      'featureSet': ?featureSet,
      'name': ?name,
      'owningAccount': ?owningAccount,
      'partnerAccount': ?partnerAccount,
      'partnerCustomerAccount': ?partnerCustomerAccount,
      'partnerLinkId': ?partnerLinkId,
      'partnerLinkMetadata': ?partnerLinkMetadata,
    };
  }
}

class PartnerLinkMetadata {
  core.List<PartnerCustomerAccount>? implicitAccounts;

  PartnerLinkMetadata({this.implicitAccounts});

  PartnerLinkMetadata.fromJson(core.Map json_)
    : this(
        implicitAccounts: (json_['implicitAccounts'] as core.List?)
            ?.map(
              (value) => PartnerCustomerAccount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final implicitAccounts = this.implicitAccounts;
    return {'implicitAccounts': ?implicitAccounts};
  }
}

class PartnerProvidedIdData {
  core.List<core.String>? partnerProvidedIds;

  PartnerProvidedIdData({this.partnerProvidedIds});

  PartnerProvidedIdData.fromJson(core.Map json_)
    : this(
        partnerProvidedIds: (json_['partnerProvidedIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final partnerProvidedIds = this.partnerProvidedIds;
    return {'partnerProvidedIds': ?partnerProvidedIds};
  }
}

class PpidData {
  core.List<core.String>? ppids;

  PpidData({this.ppids});

  PpidData.fromJson(core.Map json_)
    : this(
        ppids: (json_['ppids'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ppids = this.ppids;
    return {'ppids': ?ppids};
  }
}

class ProductAccount {
  core.String? accountId;

  ///
  /// Possible string values are:
  /// - "ACCOUNT_TYPE_UNSPECIFIED"
  /// - "GOOGLE_ADS"
  /// - "DISPLAY_VIDEO_PARTNER"
  /// - "DISPLAY_VIDEO_ADVERTISER"
  /// - "DATA_PARTNER"
  /// - "GOOGLE_ANALYTICS_PROPERTY"
  /// - "GOOGLE_AD_MANAGER_AUDIENCE_LINK"
  /// - "FLOODLIGHT_CONFIG"
  /// - "GOOGLE_AD_MANAGER"
  core.String? accountType;

  ///
  /// Possible string values are:
  /// - "PRODUCT_UNSPECIFIED"
  /// - "GOOGLE_ADS"
  /// - "DISPLAY_VIDEO_PARTNER"
  /// - "DISPLAY_VIDEO_ADVERTISER"
  /// - "DATA_PARTNER"
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? product;

  ProductAccount({this.accountId, this.accountType, this.product});

  ProductAccount.fromJson(core.Map json_)
    : this(
        accountId: json_['accountId'] as core.String?,
        accountType: json_['accountType'] as core.String?,
        product: json_['product'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountId = this.accountId;
    final accountType = this.accountType;
    final product = this.product;
    return {
      'accountId': ?accountId,
      'accountType': ?accountType,
      'product': ?product,
    };
  }
}

class PseudonymousIdInfo {
  core.String? billableRecordCount;

  ///
  /// Possible string values are:
  /// - "SYNC_STATUS_UNSPECIFIED"
  /// - "CREATED"
  /// - "READY_FOR_USE"
  /// - "FAILED"
  core.String? syncStatus;

  PseudonymousIdInfo({this.billableRecordCount, this.syncStatus});

  PseudonymousIdInfo.fromJson(core.Map json_)
    : this(
        billableRecordCount: json_['billableRecordCount'] as core.String?,
        syncStatus: json_['syncStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final billableRecordCount = this.billableRecordCount;
    final syncStatus = this.syncStatus;
    return {
      'billableRecordCount': ?billableRecordCount,
      'syncStatus': ?syncStatus,
    };
  }
}

class RemoveAllAudienceMembersRequest {
  core.List<Destination>? destinations;
  core.String? removeAsOfTime;
  core.bool? validateOnly;

  RemoveAllAudienceMembersRequest({
    this.destinations,
    this.removeAsOfTime,
    this.validateOnly,
  });

  RemoveAllAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        removeAsOfTime: json_['removeAsOfTime'] as core.String?,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destinations = this.destinations;
    final removeAsOfTime = this.removeAsOfTime;
    final validateOnly = this.validateOnly;
    return {
      'destinations': ?destinations,
      'removeAsOfTime': ?removeAsOfTime,
      'validateOnly': ?validateOnly,
    };
  }
}

typedef RemoveAllAudienceMembersResponse = $AudienceMembersResponse;
typedef RemoveAllAudienceMembersStatus = $Empty;

class RemoveAudienceMembersRequest {
  core.List<AudienceMember>? audienceMembers;
  core.List<Destination>? destinations;

  ///
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED"
  /// - "HEX"
  /// - "BASE64"
  core.String? encoding;
  EncryptionInfo? encryptionInfo;
  core.bool? validateOnly;

  RemoveAudienceMembersRequest({
    this.audienceMembers,
    this.destinations,
    this.encoding,
    this.encryptionInfo,
    this.validateOnly,
  });

  RemoveAudienceMembersRequest.fromJson(core.Map json_)
    : this(
        audienceMembers: (json_['audienceMembers'] as core.List?)
            ?.map(
              (value) => AudienceMember.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        destinations: (json_['destinations'] as core.List?)
            ?.map(
              (value) => Destination.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        encoding: json_['encoding'] as core.String?,
        encryptionInfo: json_.containsKey('encryptionInfo')
            ? EncryptionInfo.fromJson(
                json_['encryptionInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceMembers = this.audienceMembers;
    final destinations = this.destinations;
    final encoding = this.encoding;
    final encryptionInfo = this.encryptionInfo;
    final validateOnly = this.validateOnly;
    return {
      'audienceMembers': ?audienceMembers,
      'destinations': ?destinations,
      'encoding': ?encoding,
      'encryptionInfo': ?encryptionInfo,
      'validateOnly': ?validateOnly,
    };
  }
}

typedef RemoveAudienceMembersResponse = $AudienceMembersResponse;

class RemoveAudienceMembersStatus {
  RemoveCompositeDataStatus? compositeDataRemovalStatus;
  RemoveGoogleUserIdDataStatus? googleUserIdDataRemovalStatus;
  RemoveMobileDataStatus? mobileDataRemovalStatus;
  RemovePairDataStatus? pairDataRemovalStatus;
  RemovePartnerProvidedIdDataStatus? partnerProvidedIdDataRemovalStatus;
  RemovePpidDataStatus? ppidDataRemovalStatus;
  RemoveUserDataStatus? userDataRemovalStatus;
  RemoveUserIdDataStatus? userIdDataRemovalStatus;

  RemoveAudienceMembersStatus({
    this.compositeDataRemovalStatus,
    this.googleUserIdDataRemovalStatus,
    this.mobileDataRemovalStatus,
    this.pairDataRemovalStatus,
    this.partnerProvidedIdDataRemovalStatus,
    this.ppidDataRemovalStatus,
    this.userDataRemovalStatus,
    this.userIdDataRemovalStatus,
  });

  RemoveAudienceMembersStatus.fromJson(core.Map json_)
    : this(
        compositeDataRemovalStatus:
            json_.containsKey('compositeDataRemovalStatus')
            ? RemoveCompositeDataStatus.fromJson(
                json_['compositeDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleUserIdDataRemovalStatus:
            json_.containsKey('googleUserIdDataRemovalStatus')
            ? RemoveGoogleUserIdDataStatus.fromJson(
                json_['googleUserIdDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mobileDataRemovalStatus: json_.containsKey('mobileDataRemovalStatus')
            ? RemoveMobileDataStatus.fromJson(
                json_['mobileDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pairDataRemovalStatus: json_.containsKey('pairDataRemovalStatus')
            ? RemovePairDataStatus.fromJson(
                json_['pairDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        partnerProvidedIdDataRemovalStatus:
            json_.containsKey('partnerProvidedIdDataRemovalStatus')
            ? RemovePartnerProvidedIdDataStatus.fromJson(
                json_['partnerProvidedIdDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ppidDataRemovalStatus: json_.containsKey('ppidDataRemovalStatus')
            ? RemovePpidDataStatus.fromJson(
                json_['ppidDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userDataRemovalStatus: json_.containsKey('userDataRemovalStatus')
            ? RemoveUserDataStatus.fromJson(
                json_['userDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdDataRemovalStatus: json_.containsKey('userIdDataRemovalStatus')
            ? RemoveUserIdDataStatus.fromJson(
                json_['userIdDataRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeDataRemovalStatus = this.compositeDataRemovalStatus;
    final googleUserIdDataRemovalStatus = this.googleUserIdDataRemovalStatus;
    final mobileDataRemovalStatus = this.mobileDataRemovalStatus;
    final pairDataRemovalStatus = this.pairDataRemovalStatus;
    final partnerProvidedIdDataRemovalStatus =
        this.partnerProvidedIdDataRemovalStatus;
    final ppidDataRemovalStatus = this.ppidDataRemovalStatus;
    final userDataRemovalStatus = this.userDataRemovalStatus;
    final userIdDataRemovalStatus = this.userIdDataRemovalStatus;
    return {
      'compositeDataRemovalStatus': ?compositeDataRemovalStatus,
      'googleUserIdDataRemovalStatus': ?googleUserIdDataRemovalStatus,
      'mobileDataRemovalStatus': ?mobileDataRemovalStatus,
      'pairDataRemovalStatus': ?pairDataRemovalStatus,
      'partnerProvidedIdDataRemovalStatus': ?partnerProvidedIdDataRemovalStatus,
      'ppidDataRemovalStatus': ?ppidDataRemovalStatus,
      'userDataRemovalStatus': ?userDataRemovalStatus,
      'userIdDataRemovalStatus': ?userIdDataRemovalStatus,
    };
  }
}

class RemoveCompositeDataStatus {
  core.List<DataTypeCount>? dataTypeCounts;
  core.String? recordCount;

  RemoveCompositeDataStatus({this.dataTypeCounts, this.recordCount});

  RemoveCompositeDataStatus.fromJson(core.Map json_)
    : this(
        dataTypeCounts: (json_['dataTypeCounts'] as core.List?)
            ?.map(
              (value) => DataTypeCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataTypeCounts = this.dataTypeCounts;
    final recordCount = this.recordCount;
    return {'dataTypeCounts': ?dataTypeCounts, 'recordCount': ?recordCount};
  }
}

typedef RemoveGoogleUserIdDataStatus = $GoogleUserIdDataStatus;
typedef RemoveMobileDataStatus = $MobileDataStatus;
typedef RemovePairDataStatus = $PairDataStatus;
typedef RemovePartnerProvidedIdDataStatus = $PartnerProvidedIdDataStatus;
typedef RemovePpidDataStatus = $PpidDataStatus;

class RemoveUserDataStatus {
  core.String? recordCount;
  core.String? userIdentifierCount;

  RemoveUserDataStatus({this.recordCount, this.userIdentifierCount});

  RemoveUserDataStatus.fromJson(core.Map json_)
    : this(
        recordCount: json_['recordCount'] as core.String?,
        userIdentifierCount: json_['userIdentifierCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final recordCount = this.recordCount;
    final userIdentifierCount = this.userIdentifierCount;
    return {
      'recordCount': ?recordCount,
      'userIdentifierCount': ?userIdentifierCount,
    };
  }
}

typedef RemoveUserIdDataStatus = $UserIdDataStatus;

class RequestStatusPerDestination {
  IngestAudienceMembersStatus? audienceMembersIngestionStatus;
  RemoveAudienceMembersStatus? audienceMembersRemovalStatus;
  Destination? destination;
  ErrorInfo? errorInfo;
  IngestEventsStatus? eventsIngestionStatus;
  RemoveAllAudienceMembersStatus? removeAllAudienceMembersStatus;

  ///
  /// Possible string values are:
  /// - "REQUEST_STATUS_UNKNOWN"
  /// - "SUCCESS"
  /// - "PROCESSING"
  /// - "FAILED"
  /// - "PARTIAL_SUCCESS"
  core.String? requestStatus;
  WarningInfo? warningInfo;

  RequestStatusPerDestination({
    this.audienceMembersIngestionStatus,
    this.audienceMembersRemovalStatus,
    this.destination,
    this.errorInfo,
    this.eventsIngestionStatus,
    this.removeAllAudienceMembersStatus,
    this.requestStatus,
    this.warningInfo,
  });

  RequestStatusPerDestination.fromJson(core.Map json_)
    : this(
        audienceMembersIngestionStatus:
            json_.containsKey('audienceMembersIngestionStatus')
            ? IngestAudienceMembersStatus.fromJson(
                json_['audienceMembersIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        audienceMembersRemovalStatus:
            json_.containsKey('audienceMembersRemovalStatus')
            ? RemoveAudienceMembersStatus.fromJson(
                json_['audienceMembersRemovalStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        destination: json_.containsKey('destination')
            ? Destination.fromJson(
                json_['destination'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        errorInfo: json_.containsKey('errorInfo')
            ? ErrorInfo.fromJson(
                json_['errorInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        eventsIngestionStatus: json_.containsKey('eventsIngestionStatus')
            ? IngestEventsStatus.fromJson(
                json_['eventsIngestionStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        removeAllAudienceMembersStatus:
            json_.containsKey('removeAllAudienceMembersStatus')
            ? RemoveAllAudienceMembersStatus.fromJson(
                json_['removeAllAudienceMembersStatus']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestStatus: json_['requestStatus'] as core.String?,
        warningInfo: json_.containsKey('warningInfo')
            ? WarningInfo.fromJson(
                json_['warningInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final audienceMembersIngestionStatus = this.audienceMembersIngestionStatus;
    final audienceMembersRemovalStatus = this.audienceMembersRemovalStatus;
    final destination = this.destination;
    final errorInfo = this.errorInfo;
    final eventsIngestionStatus = this.eventsIngestionStatus;
    final removeAllAudienceMembersStatus = this.removeAllAudienceMembersStatus;
    final requestStatus = this.requestStatus;
    final warningInfo = this.warningInfo;
    return {
      'audienceMembersIngestionStatus': ?audienceMembersIngestionStatus,
      'audienceMembersRemovalStatus': ?audienceMembersRemovalStatus,
      'destination': ?destination,
      'errorInfo': ?errorInfo,
      'eventsIngestionStatus': ?eventsIngestionStatus,
      'removeAllAudienceMembersStatus': ?removeAllAudienceMembersStatus,
      'requestStatus': ?requestStatus,
      'warningInfo': ?warningInfo,
    };
  }
}

class RetrieveInsightsRequest {
  Baseline? baseline;
  core.String? userListId;

  RetrieveInsightsRequest({this.baseline, this.userListId});

  RetrieveInsightsRequest.fromJson(core.Map json_)
    : this(
        baseline: json_.containsKey('baseline')
            ? Baseline.fromJson(
                json_['baseline'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseline = this.baseline;
    final userListId = this.userListId;
    return {'baseline': ?baseline, 'userListId': ?userListId};
  }
}

class RetrieveInsightsResponse {
  core.List<MarketingDataInsight>? marketingDataInsights;

  RetrieveInsightsResponse({this.marketingDataInsights});

  RetrieveInsightsResponse.fromJson(core.Map json_)
    : this(
        marketingDataInsights: (json_['marketingDataInsights'] as core.List?)
            ?.map(
              (value) => MarketingDataInsight.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final marketingDataInsights = this.marketingDataInsights;
    return {'marketingDataInsights': ?marketingDataInsights};
  }
}

class RetrieveRequestStatusResponse {
  core.List<RequestStatusPerDestination>? requestStatusPerDestination;

  RetrieveRequestStatusResponse({this.requestStatusPerDestination});

  RetrieveRequestStatusResponse.fromJson(core.Map json_)
    : this(
        requestStatusPerDestination:
            (json_['requestStatusPerDestination'] as core.List?)
                ?.map(
                  (value) => RequestStatusPerDestination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestStatusPerDestination = this.requestStatusPerDestination;
    return {'requestStatusPerDestination': ?requestStatusPerDestination};
  }
}

class SearchPartnerLinksResponse {
  core.String? nextPageToken;
  core.List<PartnerLink>? partnerLinks;

  SearchPartnerLinksResponse({this.nextPageToken, this.partnerLinks});

  SearchPartnerLinksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        partnerLinks: (json_['partnerLinks'] as core.List?)
            ?.map(
              (value) => PartnerLink.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final partnerLinks = this.partnerLinks;
    return {'nextPageToken': ?nextPageToken, 'partnerLinks': ?partnerLinks};
  }
}

class SizeInfo {
  core.String? displayNetworkMembersCount;
  core.String? gmailMembersCount;
  core.String? searchNetworkMembersCount;
  core.String? youtubeMembersCount;

  SizeInfo({
    this.displayNetworkMembersCount,
    this.gmailMembersCount,
    this.searchNetworkMembersCount,
    this.youtubeMembersCount,
  });

  SizeInfo.fromJson(core.Map json_)
    : this(
        displayNetworkMembersCount:
            json_['displayNetworkMembersCount'] as core.String?,
        gmailMembersCount: json_['gmailMembersCount'] as core.String?,
        searchNetworkMembersCount:
            json_['searchNetworkMembersCount'] as core.String?,
        youtubeMembersCount: json_['youtubeMembersCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayNetworkMembersCount = this.displayNetworkMembersCount;
    final gmailMembersCount = this.gmailMembersCount;
    final searchNetworkMembersCount = this.searchNetworkMembersCount;
    final youtubeMembersCount = this.youtubeMembersCount;
    return {
      'displayNetworkMembersCount': ?displayNetworkMembersCount,
      'gmailMembersCount': ?gmailMembersCount,
      'searchNetworkMembersCount': ?searchNetworkMembersCount,
      'youtubeMembersCount': ?youtubeMembersCount,
    };
  }
}

class TargetNetworkInfo {
  core.bool? eligibleForDisplay;
  core.bool? eligibleForSearch;

  TargetNetworkInfo({this.eligibleForDisplay, this.eligibleForSearch});

  TargetNetworkInfo.fromJson(core.Map json_)
    : this(
        eligibleForDisplay: json_['eligibleForDisplay'] as core.bool?,
        eligibleForSearch: json_['eligibleForSearch'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final eligibleForDisplay = this.eligibleForDisplay;
    final eligibleForSearch = this.eligibleForSearch;
    return {
      'eligibleForDisplay': ?eligibleForDisplay,
      'eligibleForSearch': ?eligibleForSearch,
    };
  }
}

class TermsOfService {
  ///
  /// Possible string values are:
  /// - "TERMS_OF_SERVICE_STATUS_UNSPECIFIED"
  /// - "ACCEPTED"
  /// - "REJECTED"
  core.String? customerMatchTermsOfServiceStatus;

  TermsOfService({this.customerMatchTermsOfServiceStatus});

  TermsOfService.fromJson(core.Map json_)
    : this(
        customerMatchTermsOfServiceStatus:
            json_['customerMatchTermsOfServiceStatus'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerMatchTermsOfServiceStatus =
        this.customerMatchTermsOfServiceStatus;
    return {
      'customerMatchTermsOfServiceStatus': ?customerMatchTermsOfServiceStatus,
    };
  }
}

class UserData {
  core.List<UserIdentifier>? userIdentifiers;

  UserData({this.userIdentifiers});

  UserData.fromJson(core.Map json_)
    : this(
        userIdentifiers: (json_['userIdentifiers'] as core.List?)
            ?.map(
              (value) => UserIdentifier.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final userIdentifiers = this.userIdentifiers;
    return {'userIdentifiers': ?userIdentifiers};
  }
}

class UserIdData {
  core.String? userId;

  UserIdData({this.userId});

  UserIdData.fromJson(core.Map json_)
    : this(userId: json_['userId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final userId = this.userId;
    return {'userId': ?userId};
  }
}

class UserIdInfo {
  ///
  /// Possible string values are:
  /// - "DATA_SOURCE_TYPE_UNSPECIFIED"
  /// - "DATA_SOURCE_TYPE_FIRST_PARTY"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_CREDIT_BUREAU"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_VOTER_FILE"
  /// - "DATA_SOURCE_TYPE_THIRD_PARTY_PARTNER_DATA"
  core.String? dataSourceType;

  UserIdInfo({this.dataSourceType});

  UserIdInfo.fromJson(core.Map json_)
    : this(dataSourceType: json_['dataSourceType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final dataSourceType = this.dataSourceType;
    return {'dataSourceType': ?dataSourceType};
  }
}

class UserIdentifier {
  AddressInfo? address;
  core.String? emailAddress;
  core.String? phoneNumber;

  UserIdentifier({this.address, this.emailAddress, this.phoneNumber});

  UserIdentifier.fromJson(core.Map json_)
    : this(
        address: json_.containsKey('address')
            ? AddressInfo.fromJson(
                json_['address'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        emailAddress: json_['emailAddress'] as core.String?,
        phoneNumber: json_['phoneNumber'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final emailAddress = this.emailAddress;
    final phoneNumber = this.phoneNumber;
    return {
      'address': ?address,
      'emailAddress': ?emailAddress,
      'phoneNumber': ?phoneNumber,
    };
  }
}

class UserList {
  ///
  /// Possible string values are:
  /// - "ACCESS_REASON_UNSPECIFIED"
  /// - "OWNED"
  /// - "SHARED"
  /// - "LICENSED"
  /// - "SUBSCRIBED"
  /// - "AFFILIATED"
  core.String? accessReason;

  ///
  /// Possible string values are:
  /// - "ACCESS_STATUS_UNSPECIFIED"
  /// - "ENABLED"
  /// - "DISABLED"
  core.String? accountAccessStatus;

  ///
  /// Possible string values are:
  /// - "CLOSING_REASON_UNSPECIFIED"
  /// - "UNUSED"
  core.String? closingReason;
  core.String? description;
  core.String? displayName;
  core.String? id;
  IngestedUserListInfo? ingestedUserListInfo;
  core.String? integrationCode;
  core.String? membershipDuration;

  ///
  /// Possible string values are:
  /// - "MEMBERSHIP_STATUS_UNSPECIFIED"
  /// - "OPEN"
  /// - "CLOSED"
  core.String? membershipStatus;
  core.String? name;
  core.bool? readOnly;
  SizeInfo? sizeInfo;
  TargetNetworkInfo? targetNetworkInfo;

  UserList({
    this.accessReason,
    this.accountAccessStatus,
    this.closingReason,
    this.description,
    this.displayName,
    this.id,
    this.ingestedUserListInfo,
    this.integrationCode,
    this.membershipDuration,
    this.membershipStatus,
    this.name,
    this.readOnly,
    this.sizeInfo,
    this.targetNetworkInfo,
  });

  UserList.fromJson(core.Map json_)
    : this(
        accessReason: json_['accessReason'] as core.String?,
        accountAccessStatus: json_['accountAccessStatus'] as core.String?,
        closingReason: json_['closingReason'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        ingestedUserListInfo: json_.containsKey('ingestedUserListInfo')
            ? IngestedUserListInfo.fromJson(
                json_['ingestedUserListInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        integrationCode: json_['integrationCode'] as core.String?,
        membershipDuration: json_['membershipDuration'] as core.String?,
        membershipStatus: json_['membershipStatus'] as core.String?,
        name: json_['name'] as core.String?,
        readOnly: json_['readOnly'] as core.bool?,
        sizeInfo: json_.containsKey('sizeInfo')
            ? SizeInfo.fromJson(
                json_['sizeInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        targetNetworkInfo: json_.containsKey('targetNetworkInfo')
            ? TargetNetworkInfo.fromJson(
                json_['targetNetworkInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessReason = this.accessReason;
    final accountAccessStatus = this.accountAccessStatus;
    final closingReason = this.closingReason;
    final description = this.description;
    final displayName = this.displayName;
    final id = this.id;
    final ingestedUserListInfo = this.ingestedUserListInfo;
    final integrationCode = this.integrationCode;
    final membershipDuration = this.membershipDuration;
    final membershipStatus = this.membershipStatus;
    final name = this.name;
    final readOnly = this.readOnly;
    final sizeInfo = this.sizeInfo;
    final targetNetworkInfo = this.targetNetworkInfo;
    return {
      'accessReason': ?accessReason,
      'accountAccessStatus': ?accountAccessStatus,
      'closingReason': ?closingReason,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'ingestedUserListInfo': ?ingestedUserListInfo,
      'integrationCode': ?integrationCode,
      'membershipDuration': ?membershipDuration,
      'membershipStatus': ?membershipStatus,
      'name': ?name,
      'readOnly': ?readOnly,
      'sizeInfo': ?sizeInfo,
      'targetNetworkInfo': ?targetNetworkInfo,
    };
  }
}

class UserListDirectLicense {
  core.String? clientAccountDisplayName;
  core.String? clientAccountId;

  ///
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_UNKNOWN"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_ADS"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_PARTNER"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_ADVERTISER"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_AD_MANAGER_AUDIENCE_LINK"
  core.String? clientAccountType;
  core.List<UserListLicensePricing>? historicalPricings;
  UserListLicenseMetrics? metrics;
  core.String? name;
  UserListLicensePricing? pricing;

  ///
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_STATUS_UNSPECIFIED"
  /// - "USER_LIST_LICENSE_STATUS_ENABLED"
  /// - "USER_LIST_LICENSE_STATUS_DISABLED"
  core.String? status;
  core.String? userListDisplayName;
  core.String? userListId;

  UserListDirectLicense({
    this.clientAccountDisplayName,
    this.clientAccountId,
    this.clientAccountType,
    this.historicalPricings,
    this.metrics,
    this.name,
    this.pricing,
    this.status,
    this.userListDisplayName,
    this.userListId,
  });

  UserListDirectLicense.fromJson(core.Map json_)
    : this(
        clientAccountDisplayName:
            json_['clientAccountDisplayName'] as core.String?,
        clientAccountId: json_['clientAccountId'] as core.String?,
        clientAccountType: json_['clientAccountType'] as core.String?,
        historicalPricings: (json_['historicalPricings'] as core.List?)
            ?.map(
              (value) => UserListLicensePricing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        metrics: json_.containsKey('metrics')
            ? UserListLicenseMetrics.fromJson(
                json_['metrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricing: json_.containsKey('pricing')
            ? UserListLicensePricing.fromJson(
                json_['pricing'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        userListDisplayName: json_['userListDisplayName'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientAccountDisplayName = this.clientAccountDisplayName;
    final clientAccountId = this.clientAccountId;
    final clientAccountType = this.clientAccountType;
    final historicalPricings = this.historicalPricings;
    final metrics = this.metrics;
    final name = this.name;
    final pricing = this.pricing;
    final status = this.status;
    final userListDisplayName = this.userListDisplayName;
    final userListId = this.userListId;
    return {
      'clientAccountDisplayName': ?clientAccountDisplayName,
      'clientAccountId': ?clientAccountId,
      'clientAccountType': ?clientAccountType,
      'historicalPricings': ?historicalPricings,
      'metrics': ?metrics,
      'name': ?name,
      'pricing': ?pricing,
      'status': ?status,
      'userListDisplayName': ?userListDisplayName,
      'userListId': ?userListId,
    };
  }
}

class UserListGlobalLicense {
  core.List<UserListLicensePricing>? historicalPricings;

  ///
  /// Possible string values are:
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_UNSPECIFIED"
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_RESELLER"
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_SELL_SIDE"
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_BUY_SIDE"
  core.String? licenseType;
  UserListLicenseMetrics? metrics;
  core.String? name;
  UserListLicensePricing? pricing;

  ///
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_STATUS_UNSPECIFIED"
  /// - "USER_LIST_LICENSE_STATUS_ENABLED"
  /// - "USER_LIST_LICENSE_STATUS_DISABLED"
  core.String? status;
  core.String? userListDisplayName;
  core.String? userListId;

  UserListGlobalLicense({
    this.historicalPricings,
    this.licenseType,
    this.metrics,
    this.name,
    this.pricing,
    this.status,
    this.userListDisplayName,
    this.userListId,
  });

  UserListGlobalLicense.fromJson(core.Map json_)
    : this(
        historicalPricings: (json_['historicalPricings'] as core.List?)
            ?.map(
              (value) => UserListLicensePricing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        licenseType: json_['licenseType'] as core.String?,
        metrics: json_.containsKey('metrics')
            ? UserListLicenseMetrics.fromJson(
                json_['metrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricing: json_.containsKey('pricing')
            ? UserListLicensePricing.fromJson(
                json_['pricing'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        userListDisplayName: json_['userListDisplayName'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final historicalPricings = this.historicalPricings;
    final licenseType = this.licenseType;
    final metrics = this.metrics;
    final name = this.name;
    final pricing = this.pricing;
    final status = this.status;
    final userListDisplayName = this.userListDisplayName;
    final userListId = this.userListId;
    return {
      'historicalPricings': ?historicalPricings,
      'licenseType': ?licenseType,
      'metrics': ?metrics,
      'name': ?name,
      'pricing': ?pricing,
      'status': ?status,
      'userListDisplayName': ?userListDisplayName,
      'userListId': ?userListId,
    };
  }
}

class UserListGlobalLicenseCustomerInfo {
  core.String? clientAccountDisplayName;
  core.String? clientAccountId;

  ///
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_UNKNOWN"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_ADS"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_PARTNER"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_DISPLAY_VIDEO_ADVERTISER"
  /// - "USER_LIST_LICENSE_CLIENT_ACCOUNT_TYPE_GOOGLE_AD_MANAGER_AUDIENCE_LINK"
  core.String? clientAccountType;
  core.List<UserListLicensePricing>? historicalPricings;

  ///
  /// Possible string values are:
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_UNSPECIFIED"
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_RESELLER"
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_SELL_SIDE"
  /// - "USER_LIST_GLOBAL_LICENSE_TYPE_DATA_MART_BUY_SIDE"
  core.String? licenseType;
  UserListLicenseMetrics? metrics;
  core.String? name;
  UserListLicensePricing? pricing;

  ///
  /// Possible string values are:
  /// - "USER_LIST_LICENSE_STATUS_UNSPECIFIED"
  /// - "USER_LIST_LICENSE_STATUS_ENABLED"
  /// - "USER_LIST_LICENSE_STATUS_DISABLED"
  core.String? status;
  core.String? userListDisplayName;
  core.String? userListId;

  UserListGlobalLicenseCustomerInfo({
    this.clientAccountDisplayName,
    this.clientAccountId,
    this.clientAccountType,
    this.historicalPricings,
    this.licenseType,
    this.metrics,
    this.name,
    this.pricing,
    this.status,
    this.userListDisplayName,
    this.userListId,
  });

  UserListGlobalLicenseCustomerInfo.fromJson(core.Map json_)
    : this(
        clientAccountDisplayName:
            json_['clientAccountDisplayName'] as core.String?,
        clientAccountId: json_['clientAccountId'] as core.String?,
        clientAccountType: json_['clientAccountType'] as core.String?,
        historicalPricings: (json_['historicalPricings'] as core.List?)
            ?.map(
              (value) => UserListLicensePricing.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        licenseType: json_['licenseType'] as core.String?,
        metrics: json_.containsKey('metrics')
            ? UserListLicenseMetrics.fromJson(
                json_['metrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricing: json_.containsKey('pricing')
            ? UserListLicensePricing.fromJson(
                json_['pricing'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        userListDisplayName: json_['userListDisplayName'] as core.String?,
        userListId: json_['userListId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientAccountDisplayName = this.clientAccountDisplayName;
    final clientAccountId = this.clientAccountId;
    final clientAccountType = this.clientAccountType;
    final historicalPricings = this.historicalPricings;
    final licenseType = this.licenseType;
    final metrics = this.metrics;
    final name = this.name;
    final pricing = this.pricing;
    final status = this.status;
    final userListDisplayName = this.userListDisplayName;
    final userListId = this.userListId;
    return {
      'clientAccountDisplayName': ?clientAccountDisplayName,
      'clientAccountId': ?clientAccountId,
      'clientAccountType': ?clientAccountType,
      'historicalPricings': ?historicalPricings,
      'licenseType': ?licenseType,
      'metrics': ?metrics,
      'name': ?name,
      'pricing': ?pricing,
      'status': ?status,
      'userListDisplayName': ?userListDisplayName,
      'userListId': ?userListId,
    };
  }
}

class UserListLicenseMetrics {
  core.String? clickCount;
  core.String? endDate;
  core.String? impressionCount;
  core.String? revenueUsdMicros;
  core.String? startDate;

  UserListLicenseMetrics({
    this.clickCount,
    this.endDate,
    this.impressionCount,
    this.revenueUsdMicros,
    this.startDate,
  });

  UserListLicenseMetrics.fromJson(core.Map json_)
    : this(
        clickCount: json_['clickCount'] as core.String?,
        endDate: json_['endDate'] as core.String?,
        impressionCount: json_['impressionCount'] as core.String?,
        revenueUsdMicros: json_['revenueUsdMicros'] as core.String?,
        startDate: json_['startDate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clickCount = this.clickCount;
    final endDate = this.endDate;
    final impressionCount = this.impressionCount;
    final revenueUsdMicros = this.revenueUsdMicros;
    final startDate = this.startDate;
    return {
      'clickCount': ?clickCount,
      'endDate': ?endDate,
      'impressionCount': ?impressionCount,
      'revenueUsdMicros': ?revenueUsdMicros,
      'startDate': ?startDate,
    };
  }
}

class UserListLicensePricing {
  ///
  /// Possible string values are:
  /// - "USER_LIST_PRICING_BUYER_APPROVAL_STATE_UNSPECIFIED"
  /// - "PENDING"
  /// - "APPROVED"
  /// - "REJECTED"
  core.String? buyerApprovalState;
  core.String? costMicros;

  ///
  /// Possible string values are:
  /// - "USER_LIST_PRICING_COST_TYPE_UNSPECIFIED"
  /// - "CPC"
  /// - "CPM"
  /// - "MEDIA_SHARE"
  core.String? costType;
  core.String? currencyCode;
  core.String? endTime;
  core.String? maxCostMicros;
  core.bool? pricingActive;
  core.String? pricingId;
  core.String? startTime;

  UserListLicensePricing({
    this.buyerApprovalState,
    this.costMicros,
    this.costType,
    this.currencyCode,
    this.endTime,
    this.maxCostMicros,
    this.pricingActive,
    this.pricingId,
    this.startTime,
  });

  UserListLicensePricing.fromJson(core.Map json_)
    : this(
        buyerApprovalState: json_['buyerApprovalState'] as core.String?,
        costMicros: json_['costMicros'] as core.String?,
        costType: json_['costType'] as core.String?,
        currencyCode: json_['currencyCode'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        maxCostMicros: json_['maxCostMicros'] as core.String?,
        pricingActive: json_['pricingActive'] as core.bool?,
        pricingId: json_['pricingId'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buyerApprovalState = this.buyerApprovalState;
    final costMicros = this.costMicros;
    final costType = this.costType;
    final currencyCode = this.currencyCode;
    final endTime = this.endTime;
    final maxCostMicros = this.maxCostMicros;
    final pricingActive = this.pricingActive;
    final pricingId = this.pricingId;
    final startTime = this.startTime;
    return {
      'buyerApprovalState': ?buyerApprovalState,
      'costMicros': ?costMicros,
      'costType': ?costType,
      'currencyCode': ?currencyCode,
      'endTime': ?endTime,
      'maxCostMicros': ?maxCostMicros,
      'pricingActive': ?pricingActive,
      'pricingId': ?pricingId,
      'startTime': ?startTime,
    };
  }
}

class UserProperties {
  core.List<UserProperty>? additionalUserProperties;

  ///
  /// Possible string values are:
  /// - "CUSTOMER_TYPE_UNSPECIFIED"
  /// - "NEW"
  /// - "RETURNING"
  /// - "REENGAGED"
  core.String? customerType;

  ///
  /// Possible string values are:
  /// - "CUSTOMER_VALUE_BUCKET_UNSPECIFIED"
  /// - "LOW"
  /// - "MEDIUM"
  /// - "HIGH"
  core.String? customerValueBucket;

  UserProperties({
    this.additionalUserProperties,
    this.customerType,
    this.customerValueBucket,
  });

  UserProperties.fromJson(core.Map json_)
    : this(
        additionalUserProperties:
            (json_['additionalUserProperties'] as core.List?)
                ?.map(
                  (value) => UserProperty.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customerType: json_['customerType'] as core.String?,
        customerValueBucket: json_['customerValueBucket'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalUserProperties = this.additionalUserProperties;
    final customerType = this.customerType;
    final customerValueBucket = this.customerValueBucket;
    return {
      'additionalUserProperties': ?additionalUserProperties,
      'customerType': ?customerType,
      'customerValueBucket': ?customerValueBucket,
    };
  }
}

class UserProperty {
  core.String? propertyName;
  core.String? value;

  UserProperty({this.propertyName, this.value});

  UserProperty.fromJson(core.Map json_)
    : this(
        propertyName: json_['propertyName'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final propertyName = this.propertyName;
    final value = this.value;
    return {'propertyName': ?propertyName, 'value': ?value};
  }
}

class ViewabilityInfo {
  core.String? mediaDuration;

  ///
  /// Possible string values are:
  /// - "MEDIA_QUARTILE_UNSPECIFIED"
  /// - "MEDIA_QUARTILE_START"
  /// - "MEDIA_QUARTILE_FIRST_QUARTILE"
  /// - "MEDIA_QUARTILE_MIDPOINT"
  /// - "MEDIA_QUARTILE_THIRD_QUARTILE"
  /// - "MEDIA_QUARTILE_COMPLETE"
  core.String? mediaQuartile;
  core.bool? mediaSkippable;
  core.int? mediaVolumePercent;
  core.String? playbackDuration;

  ///
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED"
  /// - "VIEW_TYPE_MRC_VIEWED"
  /// - "VIEW_TYPE_MRC_RENDERED"
  core.String? viewType;
  core.String? viewableDuration;
  core.int? viewablePercent;

  ViewabilityInfo({
    this.mediaDuration,
    this.mediaQuartile,
    this.mediaSkippable,
    this.mediaVolumePercent,
    this.playbackDuration,
    this.viewType,
    this.viewableDuration,
    this.viewablePercent,
  });

  ViewabilityInfo.fromJson(core.Map json_)
    : this(
        mediaDuration: json_['mediaDuration'] as core.String?,
        mediaQuartile: json_['mediaQuartile'] as core.String?,
        mediaSkippable: json_['mediaSkippable'] as core.bool?,
        mediaVolumePercent: json_['mediaVolumePercent'] as core.int?,
        playbackDuration: json_['playbackDuration'] as core.String?,
        viewType: json_['viewType'] as core.String?,
        viewableDuration: json_['viewableDuration'] as core.String?,
        viewablePercent: json_['viewablePercent'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final mediaDuration = this.mediaDuration;
    final mediaQuartile = this.mediaQuartile;
    final mediaSkippable = this.mediaSkippable;
    final mediaVolumePercent = this.mediaVolumePercent;
    final playbackDuration = this.playbackDuration;
    final viewType = this.viewType;
    final viewableDuration = this.viewableDuration;
    final viewablePercent = this.viewablePercent;
    return {
      'mediaDuration': ?mediaDuration,
      'mediaQuartile': ?mediaQuartile,
      'mediaSkippable': ?mediaSkippable,
      'mediaVolumePercent': ?mediaVolumePercent,
      'playbackDuration': ?playbackDuration,
      'viewType': ?viewType,
      'viewableDuration': ?viewableDuration,
      'viewablePercent': ?viewablePercent,
    };
  }
}

class WarningCount {
  ///
  /// Possible string values are:
  /// - "PROCESSING_WARNING_REASON_UNSPECIFIED"
  /// - "PROCESSING_WARNING_REASON_KEK_PERMISSION_DENIED"
  /// - "PROCESSING_WARNING_REASON_DEK_DECRYPTION_ERROR"
  /// - "PROCESSING_WARNING_REASON_DECRYPTION_ERROR"
  /// - "PROCESSING_WARNING_REASON_WIP_AUTH_FAILED"
  /// - "PROCESSING_WARNING_REASON_INVALID_WIP"
  /// - "PROCESSING_WARNING_REASON_INVALID_KEK"
  /// - "PROCESSING_WARNING_REASON_USER_IDENTIFIER_DECRYPTION_ERROR"
  /// - "PROCESSING_WARNING_REASON_INTERNAL_ERROR"
  /// - "PROCESSING_WARNING_REASON_AWS_AUTH_FAILED"
  core.String? reason;
  core.String? recordCount;

  WarningCount({this.reason, this.recordCount});

  WarningCount.fromJson(core.Map json_)
    : this(
        reason: json_['reason'] as core.String?,
        recordCount: json_['recordCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final reason = this.reason;
    final recordCount = this.recordCount;
    return {'reason': ?reason, 'recordCount': ?recordCount};
  }
}

class WarningInfo {
  core.List<WarningCount>? warningCounts;

  WarningInfo({this.warningCounts});

  WarningInfo.fromJson(core.Map json_)
    : this(
        warningCounts: (json_['warningCounts'] as core.List?)
            ?.map(
              (value) => WarningCount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final warningCounts = this.warningCounts;
    return {'warningCounts': ?warningCounts};
  }
}
