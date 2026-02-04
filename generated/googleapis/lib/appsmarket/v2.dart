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

/// Google Workspace Marketplace API - v2
///
/// Lets your Google Workspace Marketplace applications integrate with Google's
/// installtion and licensing services.
///
/// For more information, see
/// <https://developers.google.com/workspace/marketplace>
///
/// Create an instance of [GSuiteMarketplaceApi] to access these resources:
///
/// - [CustomerLicenseResource]
/// - [UserLicenseResource]
library;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Lets your Google Workspace Marketplace applications integrate with Google's
/// installtion and licensing services.
class GSuiteMarketplaceApi {
  /// View your installed application's licensing information
  static const appsmarketplaceLicenseScope =
      'https://www.googleapis.com/auth/appsmarketplace.license';

  final commons.ApiRequester _requester;

  CustomerLicenseResource get customerLicense =>
      CustomerLicenseResource(_requester);
  UserLicenseResource get userLicense => UserLicenseResource(_requester);

  GSuiteMarketplaceApi(
    http.Client client, {
    core.String rootUrl = 'https://appsmarket.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class CustomerLicenseResource {
  final commons.ApiRequester _requester;

  CustomerLicenseResource(commons.ApiRequester client) : _requester = client;

  /// Gets the status of a license for a customer to determine if they have
  /// access for a given app.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - Application Id
  ///
  /// [customerId] - Customer Id
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomerLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomerLicense> get(
    core.String applicationId,
    core.String customerId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'appsmarket/v2/customerLicense/' +
        commons.escapeVariable('$applicationId') +
        '/' +
        commons.escapeVariable('$customerId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomerLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UserLicenseResource {
  final commons.ApiRequester _requester;

  UserLicenseResource(commons.ApiRequester client) : _requester = client;

  /// Gets the user's licensing status for their permission to use a given app.
  ///
  /// Request parameters:
  ///
  /// [applicationId] - Application Id
  ///
  /// [userId] - User Id
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserLicense].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserLicense> get(
    core.String applicationId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'appsmarket/v2/userLicense/' +
        commons.escapeVariable('$applicationId') +
        '/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserLicense.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class CustomerLicense {
  /// The ID of the application corresponding to this license query.
  core.String? applicationId;

  /// The domain name of the customer.
  core.String? customerId;

  /// (Deprecated)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<Editions>? editions;

  /// The ID of the customer license.
  core.String? id;

  /// The type of API resource.
  ///
  /// This is always appsmarket#customerLicense.
  core.String? kind;

  /// The customer's license status.
  ///
  /// One of: - `ACTIVE`: The customer has a valid license. - `UNLICENSED`:
  /// There is no license: either this customer has never installed your
  /// application, or else has deleted it.
  core.String? state;

  CustomerLicense({
    this.applicationId,
    this.customerId,
    this.editions,
    this.id,
    this.kind,
    this.state,
  });

  CustomerLicense.fromJson(core.Map json_)
    : this(
        applicationId: json_['applicationId'] as core.String?,
        customerId: json_['customerId'] as core.String?,
        editions:
            (json_['editions'] as core.List?)
                ?.map(
                  (value) => Editions.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationId != null) 'applicationId': applicationId!,
    if (customerId != null) 'customerId': customerId!,
    if (editions != null) 'editions': editions!,
    if (id != null) 'id': id!,
    if (kind != null) 'kind': kind!,
    if (state != null) 'state': state!,
  };
}

class Editions {
  /// (Deprecated)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? assignedSeats;

  /// (Deprecated)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? editionId;

  /// (Deprecated)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? seatCount;

  Editions({this.assignedSeats, this.editionId, this.seatCount});

  Editions.fromJson(core.Map json_)
    : this(
        assignedSeats: json_['assignedSeats'] as core.int?,
        editionId: json_['editionId'] as core.String?,
        seatCount: json_['seatCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assignedSeats != null) 'assignedSeats': assignedSeats!,
    if (editionId != null) 'editionId': editionId!,
    if (seatCount != null) 'seatCount': seatCount!,
  };
}

class UserLicense {
  /// The ID of the application corresponding to the license query.
  core.String? applicationId;

  /// The domain name of the user.
  core.String? customerId;

  /// (Deprecated)
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? editionId;

  /// The domain administrator has activated the application for this domain.
  core.bool? enabled;

  /// The ID of user license.
  core.String? id;

  /// The type of API resource.
  ///
  /// This is always appsmarket#userLicense.
  core.String? kind;

  /// The user's licensing status.
  ///
  /// One of: - `ACTIVE`: The user has a valid license and should be permitted
  /// to use the application. - `UNLICENSED`: The administrator of this user's
  /// domain never assigned a seat for the application to this user. -
  /// `EXPIRED`: The administrator assigned a seat to this user, but the license
  /// is expired.
  core.String? state;

  /// The email address of the user.
  core.String? userId;

  UserLicense({
    this.applicationId,
    this.customerId,
    this.editionId,
    this.enabled,
    this.id,
    this.kind,
    this.state,
    this.userId,
  });

  UserLicense.fromJson(core.Map json_)
    : this(
        applicationId: json_['applicationId'] as core.String?,
        customerId: json_['customerId'] as core.String?,
        editionId: json_['editionId'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        state: json_['state'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationId != null) 'applicationId': applicationId!,
    if (customerId != null) 'customerId': customerId!,
    if (editionId != null) 'editionId': editionId!,
    if (enabled != null) 'enabled': enabled!,
    if (id != null) 'id': id!,
    if (kind != null) 'kind': kind!,
    if (state != null) 'state': state!,
    if (userId != null) 'userId': userId!,
  };
}
