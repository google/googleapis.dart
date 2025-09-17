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

/// Google Marketing Platform Admin API - v1alpha
///
/// The Google Marketing Platform Admin API allows for programmatic access to
/// the Google Marketing Platform configuration data. You can use the Google
/// Marketing Platform Admin API to manage links between your Google Marketing
/// Platform organization and Google Analytics accounts, and to set the service
/// level of your GA4 properties.
///
/// For more information, see
/// <https://developers.google.com/analytics/devguides/config/gmp/v1>
///
/// Create an instance of [GoogleMarketingPlatformAdminApi] to access these
/// resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsAnalyticsAccountLinksResource]
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

/// The Google Marketing Platform Admin API allows for programmatic access to
/// the Google Marketing Platform configuration data.
///
/// You can use the Google Marketing Platform Admin API to manage links between
/// your Google Marketing Platform organization and Google Analytics accounts,
/// and to set the service level of your GA4 properties.
class GoogleMarketingPlatformAdminApi {
  /// View your Google Analytics product account data in GMP home
  static const marketingplatformadminAnalyticsReadScope =
      'https://www.googleapis.com/auth/marketingplatformadmin.analytics.read';

  /// Manage your Google Analytics product account data in GMP home
  static const marketingplatformadminAnalyticsUpdateScope =
      'https://www.googleapis.com/auth/marketingplatformadmin.analytics.update';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);

  GoogleMarketingPlatformAdminApi(
    http.Client client, {
    core.String rootUrl = 'https://marketingplatformadmin.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsAnalyticsAccountLinksResource get analyticsAccountLinks =>
      OrganizationsAnalyticsAccountLinksResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;

  /// Lookup for a single organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Organization to retrieve. Format:
  /// organizations/{org_id}
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Organization.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsAnalyticsAccountLinksResource {
  final commons.ApiRequester _requester;

  OrganizationsAnalyticsAccountLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates the link between the Analytics account and the Google Marketing
  /// Platform organization.
  ///
  /// User needs to be an org user, and admin on the Analytics account to create
  /// the link. If the account is already linked to an organization, user needs
  /// to unlink the account from the current organization, then try link again.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this Analytics account link
  /// will be created. Format: organizations/{org_id}
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyticsAccountLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyticsAccountLink> create(
    AnalyticsAccountLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/analyticsAccountLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyticsAccountLink.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes the AnalyticsAccountLink, which detaches the Analytics account
  /// from the Google Marketing Platform organization.
  ///
  /// User needs to be an org user, and admin on the Analytics account in order
  /// to delete the link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Analytics account link to delete.
  /// Format:
  /// organizations/{org_id}/analyticsAccountLinks/{analytics_account_link_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/analyticsAccountLinks/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Google Analytics accounts link to the specified Google Marketing
  /// Platform organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent organization, which owns this collection
  /// of Analytics account links. Format: organizations/{org_id}
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of Analytics account links to
  /// return in one call. The service may return fewer than this value. If
  /// unspecified, at most 50 Analytics account links will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// ListAnalyticsAccountLinks call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListAnalyticsAccountLinks` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAnalyticsAccountLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAnalyticsAccountLinksResponse> list(
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

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/analyticsAccountLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAnalyticsAccountLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the service level for an Analytics property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [analyticsAccountLink] - Required. The parent AnalyticsAccountLink scope
  /// where this property is in. Format:
  /// organizations/{org_id}/analyticsAccountLinks/{analytics_account_link_id}
  /// Value must have pattern
  /// `^organizations/\[^/\]+/analyticsAccountLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SetPropertyServiceLevelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SetPropertyServiceLevelResponse> setPropertyServiceLevel(
    SetPropertyServiceLevelRequest request,
    core.String analyticsAccountLink, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' +
        core.Uri.encodeFull('$analyticsAccountLink') +
        ':setPropertyServiceLevel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SetPropertyServiceLevelResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A resource message representing the link between a Google Analytics account
/// and a Google Marketing Platform organization.
class AnalyticsAccountLink {
  /// The resource name of the AnalyticsAdmin API account.
  ///
  /// The account ID will be used as the ID of this AnalyticsAccountLink
  /// resource, which will become the final component of the resource name.
  /// Format: analyticsadmin.googleapis.com/accounts/{account_id}
  ///
  /// Required. Immutable.
  core.String? analyticsAccount;

  /// The human-readable name for the Analytics account.
  ///
  /// Output only.
  core.String? displayName;

  /// The verification state of the link between the Analytics account and the
  /// parent organization.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINK_VERIFICATION_STATE_UNSPECIFIED" : The link state is unknown.
  /// - "LINK_VERIFICATION_STATE_VERIFIED" : The link is established.
  /// - "LINK_VERIFICATION_STATE_NOT_VERIFIED" : The link is requested, but
  /// hasn't been approved by the product account admin.
  core.String? linkVerificationState;

  /// Identifier.
  ///
  /// Resource name of this AnalyticsAccountLink. Note the resource ID is the
  /// same as the ID of the Analtyics account. Format:
  /// organizations/{org_id}/analyticsAccountLinks/{analytics_account_link_id}
  /// Example: "organizations/xyz/analyticsAccountLinks/1234"
  core.String? name;

  AnalyticsAccountLink({
    this.analyticsAccount,
    this.displayName,
    this.linkVerificationState,
    this.name,
  });

  AnalyticsAccountLink.fromJson(core.Map json_)
    : this(
        analyticsAccount: json_['analyticsAccount'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        linkVerificationState: json_['linkVerificationState'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analyticsAccount != null) 'analyticsAccount': analyticsAccount!,
    if (displayName != null) 'displayName': displayName!,
    if (linkVerificationState != null)
      'linkVerificationState': linkVerificationState!,
    if (name != null) 'name': name!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for ListAnalyticsAccountLinks RPC.
class ListAnalyticsAccountLinksResponse {
  /// Analytics account links in this organization.
  core.List<AnalyticsAccountLink>? analyticsAccountLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAnalyticsAccountLinksResponse({
    this.analyticsAccountLinks,
    this.nextPageToken,
  });

  ListAnalyticsAccountLinksResponse.fromJson(core.Map json_)
    : this(
        analyticsAccountLinks:
            (json_['analyticsAccountLinks'] as core.List?)
                ?.map(
                  (value) => AnalyticsAccountLink.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analyticsAccountLinks != null)
      'analyticsAccountLinks': analyticsAccountLinks!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A resource message representing a Google Marketing Platform organization.
class Organization {
  /// The human-readable name for the organization.
  core.String? displayName;

  /// Identifier.
  ///
  /// The resource name of the GMP organization. Format: organizations/{org_id}
  core.String? name;

  Organization({this.displayName, this.name});

  Organization.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
  };
}

/// Request message for SetPropertyServiceLevel RPC.
class SetPropertyServiceLevelRequest {
  /// The Analytics property to change the ServiceLevel setting.
  ///
  /// This field is the name of the Google Analytics Admin API property
  /// resource. Format: analyticsadmin.googleapis.com/properties/{property_id}
  ///
  /// Required.
  core.String? analyticsProperty;

  /// The service level to set for this property.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ANALYTICS_SERVICE_LEVEL_UNSPECIFIED" : Service level unspecified.
  /// - "ANALYTICS_SERVICE_LEVEL_STANDARD" : The standard version of Google
  /// Analytics.
  /// - "ANALYTICS_SERVICE_LEVEL_360" : The premium version of Google Analytics.
  core.String? serviceLevel;

  SetPropertyServiceLevelRequest({this.analyticsProperty, this.serviceLevel});

  SetPropertyServiceLevelRequest.fromJson(core.Map json_)
    : this(
        analyticsProperty: json_['analyticsProperty'] as core.String?,
        serviceLevel: json_['serviceLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (analyticsProperty != null) 'analyticsProperty': analyticsProperty!,
    if (serviceLevel != null) 'serviceLevel': serviceLevel!,
  };
}

/// Response message for SetPropertyServiceLevel RPC.
typedef SetPropertyServiceLevelResponse = $Empty;
