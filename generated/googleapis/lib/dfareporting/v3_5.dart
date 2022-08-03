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
/// - [AccountActiveAdSummariesResource]
/// - [AccountPermissionGroupsResource]
/// - [AccountPermissionsResource]
/// - [AccountUserProfilesResource]
/// - [AccountsResource]
/// - [AdsResource]
/// - [AdvertiserGroupsResource]
/// - [AdvertiserLandingPagesResource]
/// - [AdvertisersResource]
/// - [BrowsersResource]
/// - [CampaignCreativeAssociationsResource]
/// - [CampaignsResource]
/// - [ChangeLogsResource]
/// - [CitiesResource]
/// - [ConnectionTypesResource]
/// - [ContentCategoriesResource]
/// - [ConversionsResource]
/// - [CountriesResource]
/// - [CreativeAssetsResource]
/// - [CreativeFieldValuesResource]
/// - [CreativeFieldsResource]
/// - [CreativeGroupsResource]
/// - [CreativesResource]
/// - [DimensionValuesResource]
/// - [DirectorySitesResource]
/// - [DynamicTargetingKeysResource]
/// - [EventTagsResource]
/// - [FilesResource]
/// - [FloodlightActivitiesResource]
/// - [FloodlightActivityGroupsResource]
/// - [FloodlightConfigurationsResource]
/// - [InventoryItemsResource]
/// - [LanguagesResource]
/// - [MetrosResource]
/// - [MobileAppsResource]
/// - [MobileCarriersResource]
/// - [OperatingSystemVersionsResource]
/// - [OperatingSystemsResource]
/// - [OrderDocumentsResource]
/// - [OrdersResource]
/// - [PlacementGroupsResource]
/// - [PlacementStrategiesResource]
/// - [PlacementsResource]
/// - [PlatformTypesResource]
/// - [PostalCodesResource]
/// - [ProjectsResource]
/// - [RegionsResource]
/// - [RemarketingListSharesResource]
/// - [RemarketingListsResource]
/// - [ReportsResource]
///   - [ReportsCompatibleFieldsResource]
///   - [ReportsFilesResource]
/// - [SitesResource]
/// - [SizesResource]
/// - [SubaccountsResource]
/// - [TargetableRemarketingListsResource]
/// - [TargetingTemplatesResource]
/// - [UserProfilesResource]
/// - [UserRolePermissionGroupsResource]
/// - [UserRolePermissionsResource]
/// - [UserRolesResource]
/// - [VideoFormatsResource]
library dfareporting.v3_5;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Build applications to efficiently manage large or complex trafficking,
/// reporting, and attribution workflows for Campaign Manager 360.
class DfareportingApi {
  /// Manage DoubleClick Digital Marketing conversions
  static const ddmconversionsScope =
      'https://www.googleapis.com/auth/ddmconversions';

  /// View and manage DoubleClick for Advertisers reports
  static const dfareportingScope =
      'https://www.googleapis.com/auth/dfareporting';

  /// View and manage your DoubleClick Campaign Manager's (DCM) display ad
  /// campaigns
  static const dfatraffickingScope =
      'https://www.googleapis.com/auth/dfatrafficking';

  final commons.ApiRequester _requester;

  AccountActiveAdSummariesResource get accountActiveAdSummaries =>
      AccountActiveAdSummariesResource(_requester);
  AccountPermissionGroupsResource get accountPermissionGroups =>
      AccountPermissionGroupsResource(_requester);
  AccountPermissionsResource get accountPermissions =>
      AccountPermissionsResource(_requester);
  AccountUserProfilesResource get accountUserProfiles =>
      AccountUserProfilesResource(_requester);
  AccountsResource get accounts => AccountsResource(_requester);
  AdsResource get ads => AdsResource(_requester);
  AdvertiserGroupsResource get advertiserGroups =>
      AdvertiserGroupsResource(_requester);
  AdvertiserLandingPagesResource get advertiserLandingPages =>
      AdvertiserLandingPagesResource(_requester);
  AdvertisersResource get advertisers => AdvertisersResource(_requester);
  BrowsersResource get browsers => BrowsersResource(_requester);
  CampaignCreativeAssociationsResource get campaignCreativeAssociations =>
      CampaignCreativeAssociationsResource(_requester);
  CampaignsResource get campaigns => CampaignsResource(_requester);
  ChangeLogsResource get changeLogs => ChangeLogsResource(_requester);
  CitiesResource get cities => CitiesResource(_requester);
  ConnectionTypesResource get connectionTypes =>
      ConnectionTypesResource(_requester);
  ContentCategoriesResource get contentCategories =>
      ContentCategoriesResource(_requester);
  ConversionsResource get conversions => ConversionsResource(_requester);
  CountriesResource get countries => CountriesResource(_requester);
  CreativeAssetsResource get creativeAssets =>
      CreativeAssetsResource(_requester);
  CreativeFieldValuesResource get creativeFieldValues =>
      CreativeFieldValuesResource(_requester);
  CreativeFieldsResource get creativeFields =>
      CreativeFieldsResource(_requester);
  CreativeGroupsResource get creativeGroups =>
      CreativeGroupsResource(_requester);
  CreativesResource get creatives => CreativesResource(_requester);
  DimensionValuesResource get dimensionValues =>
      DimensionValuesResource(_requester);
  DirectorySitesResource get directorySites =>
      DirectorySitesResource(_requester);
  DynamicTargetingKeysResource get dynamicTargetingKeys =>
      DynamicTargetingKeysResource(_requester);
  EventTagsResource get eventTags => EventTagsResource(_requester);
  FilesResource get files => FilesResource(_requester);
  FloodlightActivitiesResource get floodlightActivities =>
      FloodlightActivitiesResource(_requester);
  FloodlightActivityGroupsResource get floodlightActivityGroups =>
      FloodlightActivityGroupsResource(_requester);
  FloodlightConfigurationsResource get floodlightConfigurations =>
      FloodlightConfigurationsResource(_requester);
  InventoryItemsResource get inventoryItems =>
      InventoryItemsResource(_requester);
  LanguagesResource get languages => LanguagesResource(_requester);
  MetrosResource get metros => MetrosResource(_requester);
  MobileAppsResource get mobileApps => MobileAppsResource(_requester);
  MobileCarriersResource get mobileCarriers =>
      MobileCarriersResource(_requester);
  OperatingSystemVersionsResource get operatingSystemVersions =>
      OperatingSystemVersionsResource(_requester);
  OperatingSystemsResource get operatingSystems =>
      OperatingSystemsResource(_requester);
  OrderDocumentsResource get orderDocuments =>
      OrderDocumentsResource(_requester);
  OrdersResource get orders => OrdersResource(_requester);
  PlacementGroupsResource get placementGroups =>
      PlacementGroupsResource(_requester);
  PlacementStrategiesResource get placementStrategies =>
      PlacementStrategiesResource(_requester);
  PlacementsResource get placements => PlacementsResource(_requester);
  PlatformTypesResource get platformTypes => PlatformTypesResource(_requester);
  PostalCodesResource get postalCodes => PostalCodesResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  RegionsResource get regions => RegionsResource(_requester);
  RemarketingListSharesResource get remarketingListShares =>
      RemarketingListSharesResource(_requester);
  RemarketingListsResource get remarketingLists =>
      RemarketingListsResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);
  SitesResource get sites => SitesResource(_requester);
  SizesResource get sizes => SizesResource(_requester);
  SubaccountsResource get subaccounts => SubaccountsResource(_requester);
  TargetableRemarketingListsResource get targetableRemarketingLists =>
      TargetableRemarketingListsResource(_requester);
  TargetingTemplatesResource get targetingTemplates =>
      TargetingTemplatesResource(_requester);
  UserProfilesResource get userProfiles => UserProfilesResource(_requester);
  UserRolePermissionGroupsResource get userRolePermissionGroups =>
      UserRolePermissionGroupsResource(_requester);
  UserRolePermissionsResource get userRolePermissions =>
      UserRolePermissionsResource(_requester);
  UserRolesResource get userRoles => UserRolesResource(_requester);
  VideoFormatsResource get videoFormats => VideoFormatsResource(_requester);

  DfareportingApi(http.Client client,
      {core.String rootUrl = 'https://dfareporting.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountActiveAdSummariesResource {
  final commons.ApiRequester _requester;

  AccountActiveAdSummariesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the account's active ad summary by account ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [summaryAccountId] - Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountActiveAdSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountActiveAdSummary> get(
    core.String profileId,
    core.String summaryAccountId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountActiveAdSummaries/' +
        commons.escapeVariable('$summaryAccountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountActiveAdSummary.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountPermissionGroupsResource {
  final commons.ApiRequester _requester;

  AccountPermissionGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one account permission group by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Account permission group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountPermissionGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountPermissionGroup> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountPermissionGroups/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountPermissionGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the list of account permission groups.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountPermissionGroupsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountPermissionGroupsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountPermissionGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountPermissionGroupsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountPermissionsResource {
  final commons.ApiRequester _requester;

  AccountPermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one account permission by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Account permission ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountPermission> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountPermissions/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountPermission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the list of account permissions.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountPermissionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountPermissionsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountPermissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountPermissionsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountUserProfilesResource {
  final commons.ApiRequester _requester;

  AccountUserProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one account user profile by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - User profile ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountUserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountUserProfile> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountUserProfiles/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountUserProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new account user profile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountUserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountUserProfile> insert(
    AccountUserProfile request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountUserProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountUserProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of account user profiles, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [active] - Select only active user profiles.
  ///
  /// [ids] - Select only user profiles with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name, ID or email.
  /// Wildcards (*) are allowed. For example, "user profile*2015" will return
  /// objects with names like "user profile June 2015", "user profile April
  /// 2015", or simply "user profile 2015". Most of the searches also add
  /// wildcards implicitly at the start and the end of the search string. For
  /// example, a search string of "user profile" will match objects with name
  /// "my user profile", "user profile 2015", or simply "user profile".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [subaccountId] - Select only user profiles with the specified subaccount
  /// ID.
  ///
  /// [userRoleId] - Select only user profiles with the specified user role ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountUserProfilesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountUserProfilesListResponse> list(
    core.String profileId, {
    core.bool? active,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? subaccountId,
    core.String? userRoleId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (active != null) 'active': ['${active}'],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (subaccountId != null) 'subaccountId': [subaccountId],
      if (userRoleId != null) 'userRoleId': [userRoleId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountUserProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountUserProfilesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing account user profile.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - AccountUserProfile ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountUserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountUserProfile> patch(
    AccountUserProfile request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountUserProfiles';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountUserProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing account user profile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountUserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountUserProfile> update(
    AccountUserProfile request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accountUserProfiles';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AccountUserProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one account by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accounts/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the list of accounts, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [active] - Select only active accounts. Don't set this field to select
  /// both active and non-active accounts.
  ///
  /// [ids] - Select only accounts with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "account*2015" will return objects with names
  /// like "account June 2015", "account April 2015", or simply "account 2015".
  /// Most of the searches also add wildcards implicitly at the start and the
  /// end of the search string. For example, a search string of "account" will
  /// match objects with name "my account", "account 2015", or simply "account".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountsListResponse> list(
    core.String profileId, {
    core.bool? active,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (active != null) 'active': ['${active}'],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AccountsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing account.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Account ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> patch(
    Account request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accounts';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> update(
    Account request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/accounts';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdsResource {
  final commons.ApiRequester _requester;

  AdsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one ad by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Ad ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Ad].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Ad> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/ads/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Ad.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new ad.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Ad].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Ad> insert(
    Ad request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/ads';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Ad.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of ads, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [active] - Select only active ads.
  ///
  /// [advertiserId] - Select only ads with this advertiser ID.
  ///
  /// [archived] - Select only archived ads.
  ///
  /// [audienceSegmentIds] - Select only ads with these audience segment IDs.
  ///
  /// [campaignIds] - Select only ads with these campaign IDs.
  ///
  /// [compatibility] - Select default ads with the specified compatibility.
  /// Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and
  /// DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile
  /// devices for regular or interstitial ads, respectively. APP and
  /// APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers
  /// to rendering an in-stream video ads developed with the VAST standard.
  /// Possible string values are:
  /// - "DISPLAY"
  /// - "DISPLAY_INTERSTITIAL"
  /// - "APP"
  /// - "APP_INTERSTITIAL"
  /// - "IN_STREAM_VIDEO"
  /// - "IN_STREAM_AUDIO"
  ///
  /// [creativeIds] - Select only ads with these creative IDs assigned.
  ///
  /// [creativeOptimizationConfigurationIds] - Select only ads with these
  /// creative optimization configuration IDs.
  ///
  /// [dynamicClickTracker] - Select only dynamic click trackers. Applicable
  /// when type is AD_SERVING_CLICK_TRACKER. If true, select dynamic click
  /// trackers. If false, select static click trackers. Leave unset to select
  /// both.
  ///
  /// [ids] - Select only ads with these IDs.
  ///
  /// [landingPageIds] - Select only ads with these landing page IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [overriddenEventTagId] - Select only ads with this event tag override ID.
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [placementIds] - Select only ads with these placement IDs assigned.
  ///
  /// [remarketingListIds] - Select only ads whose list targeting expression use
  /// these remarketing list IDs.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "ad*2015" will return objects with names like
  /// "ad June 2015", "ad April 2015", or simply "ad 2015". Most of the searches
  /// also add wildcards implicitly at the start and the end of the search
  /// string. For example, a search string of "ad" will match objects with name
  /// "my ad", "ad 2015", or simply "ad".
  ///
  /// [sizeIds] - Select only ads with these size IDs.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [sslCompliant] - Select only ads that are SSL-compliant.
  ///
  /// [sslRequired] - Select only ads that require SSL.
  ///
  /// [type] - Select only ads with these types.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdsListResponse> list(
    core.String profileId, {
    core.bool? active,
    core.String? advertiserId,
    core.bool? archived,
    core.List<core.String>? audienceSegmentIds,
    core.List<core.String>? campaignIds,
    core.String? compatibility,
    core.List<core.String>? creativeIds,
    core.List<core.String>? creativeOptimizationConfigurationIds,
    core.bool? dynamicClickTracker,
    core.List<core.String>? ids,
    core.List<core.String>? landingPageIds,
    core.int? maxResults,
    core.String? overriddenEventTagId,
    core.String? pageToken,
    core.List<core.String>? placementIds,
    core.List<core.String>? remarketingListIds,
    core.String? searchString,
    core.List<core.String>? sizeIds,
    core.String? sortField,
    core.String? sortOrder,
    core.bool? sslCompliant,
    core.bool? sslRequired,
    core.List<core.String>? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (active != null) 'active': ['${active}'],
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (archived != null) 'archived': ['${archived}'],
      if (audienceSegmentIds != null) 'audienceSegmentIds': audienceSegmentIds,
      if (campaignIds != null) 'campaignIds': campaignIds,
      if (compatibility != null) 'compatibility': [compatibility],
      if (creativeIds != null) 'creativeIds': creativeIds,
      if (creativeOptimizationConfigurationIds != null)
        'creativeOptimizationConfigurationIds':
            creativeOptimizationConfigurationIds,
      if (dynamicClickTracker != null)
        'dynamicClickTracker': ['${dynamicClickTracker}'],
      if (ids != null) 'ids': ids,
      if (landingPageIds != null) 'landingPageIds': landingPageIds,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (overriddenEventTagId != null)
        'overriddenEventTagId': [overriddenEventTagId],
      if (pageToken != null) 'pageToken': [pageToken],
      if (placementIds != null) 'placementIds': placementIds,
      if (remarketingListIds != null) 'remarketingListIds': remarketingListIds,
      if (searchString != null) 'searchString': [searchString],
      if (sizeIds != null) 'sizeIds': sizeIds,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (sslCompliant != null) 'sslCompliant': ['${sslCompliant}'],
      if (sslRequired != null) 'sslRequired': ['${sslRequired}'],
      if (type != null) 'type': type,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/ads';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing ad.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Ad ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Ad].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Ad> patch(
    Ad request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/ads';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Ad.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing ad.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Ad].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Ad> update(
    Ad request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/ads';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Ad.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertiserGroupsResource {
  final commons.ApiRequester _requester;

  AdvertiserGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing advertiser group.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Advertiser group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserGroups/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one advertiser group by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Advertiser group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertiserGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertiserGroup> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserGroups/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdvertiserGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new advertiser group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertiserGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertiserGroup> insert(
    AdvertiserGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AdvertiserGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of advertiser groups, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [ids] - Select only advertiser groups with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "advertiser*2015" will return objects with names
  /// like "advertiser group June 2015", "advertiser group April 2015", or
  /// simply "advertiser group 2015". Most of the searches also add wildcards
  /// implicitly at the start and the end of the search string. For example, a
  /// search string of "advertisergroup" will match objects with name "my
  /// advertisergroup", "advertisergroup 2015", or simply "advertisergroup".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertiserGroupsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertiserGroupsListResponse> list(
    core.String profileId, {
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdvertiserGroupsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing advertiser group.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - AdvertiserGroup ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertiserGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertiserGroup> patch(
    AdvertiserGroup request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserGroups';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AdvertiserGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing advertiser group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertiserGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertiserGroup> update(
    AdvertiserGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserGroups';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AdvertiserGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertiserLandingPagesResource {
  final commons.ApiRequester _requester;

  AdvertiserLandingPagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one landing page by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Landing page ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LandingPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LandingPage> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserLandingPages/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LandingPage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new landing page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LandingPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LandingPage> insert(
    LandingPage request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserLandingPages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LandingPage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of landing pages.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserIds] - Select only landing pages that belong to these
  /// advertisers.
  ///
  /// [archived] - Select only archived landing pages. Don't set this field to
  /// select both archived and non-archived landing pages.
  ///
  /// [campaignIds] - Select only landing pages that are associated with these
  /// campaigns.
  ///
  /// [ids] - Select only landing pages with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for landing pages by name or ID.
  /// Wildcards (*) are allowed. For example, "landingpage*2017" will return
  /// landing pages with names like "landingpage July 2017", "landingpage March
  /// 2017", or simply "landingpage 2017". Most of the searches also add
  /// wildcards implicitly at the start and the end of the search string. For
  /// example, a search string of "landingpage" will match campaigns with name
  /// "my landingpage", "landingpage 2015", or simply "landingpage".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [subaccountId] - Select only landing pages that belong to this subaccount.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertiserLandingPagesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertiserLandingPagesListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserIds,
    core.bool? archived,
    core.List<core.String>? campaignIds,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? subaccountId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (archived != null) 'archived': ['${archived}'],
      if (campaignIds != null) 'campaignIds': campaignIds,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (subaccountId != null) 'subaccountId': [subaccountId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserLandingPages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdvertiserLandingPagesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing advertiser landing page.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - LandingPage ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LandingPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LandingPage> patch(
    LandingPage request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserLandingPages';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return LandingPage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing landing page.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LandingPage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LandingPage> update(
    LandingPage request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertiserLandingPages';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return LandingPage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdvertisersResource {
  final commons.ApiRequester _requester;

  AdvertisersResource(commons.ApiRequester client) : _requester = client;

  /// Gets one advertiser by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Advertiser ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertisers/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new advertiser.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> insert(
    Advertiser request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertisers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of advertisers, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserGroupIds] - Select only advertisers with these advertiser group
  /// IDs.
  ///
  /// [floodlightConfigurationIds] - Select only advertisers with these
  /// floodlight configuration IDs.
  ///
  /// [ids] - Select only advertisers with these IDs.
  ///
  /// [includeAdvertisersWithoutGroupsOnly] - Select only advertisers which do
  /// not belong to any advertiser group.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [onlyParent] - Select only advertisers which use another advertiser's
  /// floodlight configuration.
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "advertiser*2015" will return objects with names
  /// like "advertiser June 2015", "advertiser April 2015", or simply
  /// "advertiser 2015". Most of the searches also add wildcards implicitly at
  /// the start and the end of the search string. For example, a search string
  /// of "advertiser" will match objects with name "my advertiser", "advertiser
  /// 2015", or simply "advertiser" .
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [status] - Select only advertisers with the specified status.
  /// Possible string values are:
  /// - "APPROVED"
  /// - "ON_HOLD"
  ///
  /// [subaccountId] - Select only advertisers with these subaccount IDs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvertisersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvertisersListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserGroupIds,
    core.List<core.String>? floodlightConfigurationIds,
    core.List<core.String>? ids,
    core.bool? includeAdvertisersWithoutGroupsOnly,
    core.int? maxResults,
    core.bool? onlyParent,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? status,
    core.String? subaccountId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserGroupIds != null) 'advertiserGroupIds': advertiserGroupIds,
      if (floodlightConfigurationIds != null)
        'floodlightConfigurationIds': floodlightConfigurationIds,
      if (ids != null) 'ids': ids,
      if (includeAdvertisersWithoutGroupsOnly != null)
        'includeAdvertisersWithoutGroupsOnly': [
          '${includeAdvertisersWithoutGroupsOnly}'
        ],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (onlyParent != null) 'onlyParent': ['${onlyParent}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (status != null) 'status': [status],
      if (subaccountId != null) 'subaccountId': [subaccountId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertisers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdvertisersListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing advertiser.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Advertiser ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> patch(
    Advertiser request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertisers';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing advertiser.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Advertiser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Advertiser> update(
    Advertiser request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/advertisers';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Advertiser.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BrowsersResource {
  final commons.ApiRequester _requester;

  BrowsersResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of browsers.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BrowsersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BrowsersListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/browsers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BrowsersListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CampaignCreativeAssociationsResource {
  final commons.ApiRequester _requester;

  CampaignCreativeAssociationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Associates a creative with the specified campaign.
  ///
  /// This method creates a default ad with dimensions matching the creative in
  /// the campaign if such a default ad does not exist already.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [campaignId] - Campaign ID in this association.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CampaignCreativeAssociation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CampaignCreativeAssociation> insert(
    CampaignCreativeAssociation request,
    core.String profileId,
    core.String campaignId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns/' +
        commons.escapeVariable('$campaignId') +
        '/campaignCreativeAssociations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CampaignCreativeAssociation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the list of creative IDs associated with the specified campaign.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [campaignId] - Campaign ID in this association.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CampaignCreativeAssociationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CampaignCreativeAssociationsListResponse> list(
    core.String profileId,
    core.String campaignId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns/' +
        commons.escapeVariable('$campaignId') +
        '/campaignCreativeAssociations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CampaignCreativeAssociationsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CampaignsResource {
  final commons.ApiRequester _requester;

  CampaignsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one campaign by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Campaign ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new campaign.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> insert(
    Campaign request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of campaigns, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserGroupIds] - Select only campaigns whose advertisers belong to
  /// these advertiser groups.
  ///
  /// [advertiserIds] - Select only campaigns that belong to these advertisers.
  ///
  /// [archived] - Select only archived campaigns. Don't set this field to
  /// select both archived and non-archived campaigns.
  ///
  /// [atLeastOneOptimizationActivity] - Select only campaigns that have at
  /// least one optimization activity.
  ///
  /// [excludedIds] - Exclude campaigns with these IDs.
  ///
  /// [ids] - Select only campaigns with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [overriddenEventTagId] - Select only campaigns that have overridden this
  /// event tag ID.
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for campaigns by name or ID. Wildcards
  /// (*) are allowed. For example, "campaign*2015" will return campaigns with
  /// names like "campaign June 2015", "campaign April 2015", or simply
  /// "campaign 2015". Most of the searches also add wildcards implicitly at the
  /// start and the end of the search string. For example, a search string of
  /// "campaign" will match campaigns with name "my campaign", "campaign 2015",
  /// or simply "campaign".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [subaccountId] - Select only campaigns that belong to this subaccount.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CampaignsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CampaignsListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserGroupIds,
    core.List<core.String>? advertiserIds,
    core.bool? archived,
    core.bool? atLeastOneOptimizationActivity,
    core.List<core.String>? excludedIds,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? overriddenEventTagId,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? subaccountId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserGroupIds != null) 'advertiserGroupIds': advertiserGroupIds,
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (archived != null) 'archived': ['${archived}'],
      if (atLeastOneOptimizationActivity != null)
        'atLeastOneOptimizationActivity': ['${atLeastOneOptimizationActivity}'],
      if (excludedIds != null) 'excludedIds': excludedIds,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (overriddenEventTagId != null)
        'overriddenEventTagId': [overriddenEventTagId],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (subaccountId != null) 'subaccountId': [subaccountId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CampaignsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing campaign.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Campaign ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> patch(
    Campaign request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing campaign.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Campaign].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Campaign> update(
    Campaign request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/campaigns';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Campaign.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChangeLogsResource {
  final commons.ApiRequester _requester;

  ChangeLogsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one change log by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Change log ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChangeLog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChangeLog> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/changeLogs/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChangeLog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of change logs.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [action] - Select only change logs with the specified action.
  /// Possible string values are:
  /// - "ACTION_CREATE"
  /// - "ACTION_UPDATE"
  /// - "ACTION_DELETE"
  /// - "ACTION_ENABLE"
  /// - "ACTION_DISABLE"
  /// - "ACTION_ADD"
  /// - "ACTION_REMOVE"
  /// - "ACTION_MARK_AS_DEFAULT"
  /// - "ACTION_ASSOCIATE"
  /// - "ACTION_ASSIGN"
  /// - "ACTION_UNASSIGN"
  /// - "ACTION_SEND"
  /// - "ACTION_LINK"
  /// - "ACTION_UNLINK"
  /// - "ACTION_PUSH"
  /// - "ACTION_EMAIL_TAGS"
  /// - "ACTION_SHARE"
  ///
  /// [ids] - Select only change logs with these IDs.
  ///
  /// [maxChangeTime] - Select only change logs whose change time is before the
  /// specified maxChangeTime.The time should be formatted as an RFC3339
  /// date/time string. For example, for 10:54 PM on July 18th, 2015, in the
  /// America/New York time zone, the format is "2015-07-18T22:54:00-04:00". In
  /// other words, the year, month, day, the letter T, the hour (24-hour clock
  /// system), minute, second, and then the time zone offset.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [minChangeTime] - Select only change logs whose change time is after the
  /// specified minChangeTime.The time should be formatted as an RFC3339
  /// date/time string. For example, for 10:54 PM on July 18th, 2015, in the
  /// America/New York time zone, the format is "2015-07-18T22:54:00-04:00". In
  /// other words, the year, month, day, the letter T, the hour (24-hour clock
  /// system), minute, second, and then the time zone offset.
  ///
  /// [objectIds] - Select only change logs with these object IDs.
  ///
  /// [objectType] - Select only change logs with the specified object type.
  /// Possible string values are:
  /// - "OBJECT_ADVERTISER"
  /// - "OBJECT_FLOODLIGHT_CONFIGURATION"
  /// - "OBJECT_AD"
  /// - "OBJECT_FLOODLIGHT_ACTVITY"
  /// - "OBJECT_CAMPAIGN"
  /// - "OBJECT_FLOODLIGHT_ACTIVITY_GROUP"
  /// - "OBJECT_CREATIVE"
  /// - "OBJECT_PLACEMENT"
  /// - "OBJECT_DFA_SITE"
  /// - "OBJECT_USER_ROLE"
  /// - "OBJECT_USER_PROFILE"
  /// - "OBJECT_ADVERTISER_GROUP"
  /// - "OBJECT_ACCOUNT"
  /// - "OBJECT_SUBACCOUNT"
  /// - "OBJECT_RICHMEDIA_CREATIVE"
  /// - "OBJECT_INSTREAM_CREATIVE"
  /// - "OBJECT_MEDIA_ORDER"
  /// - "OBJECT_CONTENT_CATEGORY"
  /// - "OBJECT_PLACEMENT_STRATEGY"
  /// - "OBJECT_SD_SITE"
  /// - "OBJECT_SIZE"
  /// - "OBJECT_CREATIVE_GROUP"
  /// - "OBJECT_CREATIVE_ASSET"
  /// - "OBJECT_USER_PROFILE_FILTER"
  /// - "OBJECT_LANDING_PAGE"
  /// - "OBJECT_CREATIVE_FIELD"
  /// - "OBJECT_REMARKETING_LIST"
  /// - "OBJECT_PROVIDED_LIST_CLIENT"
  /// - "OBJECT_EVENT_TAG"
  /// - "OBJECT_CREATIVE_BUNDLE"
  /// - "OBJECT_BILLING_ACCOUNT_GROUP"
  /// - "OBJECT_BILLING_FEATURE"
  /// - "OBJECT_RATE_CARD"
  /// - "OBJECT_ACCOUNT_BILLING_FEATURE"
  /// - "OBJECT_BILLING_MINIMUM_FEE"
  /// - "OBJECT_BILLING_PROFILE"
  /// - "OBJECT_PLAYSTORE_LINK"
  /// - "OBJECT_TARGETING_TEMPLATE"
  /// - "OBJECT_SEARCH_LIFT_STUDY"
  /// - "OBJECT_FLOODLIGHT_DV360_LINK"
  /// - "OBJECT_ADVERTISER_CUSTOMER_LINK"
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Select only change logs whose object ID, user name, old
  /// or new values match the search string.
  ///
  /// [userProfileIds] - Select only change logs with these user profile IDs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ChangeLogsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ChangeLogsListResponse> list(
    core.String profileId, {
    core.String? action,
    core.List<core.String>? ids,
    core.String? maxChangeTime,
    core.int? maxResults,
    core.String? minChangeTime,
    core.List<core.String>? objectIds,
    core.String? objectType,
    core.String? pageToken,
    core.String? searchString,
    core.List<core.String>? userProfileIds,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (action != null) 'action': [action],
      if (ids != null) 'ids': ids,
      if (maxChangeTime != null) 'maxChangeTime': [maxChangeTime],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (minChangeTime != null) 'minChangeTime': [minChangeTime],
      if (objectIds != null) 'objectIds': objectIds,
      if (objectType != null) 'objectType': [objectType],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (userProfileIds != null) 'userProfileIds': userProfileIds,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/changeLogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ChangeLogsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CitiesResource {
  final commons.ApiRequester _requester;

  CitiesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of cities, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [countryDartIds] - Select only cities from these countries.
  ///
  /// [dartIds] - Select only cities with these DART IDs.
  ///
  /// [namePrefix] - Select only cities with names starting with this prefix.
  ///
  /// [regionDartIds] - Select only cities from these regions.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CitiesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CitiesListResponse> list(
    core.String profileId, {
    core.List<core.String>? countryDartIds,
    core.List<core.String>? dartIds,
    core.String? namePrefix,
    core.List<core.String>? regionDartIds,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (countryDartIds != null) 'countryDartIds': countryDartIds,
      if (dartIds != null) 'dartIds': dartIds,
      if (namePrefix != null) 'namePrefix': [namePrefix],
      if (regionDartIds != null) 'regionDartIds': regionDartIds,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/cities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CitiesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConnectionTypesResource {
  final commons.ApiRequester _requester;

  ConnectionTypesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one connection type by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Connection type ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectionType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectionType> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/connectionTypes/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConnectionType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of connection types.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectionTypesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectionTypesListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/connectionTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConnectionTypesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ContentCategoriesResource {
  final commons.ApiRequester _requester;

  ContentCategoriesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing content category.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Content category ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/contentCategories/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one content category by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Content category ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContentCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContentCategory> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/contentCategories/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContentCategory.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new content category.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContentCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContentCategory> insert(
    ContentCategory request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/contentCategories';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ContentCategory.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of content categories, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [ids] - Select only content categories with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "contentcategory*2015" will return objects with
  /// names like "contentcategory June 2015", "contentcategory April 2015", or
  /// simply "contentcategory 2015". Most of the searches also add wildcards
  /// implicitly at the start and the end of the search string. For example, a
  /// search string of "contentcategory" will match objects with name "my
  /// contentcategory", "contentcategory 2015", or simply "contentcategory".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContentCategoriesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContentCategoriesListResponse> list(
    core.String profileId, {
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/contentCategories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ContentCategoriesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing content category.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - ContentCategory ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContentCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContentCategory> patch(
    ContentCategory request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/contentCategories';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ContentCategory.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing content category.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ContentCategory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ContentCategory> update(
    ContentCategory request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/contentCategories';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ContentCategory.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConversionsResource {
  final commons.ApiRequester _requester;

  ConversionsResource(commons.ApiRequester client) : _requester = client;

  /// Inserts conversions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionsBatchInsertResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionsBatchInsertResponse> batchinsert(
    ConversionsBatchInsertRequest request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/conversions/batchinsert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionsBatchInsertResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates existing conversions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionsBatchUpdateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionsBatchUpdateResponse> batchupdate(
    ConversionsBatchUpdateRequest request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/conversions/batchupdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConversionsBatchUpdateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CountriesResource {
  final commons.ApiRequester _requester;

  CountriesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one country by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [dartId] - Country DART ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Country].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Country> get(
    core.String profileId,
    core.String dartId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/countries/' +
        commons.escapeVariable('$dartId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Country.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of countries.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CountriesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CountriesListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/countries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CountriesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CreativeAssetsResource {
  final commons.ApiRequester _requester;

  CreativeAssetsResource(commons.ApiRequester client) : _requester = client;

  /// Inserts a new creative asset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Advertiser ID of this creative. This is a required field.
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
  async.Future<CreativeAssetMetadata> insert(
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
      url_ = 'dfareporting/v3.5/userprofiles/' +
          commons.escapeVariable('$profileId') +
          '/creativeAssets/' +
          commons.escapeVariable('$advertiserId') +
          '/creativeAssets';
    } else {
      url_ = '/upload/dfareporting/v3.5/userprofiles/' +
          commons.escapeVariable('$profileId') +
          '/creativeAssets/' +
          commons.escapeVariable('$advertiserId') +
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

class CreativeFieldValuesResource {
  final commons.ApiRequester _requester;

  CreativeFieldValuesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an existing creative field value.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [creativeFieldId] - Creative field ID for this creative field value.
  ///
  /// [id] - Creative Field Value ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String creativeFieldId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$creativeFieldId') +
        '/creativeFieldValues/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one creative field value by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [creativeFieldId] - Creative field ID for this creative field value.
  ///
  /// [id] - Creative Field Value ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeFieldValue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeFieldValue> get(
    core.String profileId,
    core.String creativeFieldId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$creativeFieldId') +
        '/creativeFieldValues/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativeFieldValue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new creative field value.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [creativeFieldId] - Creative field ID for this creative field value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeFieldValue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeFieldValue> insert(
    CreativeFieldValue request,
    core.String profileId,
    core.String creativeFieldId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$creativeFieldId') +
        '/creativeFieldValues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeFieldValue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of creative field values, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [creativeFieldId] - Creative field ID for this creative field value.
  ///
  /// [ids] - Select only creative field values with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for creative field values by their
  /// values. Wildcards (e.g. *) are not allowed.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "VALUE"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeFieldValuesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeFieldValuesListResponse> list(
    core.String profileId,
    core.String creativeFieldId, {
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$creativeFieldId') +
        '/creativeFieldValues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativeFieldValuesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative field value.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [creativeFieldId] - CreativeField ID.
  ///
  /// [id] - CreativeFieldValue ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeFieldValue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeFieldValue> patch(
    CreativeFieldValue request,
    core.String profileId,
    core.String creativeFieldId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$creativeFieldId') +
        '/creativeFieldValues';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeFieldValue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative field value.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [creativeFieldId] - Creative field ID for this creative field value.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeFieldValue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeFieldValue> update(
    CreativeFieldValue request,
    core.String profileId,
    core.String creativeFieldId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$creativeFieldId') +
        '/creativeFieldValues';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeFieldValue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CreativeFieldsResource {
  final commons.ApiRequester _requester;

  CreativeFieldsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing creative field.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Creative Field ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one creative field by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Creative Field ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeField> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativeField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new creative field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeField> insert(
    CreativeField request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of creative fields, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserIds] - Select only creative fields that belong to these
  /// advertisers.
  ///
  /// [ids] - Select only creative fields with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for creative fields by name or ID.
  /// Wildcards (*) are allowed. For example, "creativefield*2015" will return
  /// creative fields with names like "creativefield June 2015", "creativefield
  /// April 2015", or simply "creativefield 2015". Most of the searches also add
  /// wild-cards implicitly at the start and the end of the search string. For
  /// example, a search string of "creativefield" will match creative fields
  /// with the name "my creativefield", "creativefield 2015", or simply
  /// "creativefield".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeFieldsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeFieldsListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserIds,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativeFieldsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative field.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - CreativeField ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeField> patch(
    CreativeField request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeField].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeField> update(
    CreativeField request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeFields';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeField.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CreativeGroupsResource {
  final commons.ApiRequester _requester;

  CreativeGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one creative group by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Creative group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeGroup> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeGroups/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativeGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new creative group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeGroup> insert(
    CreativeGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of creative groups, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserIds] - Select only creative groups that belong to these
  /// advertisers.
  ///
  /// [groupNumber] - Select only creative groups that belong to this subgroup.
  /// Value must be between "1" and "2".
  ///
  /// [ids] - Select only creative groups with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for creative groups by name or ID.
  /// Wildcards (*) are allowed. For example, "creativegroup*2015" will return
  /// creative groups with names like "creativegroup June 2015", "creativegroup
  /// April 2015", or simply "creativegroup 2015". Most of the searches also add
  /// wild-cards implicitly at the start and the end of the search string. For
  /// example, a search string of "creativegroup" will match creative groups
  /// with the name "my creativegroup", "creativegroup 2015", or simply
  /// "creativegroup".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeGroupsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeGroupsListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserIds,
    core.int? groupNumber,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (groupNumber != null) 'groupNumber': ['${groupNumber}'],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativeGroupsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative group.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - CreativeGroup ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeGroup> patch(
    CreativeGroup request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeGroups';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativeGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativeGroup> update(
    CreativeGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creativeGroups';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CreativeGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CreativesResource {
  final commons.ApiRequester _requester;

  CreativesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one creative by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Creative ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creatives/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> insert(
    Creative request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creatives';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of creatives, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [active] - Select only active creatives. Leave blank to select active and
  /// inactive creatives.
  ///
  /// [advertiserId] - Select only creatives with this advertiser ID.
  ///
  /// [archived] - Select only archived creatives. Leave blank to select
  /// archived and unarchived creatives.
  ///
  /// [campaignId] - Select only creatives with this campaign ID.
  ///
  /// [companionCreativeIds] - Select only in-stream video creatives with these
  /// companion IDs.
  ///
  /// [creativeFieldIds] - Select only creatives with these creative field IDs.
  ///
  /// [ids] - Select only creatives with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [renderingIds] - Select only creatives with these rendering IDs.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "creative*2015" will return objects with names
  /// like "creative June 2015", "creative April 2015", or simply "creative
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of "creative"
  /// will match objects with name "my creative", "creative 2015", or simply
  /// "creative".
  ///
  /// [sizeIds] - Select only creatives with these size IDs.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [studioCreativeId] - Select only creatives corresponding to this Studio
  /// creative ID.
  ///
  /// [types] - Select only creatives with these creative types.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreativesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreativesListResponse> list(
    core.String profileId, {
    core.bool? active,
    core.String? advertiserId,
    core.bool? archived,
    core.String? campaignId,
    core.List<core.String>? companionCreativeIds,
    core.List<core.String>? creativeFieldIds,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.List<core.String>? renderingIds,
    core.String? searchString,
    core.List<core.String>? sizeIds,
    core.String? sortField,
    core.String? sortOrder,
    core.String? studioCreativeId,
    core.List<core.String>? types,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (active != null) 'active': ['${active}'],
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (archived != null) 'archived': ['${archived}'],
      if (campaignId != null) 'campaignId': [campaignId],
      if (companionCreativeIds != null)
        'companionCreativeIds': companionCreativeIds,
      if (creativeFieldIds != null) 'creativeFieldIds': creativeFieldIds,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (renderingIds != null) 'renderingIds': renderingIds,
      if (searchString != null) 'searchString': [searchString],
      if (sizeIds != null) 'sizeIds': sizeIds,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (studioCreativeId != null) 'studioCreativeId': [studioCreativeId],
      if (types != null) 'types': types,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creatives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CreativesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Creative ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> patch(
    Creative request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creatives';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> update(
    Creative request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/creatives';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class DimensionValuesResource {
  final commons.ApiRequester _requester;

  DimensionValuesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves list of report dimension values for a list of filters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "100".
  ///
  /// [pageToken] - The value of the nextToken from the previous result page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DimensionValueList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DimensionValueList> query(
    DimensionValueRequest request,
    core.String profileId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/dimensionvalues/query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DimensionValueList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class DirectorySitesResource {
  final commons.ApiRequester _requester;

  DirectorySitesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one directory site by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Directory site ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DirectorySite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DirectorySite> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/directorySites/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DirectorySite.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new directory site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DirectorySite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DirectorySite> insert(
    DirectorySite request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/directorySites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DirectorySite.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of directory sites, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [acceptsInStreamVideoPlacements] - This search filter is no longer
  /// supported and will have no effect on the results returned.
  ///
  /// [acceptsInterstitialPlacements] - This search filter is no longer
  /// supported and will have no effect on the results returned.
  ///
  /// [acceptsPublisherPaidPlacements] - Select only directory sites that accept
  /// publisher paid placements. This field can be left blank.
  ///
  /// [active] - Select only active directory sites. Leave blank to retrieve
  /// both active and inactive directory sites.
  ///
  /// [dfpNetworkCode] - Select only directory sites with this Ad Manager
  /// network code.
  ///
  /// [ids] - Select only directory sites with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name, ID or URL.
  /// Wildcards (*) are allowed. For example, "directory site*2015" will return
  /// objects with names like "directory site June 2015", "directory site April
  /// 2015", or simply "directory site 2015". Most of the searches also add
  /// wildcards implicitly at the start and the end of the search string. For
  /// example, a search string of "directory site" will match objects with name
  /// "my directory site", "directory site 2015" or simply, "directory site".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DirectorySitesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DirectorySitesListResponse> list(
    core.String profileId, {
    core.bool? acceptsInStreamVideoPlacements,
    core.bool? acceptsInterstitialPlacements,
    core.bool? acceptsPublisherPaidPlacements,
    core.bool? active,
    core.String? dfpNetworkCode,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (acceptsInStreamVideoPlacements != null)
        'acceptsInStreamVideoPlacements': ['${acceptsInStreamVideoPlacements}'],
      if (acceptsInterstitialPlacements != null)
        'acceptsInterstitialPlacements': ['${acceptsInterstitialPlacements}'],
      if (acceptsPublisherPaidPlacements != null)
        'acceptsPublisherPaidPlacements': ['${acceptsPublisherPaidPlacements}'],
      if (active != null) 'active': ['${active}'],
      if (dfpNetworkCode != null) 'dfpNetworkCode': [dfpNetworkCode],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/directorySites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DirectorySitesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class DynamicTargetingKeysResource {
  final commons.ApiRequester _requester;

  DynamicTargetingKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an existing dynamic targeting key.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [objectId] - ID of the object of this dynamic targeting key. This is a
  /// required field.
  ///
  /// [name] - Name of this dynamic targeting key. This is a required field.
  /// Must be less than 256 characters long and cannot contain commas. All
  /// characters are converted to lowercase.
  ///
  /// [objectType] - Type of the object of this dynamic targeting key. This is a
  /// required field.
  /// Possible string values are:
  /// - "OBJECT_ADVERTISER"
  /// - "OBJECT_AD"
  /// - "OBJECT_CREATIVE"
  /// - "OBJECT_PLACEMENT"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String objectId,
    core.String name,
    core.String objectType, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'name': [name],
      'objectType': [objectType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/dynamicTargetingKeys/' +
        commons.escapeVariable('$objectId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Inserts a new dynamic targeting key.
  ///
  /// Keys must be created at the advertiser level before being assigned to the
  /// advertiser's ads, creatives, or placements. There is a maximum of 1000
  /// keys per advertiser, out of which a maximum of 20 keys can be assigned per
  /// ad, creative, or placement.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DynamicTargetingKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DynamicTargetingKey> insert(
    DynamicTargetingKey request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/dynamicTargetingKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DynamicTargetingKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of dynamic targeting keys.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Select only dynamic targeting keys whose object has this
  /// advertiser ID.
  ///
  /// [names] - Select only dynamic targeting keys exactly matching these names.
  ///
  /// [objectId] - Select only dynamic targeting keys with this object ID.
  ///
  /// [objectType] - Select only dynamic targeting keys with this object type.
  /// Possible string values are:
  /// - "OBJECT_ADVERTISER"
  /// - "OBJECT_AD"
  /// - "OBJECT_CREATIVE"
  /// - "OBJECT_PLACEMENT"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DynamicTargetingKeysListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DynamicTargetingKeysListResponse> list(
    core.String profileId, {
    core.String? advertiserId,
    core.List<core.String>? names,
    core.String? objectId,
    core.String? objectType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (names != null) 'names': names,
      if (objectId != null) 'objectId': [objectId],
      if (objectType != null) 'objectType': [objectType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/dynamicTargetingKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DynamicTargetingKeysListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EventTagsResource {
  final commons.ApiRequester _requester;

  EventTagsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing event tag.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Event tag ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/eventTags/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one event tag by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Event tag ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTag> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/eventTags/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventTag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new event tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTag> insert(
    EventTag request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/eventTags';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of event tags, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [adId] - Select only event tags that belong to this ad.
  ///
  /// [advertiserId] - Select only event tags that belong to this advertiser.
  ///
  /// [campaignId] - Select only event tags that belong to this campaign.
  ///
  /// [definitionsOnly] - Examine only the specified campaign or advertiser's
  /// event tags for matching selector criteria. When set to false, the parent
  /// advertiser and parent campaign of the specified ad or campaign is examined
  /// as well. In addition, when set to false, the status field is examined as
  /// well, along with the enabledByDefault field. This parameter can not be set
  /// to true when adId is specified as ads do not define their own even tags.
  ///
  /// [enabled] - Select only enabled event tags. What is considered enabled or
  /// disabled depends on the definitionsOnly parameter. When definitionsOnly is
  /// set to true, only the specified advertiser or campaign's event tags'
  /// enabledByDefault field is examined. When definitionsOnly is set to false,
  /// the specified ad or specified campaign's parent advertiser's or parent
  /// campaign's event tags' enabledByDefault and status fields are examined as
  /// well.
  ///
  /// [eventTagTypes] - Select only event tags with the specified event tag
  /// types. Event tag types can be used to specify whether to use a third-party
  /// pixel, a third-party JavaScript URL, or a third-party click-through URL
  /// for either impression or click tracking.
  ///
  /// [ids] - Select only event tags with these IDs.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "eventtag*2015" will return objects with names
  /// like "eventtag June 2015", "eventtag April 2015", or simply "eventtag
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of "eventtag"
  /// will match objects with name "my eventtag", "eventtag 2015", or simply
  /// "eventtag".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTagsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTagsListResponse> list(
    core.String profileId, {
    core.String? adId,
    core.String? advertiserId,
    core.String? campaignId,
    core.bool? definitionsOnly,
    core.bool? enabled,
    core.List<core.String>? eventTagTypes,
    core.List<core.String>? ids,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (adId != null) 'adId': [adId],
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (campaignId != null) 'campaignId': [campaignId],
      if (definitionsOnly != null) 'definitionsOnly': ['${definitionsOnly}'],
      if (enabled != null) 'enabled': ['${enabled}'],
      if (eventTagTypes != null) 'eventTagTypes': eventTagTypes,
      if (ids != null) 'ids': ids,
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/eventTags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventTagsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing event tag.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - EventTag ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTag> patch(
    EventTag request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/eventTags';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing event tag.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTag> update(
    EventTag request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/eventTags';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTag.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FilesResource {
  final commons.ApiRequester _requester;

  FilesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report file by its report ID and file ID.
  ///
  /// This method supports media download.
  ///
  /// Request parameters:
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [fileId] - The ID of the report file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [File] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> get(
    core.String reportId,
    core.String fileId, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/reports/' +
        commons.escapeVariable('$reportId') +
        '/files/' +
        commons.escapeVariable('$fileId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Lists files for a user profile.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "10".
  ///
  /// [pageToken] - The value of the nextToken from the previous result page.
  ///
  /// [scope] - The scope that defines which results are returned.
  /// Possible string values are:
  /// - "ALL" : All files in account.
  /// - "MINE" : My files.
  /// - "SHARED_WITH_ME" : Files shared with me.
  ///
  /// [sortField] - The field by which to sort the list.
  /// Possible string values are:
  /// - "ID" : Sort by file ID.
  /// - "LAST_MODIFIED_TIME" : Sort by 'lastmodifiedAt' field.
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FileList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FileList> list(
    core.String profileId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? scope,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (scope != null) 'scope': [scope],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/files';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FileList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FloodlightActivitiesResource {
  final commons.ApiRequester _requester;

  FloodlightActivitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an existing floodlight activity.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Floodlight activity ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Generates a tag for a floodlight activity.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [floodlightActivityId] - Floodlight activity ID for which we want to
  /// generate a tag.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivitiesGenerateTagResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivitiesGenerateTagResponse> generatetag(
    core.String profileId, {
    core.String? floodlightActivityId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (floodlightActivityId != null)
        'floodlightActivityId': [floodlightActivityId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities/generatetag';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return FloodlightActivitiesGenerateTagResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets one floodlight activity by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Floodlight activity ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivity> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightActivity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new floodlight activity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivity> insert(
    FloodlightActivity request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightActivity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of floodlight activities, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Select only floodlight activities for the specified
  /// advertiser ID. Must specify either ids, advertiserId, or
  /// floodlightConfigurationId for a non-empty result.
  ///
  /// [floodlightActivityGroupIds] - Select only floodlight activities with the
  /// specified floodlight activity group IDs.
  ///
  /// [floodlightActivityGroupName] - Select only floodlight activities with the
  /// specified floodlight activity group name.
  ///
  /// [floodlightActivityGroupTagString] - Select only floodlight activities
  /// with the specified floodlight activity group tag string.
  ///
  /// [floodlightActivityGroupType] - Select only floodlight activities with the
  /// specified floodlight activity group type.
  /// Possible string values are:
  /// - "COUNTER"
  /// - "SALE"
  ///
  /// [floodlightConfigurationId] - Select only floodlight activities for the
  /// specified floodlight configuration ID. Must specify either ids,
  /// advertiserId, or floodlightConfigurationId for a non-empty result.
  ///
  /// [ids] - Select only floodlight activities with the specified IDs. Must
  /// specify either ids, advertiserId, or floodlightConfigurationId for a
  /// non-empty result.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "floodlightactivity*2015" will return objects
  /// with names like "floodlightactivity June 2015", "floodlightactivity April
  /// 2015", or simply "floodlightactivity 2015". Most of the searches also add
  /// wildcards implicitly at the start and the end of the search string. For
  /// example, a search string of "floodlightactivity" will match objects with
  /// name "my floodlightactivity activity", "floodlightactivity 2015", or
  /// simply "floodlightactivity".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [tagString] - Select only floodlight activities with the specified tag
  /// string.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivitiesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivitiesListResponse> list(
    core.String profileId, {
    core.String? advertiserId,
    core.List<core.String>? floodlightActivityGroupIds,
    core.String? floodlightActivityGroupName,
    core.String? floodlightActivityGroupTagString,
    core.String? floodlightActivityGroupType,
    core.String? floodlightConfigurationId,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? tagString,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (floodlightActivityGroupIds != null)
        'floodlightActivityGroupIds': floodlightActivityGroupIds,
      if (floodlightActivityGroupName != null)
        'floodlightActivityGroupName': [floodlightActivityGroupName],
      if (floodlightActivityGroupTagString != null)
        'floodlightActivityGroupTagString': [floodlightActivityGroupTagString],
      if (floodlightActivityGroupType != null)
        'floodlightActivityGroupType': [floodlightActivityGroupType],
      if (floodlightConfigurationId != null)
        'floodlightConfigurationId': [floodlightConfigurationId],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (tagString != null) 'tagString': [tagString],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightActivitiesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing floodlight activity.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - FloodlightActivity ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivity> patch(
    FloodlightActivity request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightActivity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing floodlight activity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivity> update(
    FloodlightActivity request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivities';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightActivity.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FloodlightActivityGroupsResource {
  final commons.ApiRequester _requester;

  FloodlightActivityGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one floodlight activity group by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Floodlight activity Group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivityGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivityGroup> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivityGroups/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightActivityGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new floodlight activity group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivityGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivityGroup> insert(
    FloodlightActivityGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivityGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightActivityGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of floodlight activity groups, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Select only floodlight activity groups with the specified
  /// advertiser ID. Must specify either advertiserId or
  /// floodlightConfigurationId for a non-empty result.
  ///
  /// [floodlightConfigurationId] - Select only floodlight activity groups with
  /// the specified floodlight configuration ID. Must specify either
  /// advertiserId, or floodlightConfigurationId for a non-empty result.
  ///
  /// [ids] - Select only floodlight activity groups with the specified IDs.
  /// Must specify either advertiserId or floodlightConfigurationId for a
  /// non-empty result.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "floodlightactivitygroup*2015" will return
  /// objects with names like "floodlightactivitygroup June 2015",
  /// "floodlightactivitygroup April 2015", or simply "floodlightactivitygroup
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of
  /// "floodlightactivitygroup" will match objects with name "my
  /// floodlightactivitygroup activity", "floodlightactivitygroup 2015", or
  /// simply "floodlightactivitygroup".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [type] - Select only floodlight activity groups with the specified
  /// floodlight activity group type.
  /// Possible string values are:
  /// - "COUNTER"
  /// - "SALE"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivityGroupsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivityGroupsListResponse> list(
    core.String profileId, {
    core.String? advertiserId,
    core.String? floodlightConfigurationId,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (floodlightConfigurationId != null)
        'floodlightConfigurationId': [floodlightConfigurationId],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivityGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightActivityGroupsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing floodlight activity group.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - FloodlightActivityGroup ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivityGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivityGroup> patch(
    FloodlightActivityGroup request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivityGroups';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightActivityGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing floodlight activity group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightActivityGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightActivityGroup> update(
    FloodlightActivityGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightActivityGroups';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightActivityGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FloodlightConfigurationsResource {
  final commons.ApiRequester _requester;

  FloodlightConfigurationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one floodlight configuration by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Floodlight configuration ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightConfiguration> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightConfigurations/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightConfiguration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of floodlight configurations, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [ids] - Set of IDs of floodlight configurations to retrieve. Required
  /// field; otherwise an empty list will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightConfigurationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightConfigurationsListResponse> list(
    core.String profileId, {
    core.List<core.String>? ids,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightConfigurations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FloodlightConfigurationsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing floodlight configuration.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - FloodlightConfiguration ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightConfiguration> patch(
    FloodlightConfiguration request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightConfigurations';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightConfiguration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing floodlight configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FloodlightConfiguration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FloodlightConfiguration> update(
    FloodlightConfiguration request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/floodlightConfigurations';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return FloodlightConfiguration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InventoryItemsResource {
  final commons.ApiRequester _requester;

  InventoryItemsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one inventory item by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [projectId] - Project ID for order documents.
  ///
  /// [id] - Inventory item ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventoryItem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventoryItem> get(
    core.String profileId,
    core.String projectId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$projectId') +
        '/inventoryItems/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InventoryItem.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of inventory items, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [projectId] - Project ID for order documents.
  ///
  /// [ids] - Select only inventory items with these IDs.
  ///
  /// [inPlan] - Select only inventory items that are in plan.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [orderId] - Select only inventory items that belong to specified orders.
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [siteId] - Select only inventory items that are associated with these
  /// sites.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [type] - Select only inventory items with this type.
  /// Possible string values are:
  /// - "PLANNING_PLACEMENT_TYPE_REGULAR"
  /// - "PLANNING_PLACEMENT_TYPE_CREDIT"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InventoryItemsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InventoryItemsListResponse> list(
    core.String profileId,
    core.String projectId, {
    core.List<core.String>? ids,
    core.bool? inPlan,
    core.int? maxResults,
    core.List<core.String>? orderId,
    core.String? pageToken,
    core.List<core.String>? siteId,
    core.String? sortField,
    core.String? sortOrder,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (inPlan != null) 'inPlan': ['${inPlan}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderId != null) 'orderId': orderId,
      if (pageToken != null) 'pageToken': [pageToken],
      if (siteId != null) 'siteId': siteId,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$projectId') +
        '/inventoryItems';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InventoryItemsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LanguagesResource {
  final commons.ApiRequester _requester;

  LanguagesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of languages.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LanguagesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LanguagesListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/languages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LanguagesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MetrosResource {
  final commons.ApiRequester _requester;

  MetrosResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of metros.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetrosListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetrosListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/metros';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MetrosListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MobileAppsResource {
  final commons.ApiRequester _requester;

  MobileAppsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one mobile app by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Mobile app ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MobileApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MobileApp> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/mobileApps/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MobileApp.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves list of available mobile apps.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [directories] - Select only apps from these directories.
  ///
  /// [ids] - Select only apps with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "app*2015" will return objects with names like
  /// "app Jan 2018", "app Jan 2018", or simply "app 2018". Most of the searches
  /// also add wildcards implicitly at the start and the end of the search
  /// string. For example, a search string of "app" will match objects with name
  /// "my app", "app 2018", or simply "app".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MobileAppsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MobileAppsListResponse> list(
    core.String profileId, {
    core.List<core.String>? directories,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (directories != null) 'directories': directories,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/mobileApps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MobileAppsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MobileCarriersResource {
  final commons.ApiRequester _requester;

  MobileCarriersResource(commons.ApiRequester client) : _requester = client;

  /// Gets one mobile carrier by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Mobile carrier ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MobileCarrier].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MobileCarrier> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/mobileCarriers/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MobileCarrier.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of mobile carriers.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MobileCarriersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MobileCarriersListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/mobileCarriers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return MobileCarriersListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperatingSystemVersionsResource {
  final commons.ApiRequester _requester;

  OperatingSystemVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one operating system version by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Operating system version ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperatingSystemVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperatingSystemVersion> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/operatingSystemVersions/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperatingSystemVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of operating system versions.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperatingSystemVersionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperatingSystemVersionsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/operatingSystemVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperatingSystemVersionsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperatingSystemsResource {
  final commons.ApiRequester _requester;

  OperatingSystemsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one operating system by DART ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [dartId] - Operating system DART ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperatingSystem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperatingSystem> get(
    core.String profileId,
    core.String dartId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/operatingSystems/' +
        commons.escapeVariable('$dartId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperatingSystem.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of operating systems.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperatingSystemsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperatingSystemsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/operatingSystems';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperatingSystemsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrderDocumentsResource {
  final commons.ApiRequester _requester;

  OrderDocumentsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one order document by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [projectId] - Project ID for order documents.
  ///
  /// [id] - Order document ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderDocument].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderDocument> get(
    core.String profileId,
    core.String projectId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$projectId') +
        '/orderDocuments/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrderDocument.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of order documents, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [projectId] - Project ID for order documents.
  ///
  /// [approved] - Select only order documents that have been approved by at
  /// least one user.
  ///
  /// [ids] - Select only order documents with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [orderId] - Select only order documents for specified orders.
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for order documents by name or ID.
  /// Wildcards (*) are allowed. For example, "orderdocument*2015" will return
  /// order documents with names like "orderdocument June 2015", "orderdocument
  /// April 2015", or simply "orderdocument 2015". Most of the searches also add
  /// wildcards implicitly at the start and the end of the search string. For
  /// example, a search string of "orderdocument" will match order documents
  /// with name "my orderdocument", "orderdocument 2015", or simply
  /// "orderdocument".
  ///
  /// [siteId] - Select only order documents that are associated with these
  /// sites.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrderDocumentsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrderDocumentsListResponse> list(
    core.String profileId,
    core.String projectId, {
    core.bool? approved,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.List<core.String>? orderId,
    core.String? pageToken,
    core.String? searchString,
    core.List<core.String>? siteId,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (approved != null) 'approved': ['${approved}'],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderId != null) 'orderId': orderId,
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (siteId != null) 'siteId': siteId,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$projectId') +
        '/orderDocuments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrderDocumentsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrdersResource {
  final commons.ApiRequester _requester;

  OrdersResource(commons.ApiRequester client) : _requester = client;

  /// Gets one order by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [projectId] - Project ID for orders.
  ///
  /// [id] - Order ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Order].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Order> get(
    core.String profileId,
    core.String projectId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$projectId') +
        '/orders/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Order.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of orders, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [projectId] - Project ID for orders.
  ///
  /// [ids] - Select only orders with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for orders by name or ID. Wildcards (*)
  /// are allowed. For example, "order*2015" will return orders with names like
  /// "order June 2015", "order April 2015", or simply "order 2015". Most of the
  /// searches also add wildcards implicitly at the start and the end of the
  /// search string. For example, a search string of "order" will match orders
  /// with name "my order", "order 2015", or simply "order".
  ///
  /// [siteId] - Select only orders that are associated with these site IDs.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrdersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrdersListResponse> list(
    core.String profileId,
    core.String projectId, {
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.List<core.String>? siteId,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (siteId != null) 'siteId': siteId,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$projectId') +
        '/orders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OrdersListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlacementGroupsResource {
  final commons.ApiRequester _requester;

  PlacementGroupsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one placement group by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Placement group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementGroup> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementGroups/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlacementGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new placement group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementGroup> insert(
    PlacementGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PlacementGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of placement groups, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserIds] - Select only placement groups that belong to these
  /// advertisers.
  ///
  /// [archived] - Select only archived placements. Don't set this field to
  /// select both archived and non-archived placements.
  ///
  /// [campaignIds] - Select only placement groups that belong to these
  /// campaigns.
  ///
  /// [contentCategoryIds] - Select only placement groups that are associated
  /// with these content categories.
  ///
  /// [directorySiteIds] - Select only placement groups that are associated with
  /// these directory sites.
  ///
  /// [ids] - Select only placement groups with these IDs.
  ///
  /// [maxEndDate] - Select only placements or placement groups whose end date
  /// is on or before the specified maxEndDate. The date should be formatted as
  /// "yyyy-MM-dd".
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "800".
  ///
  /// [maxStartDate] - Select only placements or placement groups whose start
  /// date is on or before the specified maxStartDate. The date should be
  /// formatted as "yyyy-MM-dd".
  ///
  /// [minEndDate] - Select only placements or placement groups whose end date
  /// is on or after the specified minEndDate. The date should be formatted as
  /// "yyyy-MM-dd".
  ///
  /// [minStartDate] - Select only placements or placement groups whose start
  /// date is on or after the specified minStartDate. The date should be
  /// formatted as "yyyy-MM-dd".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [placementGroupType] - Select only placement groups belonging with this
  /// group type. A package is a simple group of placements that acts as a
  /// single pricing point for a group of tags. A roadblock is a group of
  /// placements that not only acts as a single pricing point but also assumes
  /// that all the tags in it will be served at the same time. A roadblock
  /// requires one of its assigned placements to be marked as primary for
  /// reporting.
  /// Possible string values are:
  /// - "PLACEMENT_PACKAGE"
  /// - "PLACEMENT_ROADBLOCK"
  ///
  /// [placementStrategyIds] - Select only placement groups that are associated
  /// with these placement strategies.
  ///
  /// [pricingTypes] - Select only placement groups with these pricing types.
  ///
  /// [searchString] - Allows searching for placement groups by name or ID.
  /// Wildcards (*) are allowed. For example, "placement*2015" will return
  /// placement groups with names like "placement group June 2015", "placement
  /// group May 2015", or simply "placements 2015". Most of the searches also
  /// add wildcards implicitly at the start and the end of the search string.
  /// For example, a search string of "placementgroup" will match placement
  /// groups with name "my placementgroup", "placementgroup 2015", or simply
  /// "placementgroup".
  ///
  /// [siteIds] - Select only placement groups that are associated with these
  /// sites.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementGroupsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementGroupsListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserIds,
    core.bool? archived,
    core.List<core.String>? campaignIds,
    core.List<core.String>? contentCategoryIds,
    core.List<core.String>? directorySiteIds,
    core.List<core.String>? ids,
    core.String? maxEndDate,
    core.int? maxResults,
    core.String? maxStartDate,
    core.String? minEndDate,
    core.String? minStartDate,
    core.String? pageToken,
    core.String? placementGroupType,
    core.List<core.String>? placementStrategyIds,
    core.List<core.String>? pricingTypes,
    core.String? searchString,
    core.List<core.String>? siteIds,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (archived != null) 'archived': ['${archived}'],
      if (campaignIds != null) 'campaignIds': campaignIds,
      if (contentCategoryIds != null) 'contentCategoryIds': contentCategoryIds,
      if (directorySiteIds != null) 'directorySiteIds': directorySiteIds,
      if (ids != null) 'ids': ids,
      if (maxEndDate != null) 'maxEndDate': [maxEndDate],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (maxStartDate != null) 'maxStartDate': [maxStartDate],
      if (minEndDate != null) 'minEndDate': [minEndDate],
      if (minStartDate != null) 'minStartDate': [minStartDate],
      if (pageToken != null) 'pageToken': [pageToken],
      if (placementGroupType != null)
        'placementGroupType': [placementGroupType],
      if (placementStrategyIds != null)
        'placementStrategyIds': placementStrategyIds,
      if (pricingTypes != null) 'pricingTypes': pricingTypes,
      if (searchString != null) 'searchString': [searchString],
      if (siteIds != null) 'siteIds': siteIds,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlacementGroupsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing placement group.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - PlacementGroup ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementGroup> patch(
    PlacementGroup request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementGroups';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return PlacementGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing placement group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementGroup> update(
    PlacementGroup request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementGroups';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return PlacementGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlacementStrategiesResource {
  final commons.ApiRequester _requester;

  PlacementStrategiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an existing placement strategy.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Placement strategy ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementStrategies/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one placement strategy by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Placement strategy ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementStrategy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementStrategy> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementStrategies/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlacementStrategy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new placement strategy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementStrategy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementStrategy> insert(
    PlacementStrategy request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementStrategies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PlacementStrategy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of placement strategies, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [ids] - Select only placement strategies with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "placementstrategy*2015" will return objects
  /// with names like "placementstrategy June 2015", "placementstrategy April
  /// 2015", or simply "placementstrategy 2015". Most of the searches also add
  /// wildcards implicitly at the start and the end of the search string. For
  /// example, a search string of "placementstrategy" will match objects with
  /// name "my placementstrategy", "placementstrategy 2015", or simply
  /// "placementstrategy".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementStrategiesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementStrategiesListResponse> list(
    core.String profileId, {
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementStrategies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlacementStrategiesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing placement strategy.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - PlacementStrategy ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementStrategy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementStrategy> patch(
    PlacementStrategy request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementStrategies';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return PlacementStrategy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing placement strategy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementStrategy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementStrategy> update(
    PlacementStrategy request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placementStrategies';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return PlacementStrategy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlacementsResource {
  final commons.ApiRequester _requester;

  PlacementsResource(commons.ApiRequester client) : _requester = client;

  /// Generates tags for a placement.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [campaignId] - Generate placements belonging to this campaign. This is a
  /// required field.
  ///
  /// [placementIds] - Generate tags for these placements.
  ///
  /// [tagFormats] - Tag formats to generate for these placements. *Note:*
  /// PLACEMENT_TAG_STANDARD can only be generated for 1x1 placements.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementsGenerateTagsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementsGenerateTagsResponse> generatetags(
    core.String profileId, {
    core.String? campaignId,
    core.List<core.String>? placementIds,
    core.List<core.String>? tagFormats,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (campaignId != null) 'campaignId': [campaignId],
      if (placementIds != null) 'placementIds': placementIds,
      if (tagFormats != null) 'tagFormats': tagFormats,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placements/generatetags';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return PlacementsGenerateTagsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets one placement by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Placement ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Placement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Placement> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placements/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Placement.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new placement.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Placement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Placement> insert(
    Placement request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placements';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Placement.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of placements, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserIds] - Select only placements that belong to these advertisers.
  ///
  /// [archived] - Select only archived placements. Don't set this field to
  /// select both archived and non-archived placements.
  ///
  /// [campaignIds] - Select only placements that belong to these campaigns.
  ///
  /// [compatibilities] - Select only placements that are associated with these
  /// compatibilities. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering
  /// either on desktop or on mobile devices for regular or interstitial ads
  /// respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps.
  /// IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with
  /// the VAST standard.
  ///
  /// [contentCategoryIds] - Select only placements that are associated with
  /// these content categories.
  ///
  /// [directorySiteIds] - Select only placements that are associated with these
  /// directory sites.
  ///
  /// [groupIds] - Select only placements that belong to these placement groups.
  ///
  /// [ids] - Select only placements with these IDs.
  ///
  /// [maxEndDate] - Select only placements or placement groups whose end date
  /// is on or before the specified maxEndDate. The date should be formatted as
  /// "yyyy-MM-dd".
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [maxStartDate] - Select only placements or placement groups whose start
  /// date is on or before the specified maxStartDate. The date should be
  /// formatted as "yyyy-MM-dd".
  ///
  /// [minEndDate] - Select only placements or placement groups whose end date
  /// is on or after the specified minEndDate. The date should be formatted as
  /// "yyyy-MM-dd".
  ///
  /// [minStartDate] - Select only placements or placement groups whose start
  /// date is on or after the specified minStartDate. The date should be
  /// formatted as "yyyy-MM-dd".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [paymentSource] - Select only placements with this payment source.
  /// Possible string values are:
  /// - "PLACEMENT_AGENCY_PAID"
  /// - "PLACEMENT_PUBLISHER_PAID"
  ///
  /// [placementStrategyIds] - Select only placements that are associated with
  /// these placement strategies.
  ///
  /// [pricingTypes] - Select only placements with these pricing types.
  ///
  /// [searchString] - Allows searching for placements by name or ID. Wildcards
  /// (*) are allowed. For example, "placement*2015" will return placements with
  /// names like "placement June 2015", "placement May 2015", or simply
  /// "placements 2015". Most of the searches also add wildcards implicitly at
  /// the start and the end of the search string. For example, a search string
  /// of "placement" will match placements with name "my placement", "placement
  /// 2015", or simply "placement" .
  ///
  /// [siteIds] - Select only placements that are associated with these sites.
  ///
  /// [sizeIds] - Select only placements that are associated with these sizes.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlacementsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlacementsListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserIds,
    core.bool? archived,
    core.List<core.String>? campaignIds,
    core.List<core.String>? compatibilities,
    core.List<core.String>? contentCategoryIds,
    core.List<core.String>? directorySiteIds,
    core.List<core.String>? groupIds,
    core.List<core.String>? ids,
    core.String? maxEndDate,
    core.int? maxResults,
    core.String? maxStartDate,
    core.String? minEndDate,
    core.String? minStartDate,
    core.String? pageToken,
    core.String? paymentSource,
    core.List<core.String>? placementStrategyIds,
    core.List<core.String>? pricingTypes,
    core.String? searchString,
    core.List<core.String>? siteIds,
    core.List<core.String>? sizeIds,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (archived != null) 'archived': ['${archived}'],
      if (campaignIds != null) 'campaignIds': campaignIds,
      if (compatibilities != null) 'compatibilities': compatibilities,
      if (contentCategoryIds != null) 'contentCategoryIds': contentCategoryIds,
      if (directorySiteIds != null) 'directorySiteIds': directorySiteIds,
      if (groupIds != null) 'groupIds': groupIds,
      if (ids != null) 'ids': ids,
      if (maxEndDate != null) 'maxEndDate': [maxEndDate],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (maxStartDate != null) 'maxStartDate': [maxStartDate],
      if (minEndDate != null) 'minEndDate': [minEndDate],
      if (minStartDate != null) 'minStartDate': [minStartDate],
      if (pageToken != null) 'pageToken': [pageToken],
      if (paymentSource != null) 'paymentSource': [paymentSource],
      if (placementStrategyIds != null)
        'placementStrategyIds': placementStrategyIds,
      if (pricingTypes != null) 'pricingTypes': pricingTypes,
      if (searchString != null) 'searchString': [searchString],
      if (siteIds != null) 'siteIds': siteIds,
      if (sizeIds != null) 'sizeIds': sizeIds,
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlacementsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing placement.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Placement ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Placement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Placement> patch(
    Placement request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placements';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Placement.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing placement.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Placement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Placement> update(
    Placement request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/placements';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Placement.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlatformTypesResource {
  final commons.ApiRequester _requester;

  PlatformTypesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one platform type by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Platform type ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformType> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/platformTypes/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlatformType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of platform types.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformTypesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformTypesListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/platformTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlatformTypesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PostalCodesResource {
  final commons.ApiRequester _requester;

  PostalCodesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one postal code by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [code] - Postal code ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostalCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostalCode> get(
    core.String profileId,
    core.String code, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/postalCodes/' +
        commons.escapeVariable('$code');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostalCode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of postal codes.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PostalCodesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PostalCodesListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/postalCodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PostalCodesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one project by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Project ID.
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
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Project.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of projects, possibly filtered.
  ///
  /// This method supports paging .
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserIds] - Select only projects with these advertiser IDs.
  ///
  /// [ids] - Select only projects with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for projects by name or ID. Wildcards
  /// (*) are allowed. For example, "project*2015" will return projects with
  /// names like "project June 2015", "project April 2015", or simply "project
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of "project"
  /// will match projects with name "my project", "project 2015", or simply
  /// "project".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectsListResponse> list(
    core.String profileId, {
    core.List<core.String>? advertiserIds,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserIds != null) 'advertiserIds': advertiserIds,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/projects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProjectsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RegionsResource {
  final commons.ApiRequester _requester;

  RegionsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of regions.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RegionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RegionsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/regions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RegionsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RemarketingListSharesResource {
  final commons.ApiRequester _requester;

  RemarketingListSharesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one remarketing list share by remarketing list ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [remarketingListId] - Remarketing list ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingListShare].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingListShare> get(
    core.String profileId,
    core.String remarketingListId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingListShares/' +
        commons.escapeVariable('$remarketingListId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RemarketingListShare.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing remarketing list share.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - RemarketingList ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingListShare].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingListShare> patch(
    RemarketingListShare request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingListShares';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return RemarketingListShare.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing remarketing list share.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingListShare].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingListShare> update(
    RemarketingListShare request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingListShares';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return RemarketingListShare.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RemarketingListsResource {
  final commons.ApiRequester _requester;

  RemarketingListsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one remarketing list by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Remarketing list ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingList> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingLists/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RemarketingList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new remarketing list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingList> insert(
    RemarketingList request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RemarketingList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of remarketing lists, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Select only remarketing lists owned by this advertiser.
  ///
  /// [active] - Select only active or only inactive remarketing lists.
  ///
  /// [floodlightActivityId] - Select only remarketing lists that have this
  /// floodlight activity ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [name] - Allows searching for objects by name or ID. Wildcards (*) are
  /// allowed. For example, "remarketing list*2015" will return objects with
  /// names like "remarketing list June 2015", "remarketing list April 2015", or
  /// simply "remarketing list 2015". Most of the searches also add wildcards
  /// implicitly at the start and the end of the search string. For example, a
  /// search string of "remarketing list" will match objects with name "my
  /// remarketing list", "remarketing list 2015", or simply "remarketing list".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingListsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingListsListResponse> list(
    core.String profileId,
    core.String advertiserId, {
    core.bool? active,
    core.String? floodlightActivityId,
    core.int? maxResults,
    core.String? name,
    core.String? pageToken,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'advertiserId': [advertiserId],
      if (active != null) 'active': ['${active}'],
      if (floodlightActivityId != null)
        'floodlightActivityId': [floodlightActivityId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RemarketingListsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing remarketing list.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - RemarketingList ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingList> patch(
    RemarketingList request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingLists';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return RemarketingList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing remarketing list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingList> update(
    RemarketingList request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/remarketingLists';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return RemarketingList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

  ReportsCompatibleFieldsResource get compatibleFields =>
      ReportsCompatibleFieldsResource(_requester);
  ReportsFilesResource get files => ReportsFilesResource(_requester);

  ReportsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a report by its ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String reportId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Retrieves a report by its ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> get(
    core.String profileId,
    core.String reportId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> insert(
    Report request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves list of reports.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "10".
  ///
  /// [pageToken] - The value of the nextToken from the previous result page.
  ///
  /// [scope] - The scope that defines which results are returned.
  /// Possible string values are:
  /// - "ALL" : All reports in account.
  /// - "MINE" : My reports.
  ///
  /// [sortField] - The field by which to sort the list.
  /// Possible string values are:
  /// - "ID" : Sort by report ID.
  /// - "LAST_MODIFIED_TIME" : Sort by 'lastModifiedTime' field.
  /// - "NAME" : Sort by name of reports.
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING" : Ascending order.
  /// - "DESCENDING" : Descending order.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportList> list(
    core.String profileId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? scope,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (scope != null) 'scope': [scope],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReportList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing report.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The DFA user profile ID.
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> patch(
    Report request,
    core.String profileId,
    core.String reportId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs a report.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [synchronous] - If set and true, tries to run the report synchronously.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [File].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<File> run(
    core.String profileId,
    core.String reportId, {
    core.bool? synchronous,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (synchronous != null) 'synchronous': ['${synchronous}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId') +
        '/run';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> update(
    Report request,
    core.String profileId,
    core.String reportId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ReportsCompatibleFieldsResource {
  final commons.ApiRequester _requester;

  ReportsCompatibleFieldsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the fields that are compatible to be selected in the respective
  /// sections of a report criteria, given the fields already selected in the
  /// input report and user permissions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CompatibleFields].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompatibleFields> query(
    Report request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/compatiblefields/query';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CompatibleFields.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ReportsFilesResource {
  final commons.ApiRequester _requester;

  ReportsFilesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report file by its report ID and file ID.
  ///
  /// This method supports media download.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [reportId] - The ID of the report.
  ///
  /// [fileId] - The ID of the report file.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [File] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> get(
    core.String profileId,
    core.String reportId,
    core.String fileId, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId') +
        '/files/' +
        commons.escapeVariable('$fileId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return File.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Lists files for a report.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The Campaign Manager 360 user profile ID.
  ///
  /// [reportId] - The ID of the parent report.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "10".
  ///
  /// [pageToken] - The value of the nextToken from the previous result page.
  ///
  /// [sortField] - The field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "LAST_MODIFIED_TIME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FileList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FileList> list(
    core.String profileId,
    core.String reportId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/reports/' +
        commons.escapeVariable('$reportId') +
        '/files';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FileList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SitesResource {
  final commons.ApiRequester _requester;

  SitesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one site by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Site ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sites/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> insert(
    Site request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of sites, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [acceptsInStreamVideoPlacements] - This search filter is no longer
  /// supported and will have no effect on the results returned.
  ///
  /// [acceptsInterstitialPlacements] - This search filter is no longer
  /// supported and will have no effect on the results returned.
  ///
  /// [acceptsPublisherPaidPlacements] - Select only sites that accept publisher
  /// paid placements.
  ///
  /// [adWordsSite] - Select only AdWords sites.
  ///
  /// [approved] - Select only approved sites.
  ///
  /// [campaignIds] - Select only sites with these campaign IDs.
  ///
  /// [directorySiteIds] - Select only sites with these directory site IDs.
  ///
  /// [ids] - Select only sites with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name, ID or keyName.
  /// Wildcards (*) are allowed. For example, "site*2015" will return objects
  /// with names like "site June 2015", "site April 2015", or simply "site
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of "site" will
  /// match objects with name "my site", "site 2015", or simply "site".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [subaccountId] - Select only sites with this subaccount ID.
  ///
  /// [unmappedSite] - Select only sites that have not been mapped to a
  /// directory site.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SitesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SitesListResponse> list(
    core.String profileId, {
    core.bool? acceptsInStreamVideoPlacements,
    core.bool? acceptsInterstitialPlacements,
    core.bool? acceptsPublisherPaidPlacements,
    core.bool? adWordsSite,
    core.bool? approved,
    core.List<core.String>? campaignIds,
    core.List<core.String>? directorySiteIds,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? subaccountId,
    core.bool? unmappedSite,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (acceptsInStreamVideoPlacements != null)
        'acceptsInStreamVideoPlacements': ['${acceptsInStreamVideoPlacements}'],
      if (acceptsInterstitialPlacements != null)
        'acceptsInterstitialPlacements': ['${acceptsInterstitialPlacements}'],
      if (acceptsPublisherPaidPlacements != null)
        'acceptsPublisherPaidPlacements': ['${acceptsPublisherPaidPlacements}'],
      if (adWordsSite != null) 'adWordsSite': ['${adWordsSite}'],
      if (approved != null) 'approved': ['${approved}'],
      if (campaignIds != null) 'campaignIds': campaignIds,
      if (directorySiteIds != null) 'directorySiteIds': directorySiteIds,
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (subaccountId != null) 'subaccountId': [subaccountId],
      if (unmappedSite != null) 'unmappedSite': ['${unmappedSite}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SitesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing site.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Site ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> patch(
    Site request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> update(
    Site request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sites';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class SizesResource {
  final commons.ApiRequester _requester;

  SizesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one size by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Size ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Size].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Size> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sizes/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Size.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new size.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Size].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Size> insert(
    Size request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sizes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Size.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of sizes, possibly filtered.
  ///
  /// Retrieved sizes are globally unique and may include values not currently
  /// in use by your account. Due to this, the list of sizes returned by this
  /// method may differ from the list seen in the Trafficking UI.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [height] - Select only sizes with this height.
  /// Value must be between "0" and "32767".
  ///
  /// [iabStandard] - Select only IAB standard sizes.
  ///
  /// [ids] - Select only sizes with these IDs.
  ///
  /// [width] - Select only sizes with this width.
  /// Value must be between "0" and "32767".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SizesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SizesListResponse> list(
    core.String profileId, {
    core.int? height,
    core.bool? iabStandard,
    core.List<core.String>? ids,
    core.int? width,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (height != null) 'height': ['${height}'],
      if (iabStandard != null) 'iabStandard': ['${iabStandard}'],
      if (ids != null) 'ids': ids,
      if (width != null) 'width': ['${width}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/sizes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SizesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SubaccountsResource {
  final commons.ApiRequester _requester;

  SubaccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one subaccount by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Subaccount ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subaccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subaccount> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/subaccounts/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subaccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new subaccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subaccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subaccount> insert(
    Subaccount request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/subaccounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subaccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of subaccounts, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [ids] - Select only subaccounts with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "subaccount*2015" will return objects with names
  /// like "subaccount June 2015", "subaccount April 2015", or simply
  /// "subaccount 2015". Most of the searches also add wildcards implicitly at
  /// the start and the end of the search string. For example, a search string
  /// of "subaccount" will match objects with name "my subaccount", "subaccount
  /// 2015", or simply "subaccount" .
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubaccountsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubaccountsListResponse> list(
    core.String profileId, {
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/subaccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SubaccountsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing subaccount.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Subaccount ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subaccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subaccount> patch(
    Subaccount request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/subaccounts';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Subaccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing subaccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subaccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subaccount> update(
    Subaccount request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/subaccounts';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Subaccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TargetableRemarketingListsResource {
  final commons.ApiRequester _requester;

  TargetableRemarketingListsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one remarketing list by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Remarketing list ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetableRemarketingList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetableRemarketingList> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetableRemarketingLists/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TargetableRemarketingList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of targetable remarketing lists, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Select only targetable remarketing lists targetable by
  /// these advertisers.
  ///
  /// [active] - Select only active or only inactive targetable remarketing
  /// lists.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [name] - Allows searching for objects by name or ID. Wildcards (*) are
  /// allowed. For example, "remarketing list*2015" will return objects with
  /// names like "remarketing list June 2015", "remarketing list April 2015", or
  /// simply "remarketing list 2015". Most of the searches also add wildcards
  /// implicitly at the start and the end of the search string. For example, a
  /// search string of "remarketing list" will match objects with name "my
  /// remarketing list", "remarketing list 2015", or simply "remarketing list".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetableRemarketingListsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetableRemarketingListsListResponse> list(
    core.String profileId,
    core.String advertiserId, {
    core.bool? active,
    core.int? maxResults,
    core.String? name,
    core.String? pageToken,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'advertiserId': [advertiserId],
      if (active != null) 'active': ['${active}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (name != null) 'name': [name],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetableRemarketingLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TargetableRemarketingListsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TargetingTemplatesResource {
  final commons.ApiRequester _requester;

  TargetingTemplatesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one targeting template by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Targeting template ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetingTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetingTemplate> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetingTemplates/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TargetingTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new targeting template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetingTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetingTemplate> insert(
    TargetingTemplate request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetingTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TargetingTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of targeting templates, optionally filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [advertiserId] - Select only targeting templates with this advertiser ID.
  ///
  /// [ids] - Select only targeting templates with these IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "template*2015" will return objects with names
  /// like "template June 2015", "template April 2015", or simply "template
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of "template"
  /// will match objects with name "my template", "template 2015", or simply
  /// "template".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetingTemplatesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetingTemplatesListResponse> list(
    core.String profileId, {
    core.String? advertiserId,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (advertiserId != null) 'advertiserId': [advertiserId],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetingTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TargetingTemplatesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing targeting template.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - TargetingTemplate ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetingTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetingTemplate> patch(
    TargetingTemplate request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetingTemplates';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return TargetingTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing targeting template.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TargetingTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TargetingTemplate> update(
    TargetingTemplate request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/targetingTemplates';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return TargetingTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserProfilesResource {
  final commons.ApiRequester _requester;

  UserProfilesResource(commons.ApiRequester client) : _requester = client;

  /// Gets one user profile by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - The user profile ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserProfile> get(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves list of user profiles for a user.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserProfileList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserProfileList> list({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'dfareporting/v3.5/userprofiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserProfileList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserRolePermissionGroupsResource {
  final commons.ApiRequester _requester;

  UserRolePermissionGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one user role permission group by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - User role permission group ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRolePermissionGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRolePermissionGroup> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRolePermissionGroups/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserRolePermissionGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of all supported user role permission groups.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRolePermissionGroupsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRolePermissionGroupsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRolePermissionGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserRolePermissionGroupsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserRolePermissionsResource {
  final commons.ApiRequester _requester;

  UserRolePermissionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets one user role permission by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - User role permission ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRolePermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRolePermission> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRolePermissions/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserRolePermission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of user role permissions, possibly filtered.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [ids] - Select only user role permissions with these IDs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRolePermissionsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRolePermissionsListResponse> list(
    core.String profileId, {
    core.List<core.String>? ids,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (ids != null) 'ids': ids,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRolePermissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserRolePermissionsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserRolesResource {
  final commons.ApiRequester _requester;

  UserRolesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an existing user role.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - User role ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRoles/' +
        commons.escapeVariable('$id');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Gets one user role by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - User role ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRole].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRole> get(
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRoles/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserRole.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a new user role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRole].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRole> insert(
    UserRole request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRoles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserRole.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a list of user roles, possibly filtered.
  ///
  /// This method supports paging.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [accountUserRoleOnly] - Select only account level user roles not
  /// associated with any specific subaccount.
  ///
  /// [ids] - Select only user roles with the specified IDs.
  ///
  /// [maxResults] - Maximum number of results to return.
  /// Value must be between "0" and "1000".
  ///
  /// [pageToken] - Value of the nextPageToken from the previous result page.
  ///
  /// [searchString] - Allows searching for objects by name or ID. Wildcards (*)
  /// are allowed. For example, "userrole*2015" will return objects with names
  /// like "userrole June 2015", "userrole April 2015", or simply "userrole
  /// 2015". Most of the searches also add wildcards implicitly at the start and
  /// the end of the search string. For example, a search string of "userrole"
  /// will match objects with name "my userrole", "userrole 2015", or simply
  /// "userrole".
  ///
  /// [sortField] - Field by which to sort the list.
  /// Possible string values are:
  /// - "ID"
  /// - "NAME"
  ///
  /// [sortOrder] - Order of sorted results.
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  ///
  /// [subaccountId] - Select only user roles that belong to this subaccount.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRolesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRolesListResponse> list(
    core.String profileId, {
    core.bool? accountUserRoleOnly,
    core.List<core.String>? ids,
    core.int? maxResults,
    core.String? pageToken,
    core.String? searchString,
    core.String? sortField,
    core.String? sortOrder,
    core.String? subaccountId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (accountUserRoleOnly != null)
        'accountUserRoleOnly': ['${accountUserRoleOnly}'],
      if (ids != null) 'ids': ids,
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (searchString != null) 'searchString': [searchString],
      if (sortField != null) 'sortField': [sortField],
      if (sortOrder != null) 'sortOrder': [sortOrder],
      if (subaccountId != null) 'subaccountId': [subaccountId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRoles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserRolesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing user role.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - UserRole ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRole].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRole> patch(
    UserRole request,
    core.String profileId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'id': [id],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRoles';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UserRole.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing user role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserRole].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserRole> update(
    UserRole request,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/userRoles';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return UserRole.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class VideoFormatsResource {
  final commons.ApiRequester _requester;

  VideoFormatsResource(commons.ApiRequester client) : _requester = client;

  /// Gets one video format by ID.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [id] - Video format ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoFormat].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoFormat> get(
    core.String profileId,
    core.int id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/videoFormats/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VideoFormat.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists available video formats.
  ///
  /// Request parameters:
  ///
  /// [profileId] - User profile ID associated with this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VideoFormatsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VideoFormatsListResponse> list(
    core.String profileId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'dfareporting/v3.5/userprofiles/' +
        commons.escapeVariable('$profileId') +
        '/videoFormats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return VideoFormatsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Contains properties of a Campaign Manager account.
class Account {
  /// Account permissions assigned to this account.
  core.List<core.String>? accountPermissionIds;

  /// Profile for this account.
  ///
  /// This is a read-only field that can be left blank.
  /// Possible string values are:
  /// - "ACCOUNT_PROFILE_BASIC"
  /// - "ACCOUNT_PROFILE_STANDARD"
  core.String? accountProfile;

  /// Whether this account is active.
  core.bool? active;

  /// Maximum number of active ads allowed for this account.
  /// Possible string values are:
  /// - "ACTIVE_ADS_TIER_40K"
  /// - "ACTIVE_ADS_TIER_75K"
  /// - "ACTIVE_ADS_TIER_100K"
  /// - "ACTIVE_ADS_TIER_200K"
  /// - "ACTIVE_ADS_TIER_300K"
  /// - "ACTIVE_ADS_TIER_500K"
  /// - "ACTIVE_ADS_TIER_750K"
  /// - "ACTIVE_ADS_TIER_1M"
  core.String? activeAdsLimitTier;

  /// Whether to serve creatives with Active View tags.
  ///
  /// If disabled, viewability data will not be available for any impressions.
  core.bool? activeViewOptOut;

  /// User role permissions available to the user roles of this account.
  core.List<core.String>? availablePermissionIds;

  /// ID of the country associated with this account.
  core.String? countryId;

  /// ID of currency associated with this account.
  ///
  /// This is a required field. Acceptable values are: - "1" for USD - "2" for
  /// GBP - "3" for ESP - "4" for SEK - "5" for CAD - "6" for JPY - "7" for DEM
  /// - "8" for AUD - "9" for FRF - "10" for ITL - "11" for DKK - "12" for NOK -
  /// "13" for FIM - "14" for ZAR - "15" for IEP - "16" for NLG - "17" for EUR -
  /// "18" for KRW - "19" for TWD - "20" for SGD - "21" for CNY - "22" for HKD -
  /// "23" for NZD - "24" for MYR - "25" for BRL - "26" for PTE - "28" for CLP -
  /// "29" for TRY - "30" for ARS - "31" for PEN - "32" for ILS - "33" for CHF -
  /// "34" for VEF - "35" for COP - "36" for GTQ - "37" for PLN - "39" for INR -
  /// "40" for THB - "41" for IDR - "42" for CZK - "43" for RON - "44" for HUF -
  /// "45" for RUB - "46" for AED - "47" for BGN - "48" for HRK - "49" for MXN -
  /// "50" for NGN - "51" for EGP
  core.String? currencyId;

  /// Default placement dimensions for this account.
  core.String? defaultCreativeSizeId;

  /// Description of this account.
  core.String? description;

  /// ID of this account.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#account".
  core.String? kind;

  /// Locale of this account.
  ///
  /// Acceptable values are: - "cs" (Czech) - "de" (German) - "en" (English) -
  /// "en-GB" (English United Kingdom) - "es" (Spanish) - "fr" (French) - "it"
  /// (Italian) - "ja" (Japanese) - "ko" (Korean) - "pl" (Polish) - "pt-BR"
  /// (Portuguese Brazil) - "ru" (Russian) - "sv" (Swedish) - "tr" (Turkish) -
  /// "zh-CN" (Chinese Simplified) - "zh-TW" (Chinese Traditional)
  core.String? locale;

  /// Maximum image size allowed for this account, in kilobytes.
  ///
  /// Value must be greater than or equal to 1.
  core.String? maximumImageSize;

  /// Name of this account.
  ///
  /// This is a required field, and must be less than 128 characters long and be
  /// globally unique.
  core.String? name;

  /// Whether campaigns created in this account will be enabled for Nielsen OCR
  /// reach ratings by default.
  core.bool? nielsenOcrEnabled;

  /// Reporting configuration of this account.
  ReportsConfiguration? reportsConfiguration;

  /// Share Path to Conversion reports with Twitter.
  core.bool? shareReportsWithTwitter;

  /// File size limit in kilobytes of Rich Media teaser creatives.
  ///
  /// Acceptable values are 1 to 10240, inclusive.
  core.String? teaserSizeLimit;

  Account({
    this.accountPermissionIds,
    this.accountProfile,
    this.active,
    this.activeAdsLimitTier,
    this.activeViewOptOut,
    this.availablePermissionIds,
    this.countryId,
    this.currencyId,
    this.defaultCreativeSizeId,
    this.description,
    this.id,
    this.kind,
    this.locale,
    this.maximumImageSize,
    this.name,
    this.nielsenOcrEnabled,
    this.reportsConfiguration,
    this.shareReportsWithTwitter,
    this.teaserSizeLimit,
  });

  Account.fromJson(core.Map json_)
      : this(
          accountPermissionIds: json_.containsKey('accountPermissionIds')
              ? (json_['accountPermissionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          accountProfile: json_.containsKey('accountProfile')
              ? json_['accountProfile'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          activeAdsLimitTier: json_.containsKey('activeAdsLimitTier')
              ? json_['activeAdsLimitTier'] as core.String
              : null,
          activeViewOptOut: json_.containsKey('activeViewOptOut')
              ? json_['activeViewOptOut'] as core.bool
              : null,
          availablePermissionIds: json_.containsKey('availablePermissionIds')
              ? (json_['availablePermissionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          countryId: json_.containsKey('countryId')
              ? json_['countryId'] as core.String
              : null,
          currencyId: json_.containsKey('currencyId')
              ? json_['currencyId'] as core.String
              : null,
          defaultCreativeSizeId: json_.containsKey('defaultCreativeSizeId')
              ? json_['defaultCreativeSizeId'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          maximumImageSize: json_.containsKey('maximumImageSize')
              ? json_['maximumImageSize'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nielsenOcrEnabled: json_.containsKey('nielsenOcrEnabled')
              ? json_['nielsenOcrEnabled'] as core.bool
              : null,
          reportsConfiguration: json_.containsKey('reportsConfiguration')
              ? ReportsConfiguration.fromJson(json_['reportsConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shareReportsWithTwitter: json_.containsKey('shareReportsWithTwitter')
              ? json_['shareReportsWithTwitter'] as core.bool
              : null,
          teaserSizeLimit: json_.containsKey('teaserSizeLimit')
              ? json_['teaserSizeLimit'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountPermissionIds != null)
          'accountPermissionIds': accountPermissionIds!,
        if (accountProfile != null) 'accountProfile': accountProfile!,
        if (active != null) 'active': active!,
        if (activeAdsLimitTier != null)
          'activeAdsLimitTier': activeAdsLimitTier!,
        if (activeViewOptOut != null) 'activeViewOptOut': activeViewOptOut!,
        if (availablePermissionIds != null)
          'availablePermissionIds': availablePermissionIds!,
        if (countryId != null) 'countryId': countryId!,
        if (currencyId != null) 'currencyId': currencyId!,
        if (defaultCreativeSizeId != null)
          'defaultCreativeSizeId': defaultCreativeSizeId!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (locale != null) 'locale': locale!,
        if (maximumImageSize != null) 'maximumImageSize': maximumImageSize!,
        if (name != null) 'name': name!,
        if (nielsenOcrEnabled != null) 'nielsenOcrEnabled': nielsenOcrEnabled!,
        if (reportsConfiguration != null)
          'reportsConfiguration': reportsConfiguration!,
        if (shareReportsWithTwitter != null)
          'shareReportsWithTwitter': shareReportsWithTwitter!,
        if (teaserSizeLimit != null) 'teaserSizeLimit': teaserSizeLimit!,
      };
}

/// Gets a summary of active ads in an account.
typedef AccountActiveAdSummary = $AccountActiveAdSummary;

/// AccountPermissions contains information about a particular account
/// permission.
///
/// Some features of Campaign Manager require an account permission to be
/// present in the account.
typedef AccountPermission = $AccountPermission;

/// AccountPermissionGroups contains a mapping of permission group IDs to names.
///
/// A permission group is a grouping of account permissions.
typedef AccountPermissionGroup = $AccountPermissionGroup;

/// Account Permission Group List Response
class AccountPermissionGroupsListResponse {
  /// Account permission group collection.
  core.List<AccountPermissionGroup>? accountPermissionGroups;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#accountPermissionGroupsListResponse".
  core.String? kind;

  AccountPermissionGroupsListResponse({
    this.accountPermissionGroups,
    this.kind,
  });

  AccountPermissionGroupsListResponse.fromJson(core.Map json_)
      : this(
          accountPermissionGroups: json_.containsKey('accountPermissionGroups')
              ? (json_['accountPermissionGroups'] as core.List)
                  .map((value) => AccountPermissionGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountPermissionGroups != null)
          'accountPermissionGroups': accountPermissionGroups!,
        if (kind != null) 'kind': kind!,
      };
}

/// Account Permission List Response
class AccountPermissionsListResponse {
  /// Account permission collection.
  core.List<AccountPermission>? accountPermissions;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountPermissionsListResponse".
  core.String? kind;

  AccountPermissionsListResponse({
    this.accountPermissions,
    this.kind,
  });

  AccountPermissionsListResponse.fromJson(core.Map json_)
      : this(
          accountPermissions: json_.containsKey('accountPermissions')
              ? (json_['accountPermissions'] as core.List)
                  .map((value) => AccountPermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountPermissions != null)
          'accountPermissions': accountPermissions!,
        if (kind != null) 'kind': kind!,
      };
}

/// AccountUserProfiles contains properties of a Campaign Manager user profile.
///
/// This resource is specifically for managing user profiles, whereas
/// UserProfiles is for accessing the API.
class AccountUserProfile {
  /// Account ID of the user profile.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Whether this user profile is active.
  ///
  /// This defaults to false, and must be set true on insert for the user
  /// profile to be usable.
  core.bool? active;

  /// Filter that describes which advertisers are visible to the user profile.
  ObjectFilter? advertiserFilter;

  /// Filter that describes which campaigns are visible to the user profile.
  ObjectFilter? campaignFilter;

  /// Comments for this user profile.
  core.String? comments;

  /// Email of the user profile.
  ///
  /// The email addresss must be linked to a Google Account. This field is
  /// required on insertion and is read-only after insertion.
  core.String? email;

  /// ID of the user profile.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountUserProfile".
  core.String? kind;

  /// Locale of the user profile.
  ///
  /// This is a required field. Acceptable values are: - "cs" (Czech) - "de"
  /// (German) - "en" (English) - "en-GB" (English United Kingdom) - "es"
  /// (Spanish) - "fr" (French) - "it" (Italian) - "ja" (Japanese) - "ko"
  /// (Korean) - "pl" (Polish) - "pt-BR" (Portuguese Brazil) - "ru" (Russian) -
  /// "sv" (Swedish) - "tr" (Turkish) - "zh-CN" (Chinese Simplified) - "zh-TW"
  /// (Chinese Traditional)
  core.String? locale;

  /// Name of the user profile.
  ///
  /// This is a required field. Must be less than 64 characters long, must be
  /// globally unique, and cannot contain whitespace or any of the following
  /// characters: "&;\<\>"#%,".
  core.String? name;

  /// Filter that describes which sites are visible to the user profile.
  ObjectFilter? siteFilter;

  /// Subaccount ID of the user profile.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Trafficker type of this user profile.
  ///
  /// This is a read-only field.
  /// Possible string values are:
  /// - "INTERNAL_NON_TRAFFICKER"
  /// - "INTERNAL_TRAFFICKER"
  /// - "EXTERNAL_TRAFFICKER"
  core.String? traffickerType;

  /// User type of the user profile.
  ///
  /// This is a read-only field that can be left blank.
  /// Possible string values are:
  /// - "NORMAL_USER"
  /// - "SUPER_USER"
  /// - "INTERNAL_ADMINISTRATOR"
  /// - "READ_ONLY_SUPER_USER"
  core.String? userAccessType;

  /// Filter that describes which user roles are visible to the user profile.
  ObjectFilter? userRoleFilter;

  /// User role ID of the user profile.
  ///
  /// This is a required field.
  core.String? userRoleId;

  AccountUserProfile({
    this.accountId,
    this.active,
    this.advertiserFilter,
    this.campaignFilter,
    this.comments,
    this.email,
    this.id,
    this.kind,
    this.locale,
    this.name,
    this.siteFilter,
    this.subaccountId,
    this.traffickerType,
    this.userAccessType,
    this.userRoleFilter,
    this.userRoleId,
  });

  AccountUserProfile.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          advertiserFilter: json_.containsKey('advertiserFilter')
              ? ObjectFilter.fromJson(json_['advertiserFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          campaignFilter: json_.containsKey('campaignFilter')
              ? ObjectFilter.fromJson(json_['campaignFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          comments: json_.containsKey('comments')
              ? json_['comments'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          siteFilter: json_.containsKey('siteFilter')
              ? ObjectFilter.fromJson(
                  json_['siteFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          traffickerType: json_.containsKey('traffickerType')
              ? json_['traffickerType'] as core.String
              : null,
          userAccessType: json_.containsKey('userAccessType')
              ? json_['userAccessType'] as core.String
              : null,
          userRoleFilter: json_.containsKey('userRoleFilter')
              ? ObjectFilter.fromJson(json_['userRoleFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userRoleId: json_.containsKey('userRoleId')
              ? json_['userRoleId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (advertiserFilter != null) 'advertiserFilter': advertiserFilter!,
        if (campaignFilter != null) 'campaignFilter': campaignFilter!,
        if (comments != null) 'comments': comments!,
        if (email != null) 'email': email!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (locale != null) 'locale': locale!,
        if (name != null) 'name': name!,
        if (siteFilter != null) 'siteFilter': siteFilter!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (traffickerType != null) 'traffickerType': traffickerType!,
        if (userAccessType != null) 'userAccessType': userAccessType!,
        if (userRoleFilter != null) 'userRoleFilter': userRoleFilter!,
        if (userRoleId != null) 'userRoleId': userRoleId!,
      };
}

/// Account User Profile List Response
class AccountUserProfilesListResponse {
  /// Account user profile collection.
  core.List<AccountUserProfile>? accountUserProfiles;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountUserProfilesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  AccountUserProfilesListResponse({
    this.accountUserProfiles,
    this.kind,
    this.nextPageToken,
  });

  AccountUserProfilesListResponse.fromJson(core.Map json_)
      : this(
          accountUserProfiles: json_.containsKey('accountUserProfiles')
              ? (json_['accountUserProfiles'] as core.List)
                  .map((value) => AccountUserProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountUserProfiles != null)
          'accountUserProfiles': accountUserProfiles!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Account List Response
class AccountsListResponse {
  /// Account collection.
  core.List<Account>? accounts;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#accountsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  AccountsListResponse({
    this.accounts,
    this.kind,
    this.nextPageToken,
  });

  AccountsListResponse.fromJson(core.Map json_)
      : this(
          accounts: json_.containsKey('accounts')
              ? (json_['accounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents an activity group.
class Activities {
  /// List of activity filters.
  ///
  /// The dimension values need to be all either of type "dfa:activity" or
  /// "dfa:activityGroup".
  core.List<DimensionValue>? filters;

  /// The kind of resource this is, in this case dfareporting#activities.
  core.String? kind;

  /// List of names of floodlight activity metrics.
  core.List<core.String>? metricNames;

  Activities({
    this.filters,
    this.kind,
    this.metricNames,
  });

  Activities.fromJson(core.Map json_)
      : this(
          filters: json_.containsKey('filters')
              ? (json_['filters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (kind != null) 'kind': kind!,
        if (metricNames != null) 'metricNames': metricNames!,
      };
}

/// Contains properties of a Campaign Manager ad.
class Ad {
  /// Account ID of this ad.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Whether this ad is active.
  ///
  /// When true, archived must be false.
  core.bool? active;

  /// Advertiser ID of this ad.
  ///
  /// This is a required field on insertion.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Whether this ad is archived.
  ///
  /// When true, active must be false.
  core.bool? archived;

  /// Audience segment ID that is being targeted for this ad.
  ///
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  core.String? audienceSegmentId;

  /// Campaign ID of this ad.
  ///
  /// This is a required field on insertion.
  core.String? campaignId;

  /// Dimension value for the ID of the campaign.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? campaignIdDimensionValue;

  /// Click-through URL for this ad.
  ///
  /// This is a required field on insertion. Applicable when type is
  /// AD_SERVING_CLICK_TRACKER.
  ClickThroughUrl? clickThroughUrl;

  /// Click-through URL suffix properties for this ad.
  ///
  /// Applies to the URL in the ad or (if overriding ad properties) the URL in
  /// the creative.
  ClickThroughUrlSuffixProperties? clickThroughUrlSuffixProperties;

  /// Comments for this ad.
  core.String? comments;

  /// Compatibility of this ad.
  ///
  /// Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and
  /// DISPLAY_INTERSTITIAL refer to either rendering on desktop or on mobile
  /// devices or in mobile apps for regular or interstitial ads, respectively.
  /// APP and APP_INTERSTITIAL are only used for existing default ads. New
  /// mobile placements must be assigned DISPLAY or DISPLAY_INTERSTITIAL and
  /// default ads created for those placements will be limited to those
  /// compatibility types. IN_STREAM_VIDEO refers to rendering in-stream video
  /// ads developed with the VAST standard.
  /// Possible string values are:
  /// - "DISPLAY"
  /// - "DISPLAY_INTERSTITIAL"
  /// - "APP"
  /// - "APP_INTERSTITIAL"
  /// - "IN_STREAM_VIDEO"
  /// - "IN_STREAM_AUDIO"
  core.String? compatibility;

  /// Information about the creation of this ad.
  ///
  /// This is a read-only field.
  LastModifiedInfo? createInfo;

  /// Creative group assignments for this ad.
  ///
  /// Applicable when type is AD_SERVING_CLICK_TRACKER. Only one assignment per
  /// creative group number is allowed for a maximum of two assignments.
  core.List<CreativeGroupAssignment>? creativeGroupAssignments;

  /// Creative rotation for this ad.
  ///
  /// Applicable when type is AD_SERVING_DEFAULT_AD, AD_SERVING_STANDARD_AD, or
  /// AD_SERVING_TRACKING. When type is AD_SERVING_DEFAULT_AD, this field should
  /// have exactly one creativeAssignment .
  CreativeRotation? creativeRotation;

  /// Time and day targeting information for this ad.
  ///
  /// This field must be left blank if the ad is using a targeting template.
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  DayPartTargeting? dayPartTargeting;

  /// Default click-through event tag properties for this ad.
  DefaultClickThroughEventTagProperties? defaultClickThroughEventTagProperties;

  /// Delivery schedule information for this ad.
  ///
  /// Applicable when type is AD_SERVING_STANDARD_AD or AD_SERVING_TRACKING.
  /// This field along with subfields priority and impressionRatio are required
  /// on insertion when type is AD_SERVING_STANDARD_AD.
  DeliverySchedule? deliverySchedule;

  /// Whether this ad is a dynamic click tracker.
  ///
  /// Applicable when type is AD_SERVING_CLICK_TRACKER. This is a required field
  /// on insert, and is read-only after insert.
  core.bool? dynamicClickTracker;
  core.DateTime? endTime;

  /// Event tag overrides for this ad.
  core.List<EventTagOverride>? eventTagOverrides;

  /// Geographical targeting information for this ad.
  ///
  /// This field must be left blank if the ad is using a targeting template.
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  GeoTargeting? geoTargeting;

  /// ID of this ad.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this ad.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Key-value targeting information for this ad.
  ///
  /// This field must be left blank if the ad is using a targeting template.
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  KeyValueTargetingExpression? keyValueTargetingExpression;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#ad".
  core.String? kind;

  /// Language targeting information for this ad.
  ///
  /// This field must be left blank if the ad is using a targeting template.
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  LanguageTargeting? languageTargeting;

  /// Information about the most recent modification of this ad.
  ///
  /// This is a read-only field.
  LastModifiedInfo? lastModifiedInfo;

  /// Name of this ad.
  ///
  /// This is a required field and must be less than 256 characters long.
  core.String? name;

  /// Placement assignments for this ad.
  core.List<PlacementAssignment>? placementAssignments;

  /// Remarketing list targeting expression for this ad.
  ///
  /// This field must be left blank if the ad is using a targeting template.
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  ListTargetingExpression? remarketingListExpression;

  /// Size of this ad.
  ///
  /// Applicable when type is AD_SERVING_DEFAULT_AD.
  Size? size;

  /// Whether this ad is ssl compliant.
  ///
  /// This is a read-only field that is auto-generated when the ad is inserted
  /// or updated.
  core.bool? sslCompliant;

  /// Whether this ad requires ssl.
  ///
  /// This is a read-only field that is auto-generated when the ad is inserted
  /// or updated.
  core.bool? sslRequired;
  core.DateTime? startTime;

  /// Subaccount ID of this ad.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Targeting template ID, used to apply preconfigured targeting information
  /// to this ad.
  ///
  /// This cannot be set while any of dayPartTargeting, geoTargeting,
  /// keyValueTargetingExpression, languageTargeting, remarketingListExpression,
  /// or technologyTargeting are set. Applicable when type is
  /// AD_SERVING_STANDARD_AD.
  core.String? targetingTemplateId;

  /// Technology platform targeting information for this ad.
  ///
  /// This field must be left blank if the ad is using a targeting template.
  /// Applicable when type is AD_SERVING_STANDARD_AD.
  TechnologyTargeting? technologyTargeting;

  /// Type of ad.
  ///
  /// This is a required field on insertion. Note that default ads (
  /// AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative resource).
  /// Possible string values are:
  /// - "AD_SERVING_STANDARD_AD"
  /// - "AD_SERVING_DEFAULT_AD"
  /// - "AD_SERVING_CLICK_TRACKER"
  /// - "AD_SERVING_TRACKING"
  /// - "AD_SERVING_BRAND_SAFE_AD"
  core.String? type;

  Ad({
    this.accountId,
    this.active,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.archived,
    this.audienceSegmentId,
    this.campaignId,
    this.campaignIdDimensionValue,
    this.clickThroughUrl,
    this.clickThroughUrlSuffixProperties,
    this.comments,
    this.compatibility,
    this.createInfo,
    this.creativeGroupAssignments,
    this.creativeRotation,
    this.dayPartTargeting,
    this.defaultClickThroughEventTagProperties,
    this.deliverySchedule,
    this.dynamicClickTracker,
    this.endTime,
    this.eventTagOverrides,
    this.geoTargeting,
    this.id,
    this.idDimensionValue,
    this.keyValueTargetingExpression,
    this.kind,
    this.languageTargeting,
    this.lastModifiedInfo,
    this.name,
    this.placementAssignments,
    this.remarketingListExpression,
    this.size,
    this.sslCompliant,
    this.sslRequired,
    this.startTime,
    this.subaccountId,
    this.targetingTemplateId,
    this.technologyTargeting,
    this.type,
  });

  Ad.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          audienceSegmentId: json_.containsKey('audienceSegmentId')
              ? json_['audienceSegmentId'] as core.String
              : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          campaignIdDimensionValue:
              json_.containsKey('campaignIdDimensionValue')
                  ? DimensionValue.fromJson(json_['campaignIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          clickThroughUrl: json_.containsKey('clickThroughUrl')
              ? ClickThroughUrl.fromJson(json_['clickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clickThroughUrlSuffixProperties:
              json_.containsKey('clickThroughUrlSuffixProperties')
                  ? ClickThroughUrlSuffixProperties.fromJson(
                      json_['clickThroughUrlSuffixProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          comments: json_.containsKey('comments')
              ? json_['comments'] as core.String
              : null,
          compatibility: json_.containsKey('compatibility')
              ? json_['compatibility'] as core.String
              : null,
          createInfo: json_.containsKey('createInfo')
              ? LastModifiedInfo.fromJson(
                  json_['createInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          creativeGroupAssignments:
              json_.containsKey('creativeGroupAssignments')
                  ? (json_['creativeGroupAssignments'] as core.List)
                      .map((value) => CreativeGroupAssignment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          creativeRotation: json_.containsKey('creativeRotation')
              ? CreativeRotation.fromJson(json_['creativeRotation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dayPartTargeting: json_.containsKey('dayPartTargeting')
              ? DayPartTargeting.fromJson(json_['dayPartTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultClickThroughEventTagProperties:
              json_.containsKey('defaultClickThroughEventTagProperties')
                  ? DefaultClickThroughEventTagProperties.fromJson(
                      json_['defaultClickThroughEventTagProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          deliverySchedule: json_.containsKey('deliverySchedule')
              ? DeliverySchedule.fromJson(json_['deliverySchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dynamicClickTracker: json_.containsKey('dynamicClickTracker')
              ? json_['dynamicClickTracker'] as core.bool
              : null,
          endTime: json_.containsKey('endTime')
              ? core.DateTime.parse(json_['endTime'] as core.String)
              : null,
          eventTagOverrides: json_.containsKey('eventTagOverrides')
              ? (json_['eventTagOverrides'] as core.List)
                  .map((value) => EventTagOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          geoTargeting: json_.containsKey('geoTargeting')
              ? GeoTargeting.fromJson(
                  json_['geoTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          keyValueTargetingExpression:
              json_.containsKey('keyValueTargetingExpression')
                  ? KeyValueTargetingExpression.fromJson(
                      json_['keyValueTargetingExpression']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          languageTargeting: json_.containsKey('languageTargeting')
              ? LanguageTargeting.fromJson(json_['languageTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          placementAssignments: json_.containsKey('placementAssignments')
              ? (json_['placementAssignments'] as core.List)
                  .map((value) => PlacementAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          remarketingListExpression:
              json_.containsKey('remarketingListExpression')
                  ? ListTargetingExpression.fromJson(
                      json_['remarketingListExpression']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          sslCompliant: json_.containsKey('sslCompliant')
              ? json_['sslCompliant'] as core.bool
              : null,
          sslRequired: json_.containsKey('sslRequired')
              ? json_['sslRequired'] as core.bool
              : null,
          startTime: json_.containsKey('startTime')
              ? core.DateTime.parse(json_['startTime'] as core.String)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          targetingTemplateId: json_.containsKey('targetingTemplateId')
              ? json_['targetingTemplateId'] as core.String
              : null,
          technologyTargeting: json_.containsKey('technologyTargeting')
              ? TechnologyTargeting.fromJson(json_['technologyTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (archived != null) 'archived': archived!,
        if (audienceSegmentId != null) 'audienceSegmentId': audienceSegmentId!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (campaignIdDimensionValue != null)
          'campaignIdDimensionValue': campaignIdDimensionValue!,
        if (clickThroughUrl != null) 'clickThroughUrl': clickThroughUrl!,
        if (clickThroughUrlSuffixProperties != null)
          'clickThroughUrlSuffixProperties': clickThroughUrlSuffixProperties!,
        if (comments != null) 'comments': comments!,
        if (compatibility != null) 'compatibility': compatibility!,
        if (createInfo != null) 'createInfo': createInfo!,
        if (creativeGroupAssignments != null)
          'creativeGroupAssignments': creativeGroupAssignments!,
        if (creativeRotation != null) 'creativeRotation': creativeRotation!,
        if (dayPartTargeting != null) 'dayPartTargeting': dayPartTargeting!,
        if (defaultClickThroughEventTagProperties != null)
          'defaultClickThroughEventTagProperties':
              defaultClickThroughEventTagProperties!,
        if (deliverySchedule != null) 'deliverySchedule': deliverySchedule!,
        if (dynamicClickTracker != null)
          'dynamicClickTracker': dynamicClickTracker!,
        if (endTime != null) 'endTime': endTime!.toUtc().toIso8601String(),
        if (eventTagOverrides != null) 'eventTagOverrides': eventTagOverrides!,
        if (geoTargeting != null) 'geoTargeting': geoTargeting!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (keyValueTargetingExpression != null)
          'keyValueTargetingExpression': keyValueTargetingExpression!,
        if (kind != null) 'kind': kind!,
        if (languageTargeting != null) 'languageTargeting': languageTargeting!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (name != null) 'name': name!,
        if (placementAssignments != null)
          'placementAssignments': placementAssignments!,
        if (remarketingListExpression != null)
          'remarketingListExpression': remarketingListExpression!,
        if (size != null) 'size': size!,
        if (sslCompliant != null) 'sslCompliant': sslCompliant!,
        if (sslRequired != null) 'sslRequired': sslRequired!,
        if (startTime != null)
          'startTime': startTime!.toUtc().toIso8601String(),
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (targetingTemplateId != null)
          'targetingTemplateId': targetingTemplateId!,
        if (technologyTargeting != null)
          'technologyTargeting': technologyTargeting!,
        if (type != null) 'type': type!,
      };
}

/// Campaign ad blocking settings.
typedef AdBlockingConfiguration = $AdBlockingConfiguration;

/// Ad Slot
typedef AdSlot = $AdSlot;

/// Ad List Response
class AdsListResponse {
  /// Ad collection.
  core.List<Ad>? ads;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#adsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  AdsListResponse({
    this.ads,
    this.kind,
    this.nextPageToken,
  });

  AdsListResponse.fromJson(core.Map json_)
      : this(
          ads: json_.containsKey('ads')
              ? (json_['ads'] as core.List)
                  .map((value) =>
                      Ad.fromJson(value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ads != null) 'ads': ads!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Contains properties of a Campaign Manager advertiser.
class Advertiser {
  /// Account ID of this advertiser.This is a read-only field that can be left
  /// blank.
  core.String? accountId;

  /// ID of the advertiser group this advertiser belongs to.
  ///
  /// You can group advertisers for reporting purposes, allowing you to see
  /// aggregated information for all advertisers in each group.
  core.String? advertiserGroupId;

  /// Suffix added to click-through URL of ad creative associations under this
  /// advertiser.
  ///
  /// Must be less than 129 characters long.
  core.String? clickThroughUrlSuffix;

  /// ID of the click-through event tag to apply by default to the landing pages
  /// of this advertiser's campaigns.
  core.String? defaultClickThroughEventTagId;

  /// Default email address used in sender field for tag emails.
  core.String? defaultEmail;

  /// Floodlight configuration ID of this advertiser.
  ///
  /// The floodlight configuration ID will be created automatically, so on
  /// insert this field should be left blank. This field can be set to another
  /// advertiser's floodlight configuration ID in order to share that
  /// advertiser's floodlight configuration with this advertiser, so long as: -
  /// This advertiser's original floodlight configuration is not already
  /// associated with floodlight activities or floodlight activity groups. -
  /// This advertiser's original floodlight configuration is not already shared
  /// with another advertiser.
  core.String? floodlightConfigurationId;

  /// Dimension value for the ID of the floodlight configuration.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? floodlightConfigurationIdDimensionValue;

  /// ID of this advertiser.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#advertiser".
  core.String? kind;

  /// Measurement partner advertiser link for tag wrapping.
  MeasurementPartnerAdvertiserLink? measurementPartnerLink;

  /// Name of this advertiser.
  ///
  /// This is a required field and must be less than 256 characters long and
  /// unique among advertisers of the same account.
  core.String? name;

  /// Original floodlight configuration before any sharing occurred.
  ///
  /// Set the floodlightConfigurationId of this advertiser to
  /// originalFloodlightConfigurationId to unshare the advertiser's current
  /// floodlight configuration. You cannot unshare an advertiser's floodlight
  /// configuration if the shared configuration has activities associated with
  /// any campaign or placement.
  core.String? originalFloodlightConfigurationId;

  /// Status of this advertiser.
  /// Possible string values are:
  /// - "APPROVED"
  /// - "ON_HOLD"
  core.String? status;

  /// Subaccount ID of this advertiser.This is a read-only field that can be
  /// left blank.
  core.String? subaccountId;

  /// Suspension status of this advertiser.
  core.bool? suspended;

  Advertiser({
    this.accountId,
    this.advertiserGroupId,
    this.clickThroughUrlSuffix,
    this.defaultClickThroughEventTagId,
    this.defaultEmail,
    this.floodlightConfigurationId,
    this.floodlightConfigurationIdDimensionValue,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.measurementPartnerLink,
    this.name,
    this.originalFloodlightConfigurationId,
    this.status,
    this.subaccountId,
    this.suspended,
  });

  Advertiser.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserGroupId: json_.containsKey('advertiserGroupId')
              ? json_['advertiserGroupId'] as core.String
              : null,
          clickThroughUrlSuffix: json_.containsKey('clickThroughUrlSuffix')
              ? json_['clickThroughUrlSuffix'] as core.String
              : null,
          defaultClickThroughEventTagId:
              json_.containsKey('defaultClickThroughEventTagId')
                  ? json_['defaultClickThroughEventTagId'] as core.String
                  : null,
          defaultEmail: json_.containsKey('defaultEmail')
              ? json_['defaultEmail'] as core.String
              : null,
          floodlightConfigurationId:
              json_.containsKey('floodlightConfigurationId')
                  ? json_['floodlightConfigurationId'] as core.String
                  : null,
          floodlightConfigurationIdDimensionValue:
              json_.containsKey('floodlightConfigurationIdDimensionValue')
                  ? DimensionValue.fromJson(
                      json_['floodlightConfigurationIdDimensionValue']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          measurementPartnerLink: json_.containsKey('measurementPartnerLink')
              ? MeasurementPartnerAdvertiserLink.fromJson(
                  json_['measurementPartnerLink']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          originalFloodlightConfigurationId:
              json_.containsKey('originalFloodlightConfigurationId')
                  ? json_['originalFloodlightConfigurationId'] as core.String
                  : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          suspended: json_.containsKey('suspended')
              ? json_['suspended'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserGroupId != null) 'advertiserGroupId': advertiserGroupId!,
        if (clickThroughUrlSuffix != null)
          'clickThroughUrlSuffix': clickThroughUrlSuffix!,
        if (defaultClickThroughEventTagId != null)
          'defaultClickThroughEventTagId': defaultClickThroughEventTagId!,
        if (defaultEmail != null) 'defaultEmail': defaultEmail!,
        if (floodlightConfigurationId != null)
          'floodlightConfigurationId': floodlightConfigurationId!,
        if (floodlightConfigurationIdDimensionValue != null)
          'floodlightConfigurationIdDimensionValue':
              floodlightConfigurationIdDimensionValue!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (measurementPartnerLink != null)
          'measurementPartnerLink': measurementPartnerLink!,
        if (name != null) 'name': name!,
        if (originalFloodlightConfigurationId != null)
          'originalFloodlightConfigurationId':
              originalFloodlightConfigurationId!,
        if (status != null) 'status': status!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (suspended != null) 'suspended': suspended!,
      };
}

/// Groups advertisers together so that reports can be generated for the entire
/// group at once.
typedef AdvertiserGroup = $AdvertiserGroup;

/// Advertiser Group List Response
class AdvertiserGroupsListResponse {
  /// Advertiser group collection.
  core.List<AdvertiserGroup>? advertiserGroups;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#advertiserGroupsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  AdvertiserGroupsListResponse({
    this.advertiserGroups,
    this.kind,
    this.nextPageToken,
  });

  AdvertiserGroupsListResponse.fromJson(core.Map json_)
      : this(
          advertiserGroups: json_.containsKey('advertiserGroups')
              ? (json_['advertiserGroups'] as core.List)
                  .map((value) => AdvertiserGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserGroups != null) 'advertiserGroups': advertiserGroups!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Landing Page List Response
class AdvertiserLandingPagesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#advertiserLandingPagesListResponse".
  core.String? kind;

  /// Landing page collection
  core.List<LandingPage>? landingPages;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  AdvertiserLandingPagesListResponse({
    this.kind,
    this.landingPages,
    this.nextPageToken,
  });

  AdvertiserLandingPagesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          landingPages: json_.containsKey('landingPages')
              ? (json_['landingPages'] as core.List)
                  .map((value) => LandingPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (landingPages != null) 'landingPages': landingPages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Advertiser List Response
class AdvertisersListResponse {
  /// Advertiser collection.
  core.List<Advertiser>? advertisers;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#advertisersListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  AdvertisersListResponse({
    this.advertisers,
    this.kind,
    this.nextPageToken,
  });

  AdvertisersListResponse.fromJson(core.Map json_)
      : this(
          advertisers: json_.containsKey('advertisers')
              ? (json_['advertisers'] as core.List)
                  .map((value) => Advertiser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertisers != null) 'advertisers': advertisers!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Audience Segment.
typedef AudienceSegment = $AudienceSegment;

/// Audience Segment Group.
class AudienceSegmentGroup {
  /// Audience segments assigned to this group.
  ///
  /// The number of segments must be between 2 and 100.
  core.List<AudienceSegment>? audienceSegments;

  /// ID of this audience segment group.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Name of this audience segment group.
  ///
  /// This is a required field and must be less than 65 characters long.
  core.String? name;

  AudienceSegmentGroup({
    this.audienceSegments,
    this.id,
    this.name,
  });

  AudienceSegmentGroup.fromJson(core.Map json_)
      : this(
          audienceSegments: json_.containsKey('audienceSegments')
              ? (json_['audienceSegments'] as core.List)
                  .map((value) => AudienceSegment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audienceSegments != null) 'audienceSegments': audienceSegments!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Contains information about a browser that can be targeted by ads.
typedef Browser = $Browser;

/// Browser List Response
class BrowsersListResponse {
  /// Browser collection.
  core.List<Browser>? browsers;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#browsersListResponse".
  core.String? kind;

  BrowsersListResponse({
    this.browsers,
    this.kind,
  });

  BrowsersListResponse.fromJson(core.Map json_)
      : this(
          browsers: json_.containsKey('browsers')
              ? (json_['browsers'] as core.List)
                  .map((value) => Browser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browsers != null) 'browsers': browsers!,
        if (kind != null) 'kind': kind!,
      };
}

/// Contains properties of a Campaign Manager campaign.
class Campaign {
  /// Account ID of this campaign.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Ad blocking settings for this campaign.
  AdBlockingConfiguration? adBlockingConfiguration;

  /// Additional creative optimization configurations for the campaign.
  core.List<CreativeOptimizationConfiguration>?
      additionalCreativeOptimizationConfigurations;

  /// Advertiser group ID of the associated advertiser.
  core.String? advertiserGroupId;

  /// Advertiser ID of this campaign.
  ///
  /// This is a required field.
  core.String? advertiserId;

  /// Dimension value for the advertiser ID of this campaign.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Whether this campaign has been archived.
  core.bool? archived;

  /// Audience segment groups assigned to this campaign.
  ///
  /// Cannot have more than 300 segment groups.
  core.List<AudienceSegmentGroup>? audienceSegmentGroups;

  /// Billing invoice code included in the Campaign Manager client billing
  /// invoices associated with the campaign.
  core.String? billingInvoiceCode;

  /// Click-through URL suffix override properties for this campaign.
  ClickThroughUrlSuffixProperties? clickThroughUrlSuffixProperties;

  /// Arbitrary comments about this campaign.
  ///
  /// Must be less than 256 characters long.
  core.String? comment;

  /// Information about the creation of this campaign.
  ///
  /// This is a read-only field.
  LastModifiedInfo? createInfo;

  /// List of creative group IDs that are assigned to the campaign.
  core.List<core.String>? creativeGroupIds;

  /// Creative optimization configuration for the campaign.
  CreativeOptimizationConfiguration? creativeOptimizationConfiguration;

  /// Click-through event tag ID override properties for this campaign.
  DefaultClickThroughEventTagProperties? defaultClickThroughEventTagProperties;

  /// The default landing page ID for this campaign.
  core.String? defaultLandingPageId;
  core.DateTime? endDate;

  /// Overrides that can be used to activate or deactivate advertiser event
  /// tags.
  core.List<EventTagOverride>? eventTagOverrides;

  /// External ID for this campaign.
  core.String? externalId;

  /// ID of this campaign.
  ///
  /// This is a read-only auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this campaign.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#campaign".
  core.String? kind;

  /// Information about the most recent modification of this campaign.
  ///
  /// This is a read-only field.
  LastModifiedInfo? lastModifiedInfo;

  /// Measurement partner campaign link for tag wrapping.
  MeasurementPartnerCampaignLink? measurementPartnerLink;

  /// Name of this campaign.
  ///
  /// This is a required field and must be less than 512 characters long and
  /// unique among campaigns of the same advertiser.
  core.String? name;

  /// Whether Nielsen reports are enabled for this campaign.
  core.bool? nielsenOcrEnabled;
  core.DateTime? startDate;

  /// Subaccount ID of this campaign.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Campaign trafficker contact emails.
  core.List<core.String>? traffickerEmails;

  Campaign({
    this.accountId,
    this.adBlockingConfiguration,
    this.additionalCreativeOptimizationConfigurations,
    this.advertiserGroupId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.archived,
    this.audienceSegmentGroups,
    this.billingInvoiceCode,
    this.clickThroughUrlSuffixProperties,
    this.comment,
    this.createInfo,
    this.creativeGroupIds,
    this.creativeOptimizationConfiguration,
    this.defaultClickThroughEventTagProperties,
    this.defaultLandingPageId,
    this.endDate,
    this.eventTagOverrides,
    this.externalId,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.lastModifiedInfo,
    this.measurementPartnerLink,
    this.name,
    this.nielsenOcrEnabled,
    this.startDate,
    this.subaccountId,
    this.traffickerEmails,
  });

  Campaign.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          adBlockingConfiguration: json_.containsKey('adBlockingConfiguration')
              ? AdBlockingConfiguration.fromJson(
                  json_['adBlockingConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          additionalCreativeOptimizationConfigurations: json_
                  .containsKey('additionalCreativeOptimizationConfigurations')
              ? (json_['additionalCreativeOptimizationConfigurations']
                      as core.List)
                  .map((value) => CreativeOptimizationConfiguration.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advertiserGroupId: json_.containsKey('advertiserGroupId')
              ? json_['advertiserGroupId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          audienceSegmentGroups: json_.containsKey('audienceSegmentGroups')
              ? (json_['audienceSegmentGroups'] as core.List)
                  .map((value) => AudienceSegmentGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          billingInvoiceCode: json_.containsKey('billingInvoiceCode')
              ? json_['billingInvoiceCode'] as core.String
              : null,
          clickThroughUrlSuffixProperties:
              json_.containsKey('clickThroughUrlSuffixProperties')
                  ? ClickThroughUrlSuffixProperties.fromJson(
                      json_['clickThroughUrlSuffixProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          createInfo: json_.containsKey('createInfo')
              ? LastModifiedInfo.fromJson(
                  json_['createInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          creativeGroupIds: json_.containsKey('creativeGroupIds')
              ? (json_['creativeGroupIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          creativeOptimizationConfiguration:
              json_.containsKey('creativeOptimizationConfiguration')
                  ? CreativeOptimizationConfiguration.fromJson(
                      json_['creativeOptimizationConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          defaultClickThroughEventTagProperties:
              json_.containsKey('defaultClickThroughEventTagProperties')
                  ? DefaultClickThroughEventTagProperties.fromJson(
                      json_['defaultClickThroughEventTagProperties']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          defaultLandingPageId: json_.containsKey('defaultLandingPageId')
              ? json_['defaultLandingPageId'] as core.String
              : null,
          endDate: json_.containsKey('endDate')
              ? core.DateTime.parse(json_['endDate'] as core.String)
              : null,
          eventTagOverrides: json_.containsKey('eventTagOverrides')
              ? (json_['eventTagOverrides'] as core.List)
                  .map((value) => EventTagOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          externalId: json_.containsKey('externalId')
              ? json_['externalId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          measurementPartnerLink: json_.containsKey('measurementPartnerLink')
              ? MeasurementPartnerCampaignLink.fromJson(
                  json_['measurementPartnerLink']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nielsenOcrEnabled: json_.containsKey('nielsenOcrEnabled')
              ? json_['nielsenOcrEnabled'] as core.bool
              : null,
          startDate: json_.containsKey('startDate')
              ? core.DateTime.parse(json_['startDate'] as core.String)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          traffickerEmails: json_.containsKey('traffickerEmails')
              ? (json_['traffickerEmails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (adBlockingConfiguration != null)
          'adBlockingConfiguration': adBlockingConfiguration!,
        if (additionalCreativeOptimizationConfigurations != null)
          'additionalCreativeOptimizationConfigurations':
              additionalCreativeOptimizationConfigurations!,
        if (advertiserGroupId != null) 'advertiserGroupId': advertiserGroupId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (archived != null) 'archived': archived!,
        if (audienceSegmentGroups != null)
          'audienceSegmentGroups': audienceSegmentGroups!,
        if (billingInvoiceCode != null)
          'billingInvoiceCode': billingInvoiceCode!,
        if (clickThroughUrlSuffixProperties != null)
          'clickThroughUrlSuffixProperties': clickThroughUrlSuffixProperties!,
        if (comment != null) 'comment': comment!,
        if (createInfo != null) 'createInfo': createInfo!,
        if (creativeGroupIds != null) 'creativeGroupIds': creativeGroupIds!,
        if (creativeOptimizationConfiguration != null)
          'creativeOptimizationConfiguration':
              creativeOptimizationConfiguration!,
        if (defaultClickThroughEventTagProperties != null)
          'defaultClickThroughEventTagProperties':
              defaultClickThroughEventTagProperties!,
        if (defaultLandingPageId != null)
          'defaultLandingPageId': defaultLandingPageId!,
        if (endDate != null)
          'endDate':
              "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        if (eventTagOverrides != null) 'eventTagOverrides': eventTagOverrides!,
        if (externalId != null) 'externalId': externalId!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (measurementPartnerLink != null)
          'measurementPartnerLink': measurementPartnerLink!,
        if (name != null) 'name': name!,
        if (nielsenOcrEnabled != null) 'nielsenOcrEnabled': nielsenOcrEnabled!,
        if (startDate != null)
          'startDate':
              "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (traffickerEmails != null) 'traffickerEmails': traffickerEmails!,
      };
}

/// Identifies a creative which has been associated with a given campaign.
typedef CampaignCreativeAssociation = $CampaignCreativeAssociation;

/// Campaign Creative Association List Response
class CampaignCreativeAssociationsListResponse {
  /// Campaign creative association collection
  core.List<CampaignCreativeAssociation>? campaignCreativeAssociations;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#campaignCreativeAssociationsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  CampaignCreativeAssociationsListResponse({
    this.campaignCreativeAssociations,
    this.kind,
    this.nextPageToken,
  });

  CampaignCreativeAssociationsListResponse.fromJson(core.Map json_)
      : this(
          campaignCreativeAssociations:
              json_.containsKey('campaignCreativeAssociations')
                  ? (json_['campaignCreativeAssociations'] as core.List)
                      .map((value) => CampaignCreativeAssociation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignCreativeAssociations != null)
          'campaignCreativeAssociations': campaignCreativeAssociations!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Campaign List Response
class CampaignsListResponse {
  /// Campaign collection.
  core.List<Campaign>? campaigns;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#campaignsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  CampaignsListResponse({
    this.campaigns,
    this.kind,
    this.nextPageToken,
  });

  CampaignsListResponse.fromJson(core.Map json_)
      : this(
          campaigns: json_.containsKey('campaigns')
              ? (json_['campaigns'] as core.List)
                  .map((value) => Campaign.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaigns != null) 'campaigns': campaigns!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Describes a change that a user has made to a resource.
typedef ChangeLog = $ChangeLog;

/// Change Log List Response
class ChangeLogsListResponse {
  /// Change log collection.
  core.List<ChangeLog>? changeLogs;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#changeLogsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  ChangeLogsListResponse({
    this.changeLogs,
    this.kind,
    this.nextPageToken,
  });

  ChangeLogsListResponse.fromJson(core.Map json_)
      : this(
          changeLogs: json_.containsKey('changeLogs')
              ? (json_['changeLogs'] as core.List)
                  .map((value) => ChangeLog.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeLogs != null) 'changeLogs': changeLogs!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents a DfaReporting channel grouping.
class ChannelGrouping {
  /// ChannelGrouping fallback name.
  core.String? fallbackName;

  /// The kind of resource this is, in this case dfareporting#channelGrouping.
  core.String? kind;

  /// ChannelGrouping name.
  core.String? name;

  /// The rules contained within this channel grouping.
  core.List<ChannelGroupingRule>? rules;

  ChannelGrouping({
    this.fallbackName,
    this.kind,
    this.name,
    this.rules,
  });

  ChannelGrouping.fromJson(core.Map json_)
      : this(
          fallbackName: json_.containsKey('fallbackName')
              ? json_['fallbackName'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => ChannelGroupingRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fallbackName != null) 'fallbackName': fallbackName!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
      };
}

/// Represents a DfaReporting channel grouping rule.
class ChannelGroupingRule {
  /// The disjunctive match statements contained within this rule.
  core.List<DisjunctiveMatchStatement>? disjunctiveMatchStatements;

  /// The kind of resource this is, in this case
  /// dfareporting#channelGroupingRule.
  core.String? kind;

  /// Rule name.
  core.String? name;

  ChannelGroupingRule({
    this.disjunctiveMatchStatements,
    this.kind,
    this.name,
  });

  ChannelGroupingRule.fromJson(core.Map json_)
      : this(
          disjunctiveMatchStatements:
              json_.containsKey('disjunctiveMatchStatements')
                  ? (json_['disjunctiveMatchStatements'] as core.List)
                      .map((value) => DisjunctiveMatchStatement.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disjunctiveMatchStatements != null)
          'disjunctiveMatchStatements': disjunctiveMatchStatements!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// City List Response
class CitiesListResponse {
  /// City collection.
  core.List<City>? cities;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#citiesListResponse".
  core.String? kind;

  CitiesListResponse({
    this.cities,
    this.kind,
  });

  CitiesListResponse.fromJson(core.Map json_)
      : this(
          cities: json_.containsKey('cities')
              ? (json_['cities'] as core.List)
                  .map((value) => City.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cities != null) 'cities': cities!,
        if (kind != null) 'kind': kind!,
      };
}

/// Contains information about a city that can be targeted by ads.
typedef City = $City;

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
          eventName: json_.containsKey('eventName')
              ? json_['eventName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickThroughUrl != null) 'clickThroughUrl': clickThroughUrl!,
        if (eventName != null) 'eventName': eventName!,
        if (name != null) 'name': name!,
      };
}

/// Click-through URL
typedef ClickThroughUrl = $ClickThroughUrl;

/// Click Through URL Suffix settings.
typedef ClickThroughUrlSuffixProperties = $ClickThroughUrlSuffixProperties;

/// Companion Click-through override.
class CompanionClickThroughOverride {
  /// Click-through URL of this companion click-through override.
  ClickThroughUrl? clickThroughUrl;

  /// ID of the creative for this companion click-through override.
  core.String? creativeId;

  CompanionClickThroughOverride({
    this.clickThroughUrl,
    this.creativeId,
  });

  CompanionClickThroughOverride.fromJson(core.Map json_)
      : this(
          clickThroughUrl: json_.containsKey('clickThroughUrl')
              ? ClickThroughUrl.fromJson(json_['clickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          creativeId: json_.containsKey('creativeId')
              ? json_['creativeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickThroughUrl != null) 'clickThroughUrl': clickThroughUrl!,
        if (creativeId != null) 'creativeId': creativeId!,
      };
}

/// Companion Settings
class CompanionSetting {
  /// Whether companions are disabled for this placement.
  core.bool? companionsDisabled;

  /// Allowlist of companion sizes to be served to this placement.
  ///
  /// Set this list to null or empty to serve all companion sizes.
  core.List<Size>? enabledSizes;

  /// Whether to serve only static images as companions.
  core.bool? imageOnly;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#companionSetting".
  core.String? kind;

  CompanionSetting({
    this.companionsDisabled,
    this.enabledSizes,
    this.imageOnly,
    this.kind,
  });

  CompanionSetting.fromJson(core.Map json_)
      : this(
          companionsDisabled: json_.containsKey('companionsDisabled')
              ? json_['companionsDisabled'] as core.bool
              : null,
          enabledSizes: json_.containsKey('enabledSizes')
              ? (json_['enabledSizes'] as core.List)
                  .map((value) => Size.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageOnly: json_.containsKey('imageOnly')
              ? json_['imageOnly'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companionsDisabled != null)
          'companionsDisabled': companionsDisabled!,
        if (enabledSizes != null) 'enabledSizes': enabledSizes!,
        if (imageOnly != null) 'imageOnly': imageOnly!,
        if (kind != null) 'kind': kind!,
      };
}

/// Represents a response to the queryCompatibleFields method.
class CompatibleFields {
  /// Contains items that are compatible to be selected for a report of type
  /// "CROSS_DIMENSION_REACH".
  CrossDimensionReachReportCompatibleFields?
      crossDimensionReachReportCompatibleFields;

  /// Contains items that are compatible to be selected for a report of type
  /// "FLOODLIGHT".
  FloodlightReportCompatibleFields? floodlightReportCompatibleFields;

  /// The kind of resource this is, in this case dfareporting#compatibleFields.
  core.String? kind;

  /// Contains items that are compatible to be selected for a report of type
  /// "PATH_ATTRIBUTION".
  PathReportCompatibleFields? pathAttributionReportCompatibleFields;

  /// Contains items that are compatible to be selected for a report of type
  /// "PATH".
  PathReportCompatibleFields? pathReportCompatibleFields;

  /// Contains items that are compatible to be selected for a report of type
  /// "PATH_TO_CONVERSION".
  PathToConversionReportCompatibleFields?
      pathToConversionReportCompatibleFields;

  /// Contains items that are compatible to be selected for a report of type
  /// "REACH".
  ReachReportCompatibleFields? reachReportCompatibleFields;

  /// Contains items that are compatible to be selected for a report of type
  /// "STANDARD".
  ReportCompatibleFields? reportCompatibleFields;

  CompatibleFields({
    this.crossDimensionReachReportCompatibleFields,
    this.floodlightReportCompatibleFields,
    this.kind,
    this.pathAttributionReportCompatibleFields,
    this.pathReportCompatibleFields,
    this.pathToConversionReportCompatibleFields,
    this.reachReportCompatibleFields,
    this.reportCompatibleFields,
  });

  CompatibleFields.fromJson(core.Map json_)
      : this(
          crossDimensionReachReportCompatibleFields:
              json_.containsKey('crossDimensionReachReportCompatibleFields')
                  ? CrossDimensionReachReportCompatibleFields.fromJson(
                      json_['crossDimensionReachReportCompatibleFields']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          floodlightReportCompatibleFields:
              json_.containsKey('floodlightReportCompatibleFields')
                  ? FloodlightReportCompatibleFields.fromJson(
                      json_['floodlightReportCompatibleFields']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          pathAttributionReportCompatibleFields:
              json_.containsKey('pathAttributionReportCompatibleFields')
                  ? PathReportCompatibleFields.fromJson(
                      json_['pathAttributionReportCompatibleFields']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          pathReportCompatibleFields:
              json_.containsKey('pathReportCompatibleFields')
                  ? PathReportCompatibleFields.fromJson(
                      json_['pathReportCompatibleFields']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          pathToConversionReportCompatibleFields:
              json_.containsKey('pathToConversionReportCompatibleFields')
                  ? PathToConversionReportCompatibleFields.fromJson(
                      json_['pathToConversionReportCompatibleFields']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          reachReportCompatibleFields:
              json_.containsKey('reachReportCompatibleFields')
                  ? ReachReportCompatibleFields.fromJson(
                      json_['reachReportCompatibleFields']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          reportCompatibleFields: json_.containsKey('reportCompatibleFields')
              ? ReportCompatibleFields.fromJson(json_['reportCompatibleFields']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crossDimensionReachReportCompatibleFields != null)
          'crossDimensionReachReportCompatibleFields':
              crossDimensionReachReportCompatibleFields!,
        if (floodlightReportCompatibleFields != null)
          'floodlightReportCompatibleFields': floodlightReportCompatibleFields!,
        if (kind != null) 'kind': kind!,
        if (pathAttributionReportCompatibleFields != null)
          'pathAttributionReportCompatibleFields':
              pathAttributionReportCompatibleFields!,
        if (pathReportCompatibleFields != null)
          'pathReportCompatibleFields': pathReportCompatibleFields!,
        if (pathToConversionReportCompatibleFields != null)
          'pathToConversionReportCompatibleFields':
              pathToConversionReportCompatibleFields!,
        if (reachReportCompatibleFields != null)
          'reachReportCompatibleFields': reachReportCompatibleFields!,
        if (reportCompatibleFields != null)
          'reportCompatibleFields': reportCompatibleFields!,
      };
}

/// Contains information about an internet connection type that can be targeted
/// by ads.
///
/// Clients can use the connection type to target mobile vs. broadband users.
typedef ConnectionType = $ConnectionType;

/// Connection Type List Response
class ConnectionTypesListResponse {
  /// Collection of connection types such as broadband and mobile.
  core.List<ConnectionType>? connectionTypes;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#connectionTypesListResponse".
  core.String? kind;

  ConnectionTypesListResponse({
    this.connectionTypes,
    this.kind,
  });

  ConnectionTypesListResponse.fromJson(core.Map json_)
      : this(
          connectionTypes: json_.containsKey('connectionTypes')
              ? (json_['connectionTypes'] as core.List)
                  .map((value) => ConnectionType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionTypes != null) 'connectionTypes': connectionTypes!,
        if (kind != null) 'kind': kind!,
      };
}

/// Content Category List Response
class ContentCategoriesListResponse {
  /// Content category collection.
  core.List<ContentCategory>? contentCategories;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#contentCategoriesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  ContentCategoriesListResponse({
    this.contentCategories,
    this.kind,
    this.nextPageToken,
  });

  ContentCategoriesListResponse.fromJson(core.Map json_)
      : this(
          contentCategories: json_.containsKey('contentCategories')
              ? (json_['contentCategories'] as core.List)
                  .map((value) => ContentCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentCategories != null) 'contentCategories': contentCategories!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Organizes placements according to the contents of their associated webpages.
typedef ContentCategory = $ContentCategory;

/// A Conversion represents when a user successfully performs a desired action
/// after seeing an ad.
class Conversion {
  /// Whether this particular request may come from a user under the age of 13,
  /// under COPPA compliance.
  core.bool? childDirectedTreatment;

  /// Custom floodlight variables.
  ///
  /// This field may only be used when calling batchinsert; it is not supported
  /// by batchupdate.
  core.List<CustomFloodlightVariable>? customVariables;

  /// The display click ID.
  ///
  /// This field is mutually exclusive with encryptedUserId,
  /// encryptedUserIdCandidates\[\], matchId, mobileDeviceId and gclid. This or
  /// encryptedUserId or encryptedUserIdCandidates\[\] or matchId or
  /// mobileDeviceId or gclid is a required field.
  core.String? dclid;

  /// The alphanumeric encrypted user ID.
  ///
  /// When set, encryptionInfo should also be specified. This field is mutually
  /// exclusive with encryptedUserIdCandidates\[\], matchId, mobileDeviceId,
  /// gclid and dclid. This or encryptedUserIdCandidates\[\] or matchId or
  /// mobileDeviceId or gclid or dclid is a required field.
  core.String? encryptedUserId;

  /// A list of the alphanumeric encrypted user IDs.
  ///
  /// Any user ID with exposure prior to the conversion timestamp will be used
  /// in the inserted conversion. If no such user ID is found then the
  /// conversion will be rejected with INVALID_ARGUMENT error. When set,
  /// encryptionInfo should also be specified. This field may only be used when
  /// calling batchinsert; it is not supported by batchupdate. This field is
  /// mutually exclusive with encryptedUserId, matchId, mobileDeviceId, gclid
  /// and dclid. This or encryptedUserId or matchId or mobileDeviceId or gclid
  /// or dclid is a required field.
  core.List<core.String>? encryptedUserIdCandidates;

  /// Floodlight Activity ID of this conversion.
  ///
  /// This is a required field.
  core.String? floodlightActivityId;

  /// Floodlight Configuration ID of this conversion.
  ///
  /// This is a required field.
  core.String? floodlightConfigurationId;

  /// The Google click ID.
  ///
  /// This field is mutually exclusive with encryptedUserId,
  /// encryptedUserIdCandidates\[\], matchId, mobileDeviceId and dclid. This or
  /// encryptedUserId or encryptedUserIdCandidates\[\] or matchId or
  /// mobileDeviceId or dclid is a required field.
  core.String? gclid;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversion".
  core.String? kind;

  /// Whether Limit Ad Tracking is enabled.
  ///
  /// When set to true, the conversion will be used for reporting but not
  /// targeting. This will prevent remarketing.
  core.bool? limitAdTracking;

  /// The match ID field.
  ///
  /// A match ID is your own first-party identifier that has been synced with
  /// Google using the match ID feature in Floodlight. This field is mutually
  /// exclusive with encryptedUserId,
  /// encryptedUserIdCandidates\[\],mobileDeviceId, gclid and dclid. This or
  /// encryptedUserId or encryptedUserIdCandidates\[\] or mobileDeviceId or
  /// gclid or dclid is a required field.
  core.String? matchId;

  /// The mobile device ID.
  ///
  /// This field is mutually exclusive with encryptedUserId,
  /// encryptedUserIdCandidates\[\], matchId, gclid and dclid. This or
  /// encryptedUserId or encryptedUserIdCandidates\[\] or matchId or gclid or
  /// dclid is a required field.
  core.String? mobileDeviceId;

  /// Whether the conversion was for a non personalized ad.
  core.bool? nonPersonalizedAd;

  /// The ordinal of the conversion.
  ///
  /// Use this field to control how conversions of the same user and day are
  /// de-duplicated. This is a required field.
  core.String? ordinal;

  /// The quantity of the conversion.
  core.String? quantity;

  /// The timestamp of conversion, in Unix epoch micros.
  ///
  /// This is a required field.
  core.String? timestampMicros;

  /// Whether this particular request may come from a user under the age of 16
  /// (may differ by country), under compliance with the European Union's
  /// General Data Protection Regulation (GDPR).
  core.bool? treatmentForUnderage;

  /// The value of the conversion.
  core.double? value;

  Conversion({
    this.childDirectedTreatment,
    this.customVariables,
    this.dclid,
    this.encryptedUserId,
    this.encryptedUserIdCandidates,
    this.floodlightActivityId,
    this.floodlightConfigurationId,
    this.gclid,
    this.kind,
    this.limitAdTracking,
    this.matchId,
    this.mobileDeviceId,
    this.nonPersonalizedAd,
    this.ordinal,
    this.quantity,
    this.timestampMicros,
    this.treatmentForUnderage,
    this.value,
  });

  Conversion.fromJson(core.Map json_)
      : this(
          childDirectedTreatment: json_.containsKey('childDirectedTreatment')
              ? json_['childDirectedTreatment'] as core.bool
              : null,
          customVariables: json_.containsKey('customVariables')
              ? (json_['customVariables'] as core.List)
                  .map((value) => CustomFloodlightVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dclid:
              json_.containsKey('dclid') ? json_['dclid'] as core.String : null,
          encryptedUserId: json_.containsKey('encryptedUserId')
              ? json_['encryptedUserId'] as core.String
              : null,
          encryptedUserIdCandidates:
              json_.containsKey('encryptedUserIdCandidates')
                  ? (json_['encryptedUserIdCandidates'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          floodlightActivityId: json_.containsKey('floodlightActivityId')
              ? json_['floodlightActivityId'] as core.String
              : null,
          floodlightConfigurationId:
              json_.containsKey('floodlightConfigurationId')
                  ? json_['floodlightConfigurationId'] as core.String
                  : null,
          gclid:
              json_.containsKey('gclid') ? json_['gclid'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          limitAdTracking: json_.containsKey('limitAdTracking')
              ? json_['limitAdTracking'] as core.bool
              : null,
          matchId: json_.containsKey('matchId')
              ? json_['matchId'] as core.String
              : null,
          mobileDeviceId: json_.containsKey('mobileDeviceId')
              ? json_['mobileDeviceId'] as core.String
              : null,
          nonPersonalizedAd: json_.containsKey('nonPersonalizedAd')
              ? json_['nonPersonalizedAd'] as core.bool
              : null,
          ordinal: json_.containsKey('ordinal')
              ? json_['ordinal'] as core.String
              : null,
          quantity: json_.containsKey('quantity')
              ? json_['quantity'] as core.String
              : null,
          timestampMicros: json_.containsKey('timestampMicros')
              ? json_['timestampMicros'] as core.String
              : null,
          treatmentForUnderage: json_.containsKey('treatmentForUnderage')
              ? json_['treatmentForUnderage'] as core.bool
              : null,
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childDirectedTreatment != null)
          'childDirectedTreatment': childDirectedTreatment!,
        if (customVariables != null) 'customVariables': customVariables!,
        if (dclid != null) 'dclid': dclid!,
        if (encryptedUserId != null) 'encryptedUserId': encryptedUserId!,
        if (encryptedUserIdCandidates != null)
          'encryptedUserIdCandidates': encryptedUserIdCandidates!,
        if (floodlightActivityId != null)
          'floodlightActivityId': floodlightActivityId!,
        if (floodlightConfigurationId != null)
          'floodlightConfigurationId': floodlightConfigurationId!,
        if (gclid != null) 'gclid': gclid!,
        if (kind != null) 'kind': kind!,
        if (limitAdTracking != null) 'limitAdTracking': limitAdTracking!,
        if (matchId != null) 'matchId': matchId!,
        if (mobileDeviceId != null) 'mobileDeviceId': mobileDeviceId!,
        if (nonPersonalizedAd != null) 'nonPersonalizedAd': nonPersonalizedAd!,
        if (ordinal != null) 'ordinal': ordinal!,
        if (quantity != null) 'quantity': quantity!,
        if (timestampMicros != null) 'timestampMicros': timestampMicros!,
        if (treatmentForUnderage != null)
          'treatmentForUnderage': treatmentForUnderage!,
        if (value != null) 'value': value!,
      };
}

/// The error code and description for a conversion that failed to insert or
/// update.
typedef ConversionError = $ConversionError;

/// The original conversion that was inserted or updated and whether there were
/// any errors.
class ConversionStatus {
  /// The original conversion that was inserted or updated.
  Conversion? conversion;

  /// A list of errors related to this conversion.
  core.List<ConversionError>? errors;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversionStatus".
  core.String? kind;

  ConversionStatus({
    this.conversion,
    this.errors,
    this.kind,
  });

  ConversionStatus.fromJson(core.Map json_)
      : this(
          conversion: json_.containsKey('conversion')
              ? Conversion.fromJson(
                  json_['conversion'] as core.Map<core.String, core.dynamic>)
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => ConversionError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversion != null) 'conversion': conversion!,
        if (errors != null) 'errors': errors!,
        if (kind != null) 'kind': kind!,
      };
}

/// Insert Conversions Request.
class ConversionsBatchInsertRequest {
  /// The set of conversions to insert.
  core.List<Conversion>? conversions;

  /// Describes how encryptedUserId or encryptedUserIdCandidates\[\] is
  /// encrypted.
  ///
  /// This is a required field if encryptedUserId or
  /// encryptedUserIdCandidates\[\] is used.
  EncryptionInfo? encryptionInfo;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversionsBatchInsertRequest".
  core.String? kind;

  ConversionsBatchInsertRequest({
    this.conversions,
    this.encryptionInfo,
    this.kind,
  });

  ConversionsBatchInsertRequest.fromJson(core.Map json_)
      : this(
          conversions: json_.containsKey('conversions')
              ? (json_['conversions'] as core.List)
                  .map((value) => Conversion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(json_['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversions != null) 'conversions': conversions!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (kind != null) 'kind': kind!,
      };
}

/// Insert Conversions Response.
class ConversionsBatchInsertResponse {
  /// Indicates that some or all conversions failed to insert.
  core.bool? hasFailures;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversionsBatchInsertResponse".
  core.String? kind;

  /// The insert status of each conversion.
  ///
  /// Statuses are returned in the same order that conversions are inserted.
  core.List<ConversionStatus>? status;

  ConversionsBatchInsertResponse({
    this.hasFailures,
    this.kind,
    this.status,
  });

  ConversionsBatchInsertResponse.fromJson(core.Map json_)
      : this(
          hasFailures: json_.containsKey('hasFailures')
              ? json_['hasFailures'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          status: json_.containsKey('status')
              ? (json_['status'] as core.List)
                  .map((value) => ConversionStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasFailures != null) 'hasFailures': hasFailures!,
        if (kind != null) 'kind': kind!,
        if (status != null) 'status': status!,
      };
}

/// Update Conversions Request.
class ConversionsBatchUpdateRequest {
  /// The set of conversions to update.
  core.List<Conversion>? conversions;

  /// Describes how encryptedUserId is encrypted.
  ///
  /// This is a required field if encryptedUserId is used.
  EncryptionInfo? encryptionInfo;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversionsBatchUpdateRequest".
  core.String? kind;

  ConversionsBatchUpdateRequest({
    this.conversions,
    this.encryptionInfo,
    this.kind,
  });

  ConversionsBatchUpdateRequest.fromJson(core.Map json_)
      : this(
          conversions: json_.containsKey('conversions')
              ? (json_['conversions'] as core.List)
                  .map((value) => Conversion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encryptionInfo: json_.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(json_['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversions != null) 'conversions': conversions!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (kind != null) 'kind': kind!,
      };
}

/// Update Conversions Response.
class ConversionsBatchUpdateResponse {
  /// Indicates that some or all conversions failed to update.
  core.bool? hasFailures;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#conversionsBatchUpdateResponse".
  core.String? kind;

  /// The update status of each conversion.
  ///
  /// Statuses are returned in the same order that conversions are updated.
  core.List<ConversionStatus>? status;

  ConversionsBatchUpdateResponse({
    this.hasFailures,
    this.kind,
    this.status,
  });

  ConversionsBatchUpdateResponse.fromJson(core.Map json_)
      : this(
          hasFailures: json_.containsKey('hasFailures')
              ? json_['hasFailures'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          status: json_.containsKey('status')
              ? (json_['status'] as core.List)
                  .map((value) => ConversionStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasFailures != null) 'hasFailures': hasFailures!,
        if (kind != null) 'kind': kind!,
        if (status != null) 'status': status!,
      };
}

/// Country List Response
class CountriesListResponse {
  /// Country collection.
  core.List<Country>? countries;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#countriesListResponse".
  core.String? kind;

  CountriesListResponse({
    this.countries,
    this.kind,
  });

  CountriesListResponse.fromJson(core.Map json_)
      : this(
          countries: json_.containsKey('countries')
              ? (json_['countries'] as core.List)
                  .map((value) => Country.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (countries != null) 'countries': countries!,
        if (kind != null) 'kind': kind!,
      };
}

/// Contains information about a country that can be targeted by ads.
typedef Country = $Country;

/// Contains properties of a Creative.
class Creative {
  /// Account ID of this creative.
  ///
  /// This field, if left unset, will be auto-generated for both insert and
  /// update operations. Applicable to all creative types.
  core.String? accountId;

  /// Whether the creative is active.
  ///
  /// Applicable to all creative types.
  core.bool? active;

  /// Ad parameters user for VPAID creative.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// VPAID.
  core.String? adParameters;

  /// Keywords for a Rich Media creative.
  ///
  /// Keywords let you customize the creative settings of a Rich Media ad
  /// running on your site without having to contact the advertiser. You can use
  /// keywords to dynamically change the look or functionality of a creative.
  /// Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
  core.List<core.String>? adTagKeys;

  /// Additional sizes associated with a responsive creative.
  ///
  /// When inserting or updating a creative either the size ID field or size
  /// width and height fields can be used. Applicable to DISPLAY creatives when
  /// the primary asset type is HTML_IMAGE.
  core.List<Size>? additionalSizes;

  /// Advertiser ID of this creative.
  ///
  /// This is a required field. Applicable to all creative types.
  core.String? advertiserId;

  /// Whether script access is allowed for this creative.
  ///
  /// This is a read-only and deprecated field which will automatically be set
  /// to true on update. Applicable to the following creative types:
  /// FLASH_INPAGE.
  core.bool? allowScriptAccess;

  /// Whether the creative is archived.
  ///
  /// Applicable to all creative types.
  core.bool? archived;

  /// Type of artwork used for the creative.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA, and all VPAID.
  /// Possible string values are:
  /// - "ARTWORK_TYPE_FLASH"
  /// - "ARTWORK_TYPE_HTML5"
  /// - "ARTWORK_TYPE_MIXED"
  /// - "ARTWORK_TYPE_IMAGE"
  core.String? artworkType;

  /// Source application where creative was authored.
  ///
  /// Presently, only DBM authored creatives will have this field set.
  /// Applicable to all creative types.
  /// Possible string values are:
  /// - "CREATIVE_AUTHORING_SOURCE_DCM"
  /// - "CREATIVE_AUTHORING_SOURCE_DBM"
  /// - "CREATIVE_AUTHORING_SOURCE_STUDIO"
  /// - "CREATIVE_AUTHORING_SOURCE_GWD"
  /// - "CREATIVE_AUTHORING_SOURCE_ACS"
  core.String? authoringSource;

  /// Authoring tool for HTML5 banner creatives.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// HTML5_BANNER.
  /// Possible string values are:
  /// - "NINJA"
  /// - "SWIFFY"
  core.String? authoringTool;

  /// Whether images are automatically advanced for image gallery creatives.
  ///
  /// Applicable to the following creative types: DISPLAY_IMAGE_GALLERY.
  core.bool? autoAdvanceImages;

  /// The 6-character HTML color code, beginning with #, for the background of
  /// the window area where the Flash file is displayed.
  ///
  /// Default is white. Applicable to the following creative types:
  /// FLASH_INPAGE.
  core.String? backgroundColor;

  /// Click-through URL for backup image.
  ///
  /// Applicable to ENHANCED_BANNER when the primary asset type is not
  /// HTML_IMAGE.
  CreativeClickThroughUrl? backupImageClickThroughUrl;

  /// List of feature dependencies that will cause a backup image to be served
  /// if the browser that serves the ad does not support them.
  ///
  /// Feature dependencies are features that a browser must be able to support
  /// in order to render your HTML5 creative asset correctly. This field is
  /// initially auto-generated to contain all features detected by Campaign
  /// Manager for all the assets of this creative and can then be modified by
  /// the client. To reset this field, copy over all the creativeAssets'
  /// detected features. Applicable to the following creative types:
  /// HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not
  /// HTML_IMAGE.
  core.List<core.String>? backupImageFeatures;

  /// Reporting label used for HTML5 banner backup image.
  ///
  /// Applicable to the following creative types: DISPLAY when the primary asset
  /// type is not HTML_IMAGE.
  core.String? backupImageReportingLabel;

  /// Target window for backup image.
  ///
  /// Applicable to the following creative types: FLASH_INPAGE and HTML5_BANNER.
  /// Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
  TargetWindow? backupImageTargetWindow;

  /// Click tags of the creative.
  ///
  /// For DISPLAY, FLASH_INPAGE, and HTML5_BANNER creatives, this is a subset of
  /// detected click tags for the assets associated with this creative. After
  /// creating a flash asset, detected click tags will be returned in the
  /// creativeAssetMetadata. When inserting the creative, populate the creative
  /// clickTags field using the creativeAssetMetadata.clickTags field. For
  /// DISPLAY_IMAGE_GALLERY creatives, there should be exactly one entry in this
  /// list for each image creative asset. A click tag is matched with a
  /// corresponding creative asset by matching the clickTag.name field with the
  /// creativeAsset.assetIdentifier.name field. Applicable to the following
  /// creative types: DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER.
  /// Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
  core.List<ClickTag>? clickTags;

  /// Industry standard ID assigned to creative for reach and frequency.
  ///
  /// Applicable to INSTREAM_VIDEO_REDIRECT creatives.
  core.String? commercialId;

  /// List of companion creatives assigned to an in-Stream video creative.
  ///
  /// Acceptable values include IDs of existing flash and image creatives.
  /// Applicable to the following creative types: all VPAID, all INSTREAM_AUDIO
  /// and all INSTREAM_VIDEO with dynamicAssetSelection set to false.
  core.List<core.String>? companionCreatives;

  /// Compatibilities associated with this creative.
  ///
  /// This is a read-only field. DISPLAY and DISPLAY_INTERSTITIAL refer to
  /// rendering either on desktop or on mobile devices or in mobile apps for
  /// regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are
  /// for rendering in mobile apps. Only pre-existing creatives may have these
  /// compatibilities since new creatives will either be assigned DISPLAY or
  /// DISPLAY_INTERSTITIAL instead. IN_STREAM_VIDEO refers to rendering in
  /// in-stream video ads developed with the VAST standard. IN_STREAM_AUDIO
  /// refers to rendering in in-stream audio ads developed with the VAST
  /// standard. Applicable to all creative types. Acceptable values are: - "APP"
  /// - "APP_INTERSTITIAL" - "IN_STREAM_VIDEO" - "IN_STREAM_AUDIO" - "DISPLAY" -
  /// "DISPLAY_INTERSTITIAL"
  core.List<core.String>? compatibility;

  /// Whether Flash assets associated with the creative need to be automatically
  /// converted to HTML5.
  ///
  /// This flag is enabled by default and users can choose to disable it if they
  /// don't want the system to generate and use HTML5 asset for this creative.
  /// Applicable to the following creative type: FLASH_INPAGE. Applicable to
  /// DISPLAY when the primary asset type is not HTML_IMAGE.
  core.bool? convertFlashToHtml5;

  /// List of counter events configured for the creative.
  ///
  /// For DISPLAY_IMAGE_GALLERY creatives, these are read-only and
  /// auto-generated from clickTags. Applicable to the following creative types:
  /// DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID.
  core.List<CreativeCustomEvent>? counterCustomEvents;

  /// Required if dynamicAssetSelection is true.
  CreativeAssetSelection? creativeAssetSelection;

  /// Assets associated with a creative.
  ///
  /// Applicable to all but the following creative types: INTERNAL_REDIRECT,
  /// INTERSTITIAL_INTERNAL_REDIRECT, and REDIRECT
  core.List<CreativeAsset>? creativeAssets;

  /// Creative field assignments for this creative.
  ///
  /// Applicable to all creative types.
  core.List<CreativeFieldAssignment>? creativeFieldAssignments;

  /// Custom key-values for a Rich Media creative.
  ///
  /// Key-values let you customize the creative settings of a Rich Media ad
  /// running on your site without having to contact the advertiser. You can use
  /// key-values to dynamically change the look or functionality of a creative.
  /// Applicable to the following creative types: all RICH_MEDIA, and all VPAID.
  core.List<core.String>? customKeyValues;

  /// Set this to true to enable the use of rules to target individual assets in
  /// this creative.
  ///
  /// When set to true creativeAssetSelection must be set. This also controls
  /// asset-level companions. When this is true, companion creatives should be
  /// assigned to creative assets. Learn more. Applicable to INSTREAM_VIDEO
  /// creatives.
  core.bool? dynamicAssetSelection;

  /// List of exit events configured for the creative.
  ///
  /// For DISPLAY and DISPLAY_IMAGE_GALLERY creatives, these are read-only and
  /// auto-generated from clickTags, For DISPLAY, an event is also created from
  /// the backupImageReportingLabel. Applicable to the following creative types:
  /// DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Applicable to
  /// DISPLAY when the primary asset type is not HTML_IMAGE.
  core.List<CreativeCustomEvent>? exitCustomEvents;

  /// OpenWindow FSCommand of this creative.
  ///
  /// This lets the SWF file communicate with either Flash Player or the program
  /// hosting Flash Player, such as a web browser. This is only triggered if
  /// allowScriptAccess field is true. Applicable to the following creative
  /// types: FLASH_INPAGE.
  FsCommand? fsCommand;

  /// HTML code for the creative.
  ///
  /// This is a required field when applicable. This field is ignored if
  /// htmlCodeLocked is true. Applicable to the following creative types: all
  /// CUSTOM, FLASH_INPAGE, and HTML5_BANNER, and all RICH_MEDIA.
  core.String? htmlCode;

  /// Whether HTML code is generated by Campaign Manager or manually entered.
  ///
  /// Set to true to ignore changes to htmlCode. Applicable to the following
  /// creative types: FLASH_INPAGE and HTML5_BANNER.
  core.bool? htmlCodeLocked;

  /// ID of this creative.
  ///
  /// This is a read-only, auto-generated field. Applicable to all creative
  /// types.
  core.String? id;

  /// Dimension value for the ID of this creative.
  ///
  /// This is a read-only field. Applicable to all creative types.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creative".
  core.String? kind;

  /// Creative last modification information.
  ///
  /// This is a read-only field. Applicable to all creative types.
  LastModifiedInfo? lastModifiedInfo;

  /// Latest Studio trafficked creative ID associated with rich media and VPAID
  /// creatives.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA, and all VPAID.
  core.String? latestTraffickedCreativeId;

  /// Description of the audio or video ad.
  ///
  /// Applicable to the following creative types: all INSTREAM_VIDEO,
  /// INSTREAM_AUDIO, and all VPAID.
  core.String? mediaDescription;

  /// Creative audio or video duration in seconds.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_VIDEO, INSTREAM_AUDIO, all RICH_MEDIA, and all VPAID.
  core.double? mediaDuration;

  /// Name of the creative.
  ///
  /// This is a required field and must be less than 256 characters long.
  /// Applicable to all creative types.
  core.String? name;

  /// Online behavioral advertising icon to be added to the creative.
  ///
  /// Applicable to the following creative types: all INSTREAM_VIDEO.
  ObaIcon? obaIcon;

  /// Override CSS value for rich media creatives.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  core.String? overrideCss;

  /// Amount of time to play the video before counting a view.
  ///
  /// Applicable to the following creative types: all INSTREAM_VIDEO.
  VideoOffset? progressOffset;

  /// URL of hosted image or hosted video or another ad tag.
  ///
  /// For INSTREAM_VIDEO_REDIRECT creatives this is the in-stream video redirect
  /// URL. The standard for a VAST (Video Ad Serving Template) ad response
  /// allows for a redirect link to another VAST 2.0 or 3.0 call. This is a
  /// required field when applicable. Applicable to the following creative
  /// types: DISPLAY_REDIRECT, INTERNAL_REDIRECT,
  /// INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO_REDIRECT
  core.String? redirectUrl;

  /// ID of current rendering version.
  ///
  /// This is a read-only field. Applicable to all creative types.
  core.String? renderingId;

  /// Dimension value for the rendering ID of this creative.
  ///
  /// This is a read-only field. Applicable to all creative types.
  DimensionValue? renderingIdDimensionValue;

  /// The minimum required Flash plugin version for this creative.
  ///
  /// For example, 11.2.202.235. This is a read-only field. Applicable to the
  /// following creative types: all RICH_MEDIA, and all VPAID.
  core.String? requiredFlashPluginVersion;

  /// The internal Flash version for this creative as calculated by Studio.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// FLASH_INPAGE all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the
  /// primary asset type is not HTML_IMAGE.
  core.int? requiredFlashVersion;

  /// Size associated with this creative.
  ///
  /// When inserting or updating a creative either the size ID field or size
  /// width and height fields can be used. This is a required field when
  /// applicable; however for IMAGE, FLASH_INPAGE creatives, and for DISPLAY
  /// creatives with a primary asset of type HTML_IMAGE, if left blank, this
  /// field will be automatically set using the actual size of the associated
  /// image assets. Applicable to the following creative types: DISPLAY,
  /// DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER, IMAGE, and all
  /// RICH_MEDIA.
  Size? size;

  /// Amount of time to play the video before the skip button appears.
  ///
  /// Applicable to the following creative types: all INSTREAM_VIDEO.
  VideoOffset? skipOffset;

  /// Whether the user can choose to skip the creative.
  ///
  /// Applicable to the following creative types: all INSTREAM_VIDEO and all
  /// VPAID.
  core.bool? skippable;

  /// Whether the creative is SSL-compliant.
  ///
  /// This is a read-only field. Applicable to all creative types.
  core.bool? sslCompliant;

  /// Whether creative should be treated as SSL compliant even if the system
  /// scan shows it's not.
  ///
  /// Applicable to all creative types.
  core.bool? sslOverride;

  /// Studio advertiser ID associated with rich media and VPAID creatives.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA, and all VPAID.
  core.String? studioAdvertiserId;

  /// Studio creative ID associated with rich media and VPAID creatives.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA, and all VPAID.
  core.String? studioCreativeId;

  /// Studio trafficked creative ID associated with rich media and VPAID
  /// creatives.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA, and all VPAID.
  core.String? studioTraffickedCreativeId;

  /// Subaccount ID of this creative.
  ///
  /// This field, if left unset, will be auto-generated for both insert and
  /// update operations. Applicable to all creative types.
  core.String? subaccountId;

  /// Third-party URL used to record backup image impressions.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  core.String? thirdPartyBackupImageImpressionsUrl;

  /// Third-party URL used to record rich media impressions.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  core.String? thirdPartyRichMediaImpressionsUrl;

  /// Third-party URLs for tracking in-stream creative events.
  ///
  /// Applicable to the following creative types: all INSTREAM_VIDEO, all
  /// INSTREAM_AUDIO, and all VPAID.
  core.List<ThirdPartyTrackingUrl>? thirdPartyUrls;

  /// List of timer events configured for the creative.
  ///
  /// For DISPLAY_IMAGE_GALLERY creatives, these are read-only and
  /// auto-generated from clickTags. Applicable to the following creative types:
  /// DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Applicable to
  /// DISPLAY when the primary asset is not HTML_IMAGE.
  core.List<CreativeCustomEvent>? timerCustomEvents;

  /// Combined size of all creative assets.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA, and all VPAID.
  core.String? totalFileSize;

  /// Type of this creative.
  ///
  /// This is a required field. Applicable to all creative types. *Note:*
  /// FLASH_INPAGE, HTML5_BANNER, and IMAGE are only used for existing
  /// creatives. New creatives should use DISPLAY as a replacement for these
  /// types.
  /// Possible string values are:
  /// - "IMAGE"
  /// - "DISPLAY_REDIRECT"
  /// - "CUSTOM_DISPLAY"
  /// - "INTERNAL_REDIRECT"
  /// - "CUSTOM_DISPLAY_INTERSTITIAL"
  /// - "INTERSTITIAL_INTERNAL_REDIRECT"
  /// - "TRACKING_TEXT"
  /// - "RICH_MEDIA_DISPLAY_BANNER"
  /// - "RICH_MEDIA_INPAGE_FLOATING"
  /// - "RICH_MEDIA_IM_EXPAND"
  /// - "RICH_MEDIA_DISPLAY_EXPANDING"
  /// - "RICH_MEDIA_DISPLAY_INTERSTITIAL"
  /// - "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL"
  /// - "RICH_MEDIA_MOBILE_IN_APP"
  /// - "FLASH_INPAGE"
  /// - "INSTREAM_VIDEO"
  /// - "VPAID_LINEAR_VIDEO"
  /// - "VPAID_NON_LINEAR_VIDEO"
  /// - "INSTREAM_VIDEO_REDIRECT"
  /// - "RICH_MEDIA_PEEL_DOWN"
  /// - "HTML5_BANNER"
  /// - "DISPLAY"
  /// - "DISPLAY_IMAGE_GALLERY"
  /// - "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO"
  /// - "INSTREAM_AUDIO"
  core.String? type;

  /// A Universal Ad ID as per the VAST 4.0 spec.
  ///
  /// Applicable to the following creative types: INSTREAM_AUDIO and
  /// INSTREAM_VIDEO and VPAID.
  UniversalAdId? universalAdId;

  /// The version number helps you keep track of multiple versions of your
  /// creative in your reports.
  ///
  /// The version number will always be auto-generated during insert operations
  /// to start at 1. For tracking creatives the version cannot be incremented
  /// and will always remain at 1. For all other creative types the version can
  /// be incremented only by 1 during update operations. In addition, the
  /// version will be automatically incremented by 1 when undergoing Rich Media
  /// creative merging. Applicable to all creative types.
  core.int? version;

  Creative({
    this.accountId,
    this.active,
    this.adParameters,
    this.adTagKeys,
    this.additionalSizes,
    this.advertiserId,
    this.allowScriptAccess,
    this.archived,
    this.artworkType,
    this.authoringSource,
    this.authoringTool,
    this.autoAdvanceImages,
    this.backgroundColor,
    this.backupImageClickThroughUrl,
    this.backupImageFeatures,
    this.backupImageReportingLabel,
    this.backupImageTargetWindow,
    this.clickTags,
    this.commercialId,
    this.companionCreatives,
    this.compatibility,
    this.convertFlashToHtml5,
    this.counterCustomEvents,
    this.creativeAssetSelection,
    this.creativeAssets,
    this.creativeFieldAssignments,
    this.customKeyValues,
    this.dynamicAssetSelection,
    this.exitCustomEvents,
    this.fsCommand,
    this.htmlCode,
    this.htmlCodeLocked,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.lastModifiedInfo,
    this.latestTraffickedCreativeId,
    this.mediaDescription,
    this.mediaDuration,
    this.name,
    this.obaIcon,
    this.overrideCss,
    this.progressOffset,
    this.redirectUrl,
    this.renderingId,
    this.renderingIdDimensionValue,
    this.requiredFlashPluginVersion,
    this.requiredFlashVersion,
    this.size,
    this.skipOffset,
    this.skippable,
    this.sslCompliant,
    this.sslOverride,
    this.studioAdvertiserId,
    this.studioCreativeId,
    this.studioTraffickedCreativeId,
    this.subaccountId,
    this.thirdPartyBackupImageImpressionsUrl,
    this.thirdPartyRichMediaImpressionsUrl,
    this.thirdPartyUrls,
    this.timerCustomEvents,
    this.totalFileSize,
    this.type,
    this.universalAdId,
    this.version,
  });

  Creative.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          adParameters: json_.containsKey('adParameters')
              ? json_['adParameters'] as core.String
              : null,
          adTagKeys: json_.containsKey('adTagKeys')
              ? (json_['adTagKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalSizes: json_.containsKey('additionalSizes')
              ? (json_['additionalSizes'] as core.List)
                  .map((value) => Size.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          allowScriptAccess: json_.containsKey('allowScriptAccess')
              ? json_['allowScriptAccess'] as core.bool
              : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          artworkType: json_.containsKey('artworkType')
              ? json_['artworkType'] as core.String
              : null,
          authoringSource: json_.containsKey('authoringSource')
              ? json_['authoringSource'] as core.String
              : null,
          authoringTool: json_.containsKey('authoringTool')
              ? json_['authoringTool'] as core.String
              : null,
          autoAdvanceImages: json_.containsKey('autoAdvanceImages')
              ? json_['autoAdvanceImages'] as core.bool
              : null,
          backgroundColor: json_.containsKey('backgroundColor')
              ? json_['backgroundColor'] as core.String
              : null,
          backupImageClickThroughUrl:
              json_.containsKey('backupImageClickThroughUrl')
                  ? CreativeClickThroughUrl.fromJson(
                      json_['backupImageClickThroughUrl']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          backupImageFeatures: json_.containsKey('backupImageFeatures')
              ? (json_['backupImageFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          backupImageReportingLabel:
              json_.containsKey('backupImageReportingLabel')
                  ? json_['backupImageReportingLabel'] as core.String
                  : null,
          backupImageTargetWindow: json_.containsKey('backupImageTargetWindow')
              ? TargetWindow.fromJson(json_['backupImageTargetWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clickTags: json_.containsKey('clickTags')
              ? (json_['clickTags'] as core.List)
                  .map((value) => ClickTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          commercialId: json_.containsKey('commercialId')
              ? json_['commercialId'] as core.String
              : null,
          companionCreatives: json_.containsKey('companionCreatives')
              ? (json_['companionCreatives'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          compatibility: json_.containsKey('compatibility')
              ? (json_['compatibility'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          convertFlashToHtml5: json_.containsKey('convertFlashToHtml5')
              ? json_['convertFlashToHtml5'] as core.bool
              : null,
          counterCustomEvents: json_.containsKey('counterCustomEvents')
              ? (json_['counterCustomEvents'] as core.List)
                  .map((value) => CreativeCustomEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creativeAssetSelection: json_.containsKey('creativeAssetSelection')
              ? CreativeAssetSelection.fromJson(json_['creativeAssetSelection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          creativeAssets: json_.containsKey('creativeAssets')
              ? (json_['creativeAssets'] as core.List)
                  .map((value) => CreativeAsset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creativeFieldAssignments:
              json_.containsKey('creativeFieldAssignments')
                  ? (json_['creativeFieldAssignments'] as core.List)
                      .map((value) => CreativeFieldAssignment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          customKeyValues: json_.containsKey('customKeyValues')
              ? (json_['customKeyValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dynamicAssetSelection: json_.containsKey('dynamicAssetSelection')
              ? json_['dynamicAssetSelection'] as core.bool
              : null,
          exitCustomEvents: json_.containsKey('exitCustomEvents')
              ? (json_['exitCustomEvents'] as core.List)
                  .map((value) => CreativeCustomEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fsCommand: json_.containsKey('fsCommand')
              ? FsCommand.fromJson(
                  json_['fsCommand'] as core.Map<core.String, core.dynamic>)
              : null,
          htmlCode: json_.containsKey('htmlCode')
              ? json_['htmlCode'] as core.String
              : null,
          htmlCodeLocked: json_.containsKey('htmlCodeLocked')
              ? json_['htmlCodeLocked'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          latestTraffickedCreativeId:
              json_.containsKey('latestTraffickedCreativeId')
                  ? json_['latestTraffickedCreativeId'] as core.String
                  : null,
          mediaDescription: json_.containsKey('mediaDescription')
              ? json_['mediaDescription'] as core.String
              : null,
          mediaDuration: json_.containsKey('mediaDuration')
              ? (json_['mediaDuration'] as core.num).toDouble()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          obaIcon: json_.containsKey('obaIcon')
              ? ObaIcon.fromJson(
                  json_['obaIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          overrideCss: json_.containsKey('overrideCss')
              ? json_['overrideCss'] as core.String
              : null,
          progressOffset: json_.containsKey('progressOffset')
              ? VideoOffset.fromJson(json_['progressOffset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          redirectUrl: json_.containsKey('redirectUrl')
              ? json_['redirectUrl'] as core.String
              : null,
          renderingId: json_.containsKey('renderingId')
              ? json_['renderingId'] as core.String
              : null,
          renderingIdDimensionValue:
              json_.containsKey('renderingIdDimensionValue')
                  ? DimensionValue.fromJson(json_['renderingIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          requiredFlashPluginVersion:
              json_.containsKey('requiredFlashPluginVersion')
                  ? json_['requiredFlashPluginVersion'] as core.String
                  : null,
          requiredFlashVersion: json_.containsKey('requiredFlashVersion')
              ? json_['requiredFlashVersion'] as core.int
              : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          skipOffset: json_.containsKey('skipOffset')
              ? VideoOffset.fromJson(
                  json_['skipOffset'] as core.Map<core.String, core.dynamic>)
              : null,
          skippable: json_.containsKey('skippable')
              ? json_['skippable'] as core.bool
              : null,
          sslCompliant: json_.containsKey('sslCompliant')
              ? json_['sslCompliant'] as core.bool
              : null,
          sslOverride: json_.containsKey('sslOverride')
              ? json_['sslOverride'] as core.bool
              : null,
          studioAdvertiserId: json_.containsKey('studioAdvertiserId')
              ? json_['studioAdvertiserId'] as core.String
              : null,
          studioCreativeId: json_.containsKey('studioCreativeId')
              ? json_['studioCreativeId'] as core.String
              : null,
          studioTraffickedCreativeId:
              json_.containsKey('studioTraffickedCreativeId')
                  ? json_['studioTraffickedCreativeId'] as core.String
                  : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          thirdPartyBackupImageImpressionsUrl:
              json_.containsKey('thirdPartyBackupImageImpressionsUrl')
                  ? json_['thirdPartyBackupImageImpressionsUrl'] as core.String
                  : null,
          thirdPartyRichMediaImpressionsUrl:
              json_.containsKey('thirdPartyRichMediaImpressionsUrl')
                  ? json_['thirdPartyRichMediaImpressionsUrl'] as core.String
                  : null,
          thirdPartyUrls: json_.containsKey('thirdPartyUrls')
              ? (json_['thirdPartyUrls'] as core.List)
                  .map((value) => ThirdPartyTrackingUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timerCustomEvents: json_.containsKey('timerCustomEvents')
              ? (json_['timerCustomEvents'] as core.List)
                  .map((value) => CreativeCustomEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalFileSize: json_.containsKey('totalFileSize')
              ? json_['totalFileSize'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          universalAdId: json_.containsKey('universalAdId')
              ? UniversalAdId.fromJson(
                  json_['universalAdId'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (adParameters != null) 'adParameters': adParameters!,
        if (adTagKeys != null) 'adTagKeys': adTagKeys!,
        if (additionalSizes != null) 'additionalSizes': additionalSizes!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (allowScriptAccess != null) 'allowScriptAccess': allowScriptAccess!,
        if (archived != null) 'archived': archived!,
        if (artworkType != null) 'artworkType': artworkType!,
        if (authoringSource != null) 'authoringSource': authoringSource!,
        if (authoringTool != null) 'authoringTool': authoringTool!,
        if (autoAdvanceImages != null) 'autoAdvanceImages': autoAdvanceImages!,
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (backupImageClickThroughUrl != null)
          'backupImageClickThroughUrl': backupImageClickThroughUrl!,
        if (backupImageFeatures != null)
          'backupImageFeatures': backupImageFeatures!,
        if (backupImageReportingLabel != null)
          'backupImageReportingLabel': backupImageReportingLabel!,
        if (backupImageTargetWindow != null)
          'backupImageTargetWindow': backupImageTargetWindow!,
        if (clickTags != null) 'clickTags': clickTags!,
        if (commercialId != null) 'commercialId': commercialId!,
        if (companionCreatives != null)
          'companionCreatives': companionCreatives!,
        if (compatibility != null) 'compatibility': compatibility!,
        if (convertFlashToHtml5 != null)
          'convertFlashToHtml5': convertFlashToHtml5!,
        if (counterCustomEvents != null)
          'counterCustomEvents': counterCustomEvents!,
        if (creativeAssetSelection != null)
          'creativeAssetSelection': creativeAssetSelection!,
        if (creativeAssets != null) 'creativeAssets': creativeAssets!,
        if (creativeFieldAssignments != null)
          'creativeFieldAssignments': creativeFieldAssignments!,
        if (customKeyValues != null) 'customKeyValues': customKeyValues!,
        if (dynamicAssetSelection != null)
          'dynamicAssetSelection': dynamicAssetSelection!,
        if (exitCustomEvents != null) 'exitCustomEvents': exitCustomEvents!,
        if (fsCommand != null) 'fsCommand': fsCommand!,
        if (htmlCode != null) 'htmlCode': htmlCode!,
        if (htmlCodeLocked != null) 'htmlCodeLocked': htmlCodeLocked!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (latestTraffickedCreativeId != null)
          'latestTraffickedCreativeId': latestTraffickedCreativeId!,
        if (mediaDescription != null) 'mediaDescription': mediaDescription!,
        if (mediaDuration != null) 'mediaDuration': mediaDuration!,
        if (name != null) 'name': name!,
        if (obaIcon != null) 'obaIcon': obaIcon!,
        if (overrideCss != null) 'overrideCss': overrideCss!,
        if (progressOffset != null) 'progressOffset': progressOffset!,
        if (redirectUrl != null) 'redirectUrl': redirectUrl!,
        if (renderingId != null) 'renderingId': renderingId!,
        if (renderingIdDimensionValue != null)
          'renderingIdDimensionValue': renderingIdDimensionValue!,
        if (requiredFlashPluginVersion != null)
          'requiredFlashPluginVersion': requiredFlashPluginVersion!,
        if (requiredFlashVersion != null)
          'requiredFlashVersion': requiredFlashVersion!,
        if (size != null) 'size': size!,
        if (skipOffset != null) 'skipOffset': skipOffset!,
        if (skippable != null) 'skippable': skippable!,
        if (sslCompliant != null) 'sslCompliant': sslCompliant!,
        if (sslOverride != null) 'sslOverride': sslOverride!,
        if (studioAdvertiserId != null)
          'studioAdvertiserId': studioAdvertiserId!,
        if (studioCreativeId != null) 'studioCreativeId': studioCreativeId!,
        if (studioTraffickedCreativeId != null)
          'studioTraffickedCreativeId': studioTraffickedCreativeId!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (thirdPartyBackupImageImpressionsUrl != null)
          'thirdPartyBackupImageImpressionsUrl':
              thirdPartyBackupImageImpressionsUrl!,
        if (thirdPartyRichMediaImpressionsUrl != null)
          'thirdPartyRichMediaImpressionsUrl':
              thirdPartyRichMediaImpressionsUrl!,
        if (thirdPartyUrls != null) 'thirdPartyUrls': thirdPartyUrls!,
        if (timerCustomEvents != null) 'timerCustomEvents': timerCustomEvents!,
        if (totalFileSize != null) 'totalFileSize': totalFileSize!,
        if (type != null) 'type': type!,
        if (universalAdId != null) 'universalAdId': universalAdId!,
        if (version != null) 'version': version!,
      };
}

/// Creative Asset.
class CreativeAsset {
  /// Whether ActionScript3 is enabled for the flash asset.
  ///
  /// This is a read-only field. Applicable to the following creative type:
  /// FLASH_INPAGE. Applicable to DISPLAY when the primary asset type is not
  /// HTML_IMAGE.
  core.bool? actionScript3;

  /// Whether the video or audio asset is active.
  ///
  /// This is a read-only field for VPAID_NON_LINEAR_VIDEO assets. Applicable to
  /// the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all
  /// VPAID.
  core.bool? active;

  /// Additional sizes associated with this creative asset.
  ///
  /// HTML5 asset generated by compatible software such as GWD will be able to
  /// support more sizes this creative asset can render.
  core.List<Size>? additionalSizes;

  /// Possible alignments for an asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL .
  /// Possible string values are:
  /// - "ALIGNMENT_TOP"
  /// - "ALIGNMENT_RIGHT"
  /// - "ALIGNMENT_BOTTOM"
  /// - "ALIGNMENT_LEFT"
  core.String? alignment;

  /// Artwork type of rich media creative.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA.
  /// Possible string values are:
  /// - "ARTWORK_TYPE_FLASH"
  /// - "ARTWORK_TYPE_HTML5"
  /// - "ARTWORK_TYPE_MIXED"
  /// - "ARTWORK_TYPE_IMAGE"
  core.String? artworkType;

  /// Identifier of this asset.
  ///
  /// This is the same identifier returned during creative asset insert
  /// operation. This is a required field. Applicable to all but the following
  /// creative types: all REDIRECT and TRACKING_TEXT.
  CreativeAssetId? assetIdentifier;

  /// Audio stream bit rate in kbps.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.
  core.int? audioBitRate;

  /// Audio sample bit rate in hertz.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.
  core.int? audioSampleRate;

  /// Exit event configured for the backup image.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  CreativeCustomEvent? backupImageExit;

  /// Detected bit-rate for audio or video asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.
  core.int? bitRate;

  /// Rich media child asset type.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// VPAID.
  /// Possible string values are:
  /// - "CHILD_ASSET_TYPE_FLASH"
  /// - "CHILD_ASSET_TYPE_VIDEO"
  /// - "CHILD_ASSET_TYPE_IMAGE"
  /// - "CHILD_ASSET_TYPE_DATA"
  core.String? childAssetType;

  /// Size of an asset when collapsed.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA and all VPAID. Additionally, applicable to assets whose
  /// displayType is ASSET_DISPLAY_TYPE_EXPANDING or
  /// ASSET_DISPLAY_TYPE_PEEL_DOWN.
  Size? collapsedSize;

  /// List of companion creatives assigned to an in-stream video creative asset.
  ///
  /// Acceptable values include IDs of existing flash and image creatives.
  /// Applicable to INSTREAM_VIDEO creative type with dynamicAssetSelection set
  /// to true.
  core.List<core.String>? companionCreativeIds;

  /// Custom start time in seconds for making the asset visible.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA. Value must be
  /// greater than or equal to 0.
  core.int? customStartTimeValue;

  /// List of feature dependencies for the creative asset that are detected by
  /// Campaign Manager.
  ///
  /// Feature dependencies are features that a browser must be able to support
  /// in order to render your HTML5 creative correctly. This is a read-only,
  /// auto-generated field. Applicable to the following creative types:
  /// HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not
  /// HTML_IMAGE.
  core.List<core.String>? detectedFeatures;

  /// Type of rich media asset.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA.
  /// Possible string values are:
  /// - "ASSET_DISPLAY_TYPE_INPAGE"
  /// - "ASSET_DISPLAY_TYPE_FLOATING"
  /// - "ASSET_DISPLAY_TYPE_OVERLAY"
  /// - "ASSET_DISPLAY_TYPE_EXPANDING"
  /// - "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH"
  /// - "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING"
  /// - "ASSET_DISPLAY_TYPE_PEEL_DOWN"
  /// - "ASSET_DISPLAY_TYPE_VPAID_LINEAR"
  /// - "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR"
  /// - "ASSET_DISPLAY_TYPE_BACKDROP"
  core.String? displayType;

  /// Duration in seconds for which an asset will be displayed.
  ///
  /// Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO
  /// and VPAID_LINEAR_VIDEO. Value must be greater than or equal to 1.
  core.int? duration;

  /// Duration type for which an asset will be displayed.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  /// Possible string values are:
  /// - "ASSET_DURATION_TYPE_AUTO"
  /// - "ASSET_DURATION_TYPE_NONE"
  /// - "ASSET_DURATION_TYPE_CUSTOM"
  core.String? durationType;

  /// Detected expanded dimension for video asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_VIDEO and all VPAID.
  Size? expandedDimension;

  /// File size associated with this creative asset.
  ///
  /// This is a read-only field. Applicable to all but the following creative
  /// types: all REDIRECT and TRACKING_TEXT.
  core.String? fileSize;

  /// Flash version of the asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// FLASH_INPAGE, all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when
  /// the primary asset type is not HTML_IMAGE.
  core.int? flashVersion;

  /// Video frame rate for video asset in frames per second.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_VIDEO and all VPAID.
  core.double? frameRate;

  /// Whether to hide Flash objects flag for an asset.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  core.bool? hideFlashObjects;

  /// Whether to hide selection boxes flag for an asset.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  core.bool? hideSelectionBoxes;

  /// Whether the asset is horizontally locked.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA.
  core.bool? horizontallyLocked;

  /// Numeric ID of this creative asset.
  ///
  /// This is a required field and should not be modified. Applicable to all but
  /// the following creative types: all REDIRECT and TRACKING_TEXT.
  core.String? id;

  /// Dimension value for the ID of the asset.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Detected duration for audio or video asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.
  core.double? mediaDuration;

  /// Detected MIME type for audio or video asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.
  core.String? mimeType;

  /// Offset position for an asset in collapsed mode.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA and all VPAID. Additionally, only applicable to assets whose
  /// displayType is ASSET_DISPLAY_TYPE_EXPANDING or
  /// ASSET_DISPLAY_TYPE_PEEL_DOWN.
  OffsetPosition? offset;

  /// Orientation of video asset.
  ///
  /// This is a read-only, auto-generated field.
  /// Possible string values are:
  /// - "LANDSCAPE"
  /// - "PORTRAIT"
  /// - "SQUARE"
  core.String? orientation;

  /// Whether the backup asset is original or changed by the user in Campaign
  /// Manager.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  core.bool? originalBackup;

  /// Whether this asset is used as a polite load asset.
  core.bool? politeLoad;

  /// Offset position for an asset.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  OffsetPosition? position;

  /// Offset left unit for an asset.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA.
  /// Possible string values are:
  /// - "OFFSET_UNIT_PIXEL"
  /// - "OFFSET_UNIT_PERCENT"
  /// - "OFFSET_UNIT_PIXEL_FROM_CENTER"
  core.String? positionLeftUnit;

  /// Offset top unit for an asset.
  ///
  /// This is a read-only field if the asset displayType is
  /// ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following creative types:
  /// all RICH_MEDIA.
  /// Possible string values are:
  /// - "OFFSET_UNIT_PIXEL"
  /// - "OFFSET_UNIT_PERCENT"
  /// - "OFFSET_UNIT_PIXEL_FROM_CENTER"
  core.String? positionTopUnit;

  /// Progressive URL for video asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_VIDEO and all VPAID.
  core.String? progressiveServingUrl;

  /// Whether the asset pushes down other content.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA. Additionally,
  /// only applicable when the asset offsets are 0, the collapsedSize.width
  /// matches size.width, and the collapsedSize.height is less than size.height.
  core.bool? pushdown;

  /// Pushdown duration in seconds for an asset.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.Additionally,
  /// only applicable when the asset pushdown field is true, the offsets are 0,
  /// the collapsedSize.width matches size.width, and the collapsedSize.height
  /// is less than size.height. Acceptable values are 0 to 9.99, inclusive.
  core.double? pushdownDuration;

  /// Role of the asset in relation to creative.
  ///
  /// Applicable to all but the following creative types: all REDIRECT and
  /// TRACKING_TEXT. This is a required field. PRIMARY applies to DISPLAY,
  /// FLASH_INPAGE, HTML5_BANNER, IMAGE, DISPLAY_IMAGE_GALLERY, all RICH_MEDIA
  /// (which may contain multiple primary assets), and all VPAID creatives.
  /// BACKUP_IMAGE applies to FLASH_INPAGE, HTML5_BANNER, all RICH_MEDIA, and
  /// all VPAID creatives. Applicable to DISPLAY when the primary asset type is
  /// not HTML_IMAGE. ADDITIONAL_IMAGE and ADDITIONAL_FLASH apply to
  /// FLASH_INPAGE creatives. OTHER refers to assets from sources other than
  /// Campaign Manager, such as Studio uploaded assets, applicable to all
  /// RICH_MEDIA and all VPAID creatives. PARENT_VIDEO refers to videos uploaded
  /// by the user in Campaign Manager and is applicable to INSTREAM_VIDEO and
  /// VPAID_LINEAR_VIDEO creatives. TRANSCODED_VIDEO refers to videos transcoded
  /// by Campaign Manager from PARENT_VIDEO assets and is applicable to
  /// INSTREAM_VIDEO and VPAID_LINEAR_VIDEO creatives. ALTERNATE_VIDEO refers to
  /// the Campaign Manager representation of child asset videos from Studio, and
  /// is applicable to VPAID_LINEAR_VIDEO creatives. These cannot be added or
  /// removed within Campaign Manager. For VPAID_LINEAR_VIDEO creatives,
  /// PARENT_VIDEO, TRANSCODED_VIDEO and ALTERNATE_VIDEO assets that are marked
  /// active serve as backup in case the VPAID creative cannot be served. Only
  /// PARENT_VIDEO assets can be added or removed for an INSTREAM_VIDEO or
  /// VPAID_LINEAR_VIDEO creative. PARENT_AUDIO refers to audios uploaded by the
  /// user in Campaign Manager and is applicable to INSTREAM_AUDIO creatives.
  /// TRANSCODED_AUDIO refers to audios transcoded by Campaign Manager from
  /// PARENT_AUDIO assets and is applicable to INSTREAM_AUDIO creatives.
  /// Possible string values are:
  /// - "PRIMARY"
  /// - "BACKUP_IMAGE"
  /// - "ADDITIONAL_IMAGE"
  /// - "ADDITIONAL_FLASH"
  /// - "PARENT_VIDEO"
  /// - "TRANSCODED_VIDEO"
  /// - "OTHER"
  /// - "ALTERNATE_VIDEO"
  /// - "PARENT_AUDIO"
  /// - "TRANSCODED_AUDIO"
  core.String? role;

  /// Size associated with this creative asset.
  ///
  /// This is a required field when applicable; however for IMAGE and
  /// FLASH_INPAGE, creatives if left blank, this field will be automatically
  /// set using the actual size of the associated image asset. Applicable to the
  /// following creative types: DISPLAY_IMAGE_GALLERY, FLASH_INPAGE,
  /// HTML5_BANNER, IMAGE, and all RICH_MEDIA. Applicable to DISPLAY when the
  /// primary asset type is not HTML_IMAGE.
  Size? size;

  /// Whether the asset is SSL-compliant.
  ///
  /// This is a read-only field. Applicable to all but the following creative
  /// types: all REDIRECT and TRACKING_TEXT.
  core.bool? sslCompliant;

  /// Initial wait time type before making the asset visible.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.
  /// Possible string values are:
  /// - "ASSET_START_TIME_TYPE_NONE"
  /// - "ASSET_START_TIME_TYPE_CUSTOM"
  core.String? startTimeType;

  /// Streaming URL for video asset.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// INSTREAM_VIDEO and all VPAID.
  core.String? streamingServingUrl;

  /// Whether the asset is transparent.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA. Additionally,
  /// only applicable to HTML5 assets.
  core.bool? transparency;

  /// Whether the asset is vertically locked.
  ///
  /// This is a read-only field. Applicable to the following creative types: all
  /// RICH_MEDIA.
  core.bool? verticallyLocked;

  /// Window mode options for flash assets.
  ///
  /// Applicable to the following creative types: FLASH_INPAGE,
  /// RICH_MEDIA_DISPLAY_EXPANDING, RICH_MEDIA_IM_EXPAND,
  /// RICH_MEDIA_DISPLAY_BANNER, and RICH_MEDIA_INPAGE_FLOATING.
  /// Possible string values are:
  /// - "OPAQUE"
  /// - "WINDOW"
  /// - "TRANSPARENT"
  core.String? windowMode;

  /// zIndex value of an asset.
  ///
  /// Applicable to the following creative types: all RICH_MEDIA.Additionally,
  /// only applicable to assets whose displayType is NOT one of the following
  /// types: ASSET_DISPLAY_TYPE_INPAGE or ASSET_DISPLAY_TYPE_OVERLAY. Acceptable
  /// values are -999999999 to 999999999, inclusive.
  core.int? zIndex;

  /// File name of zip file.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// HTML5_BANNER.
  core.String? zipFilename;

  /// Size of zip file.
  ///
  /// This is a read-only field. Applicable to the following creative types:
  /// HTML5_BANNER.
  core.String? zipFilesize;

  CreativeAsset({
    this.actionScript3,
    this.active,
    this.additionalSizes,
    this.alignment,
    this.artworkType,
    this.assetIdentifier,
    this.audioBitRate,
    this.audioSampleRate,
    this.backupImageExit,
    this.bitRate,
    this.childAssetType,
    this.collapsedSize,
    this.companionCreativeIds,
    this.customStartTimeValue,
    this.detectedFeatures,
    this.displayType,
    this.duration,
    this.durationType,
    this.expandedDimension,
    this.fileSize,
    this.flashVersion,
    this.frameRate,
    this.hideFlashObjects,
    this.hideSelectionBoxes,
    this.horizontallyLocked,
    this.id,
    this.idDimensionValue,
    this.mediaDuration,
    this.mimeType,
    this.offset,
    this.orientation,
    this.originalBackup,
    this.politeLoad,
    this.position,
    this.positionLeftUnit,
    this.positionTopUnit,
    this.progressiveServingUrl,
    this.pushdown,
    this.pushdownDuration,
    this.role,
    this.size,
    this.sslCompliant,
    this.startTimeType,
    this.streamingServingUrl,
    this.transparency,
    this.verticallyLocked,
    this.windowMode,
    this.zIndex,
    this.zipFilename,
    this.zipFilesize,
  });

  CreativeAsset.fromJson(core.Map json_)
      : this(
          actionScript3: json_.containsKey('actionScript3')
              ? json_['actionScript3'] as core.bool
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          additionalSizes: json_.containsKey('additionalSizes')
              ? (json_['additionalSizes'] as core.List)
                  .map((value) => Size.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          alignment: json_.containsKey('alignment')
              ? json_['alignment'] as core.String
              : null,
          artworkType: json_.containsKey('artworkType')
              ? json_['artworkType'] as core.String
              : null,
          assetIdentifier: json_.containsKey('assetIdentifier')
              ? CreativeAssetId.fromJson(json_['assetIdentifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          audioBitRate: json_.containsKey('audioBitRate')
              ? json_['audioBitRate'] as core.int
              : null,
          audioSampleRate: json_.containsKey('audioSampleRate')
              ? json_['audioSampleRate'] as core.int
              : null,
          backupImageExit: json_.containsKey('backupImageExit')
              ? CreativeCustomEvent.fromJson(json_['backupImageExit']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bitRate: json_.containsKey('bitRate')
              ? json_['bitRate'] as core.int
              : null,
          childAssetType: json_.containsKey('childAssetType')
              ? json_['childAssetType'] as core.String
              : null,
          collapsedSize: json_.containsKey('collapsedSize')
              ? Size.fromJson(
                  json_['collapsedSize'] as core.Map<core.String, core.dynamic>)
              : null,
          companionCreativeIds: json_.containsKey('companionCreativeIds')
              ? (json_['companionCreativeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          customStartTimeValue: json_.containsKey('customStartTimeValue')
              ? json_['customStartTimeValue'] as core.int
              : null,
          detectedFeatures: json_.containsKey('detectedFeatures')
              ? (json_['detectedFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayType: json_.containsKey('displayType')
              ? json_['displayType'] as core.String
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.int
              : null,
          durationType: json_.containsKey('durationType')
              ? json_['durationType'] as core.String
              : null,
          expandedDimension: json_.containsKey('expandedDimension')
              ? Size.fromJson(json_['expandedDimension']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fileSize: json_.containsKey('fileSize')
              ? json_['fileSize'] as core.String
              : null,
          flashVersion: json_.containsKey('flashVersion')
              ? json_['flashVersion'] as core.int
              : null,
          frameRate: json_.containsKey('frameRate')
              ? (json_['frameRate'] as core.num).toDouble()
              : null,
          hideFlashObjects: json_.containsKey('hideFlashObjects')
              ? json_['hideFlashObjects'] as core.bool
              : null,
          hideSelectionBoxes: json_.containsKey('hideSelectionBoxes')
              ? json_['hideSelectionBoxes'] as core.bool
              : null,
          horizontallyLocked: json_.containsKey('horizontallyLocked')
              ? json_['horizontallyLocked'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          mediaDuration: json_.containsKey('mediaDuration')
              ? (json_['mediaDuration'] as core.num).toDouble()
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          offset: json_.containsKey('offset')
              ? OffsetPosition.fromJson(
                  json_['offset'] as core.Map<core.String, core.dynamic>)
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          originalBackup: json_.containsKey('originalBackup')
              ? json_['originalBackup'] as core.bool
              : null,
          politeLoad: json_.containsKey('politeLoad')
              ? json_['politeLoad'] as core.bool
              : null,
          position: json_.containsKey('position')
              ? OffsetPosition.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          positionLeftUnit: json_.containsKey('positionLeftUnit')
              ? json_['positionLeftUnit'] as core.String
              : null,
          positionTopUnit: json_.containsKey('positionTopUnit')
              ? json_['positionTopUnit'] as core.String
              : null,
          progressiveServingUrl: json_.containsKey('progressiveServingUrl')
              ? json_['progressiveServingUrl'] as core.String
              : null,
          pushdown: json_.containsKey('pushdown')
              ? json_['pushdown'] as core.bool
              : null,
          pushdownDuration: json_.containsKey('pushdownDuration')
              ? (json_['pushdownDuration'] as core.num).toDouble()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          sslCompliant: json_.containsKey('sslCompliant')
              ? json_['sslCompliant'] as core.bool
              : null,
          startTimeType: json_.containsKey('startTimeType')
              ? json_['startTimeType'] as core.String
              : null,
          streamingServingUrl: json_.containsKey('streamingServingUrl')
              ? json_['streamingServingUrl'] as core.String
              : null,
          transparency: json_.containsKey('transparency')
              ? json_['transparency'] as core.bool
              : null,
          verticallyLocked: json_.containsKey('verticallyLocked')
              ? json_['verticallyLocked'] as core.bool
              : null,
          windowMode: json_.containsKey('windowMode')
              ? json_['windowMode'] as core.String
              : null,
          zIndex:
              json_.containsKey('zIndex') ? json_['zIndex'] as core.int : null,
          zipFilename: json_.containsKey('zipFilename')
              ? json_['zipFilename'] as core.String
              : null,
          zipFilesize: json_.containsKey('zipFilesize')
              ? json_['zipFilesize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionScript3 != null) 'actionScript3': actionScript3!,
        if (active != null) 'active': active!,
        if (additionalSizes != null) 'additionalSizes': additionalSizes!,
        if (alignment != null) 'alignment': alignment!,
        if (artworkType != null) 'artworkType': artworkType!,
        if (assetIdentifier != null) 'assetIdentifier': assetIdentifier!,
        if (audioBitRate != null) 'audioBitRate': audioBitRate!,
        if (audioSampleRate != null) 'audioSampleRate': audioSampleRate!,
        if (backupImageExit != null) 'backupImageExit': backupImageExit!,
        if (bitRate != null) 'bitRate': bitRate!,
        if (childAssetType != null) 'childAssetType': childAssetType!,
        if (collapsedSize != null) 'collapsedSize': collapsedSize!,
        if (companionCreativeIds != null)
          'companionCreativeIds': companionCreativeIds!,
        if (customStartTimeValue != null)
          'customStartTimeValue': customStartTimeValue!,
        if (detectedFeatures != null) 'detectedFeatures': detectedFeatures!,
        if (displayType != null) 'displayType': displayType!,
        if (duration != null) 'duration': duration!,
        if (durationType != null) 'durationType': durationType!,
        if (expandedDimension != null) 'expandedDimension': expandedDimension!,
        if (fileSize != null) 'fileSize': fileSize!,
        if (flashVersion != null) 'flashVersion': flashVersion!,
        if (frameRate != null) 'frameRate': frameRate!,
        if (hideFlashObjects != null) 'hideFlashObjects': hideFlashObjects!,
        if (hideSelectionBoxes != null)
          'hideSelectionBoxes': hideSelectionBoxes!,
        if (horizontallyLocked != null)
          'horizontallyLocked': horizontallyLocked!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (mediaDuration != null) 'mediaDuration': mediaDuration!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (offset != null) 'offset': offset!,
        if (orientation != null) 'orientation': orientation!,
        if (originalBackup != null) 'originalBackup': originalBackup!,
        if (politeLoad != null) 'politeLoad': politeLoad!,
        if (position != null) 'position': position!,
        if (positionLeftUnit != null) 'positionLeftUnit': positionLeftUnit!,
        if (positionTopUnit != null) 'positionTopUnit': positionTopUnit!,
        if (progressiveServingUrl != null)
          'progressiveServingUrl': progressiveServingUrl!,
        if (pushdown != null) 'pushdown': pushdown!,
        if (pushdownDuration != null) 'pushdownDuration': pushdownDuration!,
        if (role != null) 'role': role!,
        if (size != null) 'size': size!,
        if (sslCompliant != null) 'sslCompliant': sslCompliant!,
        if (startTimeType != null) 'startTimeType': startTimeType!,
        if (streamingServingUrl != null)
          'streamingServingUrl': streamingServingUrl!,
        if (transparency != null) 'transparency': transparency!,
        if (verticallyLocked != null) 'verticallyLocked': verticallyLocked!,
        if (windowMode != null) 'windowMode': windowMode!,
        if (zIndex != null) 'zIndex': zIndex!,
        if (zipFilename != null) 'zipFilename': zipFilename!,
        if (zipFilesize != null) 'zipFilesize': zipFilesize!,
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
              ? CreativeAssetId.fromJson(json_['assetIdentifier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          clickTags: json_.containsKey('clickTags')
              ? (json_['clickTags'] as core.List)
                  .map((value) => ClickTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          counterCustomEvents: json_.containsKey('counterCustomEvents')
              ? (json_['counterCustomEvents'] as core.List)
                  .map((value) => CreativeCustomEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedFeatures: json_.containsKey('detectedFeatures')
              ? (json_['detectedFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exitCustomEvents: json_.containsKey('exitCustomEvents')
              ? (json_['exitCustomEvents'] as core.List)
                  .map((value) => CreativeCustomEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          richMedia: json_.containsKey('richMedia')
              ? json_['richMedia'] as core.bool
              : null,
          timerCustomEvents: json_.containsKey('timerCustomEvents')
              ? (json_['timerCustomEvents'] as core.List)
                  .map((value) => CreativeCustomEvent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          warnedValidationRules: json_.containsKey('warnedValidationRules')
              ? (json_['warnedValidationRules'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
        if (richMedia != null) 'richMedia': richMedia!,
        if (timerCustomEvents != null) 'timerCustomEvents': timerCustomEvents!,
        if (warnedValidationRules != null)
          'warnedValidationRules': warnedValidationRules!,
      };
}

/// Encapsulates the list of rules for asset selection and a default asset in
/// case none of the rules match.
///
/// Applicable to INSTREAM_VIDEO creatives.
class CreativeAssetSelection {
  /// A creativeAssets\[\].id.
  ///
  /// This should refer to one of the parent assets in this creative, and will
  /// be served if none of the rules match. This is a required field.
  core.String? defaultAssetId;

  /// Rules determine which asset will be served to a viewer.
  ///
  /// Rules will be evaluated in the order in which they are stored in this
  /// list. This list must contain at least one rule. Applicable to
  /// INSTREAM_VIDEO creatives.
  core.List<Rule>? rules;

  CreativeAssetSelection({
    this.defaultAssetId,
    this.rules,
  });

  CreativeAssetSelection.fromJson(core.Map json_)
      : this(
          defaultAssetId: json_.containsKey('defaultAssetId')
              ? json_['defaultAssetId'] as core.String
              : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultAssetId != null) 'defaultAssetId': defaultAssetId!,
        if (rules != null) 'rules': rules!,
      };
}

/// Creative Assignment.
class CreativeAssignment {
  /// Whether this creative assignment is active.
  ///
  /// When true, the creative will be included in the ad's rotation.
  core.bool? active;

  /// Whether applicable event tags should fire when this creative assignment is
  /// rendered.
  ///
  /// If this value is unset when the ad is inserted or updated, it will default
  /// to true for all creative types EXCEPT for INTERNAL_REDIRECT,
  /// INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO.
  core.bool? applyEventTags;

  /// Click-through URL of the creative assignment.
  ClickThroughUrl? clickThroughUrl;

  /// Companion creative overrides for this creative assignment.
  ///
  /// Applicable to video ads.
  core.List<CompanionClickThroughOverride>? companionCreativeOverrides;

  /// Creative group assignments for this creative assignment.
  ///
  /// Only one assignment per creative group number is allowed for a maximum of
  /// two assignments.
  core.List<CreativeGroupAssignment>? creativeGroupAssignments;

  /// ID of the creative to be assigned.
  ///
  /// This is a required field.
  core.String? creativeId;

  /// Dimension value for the ID of the creative.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? creativeIdDimensionValue;
  core.DateTime? endTime;

  /// Rich media exit overrides for this creative assignment.
  ///
  /// Applicable when the creative type is any of the following: - DISPLAY -
  /// RICH_MEDIA_INPAGE - RICH_MEDIA_INPAGE_FLOATING - RICH_MEDIA_IM_EXPAND -
  /// RICH_MEDIA_EXPANDING - RICH_MEDIA_INTERSTITIAL_FLOAT -
  /// RICH_MEDIA_MOBILE_IN_APP - RICH_MEDIA_MULTI_FLOATING -
  /// RICH_MEDIA_PEEL_DOWN - VPAID_LINEAR - VPAID_NON_LINEAR
  core.List<RichMediaExitOverride>? richMediaExitOverrides;

  /// Sequence number of the creative assignment, applicable when the rotation
  /// type is CREATIVE_ROTATION_TYPE_SEQUENTIAL.
  ///
  /// Acceptable values are 1 to 65535, inclusive.
  core.int? sequence;

  /// Whether the creative to be assigned is SSL-compliant.
  ///
  /// This is a read-only field that is auto-generated when the ad is inserted
  /// or updated.
  core.bool? sslCompliant;
  core.DateTime? startTime;

  /// Weight of the creative assignment, applicable when the rotation type is
  /// CREATIVE_ROTATION_TYPE_RANDOM.
  ///
  /// Value must be greater than or equal to 1.
  core.int? weight;

  CreativeAssignment({
    this.active,
    this.applyEventTags,
    this.clickThroughUrl,
    this.companionCreativeOverrides,
    this.creativeGroupAssignments,
    this.creativeId,
    this.creativeIdDimensionValue,
    this.endTime,
    this.richMediaExitOverrides,
    this.sequence,
    this.sslCompliant,
    this.startTime,
    this.weight,
  });

  CreativeAssignment.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          applyEventTags: json_.containsKey('applyEventTags')
              ? json_['applyEventTags'] as core.bool
              : null,
          clickThroughUrl: json_.containsKey('clickThroughUrl')
              ? ClickThroughUrl.fromJson(json_['clickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          companionCreativeOverrides:
              json_.containsKey('companionCreativeOverrides')
                  ? (json_['companionCreativeOverrides'] as core.List)
                      .map((value) => CompanionClickThroughOverride.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          creativeGroupAssignments:
              json_.containsKey('creativeGroupAssignments')
                  ? (json_['creativeGroupAssignments'] as core.List)
                      .map((value) => CreativeGroupAssignment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          creativeId: json_.containsKey('creativeId')
              ? json_['creativeId'] as core.String
              : null,
          creativeIdDimensionValue:
              json_.containsKey('creativeIdDimensionValue')
                  ? DimensionValue.fromJson(json_['creativeIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          endTime: json_.containsKey('endTime')
              ? core.DateTime.parse(json_['endTime'] as core.String)
              : null,
          richMediaExitOverrides: json_.containsKey('richMediaExitOverrides')
              ? (json_['richMediaExitOverrides'] as core.List)
                  .map((value) => RichMediaExitOverride.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sequence: json_.containsKey('sequence')
              ? json_['sequence'] as core.int
              : null,
          sslCompliant: json_.containsKey('sslCompliant')
              ? json_['sslCompliant'] as core.bool
              : null,
          startTime: json_.containsKey('startTime')
              ? core.DateTime.parse(json_['startTime'] as core.String)
              : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (applyEventTags != null) 'applyEventTags': applyEventTags!,
        if (clickThroughUrl != null) 'clickThroughUrl': clickThroughUrl!,
        if (companionCreativeOverrides != null)
          'companionCreativeOverrides': companionCreativeOverrides!,
        if (creativeGroupAssignments != null)
          'creativeGroupAssignments': creativeGroupAssignments!,
        if (creativeId != null) 'creativeId': creativeId!,
        if (creativeIdDimensionValue != null)
          'creativeIdDimensionValue': creativeIdDimensionValue!,
        if (endTime != null) 'endTime': endTime!.toUtc().toIso8601String(),
        if (richMediaExitOverrides != null)
          'richMediaExitOverrides': richMediaExitOverrides!,
        if (sequence != null) 'sequence': sequence!,
        if (sslCompliant != null) 'sslCompliant': sslCompliant!,
        if (startTime != null)
          'startTime': startTime!.toUtc().toIso8601String(),
        if (weight != null) 'weight': weight!,
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
          advertiserCustomEventId: json_.containsKey('advertiserCustomEventId')
              ? json_['advertiserCustomEventId'] as core.String
              : null,
          advertiserCustomEventName:
              json_.containsKey('advertiserCustomEventName')
                  ? json_['advertiserCustomEventName'] as core.String
                  : null,
          advertiserCustomEventType:
              json_.containsKey('advertiserCustomEventType')
                  ? json_['advertiserCustomEventType'] as core.String
                  : null,
          artworkLabel: json_.containsKey('artworkLabel')
              ? json_['artworkLabel'] as core.String
              : null,
          artworkType: json_.containsKey('artworkType')
              ? json_['artworkType'] as core.String
              : null,
          exitClickThroughUrl: json_.containsKey('exitClickThroughUrl')
              ? CreativeClickThroughUrl.fromJson(json_['exitClickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          popupWindowProperties: json_.containsKey('popupWindowProperties')
              ? PopupWindowProperties.fromJson(json_['popupWindowProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targetType: json_.containsKey('targetType')
              ? json_['targetType'] as core.String
              : null,
          videoReportingId: json_.containsKey('videoReportingId')
              ? json_['videoReportingId'] as core.String
              : null,
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

/// Contains properties of a creative field.
class CreativeField {
  /// Account ID of this creative field.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of this creative field.
  ///
  /// This is a required field on insertion.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// ID of this creative field.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeField".
  core.String? kind;

  /// Name of this creative field.
  ///
  /// This is a required field and must be less than 256 characters long and
  /// unique among creative fields of the same advertiser.
  core.String? name;

  /// Subaccount ID of this creative field.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  CreativeField({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.id,
    this.kind,
    this.name,
    this.subaccountId,
  });

  CreativeField.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
      };
}

/// Creative Field Assignment.
typedef CreativeFieldAssignment = $CreativeFieldAssignment;

/// Contains properties of a creative field value.
typedef CreativeFieldValue = $CreativeFieldValue;

/// Creative Field Value List Response
class CreativeFieldValuesListResponse {
  /// Creative field value collection.
  core.List<CreativeFieldValue>? creativeFieldValues;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeFieldValuesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  CreativeFieldValuesListResponse({
    this.creativeFieldValues,
    this.kind,
    this.nextPageToken,
  });

  CreativeFieldValuesListResponse.fromJson(core.Map json_)
      : this(
          creativeFieldValues: json_.containsKey('creativeFieldValues')
              ? (json_['creativeFieldValues'] as core.List)
                  .map((value) => CreativeFieldValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeFieldValues != null)
          'creativeFieldValues': creativeFieldValues!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Creative Field List Response
class CreativeFieldsListResponse {
  /// Creative field collection.
  core.List<CreativeField>? creativeFields;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeFieldsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  CreativeFieldsListResponse({
    this.creativeFields,
    this.kind,
    this.nextPageToken,
  });

  CreativeFieldsListResponse.fromJson(core.Map json_)
      : this(
          creativeFields: json_.containsKey('creativeFields')
              ? (json_['creativeFields'] as core.List)
                  .map((value) => CreativeField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeFields != null) 'creativeFields': creativeFields!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Contains properties of a creative group.
class CreativeGroup {
  /// Account ID of this creative group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of this creative group.
  ///
  /// This is a required field on insertion.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Subgroup of the creative group.
  ///
  /// Assign your creative groups to a subgroup in order to filter or manage
  /// them more easily. This field is required on insertion and is read-only
  /// after insertion. Acceptable values are 1 to 2, inclusive.
  core.int? groupNumber;

  /// ID of this creative group.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeGroup".
  core.String? kind;

  /// Name of this creative group.
  ///
  /// This is a required field and must be less than 256 characters long and
  /// unique among creative groups of the same advertiser.
  core.String? name;

  /// Subaccount ID of this creative group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  CreativeGroup({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.groupNumber,
    this.id,
    this.kind,
    this.name,
    this.subaccountId,
  });

  CreativeGroup.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          groupNumber: json_.containsKey('groupNumber')
              ? json_['groupNumber'] as core.int
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (groupNumber != null) 'groupNumber': groupNumber!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
      };
}

/// Creative Group Assignment.
typedef CreativeGroupAssignment = $CreativeGroupAssignment;

/// Creative Group List Response
class CreativeGroupsListResponse {
  /// Creative group collection.
  core.List<CreativeGroup>? creativeGroups;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativeGroupsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  CreativeGroupsListResponse({
    this.creativeGroups,
    this.kind,
    this.nextPageToken,
  });

  CreativeGroupsListResponse.fromJson(core.Map json_)
      : this(
          creativeGroups: json_.containsKey('creativeGroups')
              ? (json_['creativeGroups'] as core.List)
                  .map((value) => CreativeGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeGroups != null) 'creativeGroups': creativeGroups!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Creative optimization settings.
class CreativeOptimizationConfiguration {
  /// ID of this creative optimization config.
  ///
  /// This field is auto-generated when the campaign is inserted or updated. It
  /// can be null for existing campaigns.
  core.String? id;

  /// Name of this creative optimization config.
  ///
  /// This is a required field and must be less than 129 characters long.
  core.String? name;

  /// List of optimization activities associated with this configuration.
  core.List<OptimizationActivity>? optimizationActivitys;

  /// Optimization model for this configuration.
  /// Possible string values are:
  /// - "CLICK"
  /// - "POST_CLICK"
  /// - "POST_IMPRESSION"
  /// - "POST_CLICK_AND_IMPRESSION"
  /// - "VIDEO_COMPLETION"
  core.String? optimizationModel;

  CreativeOptimizationConfiguration({
    this.id,
    this.name,
    this.optimizationActivitys,
    this.optimizationModel,
  });

  CreativeOptimizationConfiguration.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optimizationActivitys: json_.containsKey('optimizationActivitys')
              ? (json_['optimizationActivitys'] as core.List)
                  .map((value) => OptimizationActivity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          optimizationModel: json_.containsKey('optimizationModel')
              ? json_['optimizationModel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (optimizationActivitys != null)
          'optimizationActivitys': optimizationActivitys!,
        if (optimizationModel != null) 'optimizationModel': optimizationModel!,
      };
}

/// Creative Rotation.
class CreativeRotation {
  /// Creative assignments in this creative rotation.
  core.List<CreativeAssignment>? creativeAssignments;

  /// Creative optimization configuration that is used by this ad.
  ///
  /// It should refer to one of the existing optimization configurations in the
  /// ad's campaign. If it is unset or set to 0, then the campaign's default
  /// optimization configuration will be used for this ad.
  core.String? creativeOptimizationConfigurationId;

  /// Type of creative rotation.
  ///
  /// Can be used to specify whether to use sequential or random rotation.
  /// Possible string values are:
  /// - "CREATIVE_ROTATION_TYPE_SEQUENTIAL"
  /// - "CREATIVE_ROTATION_TYPE_RANDOM"
  core.String? type;

  /// Strategy for calculating weights.
  ///
  /// Used with CREATIVE_ROTATION_TYPE_RANDOM.
  /// Possible string values are:
  /// - "WEIGHT_STRATEGY_EQUAL"
  /// - "WEIGHT_STRATEGY_CUSTOM"
  /// - "WEIGHT_STRATEGY_HIGHEST_CTR"
  /// - "WEIGHT_STRATEGY_OPTIMIZED"
  core.String? weightCalculationStrategy;

  CreativeRotation({
    this.creativeAssignments,
    this.creativeOptimizationConfigurationId,
    this.type,
    this.weightCalculationStrategy,
  });

  CreativeRotation.fromJson(core.Map json_)
      : this(
          creativeAssignments: json_.containsKey('creativeAssignments')
              ? (json_['creativeAssignments'] as core.List)
                  .map((value) => CreativeAssignment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          creativeOptimizationConfigurationId:
              json_.containsKey('creativeOptimizationConfigurationId')
                  ? json_['creativeOptimizationConfigurationId'] as core.String
                  : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          weightCalculationStrategy:
              json_.containsKey('weightCalculationStrategy')
                  ? json_['weightCalculationStrategy'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativeAssignments != null)
          'creativeAssignments': creativeAssignments!,
        if (creativeOptimizationConfigurationId != null)
          'creativeOptimizationConfigurationId':
              creativeOptimizationConfigurationId!,
        if (type != null) 'type': type!,
        if (weightCalculationStrategy != null)
          'weightCalculationStrategy': weightCalculationStrategy!,
      };
}

/// Creative List Response
class CreativesListResponse {
  /// Creative collection.
  core.List<Creative>? creatives;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#creativesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  CreativesListResponse({
    this.creatives,
    this.kind,
    this.nextPageToken,
  });

  CreativesListResponse.fromJson(core.Map json_)
      : this(
          creatives: json_.containsKey('creatives')
              ? (json_['creatives'] as core.List)
                  .map((value) => Creative.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creatives != null) 'creatives': creatives!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents fields that are compatible to be selected for a report of type
/// "CROSS_DIMENSION_REACH".
class CrossDimensionReachReportCompatibleFields {
  /// Dimensions which are compatible to be selected in the "breakdown" section
  /// of the report.
  core.List<Dimension>? breakdown;

  /// Dimensions which are compatible to be selected in the "dimensionFilters"
  /// section of the report.
  core.List<Dimension>? dimensionFilters;

  /// The kind of resource this is, in this case
  /// dfareporting#crossDimensionReachReportCompatibleFields.
  core.String? kind;

  /// Metrics which are compatible to be selected in the "metricNames" section
  /// of the report.
  core.List<Metric>? metrics;

  /// Metrics which are compatible to be selected in the "overlapMetricNames"
  /// section of the report.
  core.List<Metric>? overlapMetrics;

  CrossDimensionReachReportCompatibleFields({
    this.breakdown,
    this.dimensionFilters,
    this.kind,
    this.metrics,
    this.overlapMetrics,
  });

  CrossDimensionReachReportCompatibleFields.fromJson(core.Map json_)
      : this(
          breakdown: json_.containsKey('breakdown')
              ? (json_['breakdown'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          overlapMetrics: json_.containsKey('overlapMetrics')
              ? (json_['overlapMetrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (breakdown != null) 'breakdown': breakdown!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
        if (overlapMetrics != null) 'overlapMetrics': overlapMetrics!,
      };
}

/// A custom floodlight variable.
///
/// This field may only be used when calling batchinsert; it is not supported by
/// batchupdate.
typedef CustomFloodlightVariable = $CustomFloodlightVariable;

/// Represents a Custom Rich Media Events group.
class CustomRichMediaEvents {
  /// List of custom rich media event IDs.
  ///
  /// Dimension values must be all of type dfa:richMediaEventTypeIdAndName.
  core.List<DimensionValue>? filteredEventIds;

  /// The kind of resource this is, in this case
  /// dfareporting#customRichMediaEvents.
  core.String? kind;

  CustomRichMediaEvents({
    this.filteredEventIds,
    this.kind,
  });

  CustomRichMediaEvents.fromJson(core.Map json_)
      : this(
          filteredEventIds: json_.containsKey('filteredEventIds')
              ? (json_['filteredEventIds'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filteredEventIds != null) 'filteredEventIds': filteredEventIds!,
        if (kind != null) 'kind': kind!,
      };
}

/// Custom Viewability Metric
class CustomViewabilityMetric {
  /// Configuration of the custom viewability metric.
  CustomViewabilityMetricConfiguration? configuration;

  /// ID of the custom viewability metric.
  core.String? id;

  /// Name of the custom viewability metric.
  core.String? name;

  CustomViewabilityMetric({
    this.configuration,
    this.id,
    this.name,
  });

  CustomViewabilityMetric.fromJson(core.Map json_)
      : this(
          configuration: json_.containsKey('configuration')
              ? CustomViewabilityMetricConfiguration.fromJson(
                  json_['configuration'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// The attributes, like playtime and percent onscreen, that define the Custom
/// Viewability Metric.
typedef CustomViewabilityMetricConfiguration
    = $CustomViewabilityMetricConfiguration;

/// Represents a date range.
typedef DateRange = $DateRange;

/// Day Part Targeting.
typedef DayPartTargeting = $DayPartTargeting;

/// Contains information about a landing page deep link.
class DeepLink {
  /// The URL of the mobile app being linked to.
  core.String? appUrl;

  /// The fallback URL.
  ///
  /// This URL will be served to users who do not have the mobile app installed.
  core.String? fallbackUrl;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#deepLink".
  core.String? kind;

  /// The mobile app targeted by this deep link.
  MobileApp? mobileApp;

  /// Ads served to users on these remarketing lists will use this deep link.
  ///
  /// Applicable when mobileApp.directory is APPLE_APP_STORE.
  core.List<core.String>? remarketingListIds;

  DeepLink({
    this.appUrl,
    this.fallbackUrl,
    this.kind,
    this.mobileApp,
    this.remarketingListIds,
  });

  DeepLink.fromJson(core.Map json_)
      : this(
          appUrl: json_.containsKey('appUrl')
              ? json_['appUrl'] as core.String
              : null,
          fallbackUrl: json_.containsKey('fallbackUrl')
              ? json_['fallbackUrl'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mobileApp: json_.containsKey('mobileApp')
              ? MobileApp.fromJson(
                  json_['mobileApp'] as core.Map<core.String, core.dynamic>)
              : null,
          remarketingListIds: json_.containsKey('remarketingListIds')
              ? (json_['remarketingListIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appUrl != null) 'appUrl': appUrl!,
        if (fallbackUrl != null) 'fallbackUrl': fallbackUrl!,
        if (kind != null) 'kind': kind!,
        if (mobileApp != null) 'mobileApp': mobileApp!,
        if (remarketingListIds != null)
          'remarketingListIds': remarketingListIds!,
      };
}

/// Properties of inheriting and overriding the default click-through event tag.
///
/// A campaign may override the event tag defined at the advertiser level, and
/// an ad may also override the campaign's setting further.
typedef DefaultClickThroughEventTagProperties
    = $DefaultClickThroughEventTagProperties;

/// Delivery Schedule.
class DeliverySchedule {
  /// Limit on the number of times an individual user can be served the ad
  /// within a specified period of time.
  FrequencyCap? frequencyCap;

  /// Whether or not hard cutoff is enabled.
  ///
  /// If true, the ad will not serve after the end date and time. Otherwise the
  /// ad will continue to be served until it has reached its delivery goals.
  core.bool? hardCutoff;

  /// Impression ratio for this ad.
  ///
  /// This ratio determines how often each ad is served relative to the others.
  /// For example, if ad A has an impression ratio of 1 and ad B has an
  /// impression ratio of 3, then Campaign Manager will serve ad B three times
  /// as often as ad A. Acceptable values are 1 to 10, inclusive.
  core.String? impressionRatio;

  /// Serving priority of an ad, with respect to other ads.
  ///
  /// The lower the priority number, the greater the priority with which it is
  /// served.
  /// Possible string values are:
  /// - "AD_PRIORITY_01"
  /// - "AD_PRIORITY_02"
  /// - "AD_PRIORITY_03"
  /// - "AD_PRIORITY_04"
  /// - "AD_PRIORITY_05"
  /// - "AD_PRIORITY_06"
  /// - "AD_PRIORITY_07"
  /// - "AD_PRIORITY_08"
  /// - "AD_PRIORITY_09"
  /// - "AD_PRIORITY_10"
  /// - "AD_PRIORITY_11"
  /// - "AD_PRIORITY_12"
  /// - "AD_PRIORITY_13"
  /// - "AD_PRIORITY_14"
  /// - "AD_PRIORITY_15"
  /// - "AD_PRIORITY_16"
  core.String? priority;

  DeliverySchedule({
    this.frequencyCap,
    this.hardCutoff,
    this.impressionRatio,
    this.priority,
  });

  DeliverySchedule.fromJson(core.Map json_)
      : this(
          frequencyCap: json_.containsKey('frequencyCap')
              ? FrequencyCap.fromJson(
                  json_['frequencyCap'] as core.Map<core.String, core.dynamic>)
              : null,
          hardCutoff: json_.containsKey('hardCutoff')
              ? json_['hardCutoff'] as core.bool
              : null,
          impressionRatio: json_.containsKey('impressionRatio')
              ? json_['impressionRatio'] as core.String
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequencyCap != null) 'frequencyCap': frequencyCap!,
        if (hardCutoff != null) 'hardCutoff': hardCutoff!,
        if (impressionRatio != null) 'impressionRatio': impressionRatio!,
        if (priority != null) 'priority': priority!,
      };
}

/// Google Ad Manager Settings
typedef DfpSettings = $DfpSettings;

/// Represents a dimension.
typedef Dimension = $Dimension;

/// Represents a dimension filter.
typedef DimensionFilter = $DimensionFilter;

/// Represents a DimensionValue resource.
typedef DimensionValue = $DimensionValue;

/// Represents the list of DimensionValue resources.
class DimensionValueList {
  /// The eTag of this response for caching purposes.
  core.String? etag;

  /// The dimension values returned in this response.
  core.List<DimensionValue>? items;

  /// The kind of list this is, in this case dfareporting#dimensionValueList.
  core.String? kind;

  /// Continuation token used to page through dimension values.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// to the value of this field. The page token is only valid for a limited
  /// amount of time and should not be persisted.
  core.String? nextPageToken;

  DimensionValueList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  DimensionValueList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents a DimensionValuesRequest.
class DimensionValueRequest {
  /// The name of the dimension for which values should be requested.
  core.String? dimensionName;
  core.DateTime? endDate;

  /// The list of filters by which to filter values.
  ///
  /// The filters are ANDed.
  core.List<DimensionFilter>? filters;

  /// The kind of request this is, in this case
  /// dfareporting#dimensionValueRequest .
  core.String? kind;
  core.DateTime? startDate;

  DimensionValueRequest({
    this.dimensionName,
    this.endDate,
    this.filters,
    this.kind,
    this.startDate,
  });

  DimensionValueRequest.fromJson(core.Map json_)
      : this(
          dimensionName: json_.containsKey('dimensionName')
              ? json_['dimensionName'] as core.String
              : null,
          endDate: json_.containsKey('endDate')
              ? core.DateTime.parse(json_['endDate'] as core.String)
              : null,
          filters: json_.containsKey('filters')
              ? (json_['filters'] as core.List)
                  .map((value) => DimensionFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          startDate: json_.containsKey('startDate')
              ? core.DateTime.parse(json_['startDate'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionName != null) 'dimensionName': dimensionName!,
        if (endDate != null)
          'endDate':
              "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        if (filters != null) 'filters': filters!,
        if (kind != null) 'kind': kind!,
        if (startDate != null)
          'startDate':
              "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
      };
}

/// DirectorySites contains properties of a website from the Site Directory.
///
/// Sites need to be added to an account via the Sites resource before they can
/// be assigned to a placement.
class DirectorySite {
  /// ID of this directory site.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this directory site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Tag types for regular placements.
  ///
  /// Acceptable values are: - "STANDARD" - "IFRAME_JAVASCRIPT_INPAGE" -
  /// "INTERNAL_REDIRECT_INPAGE" - "JAVASCRIPT_INPAGE"
  core.List<core.String>? inpageTagFormats;

  /// Tag types for interstitial placements.
  ///
  /// Acceptable values are: - "IFRAME_JAVASCRIPT_INTERSTITIAL" -
  /// "INTERNAL_REDIRECT_INTERSTITIAL" - "JAVASCRIPT_INTERSTITIAL"
  core.List<core.String>? interstitialTagFormats;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#directorySite".
  core.String? kind;

  /// Name of this directory site.
  core.String? name;

  /// Directory site settings.
  DirectorySiteSettings? settings;

  /// URL of this directory site.
  core.String? url;

  DirectorySite({
    this.id,
    this.idDimensionValue,
    this.inpageTagFormats,
    this.interstitialTagFormats,
    this.kind,
    this.name,
    this.settings,
    this.url,
  });

  DirectorySite.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inpageTagFormats: json_.containsKey('inpageTagFormats')
              ? (json_['inpageTagFormats'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          interstitialTagFormats: json_.containsKey('interstitialTagFormats')
              ? (json_['interstitialTagFormats'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          settings: json_.containsKey('settings')
              ? DirectorySiteSettings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (inpageTagFormats != null) 'inpageTagFormats': inpageTagFormats!,
        if (interstitialTagFormats != null)
          'interstitialTagFormats': interstitialTagFormats!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (settings != null) 'settings': settings!,
        if (url != null) 'url': url!,
      };
}

/// Directory Site Settings
class DirectorySiteSettings {
  /// Whether this directory site has disabled active view creatives.
  core.bool? activeViewOptOut;

  /// Directory site Ad Manager settings.
  DfpSettings? dfpSettings;

  /// Whether this site accepts in-stream video ads.
  core.bool? instreamVideoPlacementAccepted;

  /// Whether this site accepts interstitial ads.
  core.bool? interstitialPlacementAccepted;

  DirectorySiteSettings({
    this.activeViewOptOut,
    this.dfpSettings,
    this.instreamVideoPlacementAccepted,
    this.interstitialPlacementAccepted,
  });

  DirectorySiteSettings.fromJson(core.Map json_)
      : this(
          activeViewOptOut: json_.containsKey('activeViewOptOut')
              ? json_['activeViewOptOut'] as core.bool
              : null,
          dfpSettings: json_.containsKey('dfpSettings')
              ? DfpSettings.fromJson(
                  json_['dfpSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          instreamVideoPlacementAccepted:
              json_.containsKey('instreamVideoPlacementAccepted')
                  ? json_['instreamVideoPlacementAccepted'] as core.bool
                  : null,
          interstitialPlacementAccepted:
              json_.containsKey('interstitialPlacementAccepted')
                  ? json_['interstitialPlacementAccepted'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeViewOptOut != null) 'activeViewOptOut': activeViewOptOut!,
        if (dfpSettings != null) 'dfpSettings': dfpSettings!,
        if (instreamVideoPlacementAccepted != null)
          'instreamVideoPlacementAccepted': instreamVideoPlacementAccepted!,
        if (interstitialPlacementAccepted != null)
          'interstitialPlacementAccepted': interstitialPlacementAccepted!,
      };
}

/// Directory Site List Response
class DirectorySitesListResponse {
  /// Directory site collection.
  core.List<DirectorySite>? directorySites;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#directorySitesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  DirectorySitesListResponse({
    this.directorySites,
    this.kind,
    this.nextPageToken,
  });

  DirectorySitesListResponse.fromJson(core.Map json_)
      : this(
          directorySites: json_.containsKey('directorySites')
              ? (json_['directorySites'] as core.List)
                  .map((value) => DirectorySite.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directorySites != null) 'directorySites': directorySites!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents a Disjunctive Match Statement resource, which is a conjunction
/// (and) of disjunctive (or) boolean statements.
class DisjunctiveMatchStatement {
  /// The event filters contained within this disjunctive match statement.
  core.List<EventFilter>? eventFilters;

  /// The kind of resource this is, in this case
  /// dfareporting#disjunctiveMatchStatement.
  core.String? kind;

  DisjunctiveMatchStatement({
    this.eventFilters,
    this.kind,
  });

  DisjunctiveMatchStatement.fromJson(core.Map json_)
      : this(
          eventFilters: json_.containsKey('eventFilters')
              ? (json_['eventFilters'] as core.List)
                  .map((value) => EventFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventFilters != null) 'eventFilters': eventFilters!,
        if (kind != null) 'kind': kind!,
      };
}

/// Contains properties of a dynamic targeting key.
///
/// Dynamic targeting keys are unique, user-friendly labels, created at the
/// advertiser level in DCM, that can be assigned to ads, creatives, and
/// placements and used for targeting with Studio dynamic creatives. Use these
/// labels instead of numeric Campaign Manager IDs (such as placement IDs) to
/// save time and avoid errors in your dynamic feeds.
typedef DynamicTargetingKey = $DynamicTargetingKey;

/// Dynamic Targeting Key List Response
class DynamicTargetingKeysListResponse {
  /// Dynamic targeting key collection.
  core.List<DynamicTargetingKey>? dynamicTargetingKeys;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#dynamicTargetingKeysListResponse".
  core.String? kind;

  DynamicTargetingKeysListResponse({
    this.dynamicTargetingKeys,
    this.kind,
  });

  DynamicTargetingKeysListResponse.fromJson(core.Map json_)
      : this(
          dynamicTargetingKeys: json_.containsKey('dynamicTargetingKeys')
              ? (json_['dynamicTargetingKeys'] as core.List)
                  .map((value) => DynamicTargetingKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicTargetingKeys != null)
          'dynamicTargetingKeys': dynamicTargetingKeys!,
        if (kind != null) 'kind': kind!,
      };
}

/// A description of how user IDs are encrypted.
typedef EncryptionInfo = $EncryptionInfo;

/// Represents a DfaReporting event filter.
class EventFilter {
  /// The dimension filter contained within this EventFilter.
  PathReportDimensionValue? dimensionFilter;

  /// The kind of resource this is, in this case dfareporting#eventFilter.
  core.String? kind;

  EventFilter({
    this.dimensionFilter,
    this.kind,
  });

  EventFilter.fromJson(core.Map json_)
      : this(
          dimensionFilter: json_.containsKey('dimensionFilter')
              ? PathReportDimensionValue.fromJson(json_['dimensionFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilter != null) 'dimensionFilter': dimensionFilter!,
        if (kind != null) 'kind': kind!,
      };
}

/// Contains properties of an event tag.
class EventTag {
  /// Account ID of this event tag.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of this event tag.
  ///
  /// This field or the campaignId field is required on insertion.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Campaign ID of this event tag.
  ///
  /// This field or the advertiserId field is required on insertion.
  core.String? campaignId;

  /// Dimension value for the ID of the campaign.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? campaignIdDimensionValue;

  /// Whether this event tag should be automatically enabled for all of the
  /// advertiser's campaigns and ads.
  core.bool? enabledByDefault;

  /// Whether to remove this event tag from ads that are trafficked through
  /// Display & Video 360 to Ad Exchange.
  ///
  /// This may be useful if the event tag uses a pixel that is unapproved for Ad
  /// Exchange bids on one or more networks, such as the Google Display Network.
  core.bool? excludeFromAdxRequests;

  /// ID of this event tag.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#eventTag".
  core.String? kind;

  /// Name of this event tag.
  ///
  /// This is a required field and must be less than 256 characters long.
  core.String? name;

  /// Site filter type for this event tag.
  ///
  /// If no type is specified then the event tag will be applied to all sites.
  /// Possible string values are:
  /// - "ALLOWLIST"
  /// - "BLOCKLIST"
  core.String? siteFilterType;

  /// Filter list of site IDs associated with this event tag.
  ///
  /// The siteFilterType determines whether this is a allowlist or blocklist
  /// filter.
  core.List<core.String>? siteIds;

  /// Whether this tag is SSL-compliant or not.
  ///
  /// This is a read-only field.
  core.bool? sslCompliant;

  /// Status of this event tag.
  ///
  /// Must be ENABLED for this event tag to fire. This is a required field.
  /// Possible string values are:
  /// - "ENABLED"
  /// - "DISABLED"
  core.String? status;

  /// Subaccount ID of this event tag.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Event tag type.
  ///
  /// Can be used to specify whether to use a third-party pixel, a third-party
  /// JavaScript URL, or a third-party click-through URL for either impression
  /// or click tracking. This is a required field.
  /// Possible string values are:
  /// - "IMPRESSION_IMAGE_EVENT_TAG"
  /// - "IMPRESSION_JAVASCRIPT_EVENT_TAG"
  /// - "CLICK_THROUGH_EVENT_TAG"
  core.String? type;

  /// Payload URL for this event tag.
  ///
  /// The URL on a click-through event tag should have a landing page URL
  /// appended to the end of it. This field is required on insertion.
  core.String? url;

  /// Number of times the landing page URL should be URL-escaped before being
  /// appended to the click-through event tag URL.
  ///
  /// Only applies to click-through event tags as specified by the event tag
  /// type.
  core.int? urlEscapeLevels;

  EventTag({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.campaignId,
    this.campaignIdDimensionValue,
    this.enabledByDefault,
    this.excludeFromAdxRequests,
    this.id,
    this.kind,
    this.name,
    this.siteFilterType,
    this.siteIds,
    this.sslCompliant,
    this.status,
    this.subaccountId,
    this.type,
    this.url,
    this.urlEscapeLevels,
  });

  EventTag.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          campaignIdDimensionValue:
              json_.containsKey('campaignIdDimensionValue')
                  ? DimensionValue.fromJson(json_['campaignIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          enabledByDefault: json_.containsKey('enabledByDefault')
              ? json_['enabledByDefault'] as core.bool
              : null,
          excludeFromAdxRequests: json_.containsKey('excludeFromAdxRequests')
              ? json_['excludeFromAdxRequests'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          siteFilterType: json_.containsKey('siteFilterType')
              ? json_['siteFilterType'] as core.String
              : null,
          siteIds: json_.containsKey('siteIds')
              ? (json_['siteIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sslCompliant: json_.containsKey('sslCompliant')
              ? json_['sslCompliant'] as core.bool
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
          urlEscapeLevels: json_.containsKey('urlEscapeLevels')
              ? json_['urlEscapeLevels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (campaignIdDimensionValue != null)
          'campaignIdDimensionValue': campaignIdDimensionValue!,
        if (enabledByDefault != null) 'enabledByDefault': enabledByDefault!,
        if (excludeFromAdxRequests != null)
          'excludeFromAdxRequests': excludeFromAdxRequests!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (siteFilterType != null) 'siteFilterType': siteFilterType!,
        if (siteIds != null) 'siteIds': siteIds!,
        if (sslCompliant != null) 'sslCompliant': sslCompliant!,
        if (status != null) 'status': status!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
        if (urlEscapeLevels != null) 'urlEscapeLevels': urlEscapeLevels!,
      };
}

/// Event tag override information.
typedef EventTagOverride = $EventTagOverride;

/// Event Tag List Response
class EventTagsListResponse {
  /// Event tag collection.
  core.List<EventTag>? eventTags;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#eventTagsListResponse".
  core.String? kind;

  EventTagsListResponse({
    this.eventTags,
    this.kind,
  });

  EventTagsListResponse.fromJson(core.Map json_)
      : this(
          eventTags: json_.containsKey('eventTags')
              ? (json_['eventTags'] as core.List)
                  .map((value) => EventTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventTags != null) 'eventTags': eventTags!,
        if (kind != null) 'kind': kind!,
      };
}

/// The URLs where the completed report file can be downloaded.
class FileUrls {
  /// The URL for downloading the report data through the API.
  core.String? apiUrl;

  /// The URL for downloading the report data through a browser.
  core.String? browserUrl;

  FileUrls({
    this.apiUrl,
    this.browserUrl,
  });

  FileUrls.fromJson(core.Map json_)
      : this(
          apiUrl: json_.containsKey('apiUrl')
              ? json_['apiUrl'] as core.String
              : null,
          browserUrl: json_.containsKey('browserUrl')
              ? json_['browserUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiUrl != null) 'apiUrl': apiUrl!,
        if (browserUrl != null) 'browserUrl': browserUrl!,
      };
}

/// Represents a File resource.
///
/// A file contains the metadata for a report run. It shows the status of the
/// run and holds the URLs to the generated report data if the run is finished
/// and the status is "REPORT_AVAILABLE".
class File {
  /// The date range for which the file has report data.
  ///
  /// The date range will always be the absolute date range for which the report
  /// is run.
  DateRange? dateRange;

  /// Etag of this resource.
  core.String? etag;

  /// The filename of the file.
  core.String? fileName;

  /// The output format of the report.
  ///
  /// Only available once the file is available.
  /// Possible string values are:
  /// - "CSV"
  /// - "EXCEL"
  core.String? format;

  /// The unique ID of this report file.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#file".
  core.String? kind;

  /// The timestamp in milliseconds since epoch when this file was last
  /// modified.
  core.String? lastModifiedTime;

  /// The ID of the report this file was generated from.
  core.String? reportId;

  /// The status of the report file.
  /// Possible string values are:
  /// - "PROCESSING"
  /// - "REPORT_AVAILABLE"
  /// - "FAILED"
  /// - "CANCELLED"
  core.String? status;

  /// The URLs where the completed report file can be downloaded.
  FileUrls? urls;

  File({
    this.dateRange,
    this.etag,
    this.fileName,
    this.format,
    this.id,
    this.kind,
    this.lastModifiedTime,
    this.reportId,
    this.status,
    this.urls,
  });

  File.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          reportId: json_.containsKey('reportId')
              ? json_['reportId'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          urls: json_.containsKey('urls')
              ? FileUrls.fromJson(
                  json_['urls'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (etag != null) 'etag': etag!,
        if (fileName != null) 'fileName': fileName!,
        if (format != null) 'format': format!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (reportId != null) 'reportId': reportId!,
        if (status != null) 'status': status!,
        if (urls != null) 'urls': urls!,
      };
}

/// List of files for a report.
class FileList {
  /// Etag of this resource.
  core.String? etag;

  /// The files returned in this response.
  core.List<File>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#fileList".
  core.String? kind;

  /// Continuation token used to page through files.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// to the value of this field. The page token is only valid for a limited
  /// amount of time and should not be persisted.
  core.String? nextPageToken;

  FileList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  FileList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => File.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Flight
typedef Flight = $Flight;

/// Floodlight Activity GenerateTag Response
typedef FloodlightActivitiesGenerateTagResponse
    = $FloodlightActivitiesGenerateTagResponse;

/// Floodlight Activity List Response
class FloodlightActivitiesListResponse {
  /// Floodlight activity collection.
  core.List<FloodlightActivity>? floodlightActivities;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#floodlightActivitiesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  FloodlightActivitiesListResponse({
    this.floodlightActivities,
    this.kind,
    this.nextPageToken,
  });

  FloodlightActivitiesListResponse.fromJson(core.Map json_)
      : this(
          floodlightActivities: json_.containsKey('floodlightActivities')
              ? (json_['floodlightActivities'] as core.List)
                  .map((value) => FloodlightActivity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivities != null)
          'floodlightActivities': floodlightActivities!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Contains properties of a Floodlight activity.
class FloodlightActivity {
  /// Account ID of this floodlight activity.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of this floodlight activity.
  ///
  /// If this field is left blank, the value will be copied over either from the
  /// activity group's advertiser or the existing activity's advertiser.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Whether the activity is enabled for attribution.
  core.bool? attributionEnabled;

  /// Code type used for cache busting in the generated tag.
  ///
  /// Applicable only when floodlightActivityGroupType is COUNTER and
  /// countingMethod is STANDARD_COUNTING or UNIQUE_COUNTING.
  /// Possible string values are:
  /// - "JAVASCRIPT"
  /// - "ACTIVE_SERVER_PAGE"
  /// - "JSP"
  /// - "PHP"
  /// - "COLD_FUSION"
  core.String? cacheBustingType;

  /// Counting method for conversions for this floodlight activity.
  ///
  /// This is a required field.
  /// Possible string values are:
  /// - "STANDARD_COUNTING"
  /// - "UNIQUE_COUNTING"
  /// - "SESSION_COUNTING"
  /// - "TRANSACTIONS_COUNTING"
  /// - "ITEMS_SOLD_COUNTING"
  core.String? countingMethod;

  /// Dynamic floodlight tags.
  core.List<FloodlightActivityDynamicTag>? defaultTags;

  /// URL where this tag will be deployed.
  ///
  /// If specified, must be less than 256 characters long.
  core.String? expectedUrl;

  /// Floodlight activity group ID of this floodlight activity.
  ///
  /// This is a required field.
  core.String? floodlightActivityGroupId;

  /// Name of the associated floodlight activity group.
  ///
  /// This is a read-only field.
  core.String? floodlightActivityGroupName;

  /// Tag string of the associated floodlight activity group.
  ///
  /// This is a read-only field.
  core.String? floodlightActivityGroupTagString;

  /// Type of the associated floodlight activity group.
  ///
  /// This is a read-only field.
  /// Possible string values are:
  /// - "COUNTER"
  /// - "SALE"
  core.String? floodlightActivityGroupType;

  /// Floodlight configuration ID of this floodlight activity.
  ///
  /// If this field is left blank, the value will be copied over either from the
  /// activity group's floodlight configuration or from the existing activity's
  /// floodlight configuration.
  core.String? floodlightConfigurationId;

  /// Dimension value for the ID of the floodlight configuration.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? floodlightConfigurationIdDimensionValue;

  /// The type of Floodlight tag this activity will generate.
  ///
  /// This is a required field.
  /// Possible string values are:
  /// - "IFRAME"
  /// - "IMAGE"
  /// - "GLOBAL_SITE_TAG"
  core.String? floodlightTagType;

  /// ID of this floodlight activity.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this floodlight activity.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#floodlightActivity".
  core.String? kind;

  /// Name of this floodlight activity.
  ///
  /// This is a required field. Must be less than 129 characters long and cannot
  /// contain quotes.
  core.String? name;

  /// General notes or implementation instructions for the tag.
  core.String? notes;

  /// Publisher dynamic floodlight tags.
  core.List<FloodlightActivityPublisherDynamicTag>? publisherTags;

  /// Whether this tag should use SSL.
  core.bool? secure;

  /// Whether the floodlight activity is SSL-compliant.
  ///
  /// This is a read-only field, its value detected by the system from the
  /// floodlight tags.
  core.bool? sslCompliant;

  /// Whether this floodlight activity must be SSL-compliant.
  core.bool? sslRequired;

  /// The status of the activity.
  ///
  /// This can only be set to ACTIVE or ARCHIVED_AND_DISABLED. The ARCHIVED
  /// status is no longer supported and cannot be set for Floodlight activities.
  /// The DISABLED_POLICY status indicates that a Floodlight activity is
  /// violating Google policy. Contact your account manager for more
  /// information.
  /// Possible string values are:
  /// - "ACTIVE"
  /// - "ARCHIVED_AND_DISABLED"
  /// - "ARCHIVED"
  /// - "DISABLED_POLICY"
  core.String? status;

  /// Subaccount ID of this floodlight activity.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Tag format type for the floodlight activity.
  ///
  /// If left blank, the tag format will default to HTML.
  /// Possible string values are:
  /// - "HTML"
  /// - "XHTML"
  core.String? tagFormat;

  /// Value of the cat= parameter in the floodlight tag, which the ad servers
  /// use to identify the activity.
  ///
  /// This is optional: if empty, a new tag string will be generated for you.
  /// This string must be 1 to 8 characters long, with valid characters being
  /// a-z0-9\[ _ \]. This tag string must also be unique among activities of the
  /// same activity group. This field is read-only after insertion.
  core.String? tagString;

  /// List of the user-defined variables used by this conversion tag.
  ///
  /// These map to the "u\[1-100\]=" in the tags. Each of these can have a user
  /// defined type. Acceptable values are U1 to U100, inclusive.
  core.List<core.String>? userDefinedVariableTypes;

  FloodlightActivity({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.attributionEnabled,
    this.cacheBustingType,
    this.countingMethod,
    this.defaultTags,
    this.expectedUrl,
    this.floodlightActivityGroupId,
    this.floodlightActivityGroupName,
    this.floodlightActivityGroupTagString,
    this.floodlightActivityGroupType,
    this.floodlightConfigurationId,
    this.floodlightConfigurationIdDimensionValue,
    this.floodlightTagType,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.name,
    this.notes,
    this.publisherTags,
    this.secure,
    this.sslCompliant,
    this.sslRequired,
    this.status,
    this.subaccountId,
    this.tagFormat,
    this.tagString,
    this.userDefinedVariableTypes,
  });

  FloodlightActivity.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          attributionEnabled: json_.containsKey('attributionEnabled')
              ? json_['attributionEnabled'] as core.bool
              : null,
          cacheBustingType: json_.containsKey('cacheBustingType')
              ? json_['cacheBustingType'] as core.String
              : null,
          countingMethod: json_.containsKey('countingMethod')
              ? json_['countingMethod'] as core.String
              : null,
          defaultTags: json_.containsKey('defaultTags')
              ? (json_['defaultTags'] as core.List)
                  .map((value) => FloodlightActivityDynamicTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          expectedUrl: json_.containsKey('expectedUrl')
              ? json_['expectedUrl'] as core.String
              : null,
          floodlightActivityGroupId:
              json_.containsKey('floodlightActivityGroupId')
                  ? json_['floodlightActivityGroupId'] as core.String
                  : null,
          floodlightActivityGroupName:
              json_.containsKey('floodlightActivityGroupName')
                  ? json_['floodlightActivityGroupName'] as core.String
                  : null,
          floodlightActivityGroupTagString:
              json_.containsKey('floodlightActivityGroupTagString')
                  ? json_['floodlightActivityGroupTagString'] as core.String
                  : null,
          floodlightActivityGroupType:
              json_.containsKey('floodlightActivityGroupType')
                  ? json_['floodlightActivityGroupType'] as core.String
                  : null,
          floodlightConfigurationId:
              json_.containsKey('floodlightConfigurationId')
                  ? json_['floodlightConfigurationId'] as core.String
                  : null,
          floodlightConfigurationIdDimensionValue:
              json_.containsKey('floodlightConfigurationIdDimensionValue')
                  ? DimensionValue.fromJson(
                      json_['floodlightConfigurationIdDimensionValue']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          floodlightTagType: json_.containsKey('floodlightTagType')
              ? json_['floodlightTagType'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          publisherTags: json_.containsKey('publisherTags')
              ? (json_['publisherTags'] as core.List)
                  .map((value) =>
                      FloodlightActivityPublisherDynamicTag.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          secure:
              json_.containsKey('secure') ? json_['secure'] as core.bool : null,
          sslCompliant: json_.containsKey('sslCompliant')
              ? json_['sslCompliant'] as core.bool
              : null,
          sslRequired: json_.containsKey('sslRequired')
              ? json_['sslRequired'] as core.bool
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          tagFormat: json_.containsKey('tagFormat')
              ? json_['tagFormat'] as core.String
              : null,
          tagString: json_.containsKey('tagString')
              ? json_['tagString'] as core.String
              : null,
          userDefinedVariableTypes:
              json_.containsKey('userDefinedVariableTypes')
                  ? (json_['userDefinedVariableTypes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (attributionEnabled != null)
          'attributionEnabled': attributionEnabled!,
        if (cacheBustingType != null) 'cacheBustingType': cacheBustingType!,
        if (countingMethod != null) 'countingMethod': countingMethod!,
        if (defaultTags != null) 'defaultTags': defaultTags!,
        if (expectedUrl != null) 'expectedUrl': expectedUrl!,
        if (floodlightActivityGroupId != null)
          'floodlightActivityGroupId': floodlightActivityGroupId!,
        if (floodlightActivityGroupName != null)
          'floodlightActivityGroupName': floodlightActivityGroupName!,
        if (floodlightActivityGroupTagString != null)
          'floodlightActivityGroupTagString': floodlightActivityGroupTagString!,
        if (floodlightActivityGroupType != null)
          'floodlightActivityGroupType': floodlightActivityGroupType!,
        if (floodlightConfigurationId != null)
          'floodlightConfigurationId': floodlightConfigurationId!,
        if (floodlightConfigurationIdDimensionValue != null)
          'floodlightConfigurationIdDimensionValue':
              floodlightConfigurationIdDimensionValue!,
        if (floodlightTagType != null) 'floodlightTagType': floodlightTagType!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (publisherTags != null) 'publisherTags': publisherTags!,
        if (secure != null) 'secure': secure!,
        if (sslCompliant != null) 'sslCompliant': sslCompliant!,
        if (sslRequired != null) 'sslRequired': sslRequired!,
        if (status != null) 'status': status!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (tagFormat != null) 'tagFormat': tagFormat!,
        if (tagString != null) 'tagString': tagString!,
        if (userDefinedVariableTypes != null)
          'userDefinedVariableTypes': userDefinedVariableTypes!,
      };
}

/// Dynamic Tag
typedef FloodlightActivityDynamicTag = $FloodlightActivityDynamicTag;

/// Contains properties of a Floodlight activity group.
class FloodlightActivityGroup {
  /// Account ID of this floodlight activity group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of this floodlight activity group.
  ///
  /// If this field is left blank, the value will be copied over either from the
  /// floodlight configuration's advertiser or from the existing activity
  /// group's advertiser.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Floodlight configuration ID of this floodlight activity group.
  ///
  /// This is a required field.
  core.String? floodlightConfigurationId;

  /// Dimension value for the ID of the floodlight configuration.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? floodlightConfigurationIdDimensionValue;

  /// ID of this floodlight activity group.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this floodlight activity group.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#floodlightActivityGroup".
  core.String? kind;

  /// Name of this floodlight activity group.
  ///
  /// This is a required field. Must be less than 65 characters long and cannot
  /// contain quotes.
  core.String? name;

  /// Subaccount ID of this floodlight activity group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Value of the type= parameter in the floodlight tag, which the ad servers
  /// use to identify the activity group that the activity belongs to.
  ///
  /// This is optional: if empty, a new tag string will be generated for you.
  /// This string must be 1 to 8 characters long, with valid characters being
  /// a-z0-9\[ _ \]. This tag string must also be unique among activity groups
  /// of the same floodlight configuration. This field is read-only after
  /// insertion.
  core.String? tagString;

  /// Type of the floodlight activity group.
  ///
  /// This is a required field that is read-only after insertion.
  /// Possible string values are:
  /// - "COUNTER"
  /// - "SALE"
  core.String? type;

  FloodlightActivityGroup({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.floodlightConfigurationId,
    this.floodlightConfigurationIdDimensionValue,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.name,
    this.subaccountId,
    this.tagString,
    this.type,
  });

  FloodlightActivityGroup.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          floodlightConfigurationId:
              json_.containsKey('floodlightConfigurationId')
                  ? json_['floodlightConfigurationId'] as core.String
                  : null,
          floodlightConfigurationIdDimensionValue:
              json_.containsKey('floodlightConfigurationIdDimensionValue')
                  ? DimensionValue.fromJson(
                      json_['floodlightConfigurationIdDimensionValue']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          tagString: json_.containsKey('tagString')
              ? json_['tagString'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (floodlightConfigurationId != null)
          'floodlightConfigurationId': floodlightConfigurationId!,
        if (floodlightConfigurationIdDimensionValue != null)
          'floodlightConfigurationIdDimensionValue':
              floodlightConfigurationIdDimensionValue!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (tagString != null) 'tagString': tagString!,
        if (type != null) 'type': type!,
      };
}

/// Floodlight Activity Group List Response
class FloodlightActivityGroupsListResponse {
  /// Floodlight activity group collection.
  core.List<FloodlightActivityGroup>? floodlightActivityGroups;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#floodlightActivityGroupsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  FloodlightActivityGroupsListResponse({
    this.floodlightActivityGroups,
    this.kind,
    this.nextPageToken,
  });

  FloodlightActivityGroupsListResponse.fromJson(core.Map json_)
      : this(
          floodlightActivityGroups:
              json_.containsKey('floodlightActivityGroups')
                  ? (json_['floodlightActivityGroups'] as core.List)
                      .map((value) => FloodlightActivityGroup.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivityGroups != null)
          'floodlightActivityGroups': floodlightActivityGroups!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Publisher Dynamic Tag
class FloodlightActivityPublisherDynamicTag {
  /// Whether this tag is applicable only for click-throughs.
  core.bool? clickThrough;

  /// Directory site ID of this dynamic tag.
  ///
  /// This is a write-only field that can be used as an alternative to the
  /// siteId field. When this resource is retrieved, only the siteId field will
  /// be populated.
  core.String? directorySiteId;

  /// Dynamic floodlight tag.
  FloodlightActivityDynamicTag? dynamicTag;

  /// Site ID of this dynamic tag.
  core.String? siteId;

  /// Dimension value for the ID of the site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? siteIdDimensionValue;

  /// Whether this tag is applicable only for view-throughs.
  core.bool? viewThrough;

  FloodlightActivityPublisherDynamicTag({
    this.clickThrough,
    this.directorySiteId,
    this.dynamicTag,
    this.siteId,
    this.siteIdDimensionValue,
    this.viewThrough,
  });

  FloodlightActivityPublisherDynamicTag.fromJson(core.Map json_)
      : this(
          clickThrough: json_.containsKey('clickThrough')
              ? json_['clickThrough'] as core.bool
              : null,
          directorySiteId: json_.containsKey('directorySiteId')
              ? json_['directorySiteId'] as core.String
              : null,
          dynamicTag: json_.containsKey('dynamicTag')
              ? FloodlightActivityDynamicTag.fromJson(
                  json_['dynamicTag'] as core.Map<core.String, core.dynamic>)
              : null,
          siteId: json_.containsKey('siteId')
              ? json_['siteId'] as core.String
              : null,
          siteIdDimensionValue: json_.containsKey('siteIdDimensionValue')
              ? DimensionValue.fromJson(json_['siteIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          viewThrough: json_.containsKey('viewThrough')
              ? json_['viewThrough'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickThrough != null) 'clickThrough': clickThrough!,
        if (directorySiteId != null) 'directorySiteId': directorySiteId!,
        if (dynamicTag != null) 'dynamicTag': dynamicTag!,
        if (siteId != null) 'siteId': siteId!,
        if (siteIdDimensionValue != null)
          'siteIdDimensionValue': siteIdDimensionValue!,
        if (viewThrough != null) 'viewThrough': viewThrough!,
      };
}

/// Contains properties of a Floodlight configuration.
class FloodlightConfiguration {
  /// Account ID of this floodlight configuration.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of the parent advertiser of this floodlight configuration.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Whether advertiser data is shared with Google Analytics.
  core.bool? analyticsDataSharingEnabled;

  /// Custom Viewability metric for the floodlight configuration.
  CustomViewabilityMetric? customViewabilityMetric;

  /// Whether the exposure-to-conversion report is enabled.
  ///
  /// This report shows detailed pathway information on up to 10 of the most
  /// recent ad exposures seen by a user before converting.
  core.bool? exposureToConversionEnabled;

  /// Day that will be counted as the first day of the week in reports.
  ///
  /// This is a required field.
  /// Possible string values are:
  /// - "MONDAY"
  /// - "SUNDAY"
  core.String? firstDayOfWeek;

  /// ID of this floodlight configuration.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this floodlight configuration.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Whether in-app attribution tracking is enabled.
  core.bool? inAppAttributionTrackingEnabled;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#floodlightConfiguration".
  core.String? kind;

  /// Lookback window settings for this floodlight configuration.
  LookbackConfiguration? lookbackConfiguration;

  /// Types of attribution options for natural search conversions.
  /// Possible string values are:
  /// - "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
  /// - "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION"
  /// - "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION"
  core.String? naturalSearchConversionAttributionOption;

  /// Settings for Campaign Manager Omniture integration.
  OmnitureSettings? omnitureSettings;

  /// Subaccount ID of this floodlight configuration.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Configuration settings for dynamic and image floodlight tags.
  TagSettings? tagSettings;

  /// List of third-party authentication tokens enabled for this configuration.
  core.List<ThirdPartyAuthenticationToken>? thirdPartyAuthenticationTokens;

  /// List of user defined variables enabled for this configuration.
  core.List<UserDefinedVariableConfiguration>?
      userDefinedVariableConfigurations;

  FloodlightConfiguration({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.analyticsDataSharingEnabled,
    this.customViewabilityMetric,
    this.exposureToConversionEnabled,
    this.firstDayOfWeek,
    this.id,
    this.idDimensionValue,
    this.inAppAttributionTrackingEnabled,
    this.kind,
    this.lookbackConfiguration,
    this.naturalSearchConversionAttributionOption,
    this.omnitureSettings,
    this.subaccountId,
    this.tagSettings,
    this.thirdPartyAuthenticationTokens,
    this.userDefinedVariableConfigurations,
  });

  FloodlightConfiguration.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          analyticsDataSharingEnabled:
              json_.containsKey('analyticsDataSharingEnabled')
                  ? json_['analyticsDataSharingEnabled'] as core.bool
                  : null,
          customViewabilityMetric: json_.containsKey('customViewabilityMetric')
              ? CustomViewabilityMetric.fromJson(
                  json_['customViewabilityMetric']
                      as core.Map<core.String, core.dynamic>)
              : null,
          exposureToConversionEnabled:
              json_.containsKey('exposureToConversionEnabled')
                  ? json_['exposureToConversionEnabled'] as core.bool
                  : null,
          firstDayOfWeek: json_.containsKey('firstDayOfWeek')
              ? json_['firstDayOfWeek'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inAppAttributionTrackingEnabled:
              json_.containsKey('inAppAttributionTrackingEnabled')
                  ? json_['inAppAttributionTrackingEnabled'] as core.bool
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lookbackConfiguration: json_.containsKey('lookbackConfiguration')
              ? LookbackConfiguration.fromJson(json_['lookbackConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          naturalSearchConversionAttributionOption: json_
                  .containsKey('naturalSearchConversionAttributionOption')
              ? json_['naturalSearchConversionAttributionOption'] as core.String
              : null,
          omnitureSettings: json_.containsKey('omnitureSettings')
              ? OmnitureSettings.fromJson(json_['omnitureSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          tagSettings: json_.containsKey('tagSettings')
              ? TagSettings.fromJson(
                  json_['tagSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          thirdPartyAuthenticationTokens:
              json_.containsKey('thirdPartyAuthenticationTokens')
                  ? (json_['thirdPartyAuthenticationTokens'] as core.List)
                      .map((value) => ThirdPartyAuthenticationToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          userDefinedVariableConfigurations:
              json_.containsKey('userDefinedVariableConfigurations')
                  ? (json_['userDefinedVariableConfigurations'] as core.List)
                      .map((value) => UserDefinedVariableConfiguration.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (analyticsDataSharingEnabled != null)
          'analyticsDataSharingEnabled': analyticsDataSharingEnabled!,
        if (customViewabilityMetric != null)
          'customViewabilityMetric': customViewabilityMetric!,
        if (exposureToConversionEnabled != null)
          'exposureToConversionEnabled': exposureToConversionEnabled!,
        if (firstDayOfWeek != null) 'firstDayOfWeek': firstDayOfWeek!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (inAppAttributionTrackingEnabled != null)
          'inAppAttributionTrackingEnabled': inAppAttributionTrackingEnabled!,
        if (kind != null) 'kind': kind!,
        if (lookbackConfiguration != null)
          'lookbackConfiguration': lookbackConfiguration!,
        if (naturalSearchConversionAttributionOption != null)
          'naturalSearchConversionAttributionOption':
              naturalSearchConversionAttributionOption!,
        if (omnitureSettings != null) 'omnitureSettings': omnitureSettings!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (tagSettings != null) 'tagSettings': tagSettings!,
        if (thirdPartyAuthenticationTokens != null)
          'thirdPartyAuthenticationTokens': thirdPartyAuthenticationTokens!,
        if (userDefinedVariableConfigurations != null)
          'userDefinedVariableConfigurations':
              userDefinedVariableConfigurations!,
      };
}

/// Floodlight Configuration List Response
class FloodlightConfigurationsListResponse {
  /// Floodlight configuration collection.
  core.List<FloodlightConfiguration>? floodlightConfigurations;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#floodlightConfigurationsListResponse".
  core.String? kind;

  FloodlightConfigurationsListResponse({
    this.floodlightConfigurations,
    this.kind,
  });

  FloodlightConfigurationsListResponse.fromJson(core.Map json_)
      : this(
          floodlightConfigurations:
              json_.containsKey('floodlightConfigurations')
                  ? (json_['floodlightConfigurations'] as core.List)
                      .map((value) => FloodlightConfiguration.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightConfigurations != null)
          'floodlightConfigurations': floodlightConfigurations!,
        if (kind != null) 'kind': kind!,
      };
}

/// Represents fields that are compatible to be selected for a report of type
/// "FlOODLIGHT".
class FloodlightReportCompatibleFields {
  /// Dimensions which are compatible to be selected in the "dimensionFilters"
  /// section of the report.
  core.List<Dimension>? dimensionFilters;

  /// Dimensions which are compatible to be selected in the "dimensions" section
  /// of the report.
  core.List<Dimension>? dimensions;

  /// The kind of resource this is, in this case
  /// dfareporting#floodlightReportCompatibleFields.
  core.String? kind;

  /// Metrics which are compatible to be selected in the "metricNames" section
  /// of the report.
  core.List<Metric>? metrics;

  FloodlightReportCompatibleFields({
    this.dimensionFilters,
    this.dimensions,
    this.kind,
    this.metrics,
  });

  FloodlightReportCompatibleFields.fromJson(core.Map json_)
      : this(
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// Frequency Cap.
typedef FrequencyCap = $FrequencyCap;

/// FsCommand.
typedef FsCommand = $FsCommand;

/// Geographical Targeting.
class GeoTargeting {
  /// Cities to be targeted.
  ///
  /// For each city only dartId is required. The other fields are populated
  /// automatically when the ad is inserted or updated. If targeting a city, do
  /// not target or exclude the country of the city, and do not target the metro
  /// or region of the city.
  core.List<City>? cities;

  /// Countries to be targeted or excluded from targeting, depending on the
  /// setting of the excludeCountries field.
  ///
  /// For each country only dartId is required. The other fields are populated
  /// automatically when the ad is inserted or updated. If targeting or
  /// excluding a country, do not target regions, cities, metros, or postal
  /// codes in the same country.
  core.List<Country>? countries;

  /// Whether or not to exclude the countries in the countries field from
  /// targeting.
  ///
  /// If false, the countries field refers to countries which will be targeted
  /// by the ad.
  core.bool? excludeCountries;

  /// Metros to be targeted.
  ///
  /// For each metro only dmaId is required. The other fields are populated
  /// automatically when the ad is inserted or updated. If targeting a metro, do
  /// not target or exclude the country of the metro.
  core.List<Metro>? metros;

  /// Postal codes to be targeted.
  ///
  /// For each postal code only id is required. The other fields are populated
  /// automatically when the ad is inserted or updated. If targeting a postal
  /// code, do not target or exclude the country of the postal code.
  core.List<PostalCode>? postalCodes;

  /// Regions to be targeted.
  ///
  /// For each region only dartId is required. The other fields are populated
  /// automatically when the ad is inserted or updated. If targeting a region,
  /// do not target or exclude the country of the region.
  core.List<Region>? regions;

  GeoTargeting({
    this.cities,
    this.countries,
    this.excludeCountries,
    this.metros,
    this.postalCodes,
    this.regions,
  });

  GeoTargeting.fromJson(core.Map json_)
      : this(
          cities: json_.containsKey('cities')
              ? (json_['cities'] as core.List)
                  .map((value) => City.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          countries: json_.containsKey('countries')
              ? (json_['countries'] as core.List)
                  .map((value) => Country.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          excludeCountries: json_.containsKey('excludeCountries')
              ? json_['excludeCountries'] as core.bool
              : null,
          metros: json_.containsKey('metros')
              ? (json_['metros'] as core.List)
                  .map((value) => Metro.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          postalCodes: json_.containsKey('postalCodes')
              ? (json_['postalCodes'] as core.List)
                  .map((value) => PostalCode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          regions: json_.containsKey('regions')
              ? (json_['regions'] as core.List)
                  .map((value) => Region.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cities != null) 'cities': cities!,
        if (countries != null) 'countries': countries!,
        if (excludeCountries != null) 'excludeCountries': excludeCountries!,
        if (metros != null) 'metros': metros!,
        if (postalCodes != null) 'postalCodes': postalCodes!,
        if (regions != null) 'regions': regions!,
      };
}

/// Represents a buy from the Planning inventory store.
class InventoryItem {
  /// Account ID of this inventory item.
  core.String? accountId;

  /// Ad slots of this inventory item.
  ///
  /// If this inventory item represents a standalone placement, there will be
  /// exactly one ad slot. If this inventory item represents a placement group,
  /// there will be more than one ad slot, each representing one child placement
  /// in that placement group.
  core.List<AdSlot>? adSlots;

  /// Advertiser ID of this inventory item.
  core.String? advertiserId;

  /// Content category ID of this inventory item.
  core.String? contentCategoryId;

  /// Estimated click-through rate of this inventory item.
  core.String? estimatedClickThroughRate;

  /// Estimated conversion rate of this inventory item.
  core.String? estimatedConversionRate;

  /// ID of this inventory item.
  core.String? id;

  /// Whether this inventory item is in plan.
  core.bool? inPlan;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#inventoryItem".
  core.String? kind;

  /// Information about the most recent modification of this inventory item.
  LastModifiedInfo? lastModifiedInfo;

  /// Name of this inventory item.
  ///
  /// For standalone inventory items, this is the same name as that of its only
  /// ad slot. For group inventory items, this can differ from the name of any
  /// of its ad slots.
  core.String? name;

  /// Negotiation channel ID of this inventory item.
  core.String? negotiationChannelId;

  /// Order ID of this inventory item.
  core.String? orderId;

  /// Placement strategy ID of this inventory item.
  core.String? placementStrategyId;

  /// Pricing of this inventory item.
  Pricing? pricing;

  /// Project ID of this inventory item.
  core.String? projectId;

  /// RFP ID of this inventory item.
  core.String? rfpId;

  /// ID of the site this inventory item is associated with.
  core.String? siteId;

  /// Subaccount ID of this inventory item.
  core.String? subaccountId;

  /// Type of inventory item.
  /// Possible string values are:
  /// - "PLANNING_PLACEMENT_TYPE_REGULAR"
  /// - "PLANNING_PLACEMENT_TYPE_CREDIT"
  core.String? type;

  InventoryItem({
    this.accountId,
    this.adSlots,
    this.advertiserId,
    this.contentCategoryId,
    this.estimatedClickThroughRate,
    this.estimatedConversionRate,
    this.id,
    this.inPlan,
    this.kind,
    this.lastModifiedInfo,
    this.name,
    this.negotiationChannelId,
    this.orderId,
    this.placementStrategyId,
    this.pricing,
    this.projectId,
    this.rfpId,
    this.siteId,
    this.subaccountId,
    this.type,
  });

  InventoryItem.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          adSlots: json_.containsKey('adSlots')
              ? (json_['adSlots'] as core.List)
                  .map((value) => AdSlot.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          contentCategoryId: json_.containsKey('contentCategoryId')
              ? json_['contentCategoryId'] as core.String
              : null,
          estimatedClickThroughRate:
              json_.containsKey('estimatedClickThroughRate')
                  ? json_['estimatedClickThroughRate'] as core.String
                  : null,
          estimatedConversionRate: json_.containsKey('estimatedConversionRate')
              ? json_['estimatedConversionRate'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          inPlan:
              json_.containsKey('inPlan') ? json_['inPlan'] as core.bool : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          negotiationChannelId: json_.containsKey('negotiationChannelId')
              ? json_['negotiationChannelId'] as core.String
              : null,
          orderId: json_.containsKey('orderId')
              ? json_['orderId'] as core.String
              : null,
          placementStrategyId: json_.containsKey('placementStrategyId')
              ? json_['placementStrategyId'] as core.String
              : null,
          pricing: json_.containsKey('pricing')
              ? Pricing.fromJson(
                  json_['pricing'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          rfpId:
              json_.containsKey('rfpId') ? json_['rfpId'] as core.String : null,
          siteId: json_.containsKey('siteId')
              ? json_['siteId'] as core.String
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (adSlots != null) 'adSlots': adSlots!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (contentCategoryId != null) 'contentCategoryId': contentCategoryId!,
        if (estimatedClickThroughRate != null)
          'estimatedClickThroughRate': estimatedClickThroughRate!,
        if (estimatedConversionRate != null)
          'estimatedConversionRate': estimatedConversionRate!,
        if (id != null) 'id': id!,
        if (inPlan != null) 'inPlan': inPlan!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (name != null) 'name': name!,
        if (negotiationChannelId != null)
          'negotiationChannelId': negotiationChannelId!,
        if (orderId != null) 'orderId': orderId!,
        if (placementStrategyId != null)
          'placementStrategyId': placementStrategyId!,
        if (pricing != null) 'pricing': pricing!,
        if (projectId != null) 'projectId': projectId!,
        if (rfpId != null) 'rfpId': rfpId!,
        if (siteId != null) 'siteId': siteId!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (type != null) 'type': type!,
      };
}

/// Inventory item List Response
class InventoryItemsListResponse {
  /// Inventory item collection
  core.List<InventoryItem>? inventoryItems;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#inventoryItemsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  InventoryItemsListResponse({
    this.inventoryItems,
    this.kind,
    this.nextPageToken,
  });

  InventoryItemsListResponse.fromJson(core.Map json_)
      : this(
          inventoryItems: json_.containsKey('inventoryItems')
              ? (json_['inventoryItems'] as core.List)
                  .map((value) => InventoryItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inventoryItems != null) 'inventoryItems': inventoryItems!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Key Value Targeting Expression.
typedef KeyValueTargetingExpression = $KeyValueTargetingExpression;

/// Contains information about where a user's browser is taken after the user
/// clicks an ad.
class LandingPage {
  /// Advertiser ID of this landing page.
  ///
  /// This is a required field.
  core.String? advertiserId;

  /// Whether this landing page has been archived.
  core.bool? archived;

  /// Links that will direct the user to a mobile app, if installed.
  core.List<DeepLink>? deepLinks;

  /// ID of this landing page.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#landingPage".
  core.String? kind;

  /// Name of this landing page.
  ///
  /// This is a required field. It must be less than 256 characters long.
  core.String? name;

  /// URL of this landing page.
  ///
  /// This is a required field.
  core.String? url;

  LandingPage({
    this.advertiserId,
    this.archived,
    this.deepLinks,
    this.id,
    this.kind,
    this.name,
    this.url,
  });

  LandingPage.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          deepLinks: json_.containsKey('deepLinks')
              ? (json_['deepLinks'] as core.List)
                  .map((value) => DeepLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (archived != null) 'archived': archived!,
        if (deepLinks != null) 'deepLinks': deepLinks!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (url != null) 'url': url!,
      };
}

/// Contains information about a language that can be targeted by ads.
typedef Language = $Language;

/// Language Targeting.
class LanguageTargeting {
  /// Languages that this ad targets.
  ///
  /// For each language only languageId is required. The other fields are
  /// populated automatically when the ad is inserted or updated.
  core.List<Language>? languages;

  LanguageTargeting({
    this.languages,
  });

  LanguageTargeting.fromJson(core.Map json_)
      : this(
          languages: json_.containsKey('languages')
              ? (json_['languages'] as core.List)
                  .map((value) => Language.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languages != null) 'languages': languages!,
      };
}

/// Language List Response
class LanguagesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#languagesListResponse".
  core.String? kind;

  /// Language collection.
  core.List<Language>? languages;

  LanguagesListResponse({
    this.kind,
    this.languages,
  });

  LanguagesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          languages: json_.containsKey('languages')
              ? (json_['languages'] as core.List)
                  .map((value) => Language.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (languages != null) 'languages': languages!,
      };
}

/// Modification timestamp.
typedef LastModifiedInfo = $LastModifiedInfo;

/// A group clause made up of list population terms representing constraints
/// joined by ORs.
class ListPopulationClause {
  /// Terms of this list population clause.
  ///
  /// Each clause is made up of list population terms representing constraints
  /// and are joined by ORs.
  core.List<ListPopulationTerm>? terms;

  ListPopulationClause({
    this.terms,
  });

  ListPopulationClause.fromJson(core.Map json_)
      : this(
          terms: json_.containsKey('terms')
              ? (json_['terms'] as core.List)
                  .map((value) => ListPopulationTerm.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (terms != null) 'terms': terms!,
      };
}

/// Remarketing List Population Rule.
class ListPopulationRule {
  /// Floodlight activity ID associated with this rule.
  ///
  /// This field can be left blank.
  core.String? floodlightActivityId;

  /// Name of floodlight activity associated with this rule.
  ///
  /// This is a read-only, auto-generated field.
  core.String? floodlightActivityName;

  /// Clauses that make up this list population rule.
  ///
  /// Clauses are joined by ANDs, and the clauses themselves are made up of list
  /// population terms which are joined by ORs.
  core.List<ListPopulationClause>? listPopulationClauses;

  ListPopulationRule({
    this.floodlightActivityId,
    this.floodlightActivityName,
    this.listPopulationClauses,
  });

  ListPopulationRule.fromJson(core.Map json_)
      : this(
          floodlightActivityId: json_.containsKey('floodlightActivityId')
              ? json_['floodlightActivityId'] as core.String
              : null,
          floodlightActivityName: json_.containsKey('floodlightActivityName')
              ? json_['floodlightActivityName'] as core.String
              : null,
          listPopulationClauses: json_.containsKey('listPopulationClauses')
              ? (json_['listPopulationClauses'] as core.List)
                  .map((value) => ListPopulationClause.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivityId != null)
          'floodlightActivityId': floodlightActivityId!,
        if (floodlightActivityName != null)
          'floodlightActivityName': floodlightActivityName!,
        if (listPopulationClauses != null)
          'listPopulationClauses': listPopulationClauses!,
      };
}

/// Remarketing List Population Rule Term.
typedef ListPopulationTerm = $ListPopulationTerm;

/// Remarketing List Targeting Expression.
typedef ListTargetingExpression = $ListTargetingExpression;

/// Lookback configuration settings.
typedef LookbackConfiguration = $LookbackConfiguration;
typedef MeasurementPartnerAdvertiserLink = $MeasurementPartnerAdvertiserLink;
typedef MeasurementPartnerCampaignLink = $MeasurementPartnerCampaignLink;

/// Placement tag wrapping
class MeasurementPartnerWrappingData {
  /// Placement wrapping status.
  /// Possible string values are:
  /// - "MEASUREMENT_PARTNER_UNLINKED"
  /// - "MEASUREMENT_PARTNER_LINKED"
  /// - "MEASUREMENT_PARTNER_LINK_PENDING"
  /// - "MEASUREMENT_PARTNER_LINK_FAILURE"
  /// - "MEASUREMENT_PARTNER_LINK_OPT_OUT"
  /// - "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING"
  /// - "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING"
  /// - "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING"
  core.String? linkStatus;

  /// Measurement partner used for wrapping the placement.
  /// Possible string values are:
  /// - "NONE"
  /// - "INTEGRAL_AD_SCIENCE"
  /// - "DOUBLE_VERIFY"
  core.String? measurementPartner;

  /// Measurement mode for the wrapped placement.
  /// Possible string values are:
  /// - "NONE"
  /// - "BLOCKING"
  /// - "MONITORING"
  /// - "MONITORING_ONLY"
  /// - "VIDEO_PIXEL_MONITORING"
  /// - "TRACKING"
  /// - "VPAID_MONITORING"
  /// - "VPAID_BLOCKING"
  /// - "NON_VPAID_MONITORING"
  /// - "VPAID_ONLY_MONITORING"
  /// - "VPAID_ONLY_BLOCKING"
  /// - "VPAID_ONLY_FILTERING"
  /// - "VPAID_FILTERING"
  /// - "NON_VPAID_FILTERING"
  core.String? tagWrappingMode;

  /// Tag provided by the measurement partner during wrapping.
  core.String? wrappedTag;

  MeasurementPartnerWrappingData({
    this.linkStatus,
    this.measurementPartner,
    this.tagWrappingMode,
    this.wrappedTag,
  });

  MeasurementPartnerWrappingData.fromJson(core.Map json_)
      : this(
          linkStatus: json_.containsKey('linkStatus')
              ? json_['linkStatus'] as core.String
              : null,
          measurementPartner: json_.containsKey('measurementPartner')
              ? json_['measurementPartner'] as core.String
              : null,
          tagWrappingMode: json_.containsKey('tagWrappingMode')
              ? json_['tagWrappingMode'] as core.String
              : null,
          wrappedTag: json_.containsKey('wrappedTag')
              ? json_['wrappedTag'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkStatus != null) 'linkStatus': linkStatus!,
        if (measurementPartner != null)
          'measurementPartner': measurementPartner!,
        if (tagWrappingMode != null) 'tagWrappingMode': tagWrappingMode!,
        if (wrappedTag != null) 'wrappedTag': wrappedTag!,
      };
}

/// Represents a metric.
typedef Metric = $Metric;

/// Contains information about a metro region that can be targeted by ads.
typedef Metro = $Metro;

/// Metro List Response
class MetrosListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#metrosListResponse".
  core.String? kind;

  /// Metro collection.
  core.List<Metro>? metros;

  MetrosListResponse({
    this.kind,
    this.metros,
  });

  MetrosListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metros: json_.containsKey('metros')
              ? (json_['metros'] as core.List)
                  .map((value) => Metro.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (metros != null) 'metros': metros!,
      };
}

/// Contains information about a mobile app.
///
/// Used as a landing page deep link.
typedef MobileApp = $MobileApp;

/// Mobile app List Response
class MobileAppsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#mobileAppsListResponse".
  core.String? kind;

  /// Mobile apps collection.
  core.List<MobileApp>? mobileApps;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  MobileAppsListResponse({
    this.kind,
    this.mobileApps,
    this.nextPageToken,
  });

  MobileAppsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mobileApps: json_.containsKey('mobileApps')
              ? (json_['mobileApps'] as core.List)
                  .map((value) => MobileApp.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (mobileApps != null) 'mobileApps': mobileApps!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Contains information about a mobile carrier that can be targeted by ads.
typedef MobileCarrier = $MobileCarrier;

/// Mobile Carrier List Response
class MobileCarriersListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#mobileCarriersListResponse".
  core.String? kind;

  /// Mobile carrier collection.
  core.List<MobileCarrier>? mobileCarriers;

  MobileCarriersListResponse({
    this.kind,
    this.mobileCarriers,
  });

  MobileCarriersListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mobileCarriers: json_.containsKey('mobileCarriers')
              ? (json_['mobileCarriers'] as core.List)
                  .map((value) => MobileCarrier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (mobileCarriers != null) 'mobileCarriers': mobileCarriers!,
      };
}

/// Online Behavioral Advertiser icon.
class ObaIcon {
  /// URL to redirect to when an OBA icon is clicked.
  core.String? iconClickThroughUrl;

  /// URL to track click when an OBA icon is clicked.
  core.String? iconClickTrackingUrl;

  /// URL to track view when an OBA icon is clicked.
  core.String? iconViewTrackingUrl;

  /// Identifies the industry initiative that the icon supports.
  ///
  /// For example, AdChoices.
  core.String? program;

  /// OBA icon resource URL.
  ///
  /// Campaign Manager only supports image and JavaScript icons. Learn more
  core.String? resourceUrl;

  /// OBA icon size.
  Size? size;

  /// OBA icon x coordinate position.
  ///
  /// Accepted values are left or right.
  core.String? xPosition;

  /// OBA icon y coordinate position.
  ///
  /// Accepted values are top or bottom.
  core.String? yPosition;

  ObaIcon({
    this.iconClickThroughUrl,
    this.iconClickTrackingUrl,
    this.iconViewTrackingUrl,
    this.program,
    this.resourceUrl,
    this.size,
    this.xPosition,
    this.yPosition,
  });

  ObaIcon.fromJson(core.Map json_)
      : this(
          iconClickThroughUrl: json_.containsKey('iconClickThroughUrl')
              ? json_['iconClickThroughUrl'] as core.String
              : null,
          iconClickTrackingUrl: json_.containsKey('iconClickTrackingUrl')
              ? json_['iconClickTrackingUrl'] as core.String
              : null,
          iconViewTrackingUrl: json_.containsKey('iconViewTrackingUrl')
              ? json_['iconViewTrackingUrl'] as core.String
              : null,
          program: json_.containsKey('program')
              ? json_['program'] as core.String
              : null,
          resourceUrl: json_.containsKey('resourceUrl')
              ? json_['resourceUrl'] as core.String
              : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          xPosition: json_.containsKey('xPosition')
              ? json_['xPosition'] as core.String
              : null,
          yPosition: json_.containsKey('yPosition')
              ? json_['yPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iconClickThroughUrl != null)
          'iconClickThroughUrl': iconClickThroughUrl!,
        if (iconClickTrackingUrl != null)
          'iconClickTrackingUrl': iconClickTrackingUrl!,
        if (iconViewTrackingUrl != null)
          'iconViewTrackingUrl': iconViewTrackingUrl!,
        if (program != null) 'program': program!,
        if (resourceUrl != null) 'resourceUrl': resourceUrl!,
        if (size != null) 'size': size!,
        if (xPosition != null) 'xPosition': xPosition!,
        if (yPosition != null) 'yPosition': yPosition!,
      };
}

/// Object Filter.
typedef ObjectFilter = $ObjectFilter;

/// Offset Position.
typedef OffsetPosition = $OffsetPosition;

/// Omniture Integration Settings.
typedef OmnitureSettings = $OmnitureSettings;

/// Contains information about an operating system that can be targeted by ads.
typedef OperatingSystem = $OperatingSystem;

/// Contains information about a particular version of an operating system that
/// can be targeted by ads.
class OperatingSystemVersion {
  /// ID of this operating system version.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#operatingSystemVersion".
  core.String? kind;

  /// Major version (leftmost number) of this operating system version.
  core.String? majorVersion;

  /// Minor version (number after the first dot) of this operating system
  /// version.
  core.String? minorVersion;

  /// Name of this operating system version.
  core.String? name;

  /// Operating system of this operating system version.
  OperatingSystem? operatingSystem;

  OperatingSystemVersion({
    this.id,
    this.kind,
    this.majorVersion,
    this.minorVersion,
    this.name,
    this.operatingSystem,
  });

  OperatingSystemVersion.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          majorVersion: json_.containsKey('majorVersion')
              ? json_['majorVersion'] as core.String
              : null,
          minorVersion: json_.containsKey('minorVersion')
              ? json_['minorVersion'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operatingSystem: json_.containsKey('operatingSystem')
              ? OperatingSystem.fromJson(json_['operatingSystem']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (majorVersion != null) 'majorVersion': majorVersion!,
        if (minorVersion != null) 'minorVersion': minorVersion!,
        if (name != null) 'name': name!,
        if (operatingSystem != null) 'operatingSystem': operatingSystem!,
      };
}

/// Operating System Version List Response
class OperatingSystemVersionsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#operatingSystemVersionsListResponse".
  core.String? kind;

  /// Operating system version collection.
  core.List<OperatingSystemVersion>? operatingSystemVersions;

  OperatingSystemVersionsListResponse({
    this.kind,
    this.operatingSystemVersions,
  });

  OperatingSystemVersionsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          operatingSystemVersions: json_.containsKey('operatingSystemVersions')
              ? (json_['operatingSystemVersions'] as core.List)
                  .map((value) => OperatingSystemVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (operatingSystemVersions != null)
          'operatingSystemVersions': operatingSystemVersions!,
      };
}

/// Operating System List Response
class OperatingSystemsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#operatingSystemsListResponse".
  core.String? kind;

  /// Operating system collection.
  core.List<OperatingSystem>? operatingSystems;

  OperatingSystemsListResponse({
    this.kind,
    this.operatingSystems,
  });

  OperatingSystemsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          operatingSystems: json_.containsKey('operatingSystems')
              ? (json_['operatingSystems'] as core.List)
                  .map((value) => OperatingSystem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (operatingSystems != null) 'operatingSystems': operatingSystems!,
      };
}

/// Creative optimization activity.
class OptimizationActivity {
  /// Floodlight activity ID of this optimization activity.
  ///
  /// This is a required field.
  core.String? floodlightActivityId;

  /// Dimension value for the ID of the floodlight activity.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? floodlightActivityIdDimensionValue;

  /// Weight associated with this optimization.
  ///
  /// The weight assigned will be understood in proportion to the weights
  /// assigned to the other optimization activities. Value must be greater than
  /// or equal to 1.
  core.int? weight;

  OptimizationActivity({
    this.floodlightActivityId,
    this.floodlightActivityIdDimensionValue,
    this.weight,
  });

  OptimizationActivity.fromJson(core.Map json_)
      : this(
          floodlightActivityId: json_.containsKey('floodlightActivityId')
              ? json_['floodlightActivityId'] as core.String
              : null,
          floodlightActivityIdDimensionValue:
              json_.containsKey('floodlightActivityIdDimensionValue')
                  ? DimensionValue.fromJson(
                      json_['floodlightActivityIdDimensionValue']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floodlightActivityId != null)
          'floodlightActivityId': floodlightActivityId!,
        if (floodlightActivityIdDimensionValue != null)
          'floodlightActivityIdDimensionValue':
              floodlightActivityIdDimensionValue!,
        if (weight != null) 'weight': weight!,
      };
}

/// Describes properties of a Planning order.
class Order {
  /// Account ID of this order.
  core.String? accountId;

  /// Advertiser ID of this order.
  core.String? advertiserId;

  /// IDs for users that have to approve documents created for this order.
  core.List<core.String>? approverUserProfileIds;

  /// Buyer invoice ID associated with this order.
  core.String? buyerInvoiceId;

  /// Name of the buyer organization.
  core.String? buyerOrganizationName;

  /// Comments in this order.
  core.String? comments;

  /// Contacts for this order.
  core.List<OrderContact>? contacts;

  /// ID of this order.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#order".
  core.String? kind;

  /// Information about the most recent modification of this order.
  LastModifiedInfo? lastModifiedInfo;

  /// Name of this order.
  core.String? name;

  /// Notes of this order.
  core.String? notes;

  /// ID of the terms and conditions template used in this order.
  core.String? planningTermId;

  /// Project ID of this order.
  core.String? projectId;

  /// Seller order ID associated with this order.
  core.String? sellerOrderId;

  /// Name of the seller organization.
  core.String? sellerOrganizationName;

  /// Site IDs this order is associated with.
  core.List<core.String>? siteId;

  /// Free-form site names this order is associated with.
  core.List<core.String>? siteNames;

  /// Subaccount ID of this order.
  core.String? subaccountId;

  /// Terms and conditions of this order.
  core.String? termsAndConditions;

  Order({
    this.accountId,
    this.advertiserId,
    this.approverUserProfileIds,
    this.buyerInvoiceId,
    this.buyerOrganizationName,
    this.comments,
    this.contacts,
    this.id,
    this.kind,
    this.lastModifiedInfo,
    this.name,
    this.notes,
    this.planningTermId,
    this.projectId,
    this.sellerOrderId,
    this.sellerOrganizationName,
    this.siteId,
    this.siteNames,
    this.subaccountId,
    this.termsAndConditions,
  });

  Order.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          approverUserProfileIds: json_.containsKey('approverUserProfileIds')
              ? (json_['approverUserProfileIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          buyerInvoiceId: json_.containsKey('buyerInvoiceId')
              ? json_['buyerInvoiceId'] as core.String
              : null,
          buyerOrganizationName: json_.containsKey('buyerOrganizationName')
              ? json_['buyerOrganizationName'] as core.String
              : null,
          comments: json_.containsKey('comments')
              ? json_['comments'] as core.String
              : null,
          contacts: json_.containsKey('contacts')
              ? (json_['contacts'] as core.List)
                  .map((value) => OrderContact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          planningTermId: json_.containsKey('planningTermId')
              ? json_['planningTermId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          sellerOrderId: json_.containsKey('sellerOrderId')
              ? json_['sellerOrderId'] as core.String
              : null,
          sellerOrganizationName: json_.containsKey('sellerOrganizationName')
              ? json_['sellerOrganizationName'] as core.String
              : null,
          siteId: json_.containsKey('siteId')
              ? (json_['siteId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          siteNames: json_.containsKey('siteNames')
              ? (json_['siteNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          termsAndConditions: json_.containsKey('termsAndConditions')
              ? json_['termsAndConditions'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (approverUserProfileIds != null)
          'approverUserProfileIds': approverUserProfileIds!,
        if (buyerInvoiceId != null) 'buyerInvoiceId': buyerInvoiceId!,
        if (buyerOrganizationName != null)
          'buyerOrganizationName': buyerOrganizationName!,
        if (comments != null) 'comments': comments!,
        if (contacts != null) 'contacts': contacts!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (planningTermId != null) 'planningTermId': planningTermId!,
        if (projectId != null) 'projectId': projectId!,
        if (sellerOrderId != null) 'sellerOrderId': sellerOrderId!,
        if (sellerOrganizationName != null)
          'sellerOrganizationName': sellerOrganizationName!,
        if (siteId != null) 'siteId': siteId!,
        if (siteNames != null) 'siteNames': siteNames!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (termsAndConditions != null)
          'termsAndConditions': termsAndConditions!,
      };
}

/// Contact of an order.
typedef OrderContact = $OrderContact;

/// Contains properties of a Planning order document.
class OrderDocument {
  /// Account ID of this order document.
  core.String? accountId;

  /// Advertiser ID of this order document.
  core.String? advertiserId;

  /// The amended order document ID of this order document.
  ///
  /// An order document can be created by optionally amending another order
  /// document so that the change history can be preserved.
  core.String? amendedOrderDocumentId;

  /// IDs of users who have approved this order document.
  core.List<core.String>? approvedByUserProfileIds;

  /// Whether this order document is cancelled.
  core.bool? cancelled;

  /// Information about the creation of this order document.
  LastModifiedInfo? createdInfo;
  core.DateTime? effectiveDate;

  /// ID of this order document.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#orderDocument".
  core.String? kind;

  /// List of email addresses that received the last sent document.
  core.List<core.String>? lastSentRecipients;
  core.DateTime? lastSentTime;

  /// ID of the order from which this order document is created.
  core.String? orderId;

  /// Project ID of this order document.
  core.String? projectId;

  /// Whether this order document has been signed.
  core.bool? signed;

  /// Subaccount ID of this order document.
  core.String? subaccountId;

  /// Title of this order document.
  core.String? title;

  /// Type of this order document
  /// Possible string values are:
  /// - "PLANNING_ORDER_TYPE_INSERTION_ORDER"
  /// - "PLANNING_ORDER_TYPE_CHANGE_ORDER"
  core.String? type;

  OrderDocument({
    this.accountId,
    this.advertiserId,
    this.amendedOrderDocumentId,
    this.approvedByUserProfileIds,
    this.cancelled,
    this.createdInfo,
    this.effectiveDate,
    this.id,
    this.kind,
    this.lastSentRecipients,
    this.lastSentTime,
    this.orderId,
    this.projectId,
    this.signed,
    this.subaccountId,
    this.title,
    this.type,
  });

  OrderDocument.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          amendedOrderDocumentId: json_.containsKey('amendedOrderDocumentId')
              ? json_['amendedOrderDocumentId'] as core.String
              : null,
          approvedByUserProfileIds:
              json_.containsKey('approvedByUserProfileIds')
                  ? (json_['approvedByUserProfileIds'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          cancelled: json_.containsKey('cancelled')
              ? json_['cancelled'] as core.bool
              : null,
          createdInfo: json_.containsKey('createdInfo')
              ? LastModifiedInfo.fromJson(
                  json_['createdInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          effectiveDate: json_.containsKey('effectiveDate')
              ? core.DateTime.parse(json_['effectiveDate'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastSentRecipients: json_.containsKey('lastSentRecipients')
              ? (json_['lastSentRecipients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastSentTime: json_.containsKey('lastSentTime')
              ? core.DateTime.parse(json_['lastSentTime'] as core.String)
              : null,
          orderId: json_.containsKey('orderId')
              ? json_['orderId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          signed:
              json_.containsKey('signed') ? json_['signed'] as core.bool : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (amendedOrderDocumentId != null)
          'amendedOrderDocumentId': amendedOrderDocumentId!,
        if (approvedByUserProfileIds != null)
          'approvedByUserProfileIds': approvedByUserProfileIds!,
        if (cancelled != null) 'cancelled': cancelled!,
        if (createdInfo != null) 'createdInfo': createdInfo!,
        if (effectiveDate != null)
          'effectiveDate':
              "${effectiveDate!.year.toString().padLeft(4, '0')}-${effectiveDate!.month.toString().padLeft(2, '0')}-${effectiveDate!.day.toString().padLeft(2, '0')}",
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastSentRecipients != null)
          'lastSentRecipients': lastSentRecipients!,
        if (lastSentTime != null)
          'lastSentTime': lastSentTime!.toUtc().toIso8601String(),
        if (orderId != null) 'orderId': orderId!,
        if (projectId != null) 'projectId': projectId!,
        if (signed != null) 'signed': signed!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// Order document List Response
class OrderDocumentsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#orderDocumentsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Order document collection
  core.List<OrderDocument>? orderDocuments;

  OrderDocumentsListResponse({
    this.kind,
    this.nextPageToken,
    this.orderDocuments,
  });

  OrderDocumentsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          orderDocuments: json_.containsKey('orderDocuments')
              ? (json_['orderDocuments'] as core.List)
                  .map((value) => OrderDocument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (orderDocuments != null) 'orderDocuments': orderDocuments!,
      };
}

/// Order List Response
class OrdersListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#ordersListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Order collection.
  core.List<Order>? orders;

  OrdersListResponse({
    this.kind,
    this.nextPageToken,
    this.orders,
  });

  OrdersListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          orders: json_.containsKey('orders')
              ? (json_['orders'] as core.List)
                  .map((value) => Order.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (orders != null) 'orders': orders!,
      };
}

/// Represents a DfaReporting path filter.
class PathFilter {
  /// Event filters in path report.
  core.List<EventFilter>? eventFilters;

  /// The kind of resource this is, in this case dfareporting#pathFilter.
  core.String? kind;

  /// Determines how the 'value' field is matched when filtering.
  ///
  /// If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is
  /// allowed as a placeholder for variable length character sequences, and it
  /// can be escaped with a backslash. Note, only paid search dimensions
  /// ('dfa:paidSearch*') allow a matchType other than EXACT.
  /// Possible string values are:
  /// - "PATH_MATCH_POSITION_UNSPECIFIED"
  /// - "ANY"
  /// - "FIRST"
  /// - "LAST"
  core.String? pathMatchPosition;

  PathFilter({
    this.eventFilters,
    this.kind,
    this.pathMatchPosition,
  });

  PathFilter.fromJson(core.Map json_)
      : this(
          eventFilters: json_.containsKey('eventFilters')
              ? (json_['eventFilters'] as core.List)
                  .map((value) => EventFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          pathMatchPosition: json_.containsKey('pathMatchPosition')
              ? json_['pathMatchPosition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventFilters != null) 'eventFilters': eventFilters!,
        if (kind != null) 'kind': kind!,
        if (pathMatchPosition != null) 'pathMatchPosition': pathMatchPosition!,
      };
}

/// Represents fields that are compatible to be selected for a report of type
/// "PATH".
class PathReportCompatibleFields {
  /// Dimensions which are compatible to be selected in the "channelGroupings"
  /// section of the report.
  core.List<Dimension>? channelGroupings;

  /// Dimensions which are compatible to be selected in the "dimensions" section
  /// of the report.
  core.List<Dimension>? dimensions;

  /// The kind of resource this is, in this case
  /// dfareporting#pathReportCompatibleFields.
  core.String? kind;

  /// Metrics which are compatible to be selected in the "metricNames" section
  /// of the report.
  core.List<Metric>? metrics;

  /// Dimensions which are compatible to be selected in the "pathFilters"
  /// section of the report.
  core.List<Dimension>? pathFilters;

  PathReportCompatibleFields({
    this.channelGroupings,
    this.dimensions,
    this.kind,
    this.metrics,
    this.pathFilters,
  });

  PathReportCompatibleFields.fromJson(core.Map json_)
      : this(
          channelGroupings: json_.containsKey('channelGroupings')
              ? (json_['channelGroupings'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pathFilters: json_.containsKey('pathFilters')
              ? (json_['pathFilters'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelGroupings != null) 'channelGroupings': channelGroupings!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
        if (pathFilters != null) 'pathFilters': pathFilters!,
      };
}

/// Represents a PathReportDimensionValue resource.
typedef PathReportDimensionValue = $PathReportDimensionValue;

/// Represents fields that are compatible to be selected for a report of type
/// "PATH_TO_CONVERSION".
class PathToConversionReportCompatibleFields {
  /// Conversion dimensions which are compatible to be selected in the
  /// "conversionDimensions" section of the report.
  core.List<Dimension>? conversionDimensions;

  /// Custom floodlight variables which are compatible to be selected in the
  /// "customFloodlightVariables" section of the report.
  core.List<Dimension>? customFloodlightVariables;

  /// The kind of resource this is, in this case
  /// dfareporting#pathToConversionReportCompatibleFields.
  core.String? kind;

  /// Metrics which are compatible to be selected in the "metricNames" section
  /// of the report.
  core.List<Metric>? metrics;

  /// Per-interaction dimensions which are compatible to be selected in the
  /// "perInteractionDimensions" section of the report.
  core.List<Dimension>? perInteractionDimensions;

  PathToConversionReportCompatibleFields({
    this.conversionDimensions,
    this.customFloodlightVariables,
    this.kind,
    this.metrics,
    this.perInteractionDimensions,
  });

  PathToConversionReportCompatibleFields.fromJson(core.Map json_)
      : this(
          conversionDimensions: json_.containsKey('conversionDimensions')
              ? (json_['conversionDimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customFloodlightVariables:
              json_.containsKey('customFloodlightVariables')
                  ? (json_['customFloodlightVariables'] as core.List)
                      .map((value) => Dimension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          perInteractionDimensions:
              json_.containsKey('perInteractionDimensions')
                  ? (json_['perInteractionDimensions'] as core.List)
                      .map((value) => Dimension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionDimensions != null)
          'conversionDimensions': conversionDimensions!,
        if (customFloodlightVariables != null)
          'customFloodlightVariables': customFloodlightVariables!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
        if (perInteractionDimensions != null)
          'perInteractionDimensions': perInteractionDimensions!,
      };
}

/// Contains properties of a placement.
class Placement {
  /// Account ID of this placement.
  ///
  /// This field can be left blank.
  core.String? accountId;

  /// Whether this placement opts out of ad blocking.
  ///
  /// When true, ad blocking is disabled for this placement. When false, the
  /// campaign and site settings take effect.
  core.bool? adBlockingOptOut;

  /// Additional sizes associated with this placement.
  ///
  /// When inserting or updating a placement, only the size ID field is used.
  core.List<Size>? additionalSizes;

  /// Advertiser ID of this placement.
  ///
  /// This field can be left blank.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Whether this placement is archived.
  core.bool? archived;

  /// Campaign ID of this placement.
  ///
  /// This field is a required field on insertion.
  core.String? campaignId;

  /// Dimension value for the ID of the campaign.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? campaignIdDimensionValue;

  /// Comments for this placement.
  core.String? comment;

  /// Placement compatibility.
  ///
  /// DISPLAY and DISPLAY_INTERSTITIAL refer to rendering on desktop, on mobile
  /// devices or in mobile apps for regular or interstitial ads respectively.
  /// APP and APP_INTERSTITIAL are no longer allowed for new placement
  /// insertions. Instead, use DISPLAY or DISPLAY_INTERSTITIAL. IN_STREAM_VIDEO
  /// refers to rendering in in-stream video ads developed with the VAST
  /// standard. This field is required on insertion.
  /// Possible string values are:
  /// - "DISPLAY"
  /// - "DISPLAY_INTERSTITIAL"
  /// - "APP"
  /// - "APP_INTERSTITIAL"
  /// - "IN_STREAM_VIDEO"
  /// - "IN_STREAM_AUDIO"
  core.String? compatibility;

  /// ID of the content category assigned to this placement.
  core.String? contentCategoryId;

  /// Information about the creation of this placement.
  ///
  /// This is a read-only field.
  LastModifiedInfo? createInfo;

  /// Directory site ID of this placement.
  ///
  /// On insert, you must set either this field or the siteId field to specify
  /// the site associated with this placement. This is a required field that is
  /// read-only after insertion.
  core.String? directorySiteId;

  /// Dimension value for the ID of the directory site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? directorySiteIdDimensionValue;

  /// External ID for this placement.
  core.String? externalId;

  /// ID of this placement.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this placement.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Key name of this placement.
  ///
  /// This is a read-only, auto-generated field.
  core.String? keyName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placement".
  core.String? kind;

  /// Information about the most recent modification of this placement.
  ///
  /// This is a read-only field.
  LastModifiedInfo? lastModifiedInfo;

  /// Lookback window settings for this placement.
  LookbackConfiguration? lookbackConfiguration;

  /// Name of this placement.This is a required field and must be less than or
  /// equal to 512 characters long.
  core.String? name;

  /// Measurement partner provided settings for a wrapped placement.
  MeasurementPartnerWrappingData? partnerWrappingData;

  /// Whether payment was approved for this placement.
  ///
  /// This is a read-only field relevant only to publisher-paid placements.
  core.bool? paymentApproved;

  /// Payment source for this placement.
  ///
  /// This is a required field that is read-only after insertion.
  /// Possible string values are:
  /// - "PLACEMENT_AGENCY_PAID"
  /// - "PLACEMENT_PUBLISHER_PAID"
  core.String? paymentSource;

  /// ID of this placement's group, if applicable.
  core.String? placementGroupId;

  /// Dimension value for the ID of the placement group.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? placementGroupIdDimensionValue;

  /// ID of the placement strategy assigned to this placement.
  core.String? placementStrategyId;

  /// Pricing schedule of this placement.
  ///
  /// This field is required on insertion, specifically subfields startDate,
  /// endDate and pricingType.
  PricingSchedule? pricingSchedule;

  /// Whether this placement is the primary placement of a roadblock (placement
  /// group).
  ///
  /// You cannot change this field from true to false. Setting this field to
  /// true will automatically set the primary field on the original primary
  /// placement of the roadblock to false, and it will automatically set the
  /// roadblock's primaryPlacementId field to the ID of this placement.
  core.bool? primary;

  /// Information about the last publisher update.
  ///
  /// This is a read-only field.
  LastModifiedInfo? publisherUpdateInfo;

  /// Site ID associated with this placement.
  ///
  /// On insert, you must set either this field or the directorySiteId field to
  /// specify the site associated with this placement. This is a required field
  /// that is read-only after insertion.
  core.String? siteId;

  /// Dimension value for the ID of the site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? siteIdDimensionValue;

  /// Size associated with this placement.
  ///
  /// When inserting or updating a placement, only the size ID field is used.
  /// This field is required on insertion.
  Size? size;

  /// Whether creatives assigned to this placement must be SSL-compliant.
  core.bool? sslRequired;

  /// Third-party placement status.
  /// Possible string values are:
  /// - "PENDING_REVIEW"
  /// - "PAYMENT_ACCEPTED"
  /// - "PAYMENT_REJECTED"
  /// - "ACKNOWLEDGE_REJECTION"
  /// - "ACKNOWLEDGE_ACCEPTANCE"
  /// - "DRAFT"
  core.String? status;

  /// Subaccount ID of this placement.
  ///
  /// This field can be left blank.
  core.String? subaccountId;

  /// Tag formats to generate for this placement.
  ///
  /// This field is required on insertion. Acceptable values are: -
  /// "PLACEMENT_TAG_STANDARD" - "PLACEMENT_TAG_IFRAME_JAVASCRIPT" -
  /// "PLACEMENT_TAG_IFRAME_ILAYER" - "PLACEMENT_TAG_INTERNAL_REDIRECT" -
  /// "PLACEMENT_TAG_JAVASCRIPT" -
  /// "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" -
  /// "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" -
  /// "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" - "PLACEMENT_TAG_CLICK_COMMANDS" -
  /// "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" -
  /// "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" -
  /// "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4" - "PLACEMENT_TAG_TRACKING"
  /// - "PLACEMENT_TAG_TRACKING_IFRAME" - "PLACEMENT_TAG_TRACKING_JAVASCRIPT"
  core.List<core.String>? tagFormats;

  /// Tag settings for this placement.
  TagSetting? tagSetting;

  /// Whether Verification and ActiveView are disabled for in-stream video
  /// creatives for this placement.
  ///
  /// The same setting videoActiveViewOptOut exists on the site level -- the opt
  /// out occurs if either of these settings are true. These settings are
  /// distinct from DirectorySites.settings.activeViewOptOut or
  /// Sites.siteSettings.activeViewOptOut which only apply to display ads.
  /// However, Accounts.activeViewOptOut opts out both video traffic, as well as
  /// display ads, from Verification and ActiveView.
  core.bool? videoActiveViewOptOut;

  /// A collection of settings which affect video creatives served through this
  /// placement.
  ///
  /// Applicable to placements with IN_STREAM_VIDEO compatibility.
  VideoSettings? videoSettings;

  /// VPAID adapter setting for this placement.
  ///
  /// Controls which VPAID format the measurement adapter will use for in-stream
  /// video creatives assigned to this placement. *Note:* Flash is no longer
  /// supported. This field now defaults to HTML5 when the following values are
  /// provided: FLASH, BOTH.
  /// Possible string values are:
  /// - "DEFAULT"
  /// - "FLASH"
  /// - "HTML5"
  /// - "BOTH"
  core.String? vpaidAdapterChoice;

  /// Whether this placement opts out of tag wrapping.
  core.bool? wrappingOptOut;

  Placement({
    this.accountId,
    this.adBlockingOptOut,
    this.additionalSizes,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.archived,
    this.campaignId,
    this.campaignIdDimensionValue,
    this.comment,
    this.compatibility,
    this.contentCategoryId,
    this.createInfo,
    this.directorySiteId,
    this.directorySiteIdDimensionValue,
    this.externalId,
    this.id,
    this.idDimensionValue,
    this.keyName,
    this.kind,
    this.lastModifiedInfo,
    this.lookbackConfiguration,
    this.name,
    this.partnerWrappingData,
    this.paymentApproved,
    this.paymentSource,
    this.placementGroupId,
    this.placementGroupIdDimensionValue,
    this.placementStrategyId,
    this.pricingSchedule,
    this.primary,
    this.publisherUpdateInfo,
    this.siteId,
    this.siteIdDimensionValue,
    this.size,
    this.sslRequired,
    this.status,
    this.subaccountId,
    this.tagFormats,
    this.tagSetting,
    this.videoActiveViewOptOut,
    this.videoSettings,
    this.vpaidAdapterChoice,
    this.wrappingOptOut,
  });

  Placement.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          adBlockingOptOut: json_.containsKey('adBlockingOptOut')
              ? json_['adBlockingOptOut'] as core.bool
              : null,
          additionalSizes: json_.containsKey('additionalSizes')
              ? (json_['additionalSizes'] as core.List)
                  .map((value) => Size.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          campaignIdDimensionValue:
              json_.containsKey('campaignIdDimensionValue')
                  ? DimensionValue.fromJson(json_['campaignIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          compatibility: json_.containsKey('compatibility')
              ? json_['compatibility'] as core.String
              : null,
          contentCategoryId: json_.containsKey('contentCategoryId')
              ? json_['contentCategoryId'] as core.String
              : null,
          createInfo: json_.containsKey('createInfo')
              ? LastModifiedInfo.fromJson(
                  json_['createInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          directorySiteId: json_.containsKey('directorySiteId')
              ? json_['directorySiteId'] as core.String
              : null,
          directorySiteIdDimensionValue: json_
                  .containsKey('directorySiteIdDimensionValue')
              ? DimensionValue.fromJson(json_['directorySiteIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          externalId: json_.containsKey('externalId')
              ? json_['externalId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lookbackConfiguration: json_.containsKey('lookbackConfiguration')
              ? LookbackConfiguration.fromJson(json_['lookbackConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partnerWrappingData: json_.containsKey('partnerWrappingData')
              ? MeasurementPartnerWrappingData.fromJson(
                  json_['partnerWrappingData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          paymentApproved: json_.containsKey('paymentApproved')
              ? json_['paymentApproved'] as core.bool
              : null,
          paymentSource: json_.containsKey('paymentSource')
              ? json_['paymentSource'] as core.String
              : null,
          placementGroupId: json_.containsKey('placementGroupId')
              ? json_['placementGroupId'] as core.String
              : null,
          placementGroupIdDimensionValue: json_
                  .containsKey('placementGroupIdDimensionValue')
              ? DimensionValue.fromJson(json_['placementGroupIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          placementStrategyId: json_.containsKey('placementStrategyId')
              ? json_['placementStrategyId'] as core.String
              : null,
          pricingSchedule: json_.containsKey('pricingSchedule')
              ? PricingSchedule.fromJson(json_['pricingSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          primary: json_.containsKey('primary')
              ? json_['primary'] as core.bool
              : null,
          publisherUpdateInfo: json_.containsKey('publisherUpdateInfo')
              ? LastModifiedInfo.fromJson(json_['publisherUpdateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          siteId: json_.containsKey('siteId')
              ? json_['siteId'] as core.String
              : null,
          siteIdDimensionValue: json_.containsKey('siteIdDimensionValue')
              ? DimensionValue.fromJson(json_['siteIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          size: json_.containsKey('size')
              ? Size.fromJson(
                  json_['size'] as core.Map<core.String, core.dynamic>)
              : null,
          sslRequired: json_.containsKey('sslRequired')
              ? json_['sslRequired'] as core.bool
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          tagFormats: json_.containsKey('tagFormats')
              ? (json_['tagFormats'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tagSetting: json_.containsKey('tagSetting')
              ? TagSetting.fromJson(
                  json_['tagSetting'] as core.Map<core.String, core.dynamic>)
              : null,
          videoActiveViewOptOut: json_.containsKey('videoActiveViewOptOut')
              ? json_['videoActiveViewOptOut'] as core.bool
              : null,
          videoSettings: json_.containsKey('videoSettings')
              ? VideoSettings.fromJson(
                  json_['videoSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          vpaidAdapterChoice: json_.containsKey('vpaidAdapterChoice')
              ? json_['vpaidAdapterChoice'] as core.String
              : null,
          wrappingOptOut: json_.containsKey('wrappingOptOut')
              ? json_['wrappingOptOut'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (adBlockingOptOut != null) 'adBlockingOptOut': adBlockingOptOut!,
        if (additionalSizes != null) 'additionalSizes': additionalSizes!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (archived != null) 'archived': archived!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (campaignIdDimensionValue != null)
          'campaignIdDimensionValue': campaignIdDimensionValue!,
        if (comment != null) 'comment': comment!,
        if (compatibility != null) 'compatibility': compatibility!,
        if (contentCategoryId != null) 'contentCategoryId': contentCategoryId!,
        if (createInfo != null) 'createInfo': createInfo!,
        if (directorySiteId != null) 'directorySiteId': directorySiteId!,
        if (directorySiteIdDimensionValue != null)
          'directorySiteIdDimensionValue': directorySiteIdDimensionValue!,
        if (externalId != null) 'externalId': externalId!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (keyName != null) 'keyName': keyName!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (lookbackConfiguration != null)
          'lookbackConfiguration': lookbackConfiguration!,
        if (name != null) 'name': name!,
        if (partnerWrappingData != null)
          'partnerWrappingData': partnerWrappingData!,
        if (paymentApproved != null) 'paymentApproved': paymentApproved!,
        if (paymentSource != null) 'paymentSource': paymentSource!,
        if (placementGroupId != null) 'placementGroupId': placementGroupId!,
        if (placementGroupIdDimensionValue != null)
          'placementGroupIdDimensionValue': placementGroupIdDimensionValue!,
        if (placementStrategyId != null)
          'placementStrategyId': placementStrategyId!,
        if (pricingSchedule != null) 'pricingSchedule': pricingSchedule!,
        if (primary != null) 'primary': primary!,
        if (publisherUpdateInfo != null)
          'publisherUpdateInfo': publisherUpdateInfo!,
        if (siteId != null) 'siteId': siteId!,
        if (siteIdDimensionValue != null)
          'siteIdDimensionValue': siteIdDimensionValue!,
        if (size != null) 'size': size!,
        if (sslRequired != null) 'sslRequired': sslRequired!,
        if (status != null) 'status': status!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (tagFormats != null) 'tagFormats': tagFormats!,
        if (tagSetting != null) 'tagSetting': tagSetting!,
        if (videoActiveViewOptOut != null)
          'videoActiveViewOptOut': videoActiveViewOptOut!,
        if (videoSettings != null) 'videoSettings': videoSettings!,
        if (vpaidAdapterChoice != null)
          'vpaidAdapterChoice': vpaidAdapterChoice!,
        if (wrappingOptOut != null) 'wrappingOptOut': wrappingOptOut!,
      };
}

/// Placement Assignment.
class PlacementAssignment {
  /// Whether this placement assignment is active.
  ///
  /// When true, the placement will be included in the ad's rotation.
  core.bool? active;

  /// ID of the placement to be assigned.
  ///
  /// This is a required field.
  core.String? placementId;

  /// Dimension value for the ID of the placement.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? placementIdDimensionValue;

  /// Whether the placement to be assigned requires SSL.
  ///
  /// This is a read-only field that is auto-generated when the ad is inserted
  /// or updated.
  core.bool? sslRequired;

  PlacementAssignment({
    this.active,
    this.placementId,
    this.placementIdDimensionValue,
    this.sslRequired,
  });

  PlacementAssignment.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          placementId: json_.containsKey('placementId')
              ? json_['placementId'] as core.String
              : null,
          placementIdDimensionValue:
              json_.containsKey('placementIdDimensionValue')
                  ? DimensionValue.fromJson(json_['placementIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          sslRequired: json_.containsKey('sslRequired')
              ? json_['sslRequired'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (placementId != null) 'placementId': placementId!,
        if (placementIdDimensionValue != null)
          'placementIdDimensionValue': placementIdDimensionValue!,
        if (sslRequired != null) 'sslRequired': sslRequired!,
      };
}

/// Contains properties of a package or roadblock.
class PlacementGroup {
  /// Account ID of this placement group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Advertiser ID of this placement group.
  ///
  /// This is a required field on insertion.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Whether this placement group is archived.
  core.bool? archived;

  /// Campaign ID of this placement group.
  ///
  /// This field is required on insertion.
  core.String? campaignId;

  /// Dimension value for the ID of the campaign.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? campaignIdDimensionValue;

  /// IDs of placements which are assigned to this placement group.
  ///
  /// This is a read-only, auto-generated field.
  core.List<core.String>? childPlacementIds;

  /// Comments for this placement group.
  core.String? comment;

  /// ID of the content category assigned to this placement group.
  core.String? contentCategoryId;

  /// Information about the creation of this placement group.
  ///
  /// This is a read-only field.
  LastModifiedInfo? createInfo;

  /// Directory site ID associated with this placement group.
  ///
  /// On insert, you must set either this field or the site_id field to specify
  /// the site associated with this placement group. This is a required field
  /// that is read-only after insertion.
  core.String? directorySiteId;

  /// Dimension value for the ID of the directory site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? directorySiteIdDimensionValue;

  /// External ID for this placement.
  core.String? externalId;

  /// ID of this placement group.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this placement group.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placementGroup".
  core.String? kind;

  /// Information about the most recent modification of this placement group.
  ///
  /// This is a read-only field.
  LastModifiedInfo? lastModifiedInfo;

  /// Name of this placement group.
  ///
  /// This is a required field and must be less than 256 characters long.
  core.String? name;

  /// Type of this placement group.
  ///
  /// A package is a simple group of placements that acts as a single pricing
  /// point for a group of tags. A roadblock is a group of placements that not
  /// only acts as a single pricing point, but also assumes that all the tags in
  /// it will be served at the same time. A roadblock requires one of its
  /// assigned placements to be marked as primary for reporting. This field is
  /// required on insertion.
  /// Possible string values are:
  /// - "PLACEMENT_PACKAGE"
  /// - "PLACEMENT_ROADBLOCK"
  core.String? placementGroupType;

  /// ID of the placement strategy assigned to this placement group.
  core.String? placementStrategyId;

  /// Pricing schedule of this placement group.
  ///
  /// This field is required on insertion.
  PricingSchedule? pricingSchedule;

  /// ID of the primary placement, used to calculate the media cost of a
  /// roadblock (placement group).
  ///
  /// Modifying this field will automatically modify the primary field on all
  /// affected roadblock child placements.
  core.String? primaryPlacementId;

  /// Dimension value for the ID of the primary placement.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? primaryPlacementIdDimensionValue;

  /// Site ID associated with this placement group.
  ///
  /// On insert, you must set either this field or the directorySiteId field to
  /// specify the site associated with this placement group. This is a required
  /// field that is read-only after insertion.
  core.String? siteId;

  /// Dimension value for the ID of the site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? siteIdDimensionValue;

  /// Subaccount ID of this placement group.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  PlacementGroup({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.archived,
    this.campaignId,
    this.campaignIdDimensionValue,
    this.childPlacementIds,
    this.comment,
    this.contentCategoryId,
    this.createInfo,
    this.directorySiteId,
    this.directorySiteIdDimensionValue,
    this.externalId,
    this.id,
    this.idDimensionValue,
    this.kind,
    this.lastModifiedInfo,
    this.name,
    this.placementGroupType,
    this.placementStrategyId,
    this.pricingSchedule,
    this.primaryPlacementId,
    this.primaryPlacementIdDimensionValue,
    this.siteId,
    this.siteIdDimensionValue,
    this.subaccountId,
  });

  PlacementGroup.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          campaignId: json_.containsKey('campaignId')
              ? json_['campaignId'] as core.String
              : null,
          campaignIdDimensionValue:
              json_.containsKey('campaignIdDimensionValue')
                  ? DimensionValue.fromJson(json_['campaignIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          childPlacementIds: json_.containsKey('childPlacementIds')
              ? (json_['childPlacementIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          contentCategoryId: json_.containsKey('contentCategoryId')
              ? json_['contentCategoryId'] as core.String
              : null,
          createInfo: json_.containsKey('createInfo')
              ? LastModifiedInfo.fromJson(
                  json_['createInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          directorySiteId: json_.containsKey('directorySiteId')
              ? json_['directorySiteId'] as core.String
              : null,
          directorySiteIdDimensionValue: json_
                  .containsKey('directorySiteIdDimensionValue')
              ? DimensionValue.fromJson(json_['directorySiteIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          externalId: json_.containsKey('externalId')
              ? json_['externalId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          placementGroupType: json_.containsKey('placementGroupType')
              ? json_['placementGroupType'] as core.String
              : null,
          placementStrategyId: json_.containsKey('placementStrategyId')
              ? json_['placementStrategyId'] as core.String
              : null,
          pricingSchedule: json_.containsKey('pricingSchedule')
              ? PricingSchedule.fromJson(json_['pricingSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          primaryPlacementId: json_.containsKey('primaryPlacementId')
              ? json_['primaryPlacementId'] as core.String
              : null,
          primaryPlacementIdDimensionValue:
              json_.containsKey('primaryPlacementIdDimensionValue')
                  ? DimensionValue.fromJson(
                      json_['primaryPlacementIdDimensionValue']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          siteId: json_.containsKey('siteId')
              ? json_['siteId'] as core.String
              : null,
          siteIdDimensionValue: json_.containsKey('siteIdDimensionValue')
              ? DimensionValue.fromJson(json_['siteIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (archived != null) 'archived': archived!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (campaignIdDimensionValue != null)
          'campaignIdDimensionValue': campaignIdDimensionValue!,
        if (childPlacementIds != null) 'childPlacementIds': childPlacementIds!,
        if (comment != null) 'comment': comment!,
        if (contentCategoryId != null) 'contentCategoryId': contentCategoryId!,
        if (createInfo != null) 'createInfo': createInfo!,
        if (directorySiteId != null) 'directorySiteId': directorySiteId!,
        if (directorySiteIdDimensionValue != null)
          'directorySiteIdDimensionValue': directorySiteIdDimensionValue!,
        if (externalId != null) 'externalId': externalId!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (name != null) 'name': name!,
        if (placementGroupType != null)
          'placementGroupType': placementGroupType!,
        if (placementStrategyId != null)
          'placementStrategyId': placementStrategyId!,
        if (pricingSchedule != null) 'pricingSchedule': pricingSchedule!,
        if (primaryPlacementId != null)
          'primaryPlacementId': primaryPlacementId!,
        if (primaryPlacementIdDimensionValue != null)
          'primaryPlacementIdDimensionValue': primaryPlacementIdDimensionValue!,
        if (siteId != null) 'siteId': siteId!,
        if (siteIdDimensionValue != null)
          'siteIdDimensionValue': siteIdDimensionValue!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
      };
}

/// Placement Group List Response
class PlacementGroupsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placementGroupsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Placement group collection.
  core.List<PlacementGroup>? placementGroups;

  PlacementGroupsListResponse({
    this.kind,
    this.nextPageToken,
    this.placementGroups,
  });

  PlacementGroupsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          placementGroups: json_.containsKey('placementGroups')
              ? (json_['placementGroups'] as core.List)
                  .map((value) => PlacementGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (placementGroups != null) 'placementGroups': placementGroups!,
      };
}

/// Placement Strategy List Response
class PlacementStrategiesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placementStrategiesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Placement strategy collection.
  core.List<PlacementStrategy>? placementStrategies;

  PlacementStrategiesListResponse({
    this.kind,
    this.nextPageToken,
    this.placementStrategies,
  });

  PlacementStrategiesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          placementStrategies: json_.containsKey('placementStrategies')
              ? (json_['placementStrategies'] as core.List)
                  .map((value) => PlacementStrategy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (placementStrategies != null)
          'placementStrategies': placementStrategies!,
      };
}

/// Contains properties of a placement strategy.
typedef PlacementStrategy = $PlacementStrategy;

/// Placement Tag
class PlacementTag {
  /// Placement ID
  core.String? placementId;

  /// Tags generated for this placement.
  core.List<TagData>? tagDatas;

  PlacementTag({
    this.placementId,
    this.tagDatas,
  });

  PlacementTag.fromJson(core.Map json_)
      : this(
          placementId: json_.containsKey('placementId')
              ? json_['placementId'] as core.String
              : null,
          tagDatas: json_.containsKey('tagDatas')
              ? (json_['tagDatas'] as core.List)
                  .map((value) => TagData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placementId != null) 'placementId': placementId!,
        if (tagDatas != null) 'tagDatas': tagDatas!,
      };
}

/// Placement GenerateTags Response
class PlacementsGenerateTagsResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placementsGenerateTagsResponse".
  core.String? kind;

  /// Set of generated tags for the specified placements.
  core.List<PlacementTag>? placementTags;

  PlacementsGenerateTagsResponse({
    this.kind,
    this.placementTags,
  });

  PlacementsGenerateTagsResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          placementTags: json_.containsKey('placementTags')
              ? (json_['placementTags'] as core.List)
                  .map((value) => PlacementTag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (placementTags != null) 'placementTags': placementTags!,
      };
}

/// Placement List Response
class PlacementsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#placementsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Placement collection.
  core.List<Placement>? placements;

  PlacementsListResponse({
    this.kind,
    this.nextPageToken,
    this.placements,
  });

  PlacementsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          placements: json_.containsKey('placements')
              ? (json_['placements'] as core.List)
                  .map((value) => Placement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (placements != null) 'placements': placements!,
      };
}

/// Contains information about a platform type that can be targeted by ads.
typedef PlatformType = $PlatformType;

/// Platform Type List Response
class PlatformTypesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#platformTypesListResponse".
  core.String? kind;

  /// Platform type collection.
  core.List<PlatformType>? platformTypes;

  PlatformTypesListResponse({
    this.kind,
    this.platformTypes,
  });

  PlatformTypesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          platformTypes: json_.containsKey('platformTypes')
              ? (json_['platformTypes'] as core.List)
                  .map((value) => PlatformType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (platformTypes != null) 'platformTypes': platformTypes!,
      };
}

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
          positionType: json_.containsKey('positionType')
              ? json_['positionType'] as core.String
              : null,
          showAddressBar: json_.containsKey('showAddressBar')
              ? json_['showAddressBar'] as core.bool
              : null,
          showMenuBar: json_.containsKey('showMenuBar')
              ? json_['showMenuBar'] as core.bool
              : null,
          showScrollBar: json_.containsKey('showScrollBar')
              ? json_['showScrollBar'] as core.bool
              : null,
          showStatusBar: json_.containsKey('showStatusBar')
              ? json_['showStatusBar'] as core.bool
              : null,
          showToolBar: json_.containsKey('showToolBar')
              ? json_['showToolBar'] as core.bool
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
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

/// Contains information about a postal code that can be targeted by ads.
typedef PostalCode = $PostalCode;

/// Postal Code List Response
class PostalCodesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#postalCodesListResponse".
  core.String? kind;

  /// Postal code collection.
  core.List<PostalCode>? postalCodes;

  PostalCodesListResponse({
    this.kind,
    this.postalCodes,
  });

  PostalCodesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          postalCodes: json_.containsKey('postalCodes')
              ? (json_['postalCodes'] as core.List)
                  .map((value) => PostalCode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (postalCodes != null) 'postalCodes': postalCodes!,
      };
}

/// Pricing Information
class Pricing {
  /// Cap cost type of this inventory item.
  /// Possible string values are:
  /// - "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE"
  /// - "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY"
  /// - "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE"
  core.String? capCostType;
  core.DateTime? endDate;

  /// Flights of this inventory item.
  ///
  /// A flight (a.k.a. pricing period) represents the inventory item pricing
  /// information for a specific period of time.
  core.List<Flight>? flights;

  /// Group type of this inventory item if it represents a placement group.
  ///
  /// Is null otherwise. There are two type of placement groups:
  /// PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory items
  /// that acts as a single pricing point for a group of tags.
  /// PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items that
  /// not only acts as a single pricing point, but also assumes that all the
  /// tags in it will be served at the same time. A roadblock requires one of
  /// its assigned inventory items to be marked as primary.
  /// Possible string values are:
  /// - "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE"
  /// - "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK"
  core.String? groupType;

  /// Pricing type of this inventory item.
  /// Possible string values are:
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_CPM"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_CPC"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_CPA"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS"
  /// - "PLANNING_PLACEMENT_PRICING_TYPE_CPM_ACTIVEVIEW"
  core.String? pricingType;
  core.DateTime? startDate;

  Pricing({
    this.capCostType,
    this.endDate,
    this.flights,
    this.groupType,
    this.pricingType,
    this.startDate,
  });

  Pricing.fromJson(core.Map json_)
      : this(
          capCostType: json_.containsKey('capCostType')
              ? json_['capCostType'] as core.String
              : null,
          endDate: json_.containsKey('endDate')
              ? core.DateTime.parse(json_['endDate'] as core.String)
              : null,
          flights: json_.containsKey('flights')
              ? (json_['flights'] as core.List)
                  .map((value) => Flight.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          groupType: json_.containsKey('groupType')
              ? json_['groupType'] as core.String
              : null,
          pricingType: json_.containsKey('pricingType')
              ? json_['pricingType'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? core.DateTime.parse(json_['startDate'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capCostType != null) 'capCostType': capCostType!,
        if (endDate != null)
          'endDate':
              "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        if (flights != null) 'flights': flights!,
        if (groupType != null) 'groupType': groupType!,
        if (pricingType != null) 'pricingType': pricingType!,
        if (startDate != null)
          'startDate':
              "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
      };
}

/// Pricing Schedule
class PricingSchedule {
  /// Placement cap cost option.
  /// Possible string values are:
  /// - "CAP_COST_NONE"
  /// - "CAP_COST_MONTHLY"
  /// - "CAP_COST_CUMULATIVE"
  core.String? capCostOption;
  core.DateTime? endDate;

  /// Whether this placement is flighted.
  ///
  /// If true, pricing periods will be computed automatically.
  core.bool? flighted;

  /// Floodlight activity ID associated with this placement.
  ///
  /// This field should be set when placement pricing type is set to
  /// PRICING_TYPE_CPA.
  core.String? floodlightActivityId;

  /// Pricing periods for this placement.
  core.List<PricingSchedulePricingPeriod>? pricingPeriods;

  /// Placement pricing type.
  ///
  /// This field is required on insertion.
  /// Possible string values are:
  /// - "PRICING_TYPE_CPM"
  /// - "PRICING_TYPE_CPC"
  /// - "PRICING_TYPE_CPA"
  /// - "PRICING_TYPE_FLAT_RATE_IMPRESSIONS"
  /// - "PRICING_TYPE_FLAT_RATE_CLICKS"
  /// - "PRICING_TYPE_CPM_ACTIVEVIEW"
  core.String? pricingType;
  core.DateTime? startDate;
  core.DateTime? testingStartDate;

  PricingSchedule({
    this.capCostOption,
    this.endDate,
    this.flighted,
    this.floodlightActivityId,
    this.pricingPeriods,
    this.pricingType,
    this.startDate,
    this.testingStartDate,
  });

  PricingSchedule.fromJson(core.Map json_)
      : this(
          capCostOption: json_.containsKey('capCostOption')
              ? json_['capCostOption'] as core.String
              : null,
          endDate: json_.containsKey('endDate')
              ? core.DateTime.parse(json_['endDate'] as core.String)
              : null,
          flighted: json_.containsKey('flighted')
              ? json_['flighted'] as core.bool
              : null,
          floodlightActivityId: json_.containsKey('floodlightActivityId')
              ? json_['floodlightActivityId'] as core.String
              : null,
          pricingPeriods: json_.containsKey('pricingPeriods')
              ? (json_['pricingPeriods'] as core.List)
                  .map((value) => PricingSchedulePricingPeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pricingType: json_.containsKey('pricingType')
              ? json_['pricingType'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? core.DateTime.parse(json_['startDate'] as core.String)
              : null,
          testingStartDate: json_.containsKey('testingStartDate')
              ? core.DateTime.parse(json_['testingStartDate'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capCostOption != null) 'capCostOption': capCostOption!,
        if (endDate != null)
          'endDate':
              "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        if (flighted != null) 'flighted': flighted!,
        if (floodlightActivityId != null)
          'floodlightActivityId': floodlightActivityId!,
        if (pricingPeriods != null) 'pricingPeriods': pricingPeriods!,
        if (pricingType != null) 'pricingType': pricingType!,
        if (startDate != null)
          'startDate':
              "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        if (testingStartDate != null)
          'testingStartDate':
              "${testingStartDate!.year.toString().padLeft(4, '0')}-${testingStartDate!.month.toString().padLeft(2, '0')}-${testingStartDate!.day.toString().padLeft(2, '0')}",
      };
}

/// Pricing Period
typedef PricingSchedulePricingPeriod = $PricingSchedulePricingPeriod;

/// Contains properties of a Planning project.
class Project {
  /// Account ID of this project.
  core.String? accountId;

  /// Advertiser ID of this project.
  core.String? advertiserId;

  /// Audience age group of this project.
  /// Possible string values are:
  /// - "PLANNING_AUDIENCE_AGE_18_24"
  /// - "PLANNING_AUDIENCE_AGE_25_34"
  /// - "PLANNING_AUDIENCE_AGE_35_44"
  /// - "PLANNING_AUDIENCE_AGE_45_54"
  /// - "PLANNING_AUDIENCE_AGE_55_64"
  /// - "PLANNING_AUDIENCE_AGE_65_OR_MORE"
  /// - "PLANNING_AUDIENCE_AGE_UNKNOWN"
  core.String? audienceAgeGroup;

  /// Audience gender of this project.
  /// Possible string values are:
  /// - "PLANNING_AUDIENCE_GENDER_MALE"
  /// - "PLANNING_AUDIENCE_GENDER_FEMALE"
  core.String? audienceGender;

  /// Budget of this project in the currency specified by the current account.
  ///
  /// The value stored in this field represents only the non-fractional amount.
  /// For example, for USD, the smallest value that can be represented by this
  /// field is 1 US dollar.
  core.String? budget;

  /// Client billing code of this project.
  core.String? clientBillingCode;

  /// Name of the project client.
  core.String? clientName;
  core.DateTime? endDate;

  /// ID of this project.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#project".
  core.String? kind;

  /// Information about the most recent modification of this project.
  LastModifiedInfo? lastModifiedInfo;

  /// Name of this project.
  core.String? name;

  /// Overview of this project.
  core.String? overview;
  core.DateTime? startDate;

  /// Subaccount ID of this project.
  core.String? subaccountId;

  /// Number of clicks that the advertiser is targeting.
  core.String? targetClicks;

  /// Number of conversions that the advertiser is targeting.
  core.String? targetConversions;

  /// CPA that the advertiser is targeting.
  core.String? targetCpaNanos;

  /// CPC that the advertiser is targeting.
  core.String? targetCpcNanos;

  /// vCPM from Active View that the advertiser is targeting.
  core.String? targetCpmActiveViewNanos;

  /// CPM that the advertiser is targeting.
  core.String? targetCpmNanos;

  /// Number of impressions that the advertiser is targeting.
  core.String? targetImpressions;

  Project({
    this.accountId,
    this.advertiserId,
    this.audienceAgeGroup,
    this.audienceGender,
    this.budget,
    this.clientBillingCode,
    this.clientName,
    this.endDate,
    this.id,
    this.kind,
    this.lastModifiedInfo,
    this.name,
    this.overview,
    this.startDate,
    this.subaccountId,
    this.targetClicks,
    this.targetConversions,
    this.targetCpaNanos,
    this.targetCpcNanos,
    this.targetCpmActiveViewNanos,
    this.targetCpmNanos,
    this.targetImpressions,
  });

  Project.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          audienceAgeGroup: json_.containsKey('audienceAgeGroup')
              ? json_['audienceAgeGroup'] as core.String
              : null,
          audienceGender: json_.containsKey('audienceGender')
              ? json_['audienceGender'] as core.String
              : null,
          budget: json_.containsKey('budget')
              ? json_['budget'] as core.String
              : null,
          clientBillingCode: json_.containsKey('clientBillingCode')
              ? json_['clientBillingCode'] as core.String
              : null,
          clientName: json_.containsKey('clientName')
              ? json_['clientName'] as core.String
              : null,
          endDate: json_.containsKey('endDate')
              ? core.DateTime.parse(json_['endDate'] as core.String)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedInfo: json_.containsKey('lastModifiedInfo')
              ? LastModifiedInfo.fromJson(json_['lastModifiedInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          overview: json_.containsKey('overview')
              ? json_['overview'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? core.DateTime.parse(json_['startDate'] as core.String)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          targetClicks: json_.containsKey('targetClicks')
              ? json_['targetClicks'] as core.String
              : null,
          targetConversions: json_.containsKey('targetConversions')
              ? json_['targetConversions'] as core.String
              : null,
          targetCpaNanos: json_.containsKey('targetCpaNanos')
              ? json_['targetCpaNanos'] as core.String
              : null,
          targetCpcNanos: json_.containsKey('targetCpcNanos')
              ? json_['targetCpcNanos'] as core.String
              : null,
          targetCpmActiveViewNanos:
              json_.containsKey('targetCpmActiveViewNanos')
                  ? json_['targetCpmActiveViewNanos'] as core.String
                  : null,
          targetCpmNanos: json_.containsKey('targetCpmNanos')
              ? json_['targetCpmNanos'] as core.String
              : null,
          targetImpressions: json_.containsKey('targetImpressions')
              ? json_['targetImpressions'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (audienceAgeGroup != null) 'audienceAgeGroup': audienceAgeGroup!,
        if (audienceGender != null) 'audienceGender': audienceGender!,
        if (budget != null) 'budget': budget!,
        if (clientBillingCode != null) 'clientBillingCode': clientBillingCode!,
        if (clientName != null) 'clientName': clientName!,
        if (endDate != null)
          'endDate':
              "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedInfo != null) 'lastModifiedInfo': lastModifiedInfo!,
        if (name != null) 'name': name!,
        if (overview != null) 'overview': overview!,
        if (startDate != null)
          'startDate':
              "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (targetClicks != null) 'targetClicks': targetClicks!,
        if (targetConversions != null) 'targetConversions': targetConversions!,
        if (targetCpaNanos != null) 'targetCpaNanos': targetCpaNanos!,
        if (targetCpcNanos != null) 'targetCpcNanos': targetCpcNanos!,
        if (targetCpmActiveViewNanos != null)
          'targetCpmActiveViewNanos': targetCpmActiveViewNanos!,
        if (targetCpmNanos != null) 'targetCpmNanos': targetCpmNanos!,
        if (targetImpressions != null) 'targetImpressions': targetImpressions!,
      };
}

/// Project List Response
class ProjectsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#projectsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Project collection.
  core.List<Project>? projects;

  ProjectsListResponse({
    this.kind,
    this.nextPageToken,
    this.projects,
  });

  ProjectsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projects != null) 'projects': projects!,
      };
}

/// Represents fields that are compatible to be selected for a report of type
/// "REACH".
class ReachReportCompatibleFields {
  /// Dimensions which are compatible to be selected in the "dimensionFilters"
  /// section of the report.
  core.List<Dimension>? dimensionFilters;

  /// Dimensions which are compatible to be selected in the "dimensions" section
  /// of the report.
  core.List<Dimension>? dimensions;

  /// The kind of resource this is, in this case
  /// dfareporting#reachReportCompatibleFields.
  core.String? kind;

  /// Metrics which are compatible to be selected in the "metricNames" section
  /// of the report.
  core.List<Metric>? metrics;

  /// Metrics which are compatible to be selected as activity metrics to pivot
  /// on in the "activities" section of the report.
  core.List<Metric>? pivotedActivityMetrics;

  /// Metrics which are compatible to be selected in the
  /// "reachByFrequencyMetricNames" section of the report.
  core.List<Metric>? reachByFrequencyMetrics;

  ReachReportCompatibleFields({
    this.dimensionFilters,
    this.dimensions,
    this.kind,
    this.metrics,
    this.pivotedActivityMetrics,
    this.reachByFrequencyMetrics,
  });

  ReachReportCompatibleFields.fromJson(core.Map json_)
      : this(
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pivotedActivityMetrics: json_.containsKey('pivotedActivityMetrics')
              ? (json_['pivotedActivityMetrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reachByFrequencyMetrics: json_.containsKey('reachByFrequencyMetrics')
              ? (json_['reachByFrequencyMetrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
        if (pivotedActivityMetrics != null)
          'pivotedActivityMetrics': pivotedActivityMetrics!,
        if (reachByFrequencyMetrics != null)
          'reachByFrequencyMetrics': reachByFrequencyMetrics!,
      };
}

/// Represents a recipient.
typedef Recipient = $Recipient;

/// Contains information about a region that can be targeted by ads.
typedef Region = $Region;

/// Region List Response
class RegionsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#regionsListResponse".
  core.String? kind;

  /// Region collection.
  core.List<Region>? regions;

  RegionsListResponse({
    this.kind,
    this.regions,
  });

  RegionsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          regions: json_.containsKey('regions')
              ? (json_['regions'] as core.List)
                  .map((value) => Region.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (regions != null) 'regions': regions!,
      };
}

/// Contains properties of a remarketing list.
///
/// Remarketing enables you to create lists of users who have performed specific
/// actions on a site, then target ads to members of those lists. This resource
/// can be used to manage remarketing lists that are owned by your advertisers.
/// To see all remarketing lists that are visible to your advertisers, including
/// those that are shared to your advertiser or account, use the
/// TargetableRemarketingLists resource.
class RemarketingList {
  /// Account ID of this remarketing list.
  ///
  /// This is a read-only, auto-generated field that is only returned in GET
  /// requests.
  core.String? accountId;

  /// Whether this remarketing list is active.
  core.bool? active;

  /// Dimension value for the advertiser ID that owns this remarketing list.
  ///
  /// This is a required field.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Remarketing list description.
  core.String? description;

  /// Remarketing list ID.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#remarketingList".
  core.String? kind;

  /// Number of days that a user should remain in the remarketing list without
  /// an impression.
  ///
  /// Acceptable values are 1 to 540, inclusive.
  core.String? lifeSpan;

  /// Rule used to populate the remarketing list with users.
  ListPopulationRule? listPopulationRule;

  /// Number of users currently in the list.
  ///
  /// This is a read-only field.
  core.String? listSize;

  /// Product from which this remarketing list was originated.
  /// Possible string values are:
  /// - "REMARKETING_LIST_SOURCE_OTHER"
  /// - "REMARKETING_LIST_SOURCE_ADX"
  /// - "REMARKETING_LIST_SOURCE_DFP"
  /// - "REMARKETING_LIST_SOURCE_XFP"
  /// - "REMARKETING_LIST_SOURCE_DFA"
  /// - "REMARKETING_LIST_SOURCE_GA"
  /// - "REMARKETING_LIST_SOURCE_YOUTUBE"
  /// - "REMARKETING_LIST_SOURCE_DBM"
  /// - "REMARKETING_LIST_SOURCE_GPLUS"
  /// - "REMARKETING_LIST_SOURCE_DMP"
  /// - "REMARKETING_LIST_SOURCE_PLAY_STORE"
  core.String? listSource;

  /// Name of the remarketing list.
  ///
  /// This is a required field. Must be no greater than 128 characters long.
  core.String? name;

  /// Subaccount ID of this remarketing list.
  ///
  /// This is a read-only, auto-generated field that is only returned in GET
  /// requests.
  core.String? subaccountId;

  RemarketingList({
    this.accountId,
    this.active,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.description,
    this.id,
    this.kind,
    this.lifeSpan,
    this.listPopulationRule,
    this.listSize,
    this.listSource,
    this.name,
    this.subaccountId,
  });

  RemarketingList.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lifeSpan: json_.containsKey('lifeSpan')
              ? json_['lifeSpan'] as core.String
              : null,
          listPopulationRule: json_.containsKey('listPopulationRule')
              ? ListPopulationRule.fromJson(json_['listPopulationRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          listSize: json_.containsKey('listSize')
              ? json_['listSize'] as core.String
              : null,
          listSource: json_.containsKey('listSource')
              ? json_['listSource'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lifeSpan != null) 'lifeSpan': lifeSpan!,
        if (listPopulationRule != null)
          'listPopulationRule': listPopulationRule!,
        if (listSize != null) 'listSize': listSize!,
        if (listSource != null) 'listSource': listSource!,
        if (name != null) 'name': name!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
      };
}

/// Contains properties of a remarketing list's sharing information.
///
/// Sharing allows other accounts or advertisers to target to your remarketing
/// lists. This resource can be used to manage remarketing list sharing to other
/// accounts and advertisers.
typedef RemarketingListShare = $RemarketingListShare;

/// Remarketing list response
class RemarketingListsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#remarketingListsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Remarketing list collection.
  core.List<RemarketingList>? remarketingLists;

  RemarketingListsListResponse({
    this.kind,
    this.nextPageToken,
    this.remarketingLists,
  });

  RemarketingListsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          remarketingLists: json_.containsKey('remarketingLists')
              ? (json_['remarketingLists'] as core.List)
                  .map((value) => RemarketingList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (remarketingLists != null) 'remarketingLists': remarketingLists!,
      };
}

/// The report criteria for a report of type "STANDARD".
class ReportCriteria {
  /// Activity group.
  Activities? activities;

  /// Custom Rich Media Events group.
  CustomRichMediaEvents? customRichMediaEvents;

  /// The date range for which this report should be run.
  DateRange? dateRange;

  /// The list of filters on which dimensions are filtered.
  ///
  /// Filters for different dimensions are ANDed, filters for the same dimension
  /// are grouped together and ORed.
  core.List<DimensionValue>? dimensionFilters;

  /// The list of standard dimensions the report should include.
  core.List<SortedDimension>? dimensions;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  ReportCriteria({
    this.activities,
    this.customRichMediaEvents,
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.metricNames,
  });

  ReportCriteria.fromJson(core.Map json_)
      : this(
          activities: json_.containsKey('activities')
              ? Activities.fromJson(
                  json_['activities'] as core.Map<core.String, core.dynamic>)
              : null,
          customRichMediaEvents: json_.containsKey('customRichMediaEvents')
              ? CustomRichMediaEvents.fromJson(json_['customRichMediaEvents']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activities != null) 'activities': activities!,
        if (customRichMediaEvents != null)
          'customRichMediaEvents': customRichMediaEvents!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (metricNames != null) 'metricNames': metricNames!,
      };
}

/// The report criteria for a report of type "CROSS_DIMENSION_REACH".
class ReportCrossDimensionReachCriteria {
  /// The list of dimensions the report should include.
  core.List<SortedDimension>? breakdown;

  /// The date range this report should be run for.
  DateRange? dateRange;

  /// The dimension option.
  /// Possible string values are:
  /// - "ADVERTISER"
  /// - "CAMPAIGN"
  /// - "SITE_BY_ADVERTISER"
  /// - "SITE_BY_CAMPAIGN"
  core.String? dimension;

  /// The list of filters on which dimensions are filtered.
  core.List<DimensionValue>? dimensionFilters;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  /// The list of names of overlap metrics the report should include.
  core.List<core.String>? overlapMetricNames;

  /// Whether the report is pivoted or not.
  ///
  /// Defaults to true.
  core.bool? pivoted;

  ReportCrossDimensionReachCriteria({
    this.breakdown,
    this.dateRange,
    this.dimension,
    this.dimensionFilters,
    this.metricNames,
    this.overlapMetricNames,
    this.pivoted,
  });

  ReportCrossDimensionReachCriteria.fromJson(core.Map json_)
      : this(
          breakdown: json_.containsKey('breakdown')
              ? (json_['breakdown'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.String
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          overlapMetricNames: json_.containsKey('overlapMetricNames')
              ? (json_['overlapMetricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pivoted: json_.containsKey('pivoted')
              ? json_['pivoted'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (breakdown != null) 'breakdown': breakdown!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimension != null) 'dimension': dimension!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (metricNames != null) 'metricNames': metricNames!,
        if (overlapMetricNames != null)
          'overlapMetricNames': overlapMetricNames!,
        if (pivoted != null) 'pivoted': pivoted!,
      };
}

/// The report's email delivery settings.
class ReportDelivery {
  /// Whether the report should be emailed to the report owner.
  core.bool? emailOwner;

  /// The type of delivery for the owner to receive, if enabled.
  /// Possible string values are:
  /// - "LINK"
  /// - "ATTACHMENT"
  core.String? emailOwnerDeliveryType;

  /// The message to be sent with each email.
  core.String? message;

  /// The list of recipients to which to email the report.
  core.List<Recipient>? recipients;

  ReportDelivery({
    this.emailOwner,
    this.emailOwnerDeliveryType,
    this.message,
    this.recipients,
  });

  ReportDelivery.fromJson(core.Map json_)
      : this(
          emailOwner: json_.containsKey('emailOwner')
              ? json_['emailOwner'] as core.bool
              : null,
          emailOwnerDeliveryType: json_.containsKey('emailOwnerDeliveryType')
              ? json_['emailOwnerDeliveryType'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          recipients: json_.containsKey('recipients')
              ? (json_['recipients'] as core.List)
                  .map((value) => Recipient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailOwner != null) 'emailOwner': emailOwner!,
        if (emailOwnerDeliveryType != null)
          'emailOwnerDeliveryType': emailOwnerDeliveryType!,
        if (message != null) 'message': message!,
        if (recipients != null) 'recipients': recipients!,
      };
}

/// The properties of the report.
class ReportFloodlightCriteriaReportProperties {
  /// Include conversions that have no cookie, but do have an exposure path.
  core.bool? includeAttributedIPConversions;

  /// Include conversions of users with a DoubleClick cookie but without an
  /// exposure.
  ///
  /// That means the user did not click or see an ad from the advertiser within
  /// the Floodlight group, or that the interaction happened outside the
  /// lookback window.
  core.bool? includeUnattributedCookieConversions;

  /// Include conversions that have no associated cookies and no exposures.
  ///
  /// It’s therefore impossible to know how the user was exposed to your ads
  /// during the lookback window prior to a conversion.
  core.bool? includeUnattributedIPConversions;

  ReportFloodlightCriteriaReportProperties({
    this.includeAttributedIPConversions,
    this.includeUnattributedCookieConversions,
    this.includeUnattributedIPConversions,
  });

  ReportFloodlightCriteriaReportProperties.fromJson(core.Map json_)
      : this(
          includeAttributedIPConversions:
              json_.containsKey('includeAttributedIPConversions')
                  ? json_['includeAttributedIPConversions'] as core.bool
                  : null,
          includeUnattributedCookieConversions:
              json_.containsKey('includeUnattributedCookieConversions')
                  ? json_['includeUnattributedCookieConversions'] as core.bool
                  : null,
          includeUnattributedIPConversions:
              json_.containsKey('includeUnattributedIPConversions')
                  ? json_['includeUnattributedIPConversions'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeAttributedIPConversions != null)
          'includeAttributedIPConversions': includeAttributedIPConversions!,
        if (includeUnattributedCookieConversions != null)
          'includeUnattributedCookieConversions':
              includeUnattributedCookieConversions!,
        if (includeUnattributedIPConversions != null)
          'includeUnattributedIPConversions': includeUnattributedIPConversions!,
      };
}

/// The report criteria for a report of type "FLOODLIGHT".
class ReportFloodlightCriteria {
  /// The list of custom rich media events to include.
  core.List<DimensionValue>? customRichMediaEvents;

  /// The date range this report should be run for.
  DateRange? dateRange;

  /// The list of filters on which dimensions are filtered.
  ///
  /// Filters for different dimensions are ANDed, filters for the same dimension
  /// are grouped together and ORed.
  core.List<DimensionValue>? dimensionFilters;

  /// The list of dimensions the report should include.
  core.List<SortedDimension>? dimensions;

  /// The floodlight ID for which to show data in this report.
  ///
  /// All advertisers associated with that ID will automatically be added. The
  /// dimension of the value needs to be 'dfa:floodlightConfigId'.
  DimensionValue? floodlightConfigId;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  /// The properties of the report.
  ReportFloodlightCriteriaReportProperties? reportProperties;

  ReportFloodlightCriteria({
    this.customRichMediaEvents,
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.floodlightConfigId,
    this.metricNames,
    this.reportProperties,
  });

  ReportFloodlightCriteria.fromJson(core.Map json_)
      : this(
          customRichMediaEvents: json_.containsKey('customRichMediaEvents')
              ? (json_['customRichMediaEvents'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          floodlightConfigId: json_.containsKey('floodlightConfigId')
              ? DimensionValue.fromJson(json_['floodlightConfigId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reportProperties: json_.containsKey('reportProperties')
              ? ReportFloodlightCriteriaReportProperties.fromJson(
                  json_['reportProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customRichMediaEvents != null)
          'customRichMediaEvents': customRichMediaEvents!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (floodlightConfigId != null)
          'floodlightConfigId': floodlightConfigId!,
        if (metricNames != null) 'metricNames': metricNames!,
        if (reportProperties != null) 'reportProperties': reportProperties!,
      };
}

/// The report criteria for a report of type "PATH_ATTRIBUTION".
class ReportPathAttributionCriteria {
  /// The list of 'dfa:activity' values to filter on.
  core.List<DimensionValue>? activityFilters;

  /// Channel Grouping.
  ChannelGrouping? customChannelGrouping;

  /// The date range this report should be run for.
  DateRange? dateRange;

  /// The list of dimensions the report should include.
  core.List<SortedDimension>? dimensions;

  /// The floodlight ID for which to show data in this report.
  ///
  /// All advertisers associated with that ID will automatically be added. The
  /// dimension of the value needs to be 'dfa:floodlightConfigId'.
  DimensionValue? floodlightConfigId;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  /// Path Filters.
  core.List<PathFilter>? pathFilters;

  ReportPathAttributionCriteria({
    this.activityFilters,
    this.customChannelGrouping,
    this.dateRange,
    this.dimensions,
    this.floodlightConfigId,
    this.metricNames,
    this.pathFilters,
  });

  ReportPathAttributionCriteria.fromJson(core.Map json_)
      : this(
          activityFilters: json_.containsKey('activityFilters')
              ? (json_['activityFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customChannelGrouping: json_.containsKey('customChannelGrouping')
              ? ChannelGrouping.fromJson(json_['customChannelGrouping']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          floodlightConfigId: json_.containsKey('floodlightConfigId')
              ? DimensionValue.fromJson(json_['floodlightConfigId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pathFilters: json_.containsKey('pathFilters')
              ? (json_['pathFilters'] as core.List)
                  .map((value) => PathFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activityFilters != null) 'activityFilters': activityFilters!,
        if (customChannelGrouping != null)
          'customChannelGrouping': customChannelGrouping!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (floodlightConfigId != null)
          'floodlightConfigId': floodlightConfigId!,
        if (metricNames != null) 'metricNames': metricNames!,
        if (pathFilters != null) 'pathFilters': pathFilters!,
      };
}

/// The report criteria for a report of type "PATH".
class ReportPathCriteria {
  /// The list of 'dfa:activity' values to filter on.
  core.List<DimensionValue>? activityFilters;

  /// Channel Grouping.
  ChannelGrouping? customChannelGrouping;

  /// The date range this report should be run for.
  DateRange? dateRange;

  /// The list of dimensions the report should include.
  core.List<SortedDimension>? dimensions;

  /// The floodlight ID for which to show data in this report.
  ///
  /// All advertisers associated with that ID will automatically be added. The
  /// dimension of the value needs to be 'dfa:floodlightConfigId'.
  DimensionValue? floodlightConfigId;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  /// Path Filters.
  core.List<PathFilter>? pathFilters;

  ReportPathCriteria({
    this.activityFilters,
    this.customChannelGrouping,
    this.dateRange,
    this.dimensions,
    this.floodlightConfigId,
    this.metricNames,
    this.pathFilters,
  });

  ReportPathCriteria.fromJson(core.Map json_)
      : this(
          activityFilters: json_.containsKey('activityFilters')
              ? (json_['activityFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customChannelGrouping: json_.containsKey('customChannelGrouping')
              ? ChannelGrouping.fromJson(json_['customChannelGrouping']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          floodlightConfigId: json_.containsKey('floodlightConfigId')
              ? DimensionValue.fromJson(json_['floodlightConfigId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pathFilters: json_.containsKey('pathFilters')
              ? (json_['pathFilters'] as core.List)
                  .map((value) => PathFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activityFilters != null) 'activityFilters': activityFilters!,
        if (customChannelGrouping != null)
          'customChannelGrouping': customChannelGrouping!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (floodlightConfigId != null)
          'floodlightConfigId': floodlightConfigId!,
        if (metricNames != null) 'metricNames': metricNames!,
        if (pathFilters != null) 'pathFilters': pathFilters!,
      };
}

/// The properties of the report.
class ReportPathToConversionCriteriaReportProperties {
  /// CM360 checks to see if a click interaction occurred within the specified
  /// period of time before a conversion.
  ///
  /// By default the value is pulled from Floodlight or you can manually enter a
  /// custom value. Valid values: 1-90.
  core.int? clicksLookbackWindow;

  /// CM360 checks to see if an impression interaction occurred within the
  /// specified period of time before a conversion.
  ///
  /// By default the value is pulled from Floodlight or you can manually enter a
  /// custom value. Valid values: 1-90.
  core.int? impressionsLookbackWindow;

  /// Deprecated: has no effect.
  core.bool? includeAttributedIPConversions;

  /// Include conversions of users with a DoubleClick cookie but without an
  /// exposure.
  ///
  /// That means the user did not click or see an ad from the advertiser within
  /// the Floodlight group, or that the interaction happened outside the
  /// lookback window.
  core.bool? includeUnattributedCookieConversions;

  /// Include conversions that have no associated cookies and no exposures.
  ///
  /// It’s therefore impossible to know how the user was exposed to your ads
  /// during the lookback window prior to a conversion.
  core.bool? includeUnattributedIPConversions;

  /// The maximum number of click interactions to include in the report.
  ///
  /// Advertisers currently paying for E2C reports get up to 200 (100 clicks,
  /// 100 impressions). If another advertiser in your network is paying for E2C,
  /// you can have up to 5 total exposures per report.
  core.int? maximumClickInteractions;

  /// The maximum number of click interactions to include in the report.
  ///
  /// Advertisers currently paying for E2C reports get up to 200 (100 clicks,
  /// 100 impressions). If another advertiser in your network is paying for E2C,
  /// you can have up to 5 total exposures per report.
  core.int? maximumImpressionInteractions;

  /// The maximum amount of time that can take place between interactions
  /// (clicks or impressions) by the same user.
  ///
  /// Valid values: 1-90.
  core.int? maximumInteractionGap;

  /// Enable pivoting on interaction path.
  core.bool? pivotOnInteractionPath;

  ReportPathToConversionCriteriaReportProperties({
    this.clicksLookbackWindow,
    this.impressionsLookbackWindow,
    this.includeAttributedIPConversions,
    this.includeUnattributedCookieConversions,
    this.includeUnattributedIPConversions,
    this.maximumClickInteractions,
    this.maximumImpressionInteractions,
    this.maximumInteractionGap,
    this.pivotOnInteractionPath,
  });

  ReportPathToConversionCriteriaReportProperties.fromJson(core.Map json_)
      : this(
          clicksLookbackWindow: json_.containsKey('clicksLookbackWindow')
              ? json_['clicksLookbackWindow'] as core.int
              : null,
          impressionsLookbackWindow:
              json_.containsKey('impressionsLookbackWindow')
                  ? json_['impressionsLookbackWindow'] as core.int
                  : null,
          includeAttributedIPConversions:
              json_.containsKey('includeAttributedIPConversions')
                  ? json_['includeAttributedIPConversions'] as core.bool
                  : null,
          includeUnattributedCookieConversions:
              json_.containsKey('includeUnattributedCookieConversions')
                  ? json_['includeUnattributedCookieConversions'] as core.bool
                  : null,
          includeUnattributedIPConversions:
              json_.containsKey('includeUnattributedIPConversions')
                  ? json_['includeUnattributedIPConversions'] as core.bool
                  : null,
          maximumClickInteractions:
              json_.containsKey('maximumClickInteractions')
                  ? json_['maximumClickInteractions'] as core.int
                  : null,
          maximumImpressionInteractions:
              json_.containsKey('maximumImpressionInteractions')
                  ? json_['maximumImpressionInteractions'] as core.int
                  : null,
          maximumInteractionGap: json_.containsKey('maximumInteractionGap')
              ? json_['maximumInteractionGap'] as core.int
              : null,
          pivotOnInteractionPath: json_.containsKey('pivotOnInteractionPath')
              ? json_['pivotOnInteractionPath'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clicksLookbackWindow != null)
          'clicksLookbackWindow': clicksLookbackWindow!,
        if (impressionsLookbackWindow != null)
          'impressionsLookbackWindow': impressionsLookbackWindow!,
        if (includeAttributedIPConversions != null)
          'includeAttributedIPConversions': includeAttributedIPConversions!,
        if (includeUnattributedCookieConversions != null)
          'includeUnattributedCookieConversions':
              includeUnattributedCookieConversions!,
        if (includeUnattributedIPConversions != null)
          'includeUnattributedIPConversions': includeUnattributedIPConversions!,
        if (maximumClickInteractions != null)
          'maximumClickInteractions': maximumClickInteractions!,
        if (maximumImpressionInteractions != null)
          'maximumImpressionInteractions': maximumImpressionInteractions!,
        if (maximumInteractionGap != null)
          'maximumInteractionGap': maximumInteractionGap!,
        if (pivotOnInteractionPath != null)
          'pivotOnInteractionPath': pivotOnInteractionPath!,
      };
}

/// The report criteria for a report of type "PATH_TO_CONVERSION".
class ReportPathToConversionCriteria {
  /// The list of 'dfa:activity' values to filter on.
  core.List<DimensionValue>? activityFilters;

  /// The list of conversion dimensions the report should include.
  core.List<SortedDimension>? conversionDimensions;

  /// The list of custom floodlight variables the report should include.
  core.List<SortedDimension>? customFloodlightVariables;

  /// The list of custom rich media events to include.
  core.List<DimensionValue>? customRichMediaEvents;

  /// The date range this report should be run for.
  DateRange? dateRange;

  /// The floodlight ID for which to show data in this report.
  ///
  /// All advertisers associated with that ID will automatically be added. The
  /// dimension of the value needs to be 'dfa:floodlightConfigId'.
  DimensionValue? floodlightConfigId;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  /// The list of per interaction dimensions the report should include.
  core.List<SortedDimension>? perInteractionDimensions;

  /// The properties of the report.
  ReportPathToConversionCriteriaReportProperties? reportProperties;

  ReportPathToConversionCriteria({
    this.activityFilters,
    this.conversionDimensions,
    this.customFloodlightVariables,
    this.customRichMediaEvents,
    this.dateRange,
    this.floodlightConfigId,
    this.metricNames,
    this.perInteractionDimensions,
    this.reportProperties,
  });

  ReportPathToConversionCriteria.fromJson(core.Map json_)
      : this(
          activityFilters: json_.containsKey('activityFilters')
              ? (json_['activityFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          conversionDimensions: json_.containsKey('conversionDimensions')
              ? (json_['conversionDimensions'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customFloodlightVariables:
              json_.containsKey('customFloodlightVariables')
                  ? (json_['customFloodlightVariables'] as core.List)
                      .map((value) => SortedDimension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          customRichMediaEvents: json_.containsKey('customRichMediaEvents')
              ? (json_['customRichMediaEvents'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          floodlightConfigId: json_.containsKey('floodlightConfigId')
              ? DimensionValue.fromJson(json_['floodlightConfigId']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          perInteractionDimensions:
              json_.containsKey('perInteractionDimensions')
                  ? (json_['perInteractionDimensions'] as core.List)
                      .map((value) => SortedDimension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          reportProperties: json_.containsKey('reportProperties')
              ? ReportPathToConversionCriteriaReportProperties.fromJson(
                  json_['reportProperties']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activityFilters != null) 'activityFilters': activityFilters!,
        if (conversionDimensions != null)
          'conversionDimensions': conversionDimensions!,
        if (customFloodlightVariables != null)
          'customFloodlightVariables': customFloodlightVariables!,
        if (customRichMediaEvents != null)
          'customRichMediaEvents': customRichMediaEvents!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (floodlightConfigId != null)
          'floodlightConfigId': floodlightConfigId!,
        if (metricNames != null) 'metricNames': metricNames!,
        if (perInteractionDimensions != null)
          'perInteractionDimensions': perInteractionDimensions!,
        if (reportProperties != null) 'reportProperties': reportProperties!,
      };
}

/// The report criteria for a report of type "REACH".
class ReportReachCriteria {
  /// Activity group.
  Activities? activities;

  /// Custom Rich Media Events group.
  CustomRichMediaEvents? customRichMediaEvents;

  /// The date range this report should be run for.
  DateRange? dateRange;

  /// The list of filters on which dimensions are filtered.
  ///
  /// Filters for different dimensions are ANDed, filters for the same dimension
  /// are grouped together and ORed.
  core.List<DimensionValue>? dimensionFilters;

  /// The list of dimensions the report should include.
  core.List<SortedDimension>? dimensions;

  /// Whether to enable all reach dimension combinations in the report.
  ///
  /// Defaults to false. If enabled, the date range of the report should be
  /// within the last 42 days.
  core.bool? enableAllDimensionCombinations;

  /// The list of names of metrics the report should include.
  core.List<core.String>? metricNames;

  /// The list of names of Reach By Frequency metrics the report should include.
  core.List<core.String>? reachByFrequencyMetricNames;

  ReportReachCriteria({
    this.activities,
    this.customRichMediaEvents,
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.enableAllDimensionCombinations,
    this.metricNames,
    this.reachByFrequencyMetricNames,
  });

  ReportReachCriteria.fromJson(core.Map json_)
      : this(
          activities: json_.containsKey('activities')
              ? Activities.fromJson(
                  json_['activities'] as core.Map<core.String, core.dynamic>)
              : null,
          customRichMediaEvents: json_.containsKey('customRichMediaEvents')
              ? CustomRichMediaEvents.fromJson(json_['customRichMediaEvents']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateRange: json_.containsKey('dateRange')
              ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => DimensionValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => SortedDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enableAllDimensionCombinations:
              json_.containsKey('enableAllDimensionCombinations')
                  ? json_['enableAllDimensionCombinations'] as core.bool
                  : null,
          metricNames: json_.containsKey('metricNames')
              ? (json_['metricNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          reachByFrequencyMetricNames:
              json_.containsKey('reachByFrequencyMetricNames')
                  ? (json_['reachByFrequencyMetricNames'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activities != null) 'activities': activities!,
        if (customRichMediaEvents != null)
          'customRichMediaEvents': customRichMediaEvents!,
        if (dateRange != null) 'dateRange': dateRange!,
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (enableAllDimensionCombinations != null)
          'enableAllDimensionCombinations': enableAllDimensionCombinations!,
        if (metricNames != null) 'metricNames': metricNames!,
        if (reachByFrequencyMetricNames != null)
          'reachByFrequencyMetricNames': reachByFrequencyMetricNames!,
      };
}

/// The report's schedule.
///
/// Can only be set if the report's 'dateRange' is a relative date range and the
/// relative date range is not "TODAY".
class ReportSchedule {
  /// Whether the schedule is active or not.
  ///
  /// Must be set to either true or false.
  core.bool? active;

  /// Defines every how many days, weeks or months the report should be run.
  ///
  /// Needs to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY".
  core.int? every;
  core.DateTime? expirationDate;

  /// The interval for which the report is repeated.
  ///
  /// Note: - "DAILY" also requires field "every" to be set. - "WEEKLY" also
  /// requires fields "every" and "repeatsOnWeekDays" to be set. - "MONTHLY"
  /// also requires fields "every" and "runsOnDayOfMonth" to be set.
  core.String? repeats;

  /// List of week days "WEEKLY" on which scheduled reports should run.
  core.List<core.String>? repeatsOnWeekDays;

  /// Enum to define for "MONTHLY" scheduled reports whether reports should be
  /// repeated on the same day of the month as "startDate" or the same day of
  /// the week of the month.
  ///
  /// Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02),
  /// "DAY_OF_MONTH" would run subsequent reports on the 2nd of every Month, and
  /// "WEEK_OF_MONTH" would run subsequent reports on the first Monday of the
  /// month.
  /// Possible string values are:
  /// - "DAY_OF_MONTH"
  /// - "WEEK_OF_MONTH"
  core.String? runsOnDayOfMonth;
  core.DateTime? startDate;

  ReportSchedule({
    this.active,
    this.every,
    this.expirationDate,
    this.repeats,
    this.repeatsOnWeekDays,
    this.runsOnDayOfMonth,
    this.startDate,
  });

  ReportSchedule.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          every: json_.containsKey('every') ? json_['every'] as core.int : null,
          expirationDate: json_.containsKey('expirationDate')
              ? core.DateTime.parse(json_['expirationDate'] as core.String)
              : null,
          repeats: json_.containsKey('repeats')
              ? json_['repeats'] as core.String
              : null,
          repeatsOnWeekDays: json_.containsKey('repeatsOnWeekDays')
              ? (json_['repeatsOnWeekDays'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          runsOnDayOfMonth: json_.containsKey('runsOnDayOfMonth')
              ? json_['runsOnDayOfMonth'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? core.DateTime.parse(json_['startDate'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (every != null) 'every': every!,
        if (expirationDate != null)
          'expirationDate':
              "${expirationDate!.year.toString().padLeft(4, '0')}-${expirationDate!.month.toString().padLeft(2, '0')}-${expirationDate!.day.toString().padLeft(2, '0')}",
        if (repeats != null) 'repeats': repeats!,
        if (repeatsOnWeekDays != null) 'repeatsOnWeekDays': repeatsOnWeekDays!,
        if (runsOnDayOfMonth != null) 'runsOnDayOfMonth': runsOnDayOfMonth!,
        if (startDate != null)
          'startDate':
              "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
      };
}

/// Represents a Report resource.
class Report {
  /// The account ID to which this report belongs.
  core.String? accountId;

  /// The report criteria for a report of type "STANDARD".
  ReportCriteria? criteria;

  /// The report criteria for a report of type "CROSS_DIMENSION_REACH".
  ReportCrossDimensionReachCriteria? crossDimensionReachCriteria;

  /// The report's email delivery settings.
  ReportDelivery? delivery;

  /// The eTag of this response for caching purposes.
  core.String? etag;

  /// The filename used when generating report files for this report.
  core.String? fileName;

  /// The report criteria for a report of type "FLOODLIGHT".
  ReportFloodlightCriteria? floodlightCriteria;

  /// The output format of the report.
  ///
  /// If not specified, default format is "CSV". Note that the actual format in
  /// the completed report file might differ if for instance the report's size
  /// exceeds the format's capabilities. "CSV" will then be the fallback format.
  /// Possible string values are:
  /// - "CSV"
  /// - "EXCEL"
  core.String? format;

  /// The unique ID identifying this report resource.
  core.String? id;

  /// The kind of resource this is, in this case dfareporting#report.
  core.String? kind;

  /// The timestamp (in milliseconds since epoch) of when this report was last
  /// modified.
  core.String? lastModifiedTime;

  /// The name of the report.
  core.String? name;

  /// The user profile id of the owner of this report.
  core.String? ownerProfileId;

  /// The report criteria for a report of type "PATH_ATTRIBUTION".
  ReportPathAttributionCriteria? pathAttributionCriteria;

  /// The report criteria for a report of type "PATH".
  ReportPathCriteria? pathCriteria;

  /// The report criteria for a report of type "PATH_TO_CONVERSION".
  ReportPathToConversionCriteria? pathToConversionCriteria;

  /// The report criteria for a report of type "REACH".
  ReportReachCriteria? reachCriteria;

  /// The report's schedule.
  ///
  /// Can only be set if the report's 'dateRange' is a relative date range and
  /// the relative date range is not "TODAY".
  ReportSchedule? schedule;

  /// The subaccount ID to which this report belongs if applicable.
  core.String? subAccountId;

  /// The type of the report.
  /// Possible string values are:
  /// - "STANDARD"
  /// - "REACH"
  /// - "PATH_TO_CONVERSION"
  /// - "CROSS_DIMENSION_REACH"
  /// - "FLOODLIGHT"
  /// - "PATH"
  /// - "PATH_ATTRIBUTION"
  core.String? type;

  Report({
    this.accountId,
    this.criteria,
    this.crossDimensionReachCriteria,
    this.delivery,
    this.etag,
    this.fileName,
    this.floodlightCriteria,
    this.format,
    this.id,
    this.kind,
    this.lastModifiedTime,
    this.name,
    this.ownerProfileId,
    this.pathAttributionCriteria,
    this.pathCriteria,
    this.pathToConversionCriteria,
    this.reachCriteria,
    this.schedule,
    this.subAccountId,
    this.type,
  });

  Report.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          criteria: json_.containsKey('criteria')
              ? ReportCriteria.fromJson(
                  json_['criteria'] as core.Map<core.String, core.dynamic>)
              : null,
          crossDimensionReachCriteria:
              json_.containsKey('crossDimensionReachCriteria')
                  ? ReportCrossDimensionReachCriteria.fromJson(
                      json_['crossDimensionReachCriteria']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          delivery: json_.containsKey('delivery')
              ? ReportDelivery.fromJson(
                  json_['delivery'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
          floodlightCriteria: json_.containsKey('floodlightCriteria')
              ? ReportFloodlightCriteria.fromJson(json_['floodlightCriteria']
                  as core.Map<core.String, core.dynamic>)
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lastModifiedTime: json_.containsKey('lastModifiedTime')
              ? json_['lastModifiedTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ownerProfileId: json_.containsKey('ownerProfileId')
              ? json_['ownerProfileId'] as core.String
              : null,
          pathAttributionCriteria: json_.containsKey('pathAttributionCriteria')
              ? ReportPathAttributionCriteria.fromJson(
                  json_['pathAttributionCriteria']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pathCriteria: json_.containsKey('pathCriteria')
              ? ReportPathCriteria.fromJson(
                  json_['pathCriteria'] as core.Map<core.String, core.dynamic>)
              : null,
          pathToConversionCriteria:
              json_.containsKey('pathToConversionCriteria')
                  ? ReportPathToConversionCriteria.fromJson(
                      json_['pathToConversionCriteria']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          reachCriteria: json_.containsKey('reachCriteria')
              ? ReportReachCriteria.fromJson(
                  json_['reachCriteria'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: json_.containsKey('schedule')
              ? ReportSchedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>)
              : null,
          subAccountId: json_.containsKey('subAccountId')
              ? json_['subAccountId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (criteria != null) 'criteria': criteria!,
        if (crossDimensionReachCriteria != null)
          'crossDimensionReachCriteria': crossDimensionReachCriteria!,
        if (delivery != null) 'delivery': delivery!,
        if (etag != null) 'etag': etag!,
        if (fileName != null) 'fileName': fileName!,
        if (floodlightCriteria != null)
          'floodlightCriteria': floodlightCriteria!,
        if (format != null) 'format': format!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lastModifiedTime != null) 'lastModifiedTime': lastModifiedTime!,
        if (name != null) 'name': name!,
        if (ownerProfileId != null) 'ownerProfileId': ownerProfileId!,
        if (pathAttributionCriteria != null)
          'pathAttributionCriteria': pathAttributionCriteria!,
        if (pathCriteria != null) 'pathCriteria': pathCriteria!,
        if (pathToConversionCriteria != null)
          'pathToConversionCriteria': pathToConversionCriteria!,
        if (reachCriteria != null) 'reachCriteria': reachCriteria!,
        if (schedule != null) 'schedule': schedule!,
        if (subAccountId != null) 'subAccountId': subAccountId!,
        if (type != null) 'type': type!,
      };
}

/// Represents fields that are compatible to be selected for a report of type
/// "STANDARD".
class ReportCompatibleFields {
  /// Dimensions which are compatible to be selected in the "dimensionFilters"
  /// section of the report.
  core.List<Dimension>? dimensionFilters;

  /// Dimensions which are compatible to be selected in the "dimensions" section
  /// of the report.
  core.List<Dimension>? dimensions;

  /// The kind of resource this is, in this case
  /// dfareporting#reportCompatibleFields.
  core.String? kind;

  /// Metrics which are compatible to be selected in the "metricNames" section
  /// of the report.
  core.List<Metric>? metrics;

  /// Metrics which are compatible to be selected as activity metrics to pivot
  /// on in the "activities" section of the report.
  core.List<Metric>? pivotedActivityMetrics;

  ReportCompatibleFields({
    this.dimensionFilters,
    this.dimensions,
    this.kind,
    this.metrics,
    this.pivotedActivityMetrics,
  });

  ReportCompatibleFields.fromJson(core.Map json_)
      : this(
          dimensionFilters: json_.containsKey('dimensionFilters')
              ? (json_['dimensionFilters'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimensions: json_.containsKey('dimensions')
              ? (json_['dimensions'] as core.List)
                  .map((value) => Dimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pivotedActivityMetrics: json_.containsKey('pivotedActivityMetrics')
              ? (json_['pivotedActivityMetrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
        if (dimensions != null) 'dimensions': dimensions!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
        if (pivotedActivityMetrics != null)
          'pivotedActivityMetrics': pivotedActivityMetrics!,
      };
}

/// Represents the list of reports.
class ReportList {
  /// The eTag of this response for caching purposes.
  core.String? etag;

  /// The reports returned in this response.
  core.List<Report>? items;

  /// The kind of list this is, in this case dfareporting#reportList.
  core.String? kind;

  /// Continuation token used to page through reports.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// to the value of this field. The page token is only valid for a limited
  /// amount of time and should not be persisted.
  core.String? nextPageToken;

  ReportList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  ReportList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Report.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Reporting Configuration
class ReportsConfiguration {
  /// Whether the exposure to conversion report is enabled.
  ///
  /// This report shows detailed pathway information on up to 10 of the most
  /// recent ad exposures seen by a user before converting.
  core.bool? exposureToConversionEnabled;

  /// Default lookback windows for new advertisers in this account.
  LookbackConfiguration? lookbackConfiguration;

  /// Report generation time zone ID of this account.
  ///
  /// This is a required field that can only be changed by a superuser.
  /// Acceptable values are: - "1" for "America/New_York" - "2" for
  /// "Europe/London" - "3" for "Europe/Paris" - "4" for "Africa/Johannesburg" -
  /// "5" for "Asia/Jerusalem" - "6" for "Asia/Shanghai" - "7" for
  /// "Asia/Hong_Kong" - "8" for "Asia/Tokyo" - "9" for "Australia/Sydney" -
  /// "10" for "Asia/Dubai" - "11" for "America/Los_Angeles" - "12" for
  /// "Pacific/Auckland" - "13" for "America/Sao_Paulo" - "16" for
  /// "America/Asuncion" - "17" for "America/Chicago" - "18" for
  /// "America/Denver" - "19" for "America/St_Johns" - "20" for "Asia/Dhaka" -
  /// "21" for "Asia/Jakarta" - "22" for "Asia/Kabul" - "23" for "Asia/Karachi"
  /// - "24" for "Asia/Calcutta" - "25" for "Asia/Pyongyang" - "26" for
  /// "Asia/Rangoon" - "27" for "Atlantic/Cape_Verde" - "28" for
  /// "Atlantic/South_Georgia" - "29" for "Australia/Adelaide" - "30" for
  /// "Australia/Lord_Howe" - "31" for "Europe/Moscow" - "32" for
  /// "Pacific/Kiritimati" - "35" for "Pacific/Norfolk" - "36" for
  /// "Pacific/Tongatapu"
  core.String? reportGenerationTimeZoneId;

  ReportsConfiguration({
    this.exposureToConversionEnabled,
    this.lookbackConfiguration,
    this.reportGenerationTimeZoneId,
  });

  ReportsConfiguration.fromJson(core.Map json_)
      : this(
          exposureToConversionEnabled:
              json_.containsKey('exposureToConversionEnabled')
                  ? json_['exposureToConversionEnabled'] as core.bool
                  : null,
          lookbackConfiguration: json_.containsKey('lookbackConfiguration')
              ? LookbackConfiguration.fromJson(json_['lookbackConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reportGenerationTimeZoneId:
              json_.containsKey('reportGenerationTimeZoneId')
                  ? json_['reportGenerationTimeZoneId'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exposureToConversionEnabled != null)
          'exposureToConversionEnabled': exposureToConversionEnabled!,
        if (lookbackConfiguration != null)
          'lookbackConfiguration': lookbackConfiguration!,
        if (reportGenerationTimeZoneId != null)
          'reportGenerationTimeZoneId': reportGenerationTimeZoneId!,
      };
}

/// Rich Media Exit Override.
class RichMediaExitOverride {
  /// Click-through URL of this rich media exit override.
  ///
  /// Applicable if the enabled field is set to true.
  ClickThroughUrl? clickThroughUrl;

  /// Whether to use the clickThroughUrl.
  ///
  /// If false, the creative-level exit will be used.
  core.bool? enabled;

  /// ID for the override to refer to a specific exit in the creative.
  core.String? exitId;

  RichMediaExitOverride({
    this.clickThroughUrl,
    this.enabled,
    this.exitId,
  });

  RichMediaExitOverride.fromJson(core.Map json_)
      : this(
          clickThroughUrl: json_.containsKey('clickThroughUrl')
              ? ClickThroughUrl.fromJson(json_['clickThroughUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          exitId: json_.containsKey('exitId')
              ? json_['exitId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clickThroughUrl != null) 'clickThroughUrl': clickThroughUrl!,
        if (enabled != null) 'enabled': enabled!,
        if (exitId != null) 'exitId': exitId!,
      };
}

/// A rule associates an asset with a targeting template for asset-level
/// targeting.
///
/// Applicable to INSTREAM_VIDEO creatives.
typedef Rule = $Rule;

/// Contains properties of a site.
class Site {
  /// Account ID of this site.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Whether this site is approved.
  core.bool? approved;

  /// Directory site associated with this site.
  ///
  /// This is a required field that is read-only after insertion.
  core.String? directorySiteId;

  /// Dimension value for the ID of the directory site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? directorySiteIdDimensionValue;

  /// ID of this site.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Dimension value for the ID of this site.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? idDimensionValue;

  /// Key name of this site.
  ///
  /// This is a read-only, auto-generated field.
  core.String? keyName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#site".
  core.String? kind;

  /// Name of this site.This is a required field.
  ///
  /// Must be less than 128 characters long. If this site is under a subaccount,
  /// the name must be unique among sites of the same subaccount. Otherwise,
  /// this site is a top-level site, and the name must be unique among top-level
  /// sites of the same account.
  core.String? name;

  /// Site contacts.
  core.List<SiteContact>? siteContacts;

  /// Site-wide settings.
  SiteSettings? siteSettings;

  /// Subaccount ID of this site.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  /// Default video settings for new placements created under this site.
  ///
  /// This value will be used to populate the placements.videoSettings field,
  /// when no value is specified for the new placement.
  SiteVideoSettings? videoSettings;

  Site({
    this.accountId,
    this.approved,
    this.directorySiteId,
    this.directorySiteIdDimensionValue,
    this.id,
    this.idDimensionValue,
    this.keyName,
    this.kind,
    this.name,
    this.siteContacts,
    this.siteSettings,
    this.subaccountId,
    this.videoSettings,
  });

  Site.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          approved: json_.containsKey('approved')
              ? json_['approved'] as core.bool
              : null,
          directorySiteId: json_.containsKey('directorySiteId')
              ? json_['directorySiteId'] as core.String
              : null,
          directorySiteIdDimensionValue: json_
                  .containsKey('directorySiteIdDimensionValue')
              ? DimensionValue.fromJson(json_['directorySiteIdDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          idDimensionValue: json_.containsKey('idDimensionValue')
              ? DimensionValue.fromJson(json_['idDimensionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          siteContacts: json_.containsKey('siteContacts')
              ? (json_['siteContacts'] as core.List)
                  .map((value) => SiteContact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          siteSettings: json_.containsKey('siteSettings')
              ? SiteSettings.fromJson(
                  json_['siteSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          videoSettings: json_.containsKey('videoSettings')
              ? SiteVideoSettings.fromJson(
                  json_['videoSettings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (approved != null) 'approved': approved!,
        if (directorySiteId != null) 'directorySiteId': directorySiteId!,
        if (directorySiteIdDimensionValue != null)
          'directorySiteIdDimensionValue': directorySiteIdDimensionValue!,
        if (id != null) 'id': id!,
        if (idDimensionValue != null) 'idDimensionValue': idDimensionValue!,
        if (keyName != null) 'keyName': keyName!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (siteContacts != null) 'siteContacts': siteContacts!,
        if (siteSettings != null) 'siteSettings': siteSettings!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (videoSettings != null) 'videoSettings': videoSettings!,
      };
}

/// Companion Settings
class SiteCompanionSetting {
  /// Whether companions are disabled for this site template.
  core.bool? companionsDisabled;

  /// Allowlist of companion sizes to be served via this site template.
  ///
  /// Set this list to null or empty to serve all companion sizes.
  core.List<Size>? enabledSizes;

  /// Whether to serve only static images as companions.
  core.bool? imageOnly;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#siteCompanionSetting".
  core.String? kind;

  SiteCompanionSetting({
    this.companionsDisabled,
    this.enabledSizes,
    this.imageOnly,
    this.kind,
  });

  SiteCompanionSetting.fromJson(core.Map json_)
      : this(
          companionsDisabled: json_.containsKey('companionsDisabled')
              ? json_['companionsDisabled'] as core.bool
              : null,
          enabledSizes: json_.containsKey('enabledSizes')
              ? (json_['enabledSizes'] as core.List)
                  .map((value) => Size.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageOnly: json_.containsKey('imageOnly')
              ? json_['imageOnly'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companionsDisabled != null)
          'companionsDisabled': companionsDisabled!,
        if (enabledSizes != null) 'enabledSizes': enabledSizes!,
        if (imageOnly != null) 'imageOnly': imageOnly!,
        if (kind != null) 'kind': kind!,
      };
}

/// Site Contact
typedef SiteContact = $SiteContact;

/// Site Settings
class SiteSettings {
  /// Whether active view creatives are disabled for this site.
  core.bool? activeViewOptOut;

  /// Whether this site opts out of ad blocking.
  ///
  /// When true, ad blocking is disabled for all placements under the site,
  /// regardless of the individual placement settings. When false, the campaign
  /// and placement settings take effect.
  core.bool? adBlockingOptOut;

  /// Whether new cookies are disabled for this site.
  core.bool? disableNewCookie;

  /// Configuration settings for dynamic and image floodlight tags.
  TagSetting? tagSetting;

  /// Whether Verification and ActiveView for in-stream video creatives are
  /// disabled by default for new placements created under this site.
  ///
  /// This value will be used to populate the placement.videoActiveViewOptOut
  /// field, when no value is specified for the new placement.
  core.bool? videoActiveViewOptOutTemplate;

  /// Default VPAID adapter setting for new placements created under this site.
  ///
  /// This value will be used to populate the placements.vpaidAdapterChoice
  /// field, when no value is specified for the new placement. Controls which
  /// VPAID format the measurement adapter will use for in-stream video
  /// creatives assigned to the placement. The publisher's specifications will
  /// typically determine this setting. For VPAID creatives, the adapter format
  /// will match the VPAID format (HTML5 VPAID creatives use the HTML5 adapter).
  /// *Note:* Flash is no longer supported. This field now defaults to HTML5
  /// when the following values are provided: FLASH, BOTH.
  /// Possible string values are:
  /// - "DEFAULT"
  /// - "FLASH"
  /// - "HTML5"
  /// - "BOTH"
  core.String? vpaidAdapterChoiceTemplate;

  SiteSettings({
    this.activeViewOptOut,
    this.adBlockingOptOut,
    this.disableNewCookie,
    this.tagSetting,
    this.videoActiveViewOptOutTemplate,
    this.vpaidAdapterChoiceTemplate,
  });

  SiteSettings.fromJson(core.Map json_)
      : this(
          activeViewOptOut: json_.containsKey('activeViewOptOut')
              ? json_['activeViewOptOut'] as core.bool
              : null,
          adBlockingOptOut: json_.containsKey('adBlockingOptOut')
              ? json_['adBlockingOptOut'] as core.bool
              : null,
          disableNewCookie: json_.containsKey('disableNewCookie')
              ? json_['disableNewCookie'] as core.bool
              : null,
          tagSetting: json_.containsKey('tagSetting')
              ? TagSetting.fromJson(
                  json_['tagSetting'] as core.Map<core.String, core.dynamic>)
              : null,
          videoActiveViewOptOutTemplate:
              json_.containsKey('videoActiveViewOptOutTemplate')
                  ? json_['videoActiveViewOptOutTemplate'] as core.bool
                  : null,
          vpaidAdapterChoiceTemplate:
              json_.containsKey('vpaidAdapterChoiceTemplate')
                  ? json_['vpaidAdapterChoiceTemplate'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeViewOptOut != null) 'activeViewOptOut': activeViewOptOut!,
        if (adBlockingOptOut != null) 'adBlockingOptOut': adBlockingOptOut!,
        if (disableNewCookie != null) 'disableNewCookie': disableNewCookie!,
        if (tagSetting != null) 'tagSetting': tagSetting!,
        if (videoActiveViewOptOutTemplate != null)
          'videoActiveViewOptOutTemplate': videoActiveViewOptOutTemplate!,
        if (vpaidAdapterChoiceTemplate != null)
          'vpaidAdapterChoiceTemplate': vpaidAdapterChoiceTemplate!,
      };
}

/// Skippable Settings
class SiteSkippableSetting {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#siteSkippableSetting".
  core.String? kind;

  /// Amount of time to play videos served to this site template before counting
  /// a view.
  ///
  /// Applicable when skippable is true.
  VideoOffset? progressOffset;

  /// Amount of time to play videos served to this site before the skip button
  /// should appear.
  ///
  /// Applicable when skippable is true.
  VideoOffset? skipOffset;

  /// Whether the user can skip creatives served to this site.
  ///
  /// This will act as default for new placements created under this site.
  core.bool? skippable;

  SiteSkippableSetting({
    this.kind,
    this.progressOffset,
    this.skipOffset,
    this.skippable,
  });

  SiteSkippableSetting.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          progressOffset: json_.containsKey('progressOffset')
              ? VideoOffset.fromJson(json_['progressOffset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipOffset: json_.containsKey('skipOffset')
              ? VideoOffset.fromJson(
                  json_['skipOffset'] as core.Map<core.String, core.dynamic>)
              : null,
          skippable: json_.containsKey('skippable')
              ? json_['skippable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (progressOffset != null) 'progressOffset': progressOffset!,
        if (skipOffset != null) 'skipOffset': skipOffset!,
        if (skippable != null) 'skippable': skippable!,
      };
}

/// Transcode Settings
typedef SiteTranscodeSetting = $SiteTranscodeSetting;

/// Video Settings
class SiteVideoSettings {
  /// Settings for the companion creatives of video creatives served to this
  /// site.
  SiteCompanionSetting? companionSettings;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#siteVideoSettings".
  core.String? kind;

  /// Whether OBA icons are enabled for this placement.
  core.bool? obaEnabled;

  /// Settings for the OBA icon of video creatives served to this site.
  ///
  /// This will act as default for new placements created under this site.
  ObaIcon? obaSettings;

  /// Orientation of a site template used for video.
  ///
  /// This will act as default for new placements created under this site.
  /// Possible string values are:
  /// - "ANY"
  /// - "LANDSCAPE"
  /// - "PORTRAIT"
  core.String? orientation;

  /// Settings for the skippability of video creatives served to this site.
  ///
  /// This will act as default for new placements created under this site.
  SiteSkippableSetting? skippableSettings;

  /// Settings for the transcodes of video creatives served to this site.
  ///
  /// This will act as default for new placements created under this site.
  SiteTranscodeSetting? transcodeSettings;

  SiteVideoSettings({
    this.companionSettings,
    this.kind,
    this.obaEnabled,
    this.obaSettings,
    this.orientation,
    this.skippableSettings,
    this.transcodeSettings,
  });

  SiteVideoSettings.fromJson(core.Map json_)
      : this(
          companionSettings: json_.containsKey('companionSettings')
              ? SiteCompanionSetting.fromJson(json_['companionSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          obaEnabled: json_.containsKey('obaEnabled')
              ? json_['obaEnabled'] as core.bool
              : null,
          obaSettings: json_.containsKey('obaSettings')
              ? ObaIcon.fromJson(
                  json_['obaSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          skippableSettings: json_.containsKey('skippableSettings')
              ? SiteSkippableSetting.fromJson(json_['skippableSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transcodeSettings: json_.containsKey('transcodeSettings')
              ? SiteTranscodeSetting.fromJson(json_['transcodeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companionSettings != null) 'companionSettings': companionSettings!,
        if (kind != null) 'kind': kind!,
        if (obaEnabled != null) 'obaEnabled': obaEnabled!,
        if (obaSettings != null) 'obaSettings': obaSettings!,
        if (orientation != null) 'orientation': orientation!,
        if (skippableSettings != null) 'skippableSettings': skippableSettings!,
        if (transcodeSettings != null) 'transcodeSettings': transcodeSettings!,
      };
}

/// Site List Response
class SitesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#sitesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Site collection.
  core.List<Site>? sites;

  SitesListResponse({
    this.kind,
    this.nextPageToken,
    this.sites,
  });

  SitesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sites != null) 'sites': sites!,
      };
}

/// Represents the dimensions of ads, placements, creatives, or creative assets.
typedef Size = $Size;

/// Size List Response
class SizesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#sizesListResponse".
  core.String? kind;

  /// Size collection.
  core.List<Size>? sizes;

  SizesListResponse({
    this.kind,
    this.sizes,
  });

  SizesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          sizes: json_.containsKey('sizes')
              ? (json_['sizes'] as core.List)
                  .map((value) => Size.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (sizes != null) 'sizes': sizes!,
      };
}

/// Skippable Settings
class SkippableSetting {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#skippableSetting".
  core.String? kind;

  /// Amount of time to play videos served to this placement before counting a
  /// view.
  ///
  /// Applicable when skippable is true.
  VideoOffset? progressOffset;

  /// Amount of time to play videos served to this placement before the skip
  /// button should appear.
  ///
  /// Applicable when skippable is true.
  VideoOffset? skipOffset;

  /// Whether the user can skip creatives served to this placement.
  core.bool? skippable;

  SkippableSetting({
    this.kind,
    this.progressOffset,
    this.skipOffset,
    this.skippable,
  });

  SkippableSetting.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          progressOffset: json_.containsKey('progressOffset')
              ? VideoOffset.fromJson(json_['progressOffset']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipOffset: json_.containsKey('skipOffset')
              ? VideoOffset.fromJson(
                  json_['skipOffset'] as core.Map<core.String, core.dynamic>)
              : null,
          skippable: json_.containsKey('skippable')
              ? json_['skippable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (progressOffset != null) 'progressOffset': progressOffset!,
        if (skipOffset != null) 'skipOffset': skipOffset!,
        if (skippable != null) 'skippable': skippable!,
      };
}

/// Represents a sorted dimension.
typedef SortedDimension = $SortedDimension;

/// Contains properties of a Campaign Manager subaccount.
typedef Subaccount = $Subaccount;

/// Subaccount List Response
class SubaccountsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#subaccountsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Subaccount collection.
  core.List<Subaccount>? subaccounts;

  SubaccountsListResponse({
    this.kind,
    this.nextPageToken,
    this.subaccounts,
  });

  SubaccountsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subaccounts: json_.containsKey('subaccounts')
              ? (json_['subaccounts'] as core.List)
                  .map((value) => Subaccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subaccounts != null) 'subaccounts': subaccounts!,
      };
}

/// Placement Tag Data
typedef TagData = $TagData;

/// Tag Settings
typedef TagSetting = $TagSetting;

/// Dynamic and Image Tag Settings.
typedef TagSettings = $TagSettings;

/// Target Window.
typedef TargetWindow = $TargetWindow;

/// Contains properties of a targetable remarketing list.
///
/// Remarketing enables you to create lists of users who have performed specific
/// actions on a site, then target ads to members of those lists. This resource
/// is a read-only view of a remarketing list to be used to faciliate targeting
/// ads to specific lists. Remarketing lists that are owned by your advertisers
/// and those that are shared to your advertisers or account are accessible via
/// this resource. To manage remarketing lists that are owned by your
/// advertisers, use the RemarketingLists resource.
class TargetableRemarketingList {
  /// Account ID of this remarketing list.
  ///
  /// This is a read-only, auto-generated field that is only returned in GET
  /// requests.
  core.String? accountId;

  /// Whether this targetable remarketing list is active.
  core.bool? active;

  /// Dimension value for the advertiser ID that owns this targetable
  /// remarketing list.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  DimensionValue? advertiserIdDimensionValue;

  /// Targetable remarketing list description.
  core.String? description;

  /// Targetable remarketing list ID.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#targetableRemarketingList".
  core.String? kind;

  /// Number of days that a user should remain in the targetable remarketing
  /// list without an impression.
  core.String? lifeSpan;

  /// Number of users currently in the list.
  ///
  /// This is a read-only field.
  core.String? listSize;

  /// Product from which this targetable remarketing list was originated.
  /// Possible string values are:
  /// - "REMARKETING_LIST_SOURCE_OTHER"
  /// - "REMARKETING_LIST_SOURCE_ADX"
  /// - "REMARKETING_LIST_SOURCE_DFP"
  /// - "REMARKETING_LIST_SOURCE_XFP"
  /// - "REMARKETING_LIST_SOURCE_DFA"
  /// - "REMARKETING_LIST_SOURCE_GA"
  /// - "REMARKETING_LIST_SOURCE_YOUTUBE"
  /// - "REMARKETING_LIST_SOURCE_DBM"
  /// - "REMARKETING_LIST_SOURCE_GPLUS"
  /// - "REMARKETING_LIST_SOURCE_DMP"
  /// - "REMARKETING_LIST_SOURCE_PLAY_STORE"
  core.String? listSource;

  /// Name of the targetable remarketing list.
  ///
  /// Is no greater than 128 characters long.
  core.String? name;

  /// Subaccount ID of this remarketing list.
  ///
  /// This is a read-only, auto-generated field that is only returned in GET
  /// requests.
  core.String? subaccountId;

  TargetableRemarketingList({
    this.accountId,
    this.active,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.description,
    this.id,
    this.kind,
    this.lifeSpan,
    this.listSize,
    this.listSource,
    this.name,
    this.subaccountId,
  });

  TargetableRemarketingList.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          lifeSpan: json_.containsKey('lifeSpan')
              ? json_['lifeSpan'] as core.String
              : null,
          listSize: json_.containsKey('listSize')
              ? json_['listSize'] as core.String
              : null,
          listSource: json_.containsKey('listSource')
              ? json_['listSource'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (lifeSpan != null) 'lifeSpan': lifeSpan!,
        if (listSize != null) 'listSize': listSize!,
        if (listSource != null) 'listSource': listSource!,
        if (name != null) 'name': name!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
      };
}

/// Targetable remarketing list response
class TargetableRemarketingListsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#targetableRemarketingListsListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Targetable remarketing list collection.
  core.List<TargetableRemarketingList>? targetableRemarketingLists;

  TargetableRemarketingListsListResponse({
    this.kind,
    this.nextPageToken,
    this.targetableRemarketingLists,
  });

  TargetableRemarketingListsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          targetableRemarketingLists:
              json_.containsKey('targetableRemarketingLists')
                  ? (json_['targetableRemarketingLists'] as core.List)
                      .map((value) => TargetableRemarketingList.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (targetableRemarketingLists != null)
          'targetableRemarketingLists': targetableRemarketingLists!,
      };
}

/// Contains properties of a targeting template.
///
/// A targeting template encapsulates targeting information which can be reused
/// across multiple ads.
class TargetingTemplate {
  /// Account ID of this targeting template.
  ///
  /// This field, if left unset, will be auto-generated on insert and is
  /// read-only after insert.
  core.String? accountId;

  /// Advertiser ID of this targeting template.
  ///
  /// This is a required field on insert and is read-only after insert.
  core.String? advertiserId;

  /// Dimension value for the ID of the advertiser.
  ///
  /// This is a read-only, auto-generated field.
  DimensionValue? advertiserIdDimensionValue;

  /// Time and day targeting criteria.
  DayPartTargeting? dayPartTargeting;

  /// Geographical targeting criteria.
  GeoTargeting? geoTargeting;

  /// ID of this targeting template.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Key-value targeting criteria.
  KeyValueTargetingExpression? keyValueTargetingExpression;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#targetingTemplate".
  core.String? kind;

  /// Language targeting criteria.
  LanguageTargeting? languageTargeting;

  /// Remarketing list targeting criteria.
  ListTargetingExpression? listTargetingExpression;

  /// Name of this targeting template.
  ///
  /// This field is required. It must be less than 256 characters long and
  /// unique within an advertiser.
  core.String? name;

  /// Subaccount ID of this targeting template.
  ///
  /// This field, if left unset, will be auto-generated on insert and is
  /// read-only after insert.
  core.String? subaccountId;

  /// Technology platform targeting criteria.
  TechnologyTargeting? technologyTargeting;

  TargetingTemplate({
    this.accountId,
    this.advertiserId,
    this.advertiserIdDimensionValue,
    this.dayPartTargeting,
    this.geoTargeting,
    this.id,
    this.keyValueTargetingExpression,
    this.kind,
    this.languageTargeting,
    this.listTargetingExpression,
    this.name,
    this.subaccountId,
    this.technologyTargeting,
  });

  TargetingTemplate.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserIdDimensionValue:
              json_.containsKey('advertiserIdDimensionValue')
                  ? DimensionValue.fromJson(json_['advertiserIdDimensionValue']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          dayPartTargeting: json_.containsKey('dayPartTargeting')
              ? DayPartTargeting.fromJson(json_['dayPartTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          geoTargeting: json_.containsKey('geoTargeting')
              ? GeoTargeting.fromJson(
                  json_['geoTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          keyValueTargetingExpression:
              json_.containsKey('keyValueTargetingExpression')
                  ? KeyValueTargetingExpression.fromJson(
                      json_['keyValueTargetingExpression']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          languageTargeting: json_.containsKey('languageTargeting')
              ? LanguageTargeting.fromJson(json_['languageTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          listTargetingExpression: json_.containsKey('listTargetingExpression')
              ? ListTargetingExpression.fromJson(
                  json_['listTargetingExpression']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
          technologyTargeting: json_.containsKey('technologyTargeting')
              ? TechnologyTargeting.fromJson(json_['technologyTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserIdDimensionValue != null)
          'advertiserIdDimensionValue': advertiserIdDimensionValue!,
        if (dayPartTargeting != null) 'dayPartTargeting': dayPartTargeting!,
        if (geoTargeting != null) 'geoTargeting': geoTargeting!,
        if (id != null) 'id': id!,
        if (keyValueTargetingExpression != null)
          'keyValueTargetingExpression': keyValueTargetingExpression!,
        if (kind != null) 'kind': kind!,
        if (languageTargeting != null) 'languageTargeting': languageTargeting!,
        if (listTargetingExpression != null)
          'listTargetingExpression': listTargetingExpression!,
        if (name != null) 'name': name!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
        if (technologyTargeting != null)
          'technologyTargeting': technologyTargeting!,
      };
}

/// Targeting Template List Response
class TargetingTemplatesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#targetingTemplatesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// Targeting template collection.
  core.List<TargetingTemplate>? targetingTemplates;

  TargetingTemplatesListResponse({
    this.kind,
    this.nextPageToken,
    this.targetingTemplates,
  });

  TargetingTemplatesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          targetingTemplates: json_.containsKey('targetingTemplates')
              ? (json_['targetingTemplates'] as core.List)
                  .map((value) => TargetingTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (targetingTemplates != null)
          'targetingTemplates': targetingTemplates!,
      };
}

/// Technology Targeting.
class TechnologyTargeting {
  /// Browsers that this ad targets.
  ///
  /// For each browser either set browserVersionId or dartId along with the
  /// version numbers. If both are specified, only browserVersionId will be
  /// used. The other fields are populated automatically when the ad is inserted
  /// or updated.
  core.List<Browser>? browsers;

  /// Connection types that this ad targets.
  ///
  /// For each connection type only id is required. The other fields are
  /// populated automatically when the ad is inserted or updated.
  core.List<ConnectionType>? connectionTypes;

  /// Mobile carriers that this ad targets.
  ///
  /// For each mobile carrier only id is required, and the other fields are
  /// populated automatically when the ad is inserted or updated. If targeting a
  /// mobile carrier, do not set targeting for any zip codes.
  core.List<MobileCarrier>? mobileCarriers;

  /// Operating system versions that this ad targets.
  ///
  /// To target all versions, use operatingSystems. For each operating system
  /// version, only id is required. The other fields are populated automatically
  /// when the ad is inserted or updated. If targeting an operating system
  /// version, do not set targeting for the corresponding operating system in
  /// operatingSystems.
  core.List<OperatingSystemVersion>? operatingSystemVersions;

  /// Operating systems that this ad targets.
  ///
  /// To target specific versions, use operatingSystemVersions. For each
  /// operating system only dartId is required. The other fields are populated
  /// automatically when the ad is inserted or updated. If targeting an
  /// operating system, do not set targeting for operating system versions for
  /// the same operating system.
  core.List<OperatingSystem>? operatingSystems;

  /// Platform types that this ad targets.
  ///
  /// For example, desktop, mobile, or tablet. For each platform type, only id
  /// is required, and the other fields are populated automatically when the ad
  /// is inserted or updated.
  core.List<PlatformType>? platformTypes;

  TechnologyTargeting({
    this.browsers,
    this.connectionTypes,
    this.mobileCarriers,
    this.operatingSystemVersions,
    this.operatingSystems,
    this.platformTypes,
  });

  TechnologyTargeting.fromJson(core.Map json_)
      : this(
          browsers: json_.containsKey('browsers')
              ? (json_['browsers'] as core.List)
                  .map((value) => Browser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          connectionTypes: json_.containsKey('connectionTypes')
              ? (json_['connectionTypes'] as core.List)
                  .map((value) => ConnectionType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mobileCarriers: json_.containsKey('mobileCarriers')
              ? (json_['mobileCarriers'] as core.List)
                  .map((value) => MobileCarrier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operatingSystemVersions: json_.containsKey('operatingSystemVersions')
              ? (json_['operatingSystemVersions'] as core.List)
                  .map((value) => OperatingSystemVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operatingSystems: json_.containsKey('operatingSystems')
              ? (json_['operatingSystems'] as core.List)
                  .map((value) => OperatingSystem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          platformTypes: json_.containsKey('platformTypes')
              ? (json_['platformTypes'] as core.List)
                  .map((value) => PlatformType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (browsers != null) 'browsers': browsers!,
        if (connectionTypes != null) 'connectionTypes': connectionTypes!,
        if (mobileCarriers != null) 'mobileCarriers': mobileCarriers!,
        if (operatingSystemVersions != null)
          'operatingSystemVersions': operatingSystemVersions!,
        if (operatingSystems != null) 'operatingSystems': operatingSystems!,
        if (platformTypes != null) 'platformTypes': platformTypes!,
      };
}

/// Third Party Authentication Token
typedef ThirdPartyAuthenticationToken = $ThirdPartyAuthenticationToken;

/// Third-party Tracking URL.
typedef ThirdPartyTrackingUrl = $ThirdPartyTrackingUrl;

/// Transcode Settings
typedef TranscodeSetting = $TranscodeSetting;

/// A Universal Ad ID as per the VAST 4.0 spec.
///
/// Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO
/// and VPAID.
typedef UniversalAdId = $UniversalAdId;

/// User Defined Variable configuration.
typedef UserDefinedVariableConfiguration = $UserDefinedVariableConfiguration;

/// A UserProfile resource lets you list all DFA user profiles that are
/// associated with a Google user account.
///
/// The profile_id needs to be specified in other API requests.
typedef UserProfile = $UserProfile;

/// Represents the list of user profiles.
class UserProfileList {
  /// Etag of this resource.
  core.String? etag;

  /// The user profiles returned in this response.
  core.List<UserProfile>? items;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userProfileList".
  core.String? kind;

  UserProfileList({
    this.etag,
    this.items,
    this.kind,
  });

  UserProfileList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => UserProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// Contains properties of auser role, which is used to manage user access.
class UserRole {
  /// Account ID of this user role.
  ///
  /// This is a read-only field that can be left blank.
  core.String? accountId;

  /// Whether this is a default user role.
  ///
  /// Default user roles are created by the system for the account/subaccount
  /// and cannot be modified or deleted. Each default user role comes with a
  /// basic set of preassigned permissions.
  core.bool? defaultUserRole;

  /// ID of this user role.
  ///
  /// This is a read-only, auto-generated field.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userRole".
  core.String? kind;

  /// Name of this user role.
  ///
  /// This is a required field. Must be less than 256 characters long. If this
  /// user role is under a subaccount, the name must be unique among sites of
  /// the same subaccount. Otherwise, this user role is a top-level user role,
  /// and the name must be unique among top-level user roles of the same
  /// account.
  core.String? name;

  /// ID of the user role that this user role is based on or copied from.
  ///
  /// This is a required field.
  core.String? parentUserRoleId;

  /// List of permissions associated with this user role.
  core.List<UserRolePermission>? permissions;

  /// Subaccount ID of this user role.
  ///
  /// This is a read-only field that can be left blank.
  core.String? subaccountId;

  UserRole({
    this.accountId,
    this.defaultUserRole,
    this.id,
    this.kind,
    this.name,
    this.parentUserRoleId,
    this.permissions,
    this.subaccountId,
  });

  UserRole.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          defaultUserRole: json_.containsKey('defaultUserRole')
              ? json_['defaultUserRole'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parentUserRoleId: json_.containsKey('parentUserRoleId')
              ? json_['parentUserRoleId'] as core.String
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => UserRolePermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          subaccountId: json_.containsKey('subaccountId')
              ? json_['subaccountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (defaultUserRole != null) 'defaultUserRole': defaultUserRole!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (parentUserRoleId != null) 'parentUserRoleId': parentUserRoleId!,
        if (permissions != null) 'permissions': permissions!,
        if (subaccountId != null) 'subaccountId': subaccountId!,
      };
}

/// Contains properties of a user role permission.
typedef UserRolePermission = $UserRolePermission;

/// Represents a grouping of related user role permissions.
typedef UserRolePermissionGroup = $UserRolePermissionGroup;

/// User Role Permission Group List Response
class UserRolePermissionGroupsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string
  /// "dfareporting#userRolePermissionGroupsListResponse".
  core.String? kind;

  /// User role permission group collection.
  core.List<UserRolePermissionGroup>? userRolePermissionGroups;

  UserRolePermissionGroupsListResponse({
    this.kind,
    this.userRolePermissionGroups,
  });

  UserRolePermissionGroupsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          userRolePermissionGroups:
              json_.containsKey('userRolePermissionGroups')
                  ? (json_['userRolePermissionGroups'] as core.List)
                      .map((value) => UserRolePermissionGroup.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (userRolePermissionGroups != null)
          'userRolePermissionGroups': userRolePermissionGroups!,
      };
}

/// User Role Permission List Response
class UserRolePermissionsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userRolePermissionsListResponse".
  core.String? kind;

  /// User role permission collection.
  core.List<UserRolePermission>? userRolePermissions;

  UserRolePermissionsListResponse({
    this.kind,
    this.userRolePermissions,
  });

  UserRolePermissionsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          userRolePermissions: json_.containsKey('userRolePermissions')
              ? (json_['userRolePermissions'] as core.List)
                  .map((value) => UserRolePermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (userRolePermissions != null)
          'userRolePermissions': userRolePermissions!,
      };
}

/// User Role List Response
class UserRolesListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#userRolesListResponse".
  core.String? kind;

  /// Pagination token to be used for the next list operation.
  core.String? nextPageToken;

  /// User role collection.
  core.List<UserRole>? userRoles;

  UserRolesListResponse({
    this.kind,
    this.nextPageToken,
    this.userRoles,
  });

  UserRolesListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          userRoles: json_.containsKey('userRoles')
              ? (json_['userRoles'] as core.List)
                  .map((value) => UserRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userRoles != null) 'userRoles': userRoles!,
      };
}

/// Contains information about supported video formats.
class VideoFormat {
  /// File type of the video format.
  /// Possible string values are:
  /// - "FLV"
  /// - "THREEGPP"
  /// - "MP4"
  /// - "WEBM"
  /// - "M3U8"
  core.String? fileType;

  /// ID of the video format.
  core.int? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#videoFormat".
  core.String? kind;

  /// The resolution of this video format.
  Size? resolution;

  /// The target bit rate of this video format.
  core.int? targetBitRate;

  VideoFormat({
    this.fileType,
    this.id,
    this.kind,
    this.resolution,
    this.targetBitRate,
  });

  VideoFormat.fromJson(core.Map json_)
      : this(
          fileType: json_.containsKey('fileType')
              ? json_['fileType'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.int : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          resolution: json_.containsKey('resolution')
              ? Size.fromJson(
                  json_['resolution'] as core.Map<core.String, core.dynamic>)
              : null,
          targetBitRate: json_.containsKey('targetBitRate')
              ? json_['targetBitRate'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileType != null) 'fileType': fileType!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (resolution != null) 'resolution': resolution!,
        if (targetBitRate != null) 'targetBitRate': targetBitRate!,
      };
}

/// Video Format List Response
class VideoFormatsListResponse {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#videoFormatsListResponse".
  core.String? kind;

  /// Video format collection.
  core.List<VideoFormat>? videoFormats;

  VideoFormatsListResponse({
    this.kind,
    this.videoFormats,
  });

  VideoFormatsListResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          videoFormats: json_.containsKey('videoFormats')
              ? (json_['videoFormats'] as core.List)
                  .map((value) => VideoFormat.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (videoFormats != null) 'videoFormats': videoFormats!,
      };
}

/// Video Offset
typedef VideoOffset = $VideoOffset;

/// Video Settings
class VideoSettings {
  /// Settings for the companion creatives of video creatives served to this
  /// placement.
  CompanionSetting? companionSettings;

  /// Duration of a video placement in seconds.
  core.int? durationSeconds;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string "dfareporting#videoSettings".
  core.String? kind;

  /// Whether OBA icons are enabled for this placement.
  core.bool? obaEnabled;

  /// Settings for the OBA icon of video creatives served to this placement.
  ///
  /// If this object is provided, the creative-level OBA settings will be
  /// overridden.
  ObaIcon? obaSettings;

  /// Orientation of a video placement.
  ///
  /// If this value is set, placement will return assets matching the specified
  /// orientation.
  /// Possible string values are:
  /// - "ANY"
  /// - "LANDSCAPE"
  /// - "PORTRAIT"
  core.String? orientation;

  /// Settings for the skippability of video creatives served to this placement.
  ///
  /// If this object is provided, the creative-level skippable settings will be
  /// overridden.
  SkippableSetting? skippableSettings;

  /// Settings for the transcodes of video creatives served to this placement.
  ///
  /// If this object is provided, the creative-level transcode settings will be
  /// overridden.
  TranscodeSetting? transcodeSettings;

  VideoSettings({
    this.companionSettings,
    this.durationSeconds,
    this.kind,
    this.obaEnabled,
    this.obaSettings,
    this.orientation,
    this.skippableSettings,
    this.transcodeSettings,
  });

  VideoSettings.fromJson(core.Map json_)
      : this(
          companionSettings: json_.containsKey('companionSettings')
              ? CompanionSetting.fromJson(json_['companionSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          durationSeconds: json_.containsKey('durationSeconds')
              ? json_['durationSeconds'] as core.int
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          obaEnabled: json_.containsKey('obaEnabled')
              ? json_['obaEnabled'] as core.bool
              : null,
          obaSettings: json_.containsKey('obaSettings')
              ? ObaIcon.fromJson(
                  json_['obaSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          skippableSettings: json_.containsKey('skippableSettings')
              ? SkippableSetting.fromJson(json_['skippableSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transcodeSettings: json_.containsKey('transcodeSettings')
              ? TranscodeSetting.fromJson(json_['transcodeSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companionSettings != null) 'companionSettings': companionSettings!,
        if (durationSeconds != null) 'durationSeconds': durationSeconds!,
        if (kind != null) 'kind': kind!,
        if (obaEnabled != null) 'obaEnabled': obaEnabled!,
        if (obaSettings != null) 'obaSettings': obaSettings!,
        if (orientation != null) 'orientation': orientation!,
        if (skippableSettings != null) 'skippableSettings': skippableSettings!,
        if (transcodeSettings != null) 'transcodeSettings': transcodeSettings!,
      };
}
