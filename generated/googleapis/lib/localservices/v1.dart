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

/// Local Services API - v1
///
/// For more information, see <https://ads.google.com/local-services-ads/>
///
/// Create an instance of [LocalservicesApi] to access these resources:
///
/// - [AccountReportsResource]
/// - [DetailedLeadReportsResource]
library localservices.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class LocalservicesApi {
  /// See, edit, create, and delete your Google Ads accounts and data.
  static const adwordsScope = 'https://www.googleapis.com/auth/adwords';

  final commons.ApiRequester _requester;

  AccountReportsResource get accountReports =>
      AccountReportsResource(_requester);
  DetailedLeadReportsResource get detailedLeadReports =>
      DetailedLeadReportsResource(_requester);

  LocalservicesApi(http.Client client,
      {core.String rootUrl = 'https://localservices.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountReportsResource {
  final commons.ApiRequester _requester;

  AccountReportsResource(commons.ApiRequester client) : _requester = client;

  /// Get account reports containing aggregate account data of all linked GLS
  /// accounts.
  ///
  /// Caller needs to provide their manager customer id and the associated auth
  /// credential that allows them read permissions on their linked accounts.
  ///
  /// Request parameters:
  ///
  /// [endDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [endDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [endDate_year] - Year of the date. Must be from 1 to 9999, or 0 to specify
  /// a date without a year.
  ///
  /// [pageSize] - The maximum number of accounts to return. If the page size is
  /// unset, page size will default to 1000. Maximum page_size is 10000.
  /// Optional.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous request
  /// to SearchAccountReports that indicates where listing should continue.
  /// Optional.
  ///
  /// [query] - A query string for searching for account reports. Caller must
  /// provide a customer id of their MCC account with an associated Gaia Mint
  /// that allows read permission on their linked accounts. Search expressions
  /// are case insensitive. Example query: | Query | Description |
  /// |-------------------------|-----------------------------------------------|
  /// | manager_customer_id:123 | Get Account Report for Manager with id 123. |
  /// Required.
  ///
  /// [startDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [startDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify
  /// a year without a month and day.
  ///
  /// [startDate_year] - Year of the date. Must be from 1 to 9999, or 0 to
  /// specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse>
      search({
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/accountReports:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class DetailedLeadReportsResource {
  final commons.ApiRequester _requester;

  DetailedLeadReportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get detailed lead reports containing leads that have been received by all
  /// linked GLS accounts.
  ///
  /// Caller needs to provide their manager customer id and the associated auth
  /// credential that allows them read permissions on their linked accounts.
  ///
  /// Request parameters:
  ///
  /// [endDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [endDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [endDate_year] - Year of the date. Must be from 1 to 9999, or 0 to specify
  /// a date without a year.
  ///
  /// [pageSize] - The maximum number of accounts to return. If the page size is
  /// unset, page size will default to 1000. Maximum page_size is 10000.
  /// Optional.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous request
  /// to SearchDetailedLeadReports that indicates where listing should continue.
  /// Optional.
  ///
  /// [query] - A query string for searching for account reports. Caller must
  /// provide a customer id of their MCC account with an associated Gaia Mint
  /// that allows read permission on their linked accounts. Search expressions
  /// are case insensitive. Example query: | Query | Description |
  /// |-------------------------|-----------------------------------------------|
  /// | manager_customer_id:123 | Get Detailed Lead Report for Manager with id |
  /// | | 123. | Required.
  ///
  /// [startDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [startDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify
  /// a year without a month and day.
  ///
  /// [startDate_year] - Year of the date. Must be from 1 to 9999, or 0 to
  /// specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse>
      search({
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/detailedLeadReports:search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An Account Report of a GLS account identified by their account id containing
/// aggregate data gathered from a particular date range.
///
/// Next ID: 18
class GoogleAdsHomeservicesLocalservicesV1AccountReport {
  /// Unique identifier of the GLS account.
  core.String? accountId;

  /// Aggregator specific information related to the account.
  GoogleAdsHomeservicesLocalservicesV1AggregatorInfo? aggregatorInfo;

  /// Average review rating score from 1-5 stars.
  core.double? averageFiveStarRating;

  /// Average weekly budget in the currency code of the account.
  core.double? averageWeeklyBudget;

  /// Business name of the account.
  core.String? businessName;

  /// Currency code of the account.
  core.String? currencyCode;

  /// Number of charged leads the account received in current specified period.
  core.String? currentPeriodChargedLeads;

  /// Number of connected phone calls (duration over 30s) in current specified
  /// period.
  core.String? currentPeriodConnectedPhoneCalls;

  /// Number of phone calls in current specified period, including both
  /// connected and unconnected calls.
  core.String? currentPeriodPhoneCalls;

  /// Total cost of the account in current specified period in the account's
  /// specified currency.
  core.double? currentPeriodTotalCost;

  /// Number of impressions that customers have had in the past 2 days.
  core.String? impressionsLastTwoDays;

  /// Phone lead responsiveness of the account for the past 90 days from current
  /// date.
  ///
  /// This is computed by taking the total number of connected calls from
  /// charged phone leads and dividing by the total number of calls received.
  core.double? phoneLeadResponsiveness;

  /// Number of charged leads the account received in previous specified period.
  core.String? previousPeriodChargedLeads;

  /// Number of connected phone calls (duration over 30s) in previous specified
  /// period.
  core.String? previousPeriodConnectedPhoneCalls;

  /// Number of phone calls in previous specified period, including both
  /// connected and unconnected calls.
  core.String? previousPeriodPhoneCalls;

  /// Total cost of the account in previous specified period in the account's
  /// specified currency.
  core.double? previousPeriodTotalCost;

  /// Total number of reviews the account has up to current date.
  core.int? totalReview;

  GoogleAdsHomeservicesLocalservicesV1AccountReport({
    this.accountId,
    this.aggregatorInfo,
    this.averageFiveStarRating,
    this.averageWeeklyBudget,
    this.businessName,
    this.currencyCode,
    this.currentPeriodChargedLeads,
    this.currentPeriodConnectedPhoneCalls,
    this.currentPeriodPhoneCalls,
    this.currentPeriodTotalCost,
    this.impressionsLastTwoDays,
    this.phoneLeadResponsiveness,
    this.previousPeriodChargedLeads,
    this.previousPeriodConnectedPhoneCalls,
    this.previousPeriodPhoneCalls,
    this.previousPeriodTotalCost,
    this.totalReview,
  });

  GoogleAdsHomeservicesLocalservicesV1AccountReport.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          aggregatorInfo: json_.containsKey('aggregatorInfo')
              ? GoogleAdsHomeservicesLocalservicesV1AggregatorInfo.fromJson(
                  json_['aggregatorInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          averageFiveStarRating: json_.containsKey('averageFiveStarRating')
              ? (json_['averageFiveStarRating'] as core.num).toDouble()
              : null,
          averageWeeklyBudget: json_.containsKey('averageWeeklyBudget')
              ? (json_['averageWeeklyBudget'] as core.num).toDouble()
              : null,
          businessName: json_.containsKey('businessName')
              ? json_['businessName'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          currentPeriodChargedLeads:
              json_.containsKey('currentPeriodChargedLeads')
                  ? json_['currentPeriodChargedLeads'] as core.String
                  : null,
          currentPeriodConnectedPhoneCalls:
              json_.containsKey('currentPeriodConnectedPhoneCalls')
                  ? json_['currentPeriodConnectedPhoneCalls'] as core.String
                  : null,
          currentPeriodPhoneCalls: json_.containsKey('currentPeriodPhoneCalls')
              ? json_['currentPeriodPhoneCalls'] as core.String
              : null,
          currentPeriodTotalCost: json_.containsKey('currentPeriodTotalCost')
              ? (json_['currentPeriodTotalCost'] as core.num).toDouble()
              : null,
          impressionsLastTwoDays: json_.containsKey('impressionsLastTwoDays')
              ? json_['impressionsLastTwoDays'] as core.String
              : null,
          phoneLeadResponsiveness: json_.containsKey('phoneLeadResponsiveness')
              ? (json_['phoneLeadResponsiveness'] as core.num).toDouble()
              : null,
          previousPeriodChargedLeads:
              json_.containsKey('previousPeriodChargedLeads')
                  ? json_['previousPeriodChargedLeads'] as core.String
                  : null,
          previousPeriodConnectedPhoneCalls:
              json_.containsKey('previousPeriodConnectedPhoneCalls')
                  ? json_['previousPeriodConnectedPhoneCalls'] as core.String
                  : null,
          previousPeriodPhoneCalls:
              json_.containsKey('previousPeriodPhoneCalls')
                  ? json_['previousPeriodPhoneCalls'] as core.String
                  : null,
          previousPeriodTotalCost: json_.containsKey('previousPeriodTotalCost')
              ? (json_['previousPeriodTotalCost'] as core.num).toDouble()
              : null,
          totalReview: json_.containsKey('totalReview')
              ? json_['totalReview'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (aggregatorInfo != null) 'aggregatorInfo': aggregatorInfo!,
        if (averageFiveStarRating != null)
          'averageFiveStarRating': averageFiveStarRating!,
        if (averageWeeklyBudget != null)
          'averageWeeklyBudget': averageWeeklyBudget!,
        if (businessName != null) 'businessName': businessName!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (currentPeriodChargedLeads != null)
          'currentPeriodChargedLeads': currentPeriodChargedLeads!,
        if (currentPeriodConnectedPhoneCalls != null)
          'currentPeriodConnectedPhoneCalls': currentPeriodConnectedPhoneCalls!,
        if (currentPeriodPhoneCalls != null)
          'currentPeriodPhoneCalls': currentPeriodPhoneCalls!,
        if (currentPeriodTotalCost != null)
          'currentPeriodTotalCost': currentPeriodTotalCost!,
        if (impressionsLastTwoDays != null)
          'impressionsLastTwoDays': impressionsLastTwoDays!,
        if (phoneLeadResponsiveness != null)
          'phoneLeadResponsiveness': phoneLeadResponsiveness!,
        if (previousPeriodChargedLeads != null)
          'previousPeriodChargedLeads': previousPeriodChargedLeads!,
        if (previousPeriodConnectedPhoneCalls != null)
          'previousPeriodConnectedPhoneCalls':
              previousPeriodConnectedPhoneCalls!,
        if (previousPeriodPhoneCalls != null)
          'previousPeriodPhoneCalls': previousPeriodPhoneCalls!,
        if (previousPeriodTotalCost != null)
          'previousPeriodTotalCost': previousPeriodTotalCost!,
        if (totalReview != null) 'totalReview': totalReview!,
      };
}

/// Conatiner for aggregator specific information if lead is for an aggregator
/// GLS account.
class GoogleAdsHomeservicesLocalservicesV1AggregatorInfo {
  /// Provider id (listed in aggregator system) which maps to a account id in
  /// GLS system.
  core.String? aggregatorProviderId;

  GoogleAdsHomeservicesLocalservicesV1AggregatorInfo({
    this.aggregatorProviderId,
  });

  GoogleAdsHomeservicesLocalservicesV1AggregatorInfo.fromJson(core.Map json_)
      : this(
          aggregatorProviderId: json_.containsKey('aggregatorProviderId')
              ? json_['aggregatorProviderId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregatorProviderId != null)
          'aggregatorProviderId': aggregatorProviderId!,
      };
}

/// Container for booking lead specific information.
class GoogleAdsHomeservicesLocalservicesV1BookingLead {
  /// Timestamp of when service is provided by advertiser.
  core.String? bookingAppointmentTimestamp;

  /// Consumer email associated with the booking lead.
  core.String? consumerEmail;

  /// Consumer phone number associated with the booking lead.
  core.String? consumerPhoneNumber;

  /// Name of the customer who created the lead.
  core.String? customerName;

  /// The job type of the specified lead.
  core.String? jobType;

  GoogleAdsHomeservicesLocalservicesV1BookingLead({
    this.bookingAppointmentTimestamp,
    this.consumerEmail,
    this.consumerPhoneNumber,
    this.customerName,
    this.jobType,
  });

  GoogleAdsHomeservicesLocalservicesV1BookingLead.fromJson(core.Map json_)
      : this(
          bookingAppointmentTimestamp:
              json_.containsKey('bookingAppointmentTimestamp')
                  ? json_['bookingAppointmentTimestamp'] as core.String
                  : null,
          consumerEmail: json_.containsKey('consumerEmail')
              ? json_['consumerEmail'] as core.String
              : null,
          consumerPhoneNumber: json_.containsKey('consumerPhoneNumber')
              ? json_['consumerPhoneNumber'] as core.String
              : null,
          customerName: json_.containsKey('customerName')
              ? json_['customerName'] as core.String
              : null,
          jobType: json_.containsKey('jobType')
              ? json_['jobType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bookingAppointmentTimestamp != null)
          'bookingAppointmentTimestamp': bookingAppointmentTimestamp!,
        if (consumerEmail != null) 'consumerEmail': consumerEmail!,
        if (consumerPhoneNumber != null)
          'consumerPhoneNumber': consumerPhoneNumber!,
        if (customerName != null) 'customerName': customerName!,
        if (jobType != null) 'jobType': jobType!,
      };
}

/// A Detailed Lead Report of a lead identified by their lead id and contains
/// consumer, account, monetization, and lead data.
class GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport {
  /// Identifies account that received the lead.
  core.String? accountId;

  /// Aggregator specific information related to the lead.
  GoogleAdsHomeservicesLocalservicesV1AggregatorInfo? aggregatorInfo;

  /// More information associated to only booking leads.
  GoogleAdsHomeservicesLocalservicesV1BookingLead? bookingLead;

  /// Business name associated to the account.
  core.String? businessName;

  /// Whether the lead has been charged.
  /// Possible string values are:
  /// - "CHARGE_STATUS_UNSPECIFIED" : Not specified.
  /// - "CHARGED" : Charged.
  /// - "NOT_CHARGED" : Not charged.
  core.String? chargeStatus;

  /// Currency code.
  core.String? currencyCode;

  /// Dispute status related to the lead.
  core.String? disputeStatus;

  /// Location of the associated account's home city.
  core.String? geo;

  /// Lead category (e.g. hvac, plumber)
  core.String? leadCategory;

  /// Timestamp of when the lead was created.
  core.String? leadCreationTimestamp;

  /// Unique identifier of a Detailed Lead Report.
  core.String? leadId;

  /// Price of the lead (available only after it has been charged).
  core.double? leadPrice;

  /// Lead type.
  /// Possible string values are:
  /// - "LEAD_TYPE_UNSPECIFIED" : Not specified.
  /// - "MESSAGE" : Message lead.
  /// - "PHONE_CALL" : Phone call lead.
  /// - "BOOKING" : Booking lead.
  core.String? leadType;

  /// More information associated to only message leads.
  GoogleAdsHomeservicesLocalservicesV1MessageLead? messageLead;

  /// More information associated to only phone leads.
  GoogleAdsHomeservicesLocalservicesV1PhoneLead? phoneLead;

  /// Timezone of the particular provider associated to a lead.
  GoogleTypeTimeZone? timezone;

  GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport({
    this.accountId,
    this.aggregatorInfo,
    this.bookingLead,
    this.businessName,
    this.chargeStatus,
    this.currencyCode,
    this.disputeStatus,
    this.geo,
    this.leadCategory,
    this.leadCreationTimestamp,
    this.leadId,
    this.leadPrice,
    this.leadType,
    this.messageLead,
    this.phoneLead,
    this.timezone,
  });

  GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport.fromJson(
      core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          aggregatorInfo: json_.containsKey('aggregatorInfo')
              ? GoogleAdsHomeservicesLocalservicesV1AggregatorInfo.fromJson(
                  json_['aggregatorInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          bookingLead: json_.containsKey('bookingLead')
              ? GoogleAdsHomeservicesLocalservicesV1BookingLead.fromJson(
                  json_['bookingLead'] as core.Map<core.String, core.dynamic>)
              : null,
          businessName: json_.containsKey('businessName')
              ? json_['businessName'] as core.String
              : null,
          chargeStatus: json_.containsKey('chargeStatus')
              ? json_['chargeStatus'] as core.String
              : null,
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          disputeStatus: json_.containsKey('disputeStatus')
              ? json_['disputeStatus'] as core.String
              : null,
          geo: json_.containsKey('geo') ? json_['geo'] as core.String : null,
          leadCategory: json_.containsKey('leadCategory')
              ? json_['leadCategory'] as core.String
              : null,
          leadCreationTimestamp: json_.containsKey('leadCreationTimestamp')
              ? json_['leadCreationTimestamp'] as core.String
              : null,
          leadId: json_.containsKey('leadId')
              ? json_['leadId'] as core.String
              : null,
          leadPrice: json_.containsKey('leadPrice')
              ? (json_['leadPrice'] as core.num).toDouble()
              : null,
          leadType: json_.containsKey('leadType')
              ? json_['leadType'] as core.String
              : null,
          messageLead: json_.containsKey('messageLead')
              ? GoogleAdsHomeservicesLocalservicesV1MessageLead.fromJson(
                  json_['messageLead'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneLead: json_.containsKey('phoneLead')
              ? GoogleAdsHomeservicesLocalservicesV1PhoneLead.fromJson(
                  json_['phoneLead'] as core.Map<core.String, core.dynamic>)
              : null,
          timezone: json_.containsKey('timezone')
              ? GoogleTypeTimeZone.fromJson(
                  json_['timezone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (aggregatorInfo != null) 'aggregatorInfo': aggregatorInfo!,
        if (bookingLead != null) 'bookingLead': bookingLead!,
        if (businessName != null) 'businessName': businessName!,
        if (chargeStatus != null) 'chargeStatus': chargeStatus!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (disputeStatus != null) 'disputeStatus': disputeStatus!,
        if (geo != null) 'geo': geo!,
        if (leadCategory != null) 'leadCategory': leadCategory!,
        if (leadCreationTimestamp != null)
          'leadCreationTimestamp': leadCreationTimestamp!,
        if (leadId != null) 'leadId': leadId!,
        if (leadPrice != null) 'leadPrice': leadPrice!,
        if (leadType != null) 'leadType': leadType!,
        if (messageLead != null) 'messageLead': messageLead!,
        if (phoneLead != null) 'phoneLead': phoneLead!,
        if (timezone != null) 'timezone': timezone!,
      };
}

/// Container for message lead specific information.
class GoogleAdsHomeservicesLocalservicesV1MessageLead {
  /// Consumer phone number associated with the message lead.
  core.String? consumerPhoneNumber;

  /// Name of the customer who created the lead.
  core.String? customerName;

  /// The job type of the specified lead.
  core.String? jobType;

  /// The postal code of the customer who created the lead.
  core.String? postalCode;

  GoogleAdsHomeservicesLocalservicesV1MessageLead({
    this.consumerPhoneNumber,
    this.customerName,
    this.jobType,
    this.postalCode,
  });

  GoogleAdsHomeservicesLocalservicesV1MessageLead.fromJson(core.Map json_)
      : this(
          consumerPhoneNumber: json_.containsKey('consumerPhoneNumber')
              ? json_['consumerPhoneNumber'] as core.String
              : null,
          customerName: json_.containsKey('customerName')
              ? json_['customerName'] as core.String
              : null,
          jobType: json_.containsKey('jobType')
              ? json_['jobType'] as core.String
              : null,
          postalCode: json_.containsKey('postalCode')
              ? json_['postalCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerPhoneNumber != null)
          'consumerPhoneNumber': consumerPhoneNumber!,
        if (customerName != null) 'customerName': customerName!,
        if (jobType != null) 'jobType': jobType!,
        if (postalCode != null) 'postalCode': postalCode!,
      };
}

/// Container for phone lead specific information.
class GoogleAdsHomeservicesLocalservicesV1PhoneLead {
  /// Timestamp of the phone call which resulted in a charged phone lead.
  core.String? chargedCallTimestamp;

  /// Duration of the charged phone call in seconds.
  core.String? chargedConnectedCallDurationSeconds;

  /// Consumer phone number associated with the phone lead.
  core.String? consumerPhoneNumber;

  GoogleAdsHomeservicesLocalservicesV1PhoneLead({
    this.chargedCallTimestamp,
    this.chargedConnectedCallDurationSeconds,
    this.consumerPhoneNumber,
  });

  GoogleAdsHomeservicesLocalservicesV1PhoneLead.fromJson(core.Map json_)
      : this(
          chargedCallTimestamp: json_.containsKey('chargedCallTimestamp')
              ? json_['chargedCallTimestamp'] as core.String
              : null,
          chargedConnectedCallDurationSeconds:
              json_.containsKey('chargedConnectedCallDurationSeconds')
                  ? json_['chargedConnectedCallDurationSeconds'] as core.String
                  : null,
          consumerPhoneNumber: json_.containsKey('consumerPhoneNumber')
              ? json_['consumerPhoneNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chargedCallTimestamp != null)
          'chargedCallTimestamp': chargedCallTimestamp!,
        if (chargedConnectedCallDurationSeconds != null)
          'chargedConnectedCallDurationSeconds':
              chargedConnectedCallDurationSeconds!,
        if (consumerPhoneNumber != null)
          'consumerPhoneNumber': consumerPhoneNumber!,
      };
}

/// A page of the response received from the SearchAccountReports method.
///
/// A paginated response where more pages are available has `next_page_token`
/// set. This token can be used in a subsequent request to retrieve the next
/// request page.
class GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse {
  /// List of account reports which maps 1:1 to a particular linked GLS account.
  core.List<GoogleAdsHomeservicesLocalservicesV1AccountReport>? accountReports;

  /// Pagination token to retrieve the next page of results.
  ///
  /// When `next_page_token` is not filled in, there is no next page and the
  /// list returned is the last page in the result set.
  core.String? nextPageToken;

  GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse({
    this.accountReports,
    this.nextPageToken,
  });

  GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse.fromJson(
      core.Map json_)
      : this(
          accountReports: json_.containsKey('accountReports')
              ? (json_['accountReports'] as core.List)
                  .map((value) =>
                      GoogleAdsHomeservicesLocalservicesV1AccountReport
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountReports != null) 'accountReports': accountReports!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A page of the response received from the SearchDetailedLeadReports method.
///
/// A paginated response where more pages are available has `next_page_token`
/// set. This token can be used in a subsequent request to retrieve the next
/// request page.
class GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse {
  /// List of detailed lead reports uniquely identified by external lead id.
  core.List<GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport>?
      detailedLeadReports;

  /// Pagination token to retrieve the next page of results.
  ///
  /// When `next_page_token` is not filled in, there is no next page and the
  /// list returned is the last page in the result set.
  core.String? nextPageToken;

  GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse({
    this.detailedLeadReports,
    this.nextPageToken,
  });

  GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse.fromJson(
      core.Map json_)
      : this(
          detailedLeadReports: json_.containsKey('detailedLeadReports')
              ? (json_['detailedLeadReports'] as core.List)
                  .map((value) =>
                      GoogleAdsHomeservicesLocalservicesV1DetailedLeadReport
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detailedLeadReports != null)
          'detailedLeadReports': detailedLeadReports!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
