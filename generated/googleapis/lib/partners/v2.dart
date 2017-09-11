// This is a generated file (see the discoveryapis_generator project).

library googleapis.partners.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client partners/v2';

/// Searches certified companies and creates contact leads with them, and also
/// audits the usage of clients.
class PartnersApi {
  final commons.ApiRequester _requester;

  AnalyticsResourceApi get analytics => new AnalyticsResourceApi(_requester);
  ClientMessagesResourceApi get clientMessages =>
      new ClientMessagesResourceApi(_requester);
  CompaniesResourceApi get companies => new CompaniesResourceApi(_requester);
  ExamsResourceApi get exams => new ExamsResourceApi(_requester);
  LeadsResourceApi get leads => new LeadsResourceApi(_requester);
  OffersResourceApi get offers => new OffersResourceApi(_requester);
  UserEventsResourceApi get userEvents => new UserEventsResourceApi(_requester);
  UserStatesResourceApi get userStates => new UserStatesResourceApi(_requester);
  UsersResourceApi get users => new UsersResourceApi(_requester);
  V2ResourceApi get v2 => new V2ResourceApi(_requester);

  PartnersApi(http.Client client,
      {core.String rootUrl: "https://partners.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AnalyticsResourceApi {
  final commons.ApiRequester _requester;

  AnalyticsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists analytics data for a user's associated company.
  /// Should only be called within the context of an authorized logged in user.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [pageToken] - A token identifying a page of results that the server
  /// returns.
  /// Typically, this is the value of `ListAnalyticsResponse.next_page_token`
  /// returned from the previous call to
  /// ListAnalytics.
  /// Will be a date string in `YYYY-MM-DD` format representing the end date
  /// of the date range of results to return.
  /// If unspecified or set to "", default value is the current date.
  ///
  /// [pageSize] - Requested page size. Server may return fewer analytics than
  /// requested.
  /// If unspecified or set to 0, default value is 30.
  /// Specifies the number of days in the date range when querying analytics.
  /// The `page_token` represents the end date of the date range
  /// and the start date is calculated using the `page_size` as the number
  /// of days BEFORE the end date.
  /// Must be a non-negative integer.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [ListAnalyticsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAnalyticsResponse> list(
      {core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String pageToken,
      core.int pageSize,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/analytics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAnalyticsResponse.fromJson(data));
  }
}

class ClientMessagesResourceApi {
  final commons.ApiRequester _requester;

  ClientMessagesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Logs a generic message from the client, such as
  /// `Failed to render component`, `Profile page is running slow`,
  /// `More than 500 users have accessed this result.`, etc.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [LogMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogMessageResponse> log(LogMessageRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2/clientMessages:log';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMessageResponse.fromJson(data));
  }
}

class CompaniesResourceApi {
  final commons.ApiRequester _requester;

  CompaniesLeadsResourceApi get leads =>
      new CompaniesLeadsResourceApi(_requester);

  CompaniesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets a company.
  ///
  /// Request parameters:
  ///
  /// [companyId] - The ID of the company to retrieve.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [currencyCode] - If the company's budget is in a different currency code
  /// than this one, then
  /// the converted budget is converted to this currency code.
  ///
  /// [orderBy] - How to order addresses within the returned company. Currently,
  /// only
  /// `address` and `address desc` is supported which will sorted by closest to
  /// farthest in distance from given address and farthest to closest distance
  /// from given address respectively.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [view] - The view of `Company` resource to be returned. This must not be
  /// `COMPANY_VIEW_UNSPECIFIED`.
  /// Possible string values are:
  /// - "COMPANY_VIEW_UNSPECIFIED" : A COMPANY_VIEW_UNSPECIFIED.
  /// - "CV_GOOGLE_PARTNER_SEARCH" : A CV_GOOGLE_PARTNER_SEARCH.
  ///
  /// [address] - The address to use for sorting the company's addresses by
  /// proximity.
  /// If not given, the geo-located address of the request is used.
  /// Used when order_by is set.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// Completes with a [GetCompanyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetCompanyResponse> get(core.String companyId,
      {core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String currencyCode,
      core.String orderBy,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String view,
      core.String address,
      core.String requestMetadata_locale}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (companyId == null) {
      throw new core.ArgumentError("Parameter companyId is required.");
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (currencyCode != null) {
      _queryParams["currencyCode"] = [currencyCode];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (address != null) {
      _queryParams["address"] = [address];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }

    _url = 'v2/companies/' + commons.Escaper.ecapeVariable('$companyId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetCompanyResponse.fromJson(data));
  }

  /// Lists companies.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [maxMonthlyBudget_units] - The whole units of the amount.
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [minMonthlyBudget_nanos] - Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999 inclusive.
  /// If `units` is positive, `nanos` must be positive or zero.
  /// If `units` is zero, `nanos` can be positive, zero, or negative.
  /// If `units` is negative, `nanos` must be negative or zero.
  /// For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [companyName] - Company name to search for.
  ///
  /// [pageToken] - A token identifying a page of results that the server
  /// returns.
  /// Typically, this is the value of `ListCompaniesResponse.next_page_token`
  /// returned from the previous call to
  /// ListCompanies.
  ///
  /// [industries] - List of industries the company can help with.
  ///
  /// [websiteUrl] - Website URL that will help to find a better matched
  /// company.
  /// .
  ///
  /// [gpsMotivations] - List of reasons for using Google Partner Search to get
  /// companies.
  ///
  /// [languageCodes] - List of language codes that company can support. Only
  /// primary language
  /// subtags are accepted as defined by
  /// <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
  /// (IETF BCP 47, "Tags for Identifying Languages").
  ///
  /// [pageSize] - Requested page size. Server may return fewer companies than
  /// requested.
  /// If unspecified, server picks an appropriate default.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [orderBy] - How to order addresses within the returned companies.
  /// Currently, only
  /// `address` and `address desc` is supported which will sorted by closest to
  /// farthest in distance from given address and farthest to closest distance
  /// from given address respectively.
  ///
  /// [specializations] - List of specializations that the returned agencies
  /// should provide. If this
  /// is not empty, any returned agency must have at least one of these
  /// specializations, or one of the services in the "services" field.
  ///
  /// [maxMonthlyBudget_currencyCode] - The 3-letter currency code defined in
  /// ISO 4217.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [minMonthlyBudget_currencyCode] - The 3-letter currency code defined in
  /// ISO 4217.
  ///
  /// [view] - The view of the `Company` resource to be returned. This must not
  /// be
  /// `COMPANY_VIEW_UNSPECIFIED`.
  /// Possible string values are:
  /// - "COMPANY_VIEW_UNSPECIFIED" : A COMPANY_VIEW_UNSPECIFIED.
  /// - "CV_GOOGLE_PARTNER_SEARCH" : A CV_GOOGLE_PARTNER_SEARCH.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [address] - The address to use when searching for companies.
  /// If not given, the geo-located address of the request is used.
  ///
  /// [minMonthlyBudget_units] - The whole units of the amount.
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  ///
  /// [maxMonthlyBudget_nanos] - Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999 inclusive.
  /// If `units` is positive, `nanos` must be positive or zero.
  /// If `units` is zero, `nanos` can be positive, zero, or negative.
  /// If `units` is negative, `nanos` must be negative or zero.
  /// For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  ///
  /// [services] - List of services that the returned agencies should provide.
  /// If this is
  /// not empty, any returned agency must have at least one of these services,
  /// or one of the specializations in the "specializations" field.
  ///
  /// Completes with a [ListCompaniesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCompaniesResponse> list(
      {core.String requestMetadata_trafficSource_trafficSourceId,
      core.String maxMonthlyBudget_units,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.int minMonthlyBudget_nanos,
      core.String requestMetadata_partnersSessionId,
      core.String companyName,
      core.String pageToken,
      core.List<core.String> industries,
      core.String websiteUrl,
      core.List<core.String> gpsMotivations,
      core.List<core.String> languageCodes,
      core.int pageSize,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String orderBy,
      core.List<core.String> specializations,
      core.String maxMonthlyBudget_currencyCode,
      core.String requestMetadata_userOverrides_userId,
      core.String minMonthlyBudget_currencyCode,
      core.String view,
      core.String requestMetadata_locale,
      core.String address,
      core.String minMonthlyBudget_units,
      core.int maxMonthlyBudget_nanos,
      core.List<core.String> services}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (maxMonthlyBudget_units != null) {
      _queryParams["maxMonthlyBudget.units"] = [maxMonthlyBudget_units];
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (minMonthlyBudget_nanos != null) {
      _queryParams["minMonthlyBudget.nanos"] = ["${minMonthlyBudget_nanos}"];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (companyName != null) {
      _queryParams["companyName"] = [companyName];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (industries != null) {
      _queryParams["industries"] = industries;
    }
    if (websiteUrl != null) {
      _queryParams["websiteUrl"] = [websiteUrl];
    }
    if (gpsMotivations != null) {
      _queryParams["gpsMotivations"] = gpsMotivations;
    }
    if (languageCodes != null) {
      _queryParams["languageCodes"] = languageCodes;
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (specializations != null) {
      _queryParams["specializations"] = specializations;
    }
    if (maxMonthlyBudget_currencyCode != null) {
      _queryParams["maxMonthlyBudget.currencyCode"] = [
        maxMonthlyBudget_currencyCode
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (minMonthlyBudget_currencyCode != null) {
      _queryParams["minMonthlyBudget.currencyCode"] = [
        minMonthlyBudget_currencyCode
      ];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (address != null) {
      _queryParams["address"] = [address];
    }
    if (minMonthlyBudget_units != null) {
      _queryParams["minMonthlyBudget.units"] = [minMonthlyBudget_units];
    }
    if (maxMonthlyBudget_nanos != null) {
      _queryParams["maxMonthlyBudget.nanos"] = ["${maxMonthlyBudget_nanos}"];
    }
    if (services != null) {
      _queryParams["services"] = services;
    }

    _url = 'v2/companies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCompaniesResponse.fromJson(data));
  }
}

class CompaniesLeadsResourceApi {
  final commons.ApiRequester _requester;

  CompaniesLeadsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an advertiser lead for the given company ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [companyId] - The ID of the company to contact.
  ///
  /// Completes with a [CreateLeadResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateLeadResponse> create(
      CreateLeadRequest request, core.String companyId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (companyId == null) {
      throw new core.ArgumentError("Parameter companyId is required.");
    }

    _url = 'v2/companies/' +
        commons.Escaper.ecapeVariable('$companyId') +
        '/leads';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CreateLeadResponse.fromJson(data));
  }
}

class ExamsResourceApi {
  final commons.ApiRequester _requester;

  ExamsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets an Exam Token for a Partner's user to take an exam in the Exams
  /// System
  ///
  /// Request parameters:
  ///
  /// [examType] - The exam type we are requesting a token for.
  /// Possible string values are:
  /// - "CERTIFICATION_EXAM_TYPE_UNSPECIFIED" : A
  /// CERTIFICATION_EXAM_TYPE_UNSPECIFIED.
  /// - "CET_ADWORDS_FUNDAMENTALS" : A CET_ADWORDS_FUNDAMENTALS.
  /// - "CET_ADWORDS_ADVANCED_SEARCH" : A CET_ADWORDS_ADVANCED_SEARCH.
  /// - "CET_ADWORDS_ADVANCED_DISPLAY" : A CET_ADWORDS_ADVANCED_DISPLAY.
  /// - "CET_VIDEO_ADS" : A CET_VIDEO_ADS.
  /// - "CET_DOUBLECLICK" : A CET_DOUBLECLICK.
  /// - "CET_ANALYTICS" : A CET_ANALYTICS.
  /// - "CET_SHOPPING" : A CET_SHOPPING.
  /// - "CET_MOBILE" : A CET_MOBILE.
  /// - "CET_DIGITAL_SALES" : A CET_DIGITAL_SALES.
  /// - "CET_MOBILE_SITES" : A CET_MOBILE_SITES.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// Completes with a [ExamToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExamToken> getToken(core.String examType,
      {core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (examType == null) {
      throw new core.ArgumentError("Parameter examType is required.");
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }

    _url = 'v2/exams/' + commons.Escaper.ecapeVariable('$examType') + '/token';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ExamToken.fromJson(data));
  }
}

class LeadsResourceApi {
  final commons.ApiRequester _requester;

  LeadsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists advertiser leads for a user's associated company.
  /// Should only be called within the context of an authorized logged in user.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A token identifying a page of results that the server
  /// returns.
  /// Typically, this is the value of `ListLeadsResponse.next_page_token`
  /// returned from the previous call to
  /// ListLeads.
  ///
  /// [pageSize] - Requested page size. Server may return fewer leads than
  /// requested.
  /// If unspecified, server picks an appropriate default.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [orderBy] - How to order Leads. Currently, only `create_time`
  /// and `create_time desc` are supported
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// Completes with a [ListLeadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLeadsResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String orderBy,
      core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_userOverrides_userId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }

    _url = 'v2/leads';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLeadsResponse.fromJson(data));
  }
}

class OffersResourceApi {
  final commons.ApiRequester _requester;

  OffersHistoryResourceApi get history =>
      new OffersHistoryResourceApi(_requester);

  OffersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists the Offers available for the current user
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// Completes with a [ListOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOffersResponse> list(
      {core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }

    _url = 'v2/offers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOffersResponse.fromJson(data));
  }
}

class OffersHistoryResourceApi {
  final commons.ApiRequester _requester;

  OffersHistoryResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists the Historical Offers for the current user (or user's entire
  /// company)
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [pageToken] - Token to retrieve a specific page.
  ///
  /// [pageSize] - Maximum number of rows to return per page.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [entireCompany] - if true, show history for the entire company.  Requires
  /// user to be admin.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [orderBy] - Comma-separated list of fields to order by, e.g.:
  /// "foo,bar,baz".
  /// Use "foo desc" to sort descending.
  /// List of valid field names is: name, offer_code, expiration_time, status,
  ///     last_modified_time, sender_name, creation_time, country_code,
  ///     offer_type.
  ///
  /// Completes with a [ListOffersHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOffersHistoryResponse> list(
      {core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String pageToken,
      core.int pageSize,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.bool entireCompany,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String orderBy}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (entireCompany != null) {
      _queryParams["entireCompany"] = ["${entireCompany}"];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }

    _url = 'v2/offers/history';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListOffersHistoryResponse.fromJson(data));
  }
}

class UserEventsResourceApi {
  final commons.ApiRequester _requester;

  UserEventsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Logs a user event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// Completes with a [LogUserEventResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LogUserEventResponse> log(LogUserEventRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2/userEvents:log';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new LogUserEventResponse.fromJson(data));
  }
}

class UserStatesResourceApi {
  final commons.ApiRequester _requester;

  UserStatesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists states for current user.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [ListUserStatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserStatesResponse> list(
      {core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/userStates';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListUserStatesResponse.fromJson(data));
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a user's company relation. Affiliates the user to a company.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userId] - The ID of the user. Can be set to <code>me</code> to mean
  /// the currently authenticated user.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// Completes with a [CompanyRelation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompanyRelation> createCompanyRelation(
      CompanyRelation request, core.String userId,
      {core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }

    _url = 'v2/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/companyRelation';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CompanyRelation.fromJson(data));
  }

  /// Deletes a user's company relation. Unaffiliaites the user from a company.
  ///
  /// Request parameters:
  ///
  /// [userId] - The ID of the user. Can be set to <code>me</code> to mean
  /// the currently authenticated user.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> deleteCompanyRelation(core.String userId,
      {core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/users/' +
        commons.Escaper.ecapeVariable('$userId') +
        '/companyRelation';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a user.
  ///
  /// Request parameters:
  ///
  /// [userId] - Identifier of the user. Can be set to <code>me</code> to mean
  /// the currently
  /// authenticated user.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [userView] - Specifies what parts of the user information to return.
  /// Possible string values are:
  /// - "BASIC" : A BASIC.
  /// - "PROFILE" : A PROFILE.
  /// - "PUBLIC_PROFILE" : A PUBLIC_PROFILE.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(core.String userId,
      {core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String userView,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (userView != null) {
      _queryParams["userView"] = [userView];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/users/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Updates a user's profile. A user can only update their own profile and
  /// should only be called within the context of a logged in user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [UserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserProfile> updateProfile(UserProfile request,
      {core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/users/profile';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserProfile.fromJson(data));
  }
}

class V2ResourceApi {
  final commons.ApiRequester _requester;

  V2ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets Partners Status of the logged in user's agency.
  /// Should only be called if the logged in user is the admin of the agency.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [GetPartnersStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetPartnersStatusResponse> getPartnersstatus(
      {core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/partnersstatus';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GetPartnersStatusResponse.fromJson(data));
  }

  /// Update company.
  /// Should only be called within the context of an authorized logged in user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  /// Required with at least 1 value in FieldMask's paths.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> updateCompanies(Company request,
      {core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v2/companies';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Company.fromJson(data));
  }

  /// Updates the specified lead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [requestMetadata_partnersSessionId] - Google Partners session ID.
  ///
  /// [requestMetadata_userOverrides_userId] - Logged-in user ID to impersonate
  /// instead of the user's ID.
  ///
  /// [requestMetadata_trafficSource_trafficSourceId] - Identifier to indicate
  /// where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// [requestMetadata_locale] - Locale to use for the current request.
  ///
  /// [requestMetadata_userOverrides_ipAddress] - IP address to use instead of
  /// the user's geo-located IP address.
  ///
  /// [updateMask] - Standard field mask for the set of fields to be updated.
  /// Required with at least 1 value in FieldMask's paths.
  /// Only `state` and `adwords_customer_id` are currently supported.
  ///
  /// [requestMetadata_experimentIds] - Experiment IDs the current request
  /// belongs to.
  ///
  /// [requestMetadata_trafficSource_trafficSubId] - Second level identifier to
  /// indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  ///
  /// Completes with a [Lead].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lead> updateLeads(Lead request,
      {core.String requestMetadata_partnersSessionId,
      core.String requestMetadata_userOverrides_userId,
      core.String requestMetadata_trafficSource_trafficSourceId,
      core.String requestMetadata_locale,
      core.String requestMetadata_userOverrides_ipAddress,
      core.String updateMask,
      core.List<core.String> requestMetadata_experimentIds,
      core.String requestMetadata_trafficSource_trafficSubId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (requestMetadata_partnersSessionId != null) {
      _queryParams["requestMetadata.partnersSessionId"] = [
        requestMetadata_partnersSessionId
      ];
    }
    if (requestMetadata_userOverrides_userId != null) {
      _queryParams["requestMetadata.userOverrides.userId"] = [
        requestMetadata_userOverrides_userId
      ];
    }
    if (requestMetadata_trafficSource_trafficSourceId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSourceId"] = [
        requestMetadata_trafficSource_trafficSourceId
      ];
    }
    if (requestMetadata_locale != null) {
      _queryParams["requestMetadata.locale"] = [requestMetadata_locale];
    }
    if (requestMetadata_userOverrides_ipAddress != null) {
      _queryParams["requestMetadata.userOverrides.ipAddress"] = [
        requestMetadata_userOverrides_ipAddress
      ];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if (requestMetadata_experimentIds != null) {
      _queryParams["requestMetadata.experimentIds"] =
          requestMetadata_experimentIds;
    }
    if (requestMetadata_trafficSource_trafficSubId != null) {
      _queryParams["requestMetadata.trafficSource.trafficSubId"] = [
        requestMetadata_trafficSource_trafficSubId
      ];
    }

    _url = 'v2/leads';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Lead.fromJson(data));
  }
}

/// Information about a particular AdWords Manager Account.
/// Read more at https://support.google.com/adwords/answer/6139186
class AdWordsManagerAccountInfo {
  /// Name of the customer this account represents.
  core.String customerName;

  /// The AdWords Manager Account id.
  core.String id;

  AdWordsManagerAccountInfo();

  AdWordsManagerAccountInfo.fromJson(core.Map _json) {
    if (_json.containsKey("customerName")) {
      customerName = _json["customerName"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customerName != null) {
      _json["customerName"] = customerName;
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

/// Analytics data for a `Company` within a single day.
class Analytics {
  /// Instances of users contacting the `Company`
  /// on the specified date.
  AnalyticsDataPoint contacts;

  /// Date on which these events occurred.
  Date eventDate;

  /// Instances of users viewing the `Company` profile
  /// on the specified date.
  AnalyticsDataPoint profileViews;

  /// Instances of users seeing the `Company` in Google Partners Search results
  /// on the specified date.
  AnalyticsDataPoint searchViews;

  Analytics();

  Analytics.fromJson(core.Map _json) {
    if (_json.containsKey("contacts")) {
      contacts = new AnalyticsDataPoint.fromJson(_json["contacts"]);
    }
    if (_json.containsKey("eventDate")) {
      eventDate = new Date.fromJson(_json["eventDate"]);
    }
    if (_json.containsKey("profileViews")) {
      profileViews = new AnalyticsDataPoint.fromJson(_json["profileViews"]);
    }
    if (_json.containsKey("searchViews")) {
      searchViews = new AnalyticsDataPoint.fromJson(_json["searchViews"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contacts != null) {
      _json["contacts"] = (contacts).toJson();
    }
    if (eventDate != null) {
      _json["eventDate"] = (eventDate).toJson();
    }
    if (profileViews != null) {
      _json["profileViews"] = (profileViews).toJson();
    }
    if (searchViews != null) {
      _json["searchViews"] = (searchViews).toJson();
    }
    return _json;
  }
}

/// Details of the analytics events for a `Company` within a single day.
class AnalyticsDataPoint {
  /// Number of times the type of event occurred.
  /// Meaning depends on context (e.g. profile views, contacts, etc.).
  core.int eventCount;

  /// Location information of where these events occurred.
  core.List<LatLng> eventLocations;

  AnalyticsDataPoint();

  AnalyticsDataPoint.fromJson(core.Map _json) {
    if (_json.containsKey("eventCount")) {
      eventCount = _json["eventCount"];
    }
    if (_json.containsKey("eventLocations")) {
      eventLocations = _json["eventLocations"]
          .map((value) => new LatLng.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (eventCount != null) {
      _json["eventCount"] = eventCount;
    }
    if (eventLocations != null) {
      _json["eventLocations"] =
          eventLocations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Analytics aggregated data for a `Company` for a given date range.
class AnalyticsSummary {
  /// Aggregated number of times users contacted the `Company`
  /// for given date range.
  core.int contactsCount;

  /// Aggregated number of profile views for the `Company` for given date range.
  core.int profileViewsCount;

  /// Aggregated number of times users saw the `Company`
  /// in Google Partners Search results for given date range.
  core.int searchViewsCount;

  AnalyticsSummary();

  AnalyticsSummary.fromJson(core.Map _json) {
    if (_json.containsKey("contactsCount")) {
      contactsCount = _json["contactsCount"];
    }
    if (_json.containsKey("profileViewsCount")) {
      profileViewsCount = _json["profileViewsCount"];
    }
    if (_json.containsKey("searchViewsCount")) {
      searchViewsCount = _json["searchViewsCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contactsCount != null) {
      _json["contactsCount"] = contactsCount;
    }
    if (profileViewsCount != null) {
      _json["profileViewsCount"] = profileViewsCount;
    }
    if (searchViewsCount != null) {
      _json["searchViewsCount"] = searchViewsCount;
    }
    return _json;
  }
}

/// Available Offers to be distributed.
class AvailableOffer {
  /// The number of codes for this offer that are available for distribution.
  core.int available;

  /// Offer info by country.
  core.List<CountryOfferInfo> countryOfferInfos;

  /// Description of the offer.
  core.String description;

  /// ID of this offer.
  core.String id;

  /// The maximum age of an account [in days] to be eligible.
  core.int maxAccountAge;

  /// Name of the offer.
  core.String name;

  /// Level of this offer.
  /// Possible string values are:
  /// - "OFFER_LEVEL_UNSPECIFIED" : Unset.
  /// - "OFFER_LEVEL_DENY_PROBLEM" : Users/Agencies that have no offers because
  /// of a problem.
  /// - "OFFER_LEVEL_DENY_CONTRACT" : Users/Agencies that have no offers due to
  /// contractural agreements.
  /// - "OFFER_LEVEL_MANUAL" : Users/Agencies that have a manually-configured
  /// limit.
  /// - "OFFER_LEVEL_LIMIT_0" : Some Agencies don't get any offers.
  /// - "OFFER_LEVEL_LIMIT_5" : Basic level gets 5 per month.
  /// - "OFFER_LEVEL_LIMIT_15" : Agencies with adequate AHI and spend get
  /// 15/month.
  /// - "OFFER_LEVEL_LIMIT_50" : Badged partners (even in grace) get 50 per
  /// month.
  core.String offerLevel;

  /// Type of offer.
  /// Possible string values are:
  /// - "OFFER_TYPE_UNSPECIFIED" : Unset.
  /// - "OFFER_TYPE_SPEND_X_GET_Y" : AdWords spend X get Y.
  /// - "OFFER_TYPE_VIDEO" : Youtube video.
  /// - "OFFER_TYPE_SPEND_MATCH" : Spend Match up to Y.
  core.String offerType;

  /// Customers who qualify for this offer.
  core.List<OfferCustomer> qualifiedCustomer;

  /// Whether or not the list of qualified customers is definitely complete.
  core.bool qualifiedCustomersComplete;

  /// Should special text be shown on the offers page.
  core.bool showSpecialOfferCopy;

  /// Terms of the offer.
  core.String terms;

  AvailableOffer();

  AvailableOffer.fromJson(core.Map _json) {
    if (_json.containsKey("available")) {
      available = _json["available"];
    }
    if (_json.containsKey("countryOfferInfos")) {
      countryOfferInfos = _json["countryOfferInfos"]
          .map((value) => new CountryOfferInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("maxAccountAge")) {
      maxAccountAge = _json["maxAccountAge"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("offerLevel")) {
      offerLevel = _json["offerLevel"];
    }
    if (_json.containsKey("offerType")) {
      offerType = _json["offerType"];
    }
    if (_json.containsKey("qualifiedCustomer")) {
      qualifiedCustomer = _json["qualifiedCustomer"]
          .map((value) => new OfferCustomer.fromJson(value))
          .toList();
    }
    if (_json.containsKey("qualifiedCustomersComplete")) {
      qualifiedCustomersComplete = _json["qualifiedCustomersComplete"];
    }
    if (_json.containsKey("showSpecialOfferCopy")) {
      showSpecialOfferCopy = _json["showSpecialOfferCopy"];
    }
    if (_json.containsKey("terms")) {
      terms = _json["terms"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (available != null) {
      _json["available"] = available;
    }
    if (countryOfferInfos != null) {
      _json["countryOfferInfos"] =
          countryOfferInfos.map((value) => (value).toJson()).toList();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (maxAccountAge != null) {
      _json["maxAccountAge"] = maxAccountAge;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (offerLevel != null) {
      _json["offerLevel"] = offerLevel;
    }
    if (offerType != null) {
      _json["offerType"] = offerType;
    }
    if (qualifiedCustomer != null) {
      _json["qualifiedCustomer"] =
          qualifiedCustomer.map((value) => (value).toJson()).toList();
    }
    if (qualifiedCustomersComplete != null) {
      _json["qualifiedCustomersComplete"] = qualifiedCustomersComplete;
    }
    if (showSpecialOfferCopy != null) {
      _json["showSpecialOfferCopy"] = showSpecialOfferCopy;
    }
    if (terms != null) {
      _json["terms"] = terms;
    }
    return _json;
  }
}

/// A user's information on a specific certification.
class Certification {
  /// Whether this certification has been achieved.
  core.bool achieved;

  /// The type of certification, the area of expertise.
  /// Possible string values are:
  /// - "CERTIFICATION_TYPE_UNSPECIFIED" : Unchosen.
  /// - "CT_ADWORDS" : AdWords certified.
  /// - "CT_YOUTUBE" : YouTube certified.
  /// - "CT_VIDEOADS" : VideoAds certified.
  /// - "CT_ANALYTICS" : Analytics certified.
  /// - "CT_DOUBLECLICK" : DoubleClick certified.
  /// - "CT_SHOPPING" : Shopping certified.
  /// - "CT_MOBILE" : Mobile certified.
  /// - "CT_DIGITAL_SALES" : Digital sales certified.
  /// - "CT_ADWORDS_SEARCH" : AdWords Search certified.
  /// - "CT_ADWORDS_DISPLAY" : AdWords Display certified.
  /// - "CT_MOBILE_SITES" : Mobile Sites certified.
  core.String certificationType;

  /// Date this certification is due to expire.
  core.String expiration;

  /// The date the user last achieved certification.
  core.String lastAchieved;

  /// Whether this certification is in the state of warning.
  core.bool warning;

  Certification();

  Certification.fromJson(core.Map _json) {
    if (_json.containsKey("achieved")) {
      achieved = _json["achieved"];
    }
    if (_json.containsKey("certificationType")) {
      certificationType = _json["certificationType"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("lastAchieved")) {
      lastAchieved = _json["lastAchieved"];
    }
    if (_json.containsKey("warning")) {
      warning = _json["warning"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (achieved != null) {
      _json["achieved"] = achieved;
    }
    if (certificationType != null) {
      _json["certificationType"] = certificationType;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (lastAchieved != null) {
      _json["lastAchieved"] = lastAchieved;
    }
    if (warning != null) {
      _json["warning"] = warning;
    }
    return _json;
  }
}

/// Status for a Google Partners certification exam.
class CertificationExamStatus {
  /// The number of people who have passed the certification exam.
  core.int numberUsersPass;

  /// The type of certification exam.
  /// Possible string values are:
  /// - "CERTIFICATION_EXAM_TYPE_UNSPECIFIED" : Unchosen.
  /// - "CET_ADWORDS_FUNDAMENTALS" : Adwords Fundamentals exam.
  /// - "CET_ADWORDS_ADVANCED_SEARCH" : AdWords advanced search exam.
  /// - "CET_ADWORDS_ADVANCED_DISPLAY" : AdWords advanced display exam.
  /// - "CET_VIDEO_ADS" : VideoAds exam.
  /// - "CET_DOUBLECLICK" : DoubleClick exam.
  /// - "CET_ANALYTICS" : Analytics exam.
  /// - "CET_SHOPPING" : Shopping exam.
  /// - "CET_MOBILE" : Mobile exam.
  /// - "CET_DIGITAL_SALES" : Digital Sales exam.
  /// - "CET_MOBILE_SITES" : Mobile Sites exam.
  core.String type;

  CertificationExamStatus();

  CertificationExamStatus.fromJson(core.Map _json) {
    if (_json.containsKey("numberUsersPass")) {
      numberUsersPass = _json["numberUsersPass"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (numberUsersPass != null) {
      _json["numberUsersPass"] = numberUsersPass;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Google Partners certification status.
class CertificationStatus {
  /// List of certification exam statuses.
  core.List<CertificationExamStatus> examStatuses;

  /// Whether certification is passing.
  core.bool isCertified;

  /// The type of the certification.
  /// Possible string values are:
  /// - "CERTIFICATION_TYPE_UNSPECIFIED" : Unchosen.
  /// - "CT_ADWORDS" : AdWords certified.
  /// - "CT_YOUTUBE" : YouTube certified.
  /// - "CT_VIDEOADS" : VideoAds certified.
  /// - "CT_ANALYTICS" : Analytics certified.
  /// - "CT_DOUBLECLICK" : DoubleClick certified.
  /// - "CT_SHOPPING" : Shopping certified.
  /// - "CT_MOBILE" : Mobile certified.
  /// - "CT_DIGITAL_SALES" : Digital sales certified.
  /// - "CT_ADWORDS_SEARCH" : AdWords Search certified.
  /// - "CT_ADWORDS_DISPLAY" : AdWords Display certified.
  /// - "CT_MOBILE_SITES" : Mobile Sites certified.
  core.String type;

  /// Number of people who are certified,
  core.int userCount;

  CertificationStatus();

  CertificationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("examStatuses")) {
      examStatuses = _json["examStatuses"]
          .map((value) => new CertificationExamStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("isCertified")) {
      isCertified = _json["isCertified"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("userCount")) {
      userCount = _json["userCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (examStatuses != null) {
      _json["examStatuses"] =
          examStatuses.map((value) => (value).toJson()).toList();
    }
    if (isCertified != null) {
      _json["isCertified"] = isCertified;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (userCount != null) {
      _json["userCount"] = userCount;
    }
    return _json;
  }
}

/// A company resource in the Google Partners API. Once certified, it qualifies
/// for being searched by advertisers.
class Company {
  /// URL of the company's additional websites used to verify the dynamic
  /// badges.
  /// These are stored as full URLs as entered by the user, but only the TLD
  /// will
  /// be used for the actual verification.
  core.List<core.String> additionalWebsites;

  /// Email domains that allow users with a matching email address to get
  /// auto-approved for associating with this company.
  core.List<core.String> autoApprovalEmailDomains;

  /// Partner badge tier
  /// Possible string values are:
  /// - "BADGE_TIER_NONE" : Tier badge is not set.
  /// - "BADGE_TIER_REGULAR" : Agency has regular partner badge.
  /// - "BADGE_TIER_PREMIER" : Agency has premier badge.
  core.String badgeTier;

  /// The list of Google Partners certification statuses for the company.
  core.List<CertificationStatus> certificationStatuses;

  /// Company type labels listed on the company's profile.
  core.List<core.String> companyTypes;

  /// The minimum monthly budget that the company accepts for partner business,
  /// converted to the requested currency code.
  Money convertedMinMonthlyBudget;

  /// The ID of the company.
  core.String id;

  /// Industries the company can help with.
  core.List<core.String> industries;

  /// The list of localized info for the company.
  core.List<LocalizedCompanyInfo> localizedInfos;

  /// The list of all company locations.
  /// If set, must include the
  /// primary_location
  /// in the list.
  core.List<Location> locations;

  /// The name of the company.
  core.String name;

  /// The unconverted minimum monthly budget that the company accepts for
  /// partner
  /// business.
  Money originalMinMonthlyBudget;

  /// The Primary AdWords Manager Account id.
  core.String primaryAdwordsManagerAccountId;

  /// The primary language code of the company, as defined by
  /// <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
  /// (IETF BCP 47, "Tags for Identifying Languages").
  core.String primaryLanguageCode;

  /// The primary location of the company.
  Location primaryLocation;

  /// The public viewability status of the company's profile.
  /// Possible string values are:
  /// - "COMPANY_PROFILE_STATUS_UNSPECIFIED" : Unchosen.
  /// - "HIDDEN" : Company profile does not show up publicly.
  /// - "PUBLISHED" : Company profile can only be viewed by the profile's URL
  /// and not by Google Partner Search.
  /// - "SEARCHABLE" : Company profile can be viewed by the profile's URL
  /// and by Google Partner Search.
  core.String profileStatus;

  /// Basic information from the company's public profile.
  PublicProfile publicProfile;

  /// Information related to the ranking of the company within the list of
  /// companies.
  core.List<Rank> ranks;

  /// Services the company can help with.
  core.List<core.String> services;

  /// The list of Google Partners specialization statuses for the company.
  core.List<SpecializationStatus> specializationStatus;

  /// URL of the company's website.
  core.String websiteUrl;

  Company();

  Company.fromJson(core.Map _json) {
    if (_json.containsKey("additionalWebsites")) {
      additionalWebsites = _json["additionalWebsites"];
    }
    if (_json.containsKey("autoApprovalEmailDomains")) {
      autoApprovalEmailDomains = _json["autoApprovalEmailDomains"];
    }
    if (_json.containsKey("badgeTier")) {
      badgeTier = _json["badgeTier"];
    }
    if (_json.containsKey("certificationStatuses")) {
      certificationStatuses = _json["certificationStatuses"]
          .map((value) => new CertificationStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("companyTypes")) {
      companyTypes = _json["companyTypes"];
    }
    if (_json.containsKey("convertedMinMonthlyBudget")) {
      convertedMinMonthlyBudget =
          new Money.fromJson(_json["convertedMinMonthlyBudget"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("industries")) {
      industries = _json["industries"];
    }
    if (_json.containsKey("localizedInfos")) {
      localizedInfos = _json["localizedInfos"]
          .map((value) => new LocalizedCompanyInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("locations")) {
      locations = _json["locations"]
          .map((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("originalMinMonthlyBudget")) {
      originalMinMonthlyBudget =
          new Money.fromJson(_json["originalMinMonthlyBudget"]);
    }
    if (_json.containsKey("primaryAdwordsManagerAccountId")) {
      primaryAdwordsManagerAccountId = _json["primaryAdwordsManagerAccountId"];
    }
    if (_json.containsKey("primaryLanguageCode")) {
      primaryLanguageCode = _json["primaryLanguageCode"];
    }
    if (_json.containsKey("primaryLocation")) {
      primaryLocation = new Location.fromJson(_json["primaryLocation"]);
    }
    if (_json.containsKey("profileStatus")) {
      profileStatus = _json["profileStatus"];
    }
    if (_json.containsKey("publicProfile")) {
      publicProfile = new PublicProfile.fromJson(_json["publicProfile"]);
    }
    if (_json.containsKey("ranks")) {
      ranks = _json["ranks"].map((value) => new Rank.fromJson(value)).toList();
    }
    if (_json.containsKey("services")) {
      services = _json["services"];
    }
    if (_json.containsKey("specializationStatus")) {
      specializationStatus = _json["specializationStatus"]
          .map((value) => new SpecializationStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("websiteUrl")) {
      websiteUrl = _json["websiteUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (additionalWebsites != null) {
      _json["additionalWebsites"] = additionalWebsites;
    }
    if (autoApprovalEmailDomains != null) {
      _json["autoApprovalEmailDomains"] = autoApprovalEmailDomains;
    }
    if (badgeTier != null) {
      _json["badgeTier"] = badgeTier;
    }
    if (certificationStatuses != null) {
      _json["certificationStatuses"] =
          certificationStatuses.map((value) => (value).toJson()).toList();
    }
    if (companyTypes != null) {
      _json["companyTypes"] = companyTypes;
    }
    if (convertedMinMonthlyBudget != null) {
      _json["convertedMinMonthlyBudget"] = (convertedMinMonthlyBudget).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (industries != null) {
      _json["industries"] = industries;
    }
    if (localizedInfos != null) {
      _json["localizedInfos"] =
          localizedInfos.map((value) => (value).toJson()).toList();
    }
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (originalMinMonthlyBudget != null) {
      _json["originalMinMonthlyBudget"] = (originalMinMonthlyBudget).toJson();
    }
    if (primaryAdwordsManagerAccountId != null) {
      _json["primaryAdwordsManagerAccountId"] = primaryAdwordsManagerAccountId;
    }
    if (primaryLanguageCode != null) {
      _json["primaryLanguageCode"] = primaryLanguageCode;
    }
    if (primaryLocation != null) {
      _json["primaryLocation"] = (primaryLocation).toJson();
    }
    if (profileStatus != null) {
      _json["profileStatus"] = profileStatus;
    }
    if (publicProfile != null) {
      _json["publicProfile"] = (publicProfile).toJson();
    }
    if (ranks != null) {
      _json["ranks"] = ranks.map((value) => (value).toJson()).toList();
    }
    if (services != null) {
      _json["services"] = services;
    }
    if (specializationStatus != null) {
      _json["specializationStatus"] =
          specializationStatus.map((value) => (value).toJson()).toList();
    }
    if (websiteUrl != null) {
      _json["websiteUrl"] = websiteUrl;
    }
    return _json;
  }
}

/// A CompanyRelation resource representing information about a user's
/// affiliation and standing with a company in Partners.
class CompanyRelation {
  /// The primary address for this company.
  core.String address;

  /// Whether the company is a Partner.
  /// Possible string values are:
  /// - "BADGE_TIER_NONE" : Tier badge is not set.
  /// - "BADGE_TIER_REGULAR" : Agency has regular partner badge.
  /// - "BADGE_TIER_PREMIER" : Agency has premier badge.
  core.String badgeTier;

  /// Indicates if the user is an admin for this company.
  core.bool companyAdmin;

  /// The ID of the company. There may be no id if this is a
  /// pending company.5
  core.String companyId;

  /// The timestamp of when affiliation was requested.
  /// @OutputOnly
  core.String creationTime;

  /// The internal company ID.
  /// Only available for a whitelisted set of api clients.
  core.String internalCompanyId;

  /// The flag that indicates if the company is pending verification.
  core.bool isPending;

  /// A URL to a profile photo, e.g. a G+ profile photo.
  core.String logoUrl;

  /// The AdWords manager account # associated this company.
  core.String managerAccount;

  /// The name (in the company's primary language) for the company.
  core.String name;

  /// The phone number for the company's primary address.
  core.String phoneNumber;

  /// The primary location of the company.
  Location primaryAddress;

  /// The primary country code of the company.
  core.String primaryCountryCode;

  /// The primary language code of the company.
  core.String primaryLanguageCode;

  /// The timestamp when the user was approved.
  /// @OutputOnly
  core.String resolvedTimestamp;

  /// The segment the company is classified as.
  core.List<core.String> segment;

  /// The list of Google Partners specialization statuses for the company.
  core.List<SpecializationStatus> specializationStatus;

  /// The state of relationship, in terms of approvals.
  /// Possible string values are:
  /// - "USER_COMPANY_REATION_STATE_NONE_SPECIFIED" : Default unspecified value.
  /// - "USER_COMPANY_RELATION_STATE_AWAIT_EMAIL" : User has filled in a request
  /// to be associated with an company.
  /// Now waiting email confirmation.
  /// - "USER_COMPANY_RELATION_STATE_AWAIT_ADMIN" : Pending approval from
  /// company.
  /// Email confirmation will not approve this one.
  /// - "USER_COMPANY_RELATION_STATE_APPROVED" : Approved by company.
  core.String state;

  /// The website URL for this company.
  core.String website;

  CompanyRelation();

  CompanyRelation.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("badgeTier")) {
      badgeTier = _json["badgeTier"];
    }
    if (_json.containsKey("companyAdmin")) {
      companyAdmin = _json["companyAdmin"];
    }
    if (_json.containsKey("companyId")) {
      companyId = _json["companyId"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("internalCompanyId")) {
      internalCompanyId = _json["internalCompanyId"];
    }
    if (_json.containsKey("isPending")) {
      isPending = _json["isPending"];
    }
    if (_json.containsKey("logoUrl")) {
      logoUrl = _json["logoUrl"];
    }
    if (_json.containsKey("managerAccount")) {
      managerAccount = _json["managerAccount"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("primaryAddress")) {
      primaryAddress = new Location.fromJson(_json["primaryAddress"]);
    }
    if (_json.containsKey("primaryCountryCode")) {
      primaryCountryCode = _json["primaryCountryCode"];
    }
    if (_json.containsKey("primaryLanguageCode")) {
      primaryLanguageCode = _json["primaryLanguageCode"];
    }
    if (_json.containsKey("resolvedTimestamp")) {
      resolvedTimestamp = _json["resolvedTimestamp"];
    }
    if (_json.containsKey("segment")) {
      segment = _json["segment"];
    }
    if (_json.containsKey("specializationStatus")) {
      specializationStatus = _json["specializationStatus"]
          .map((value) => new SpecializationStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("website")) {
      website = _json["website"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (badgeTier != null) {
      _json["badgeTier"] = badgeTier;
    }
    if (companyAdmin != null) {
      _json["companyAdmin"] = companyAdmin;
    }
    if (companyId != null) {
      _json["companyId"] = companyId;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (internalCompanyId != null) {
      _json["internalCompanyId"] = internalCompanyId;
    }
    if (isPending != null) {
      _json["isPending"] = isPending;
    }
    if (logoUrl != null) {
      _json["logoUrl"] = logoUrl;
    }
    if (managerAccount != null) {
      _json["managerAccount"] = managerAccount;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (primaryAddress != null) {
      _json["primaryAddress"] = (primaryAddress).toJson();
    }
    if (primaryCountryCode != null) {
      _json["primaryCountryCode"] = primaryCountryCode;
    }
    if (primaryLanguageCode != null) {
      _json["primaryLanguageCode"] = primaryLanguageCode;
    }
    if (resolvedTimestamp != null) {
      _json["resolvedTimestamp"] = resolvedTimestamp;
    }
    if (segment != null) {
      _json["segment"] = segment;
    }
    if (specializationStatus != null) {
      _json["specializationStatus"] =
          specializationStatus.map((value) => (value).toJson()).toList();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (website != null) {
      _json["website"] = website;
    }
    return _json;
  }
}

/// Offer info by country.
class CountryOfferInfo {
  /// (localized) Get Y amount for that country's offer.
  core.String getYAmount;

  /// Country code for which offer codes may be requested.
  core.String offerCountryCode;

  /// Type of offer country is eligible for.
  /// Possible string values are:
  /// - "OFFER_TYPE_UNSPECIFIED" : Unset.
  /// - "OFFER_TYPE_SPEND_X_GET_Y" : AdWords spend X get Y.
  /// - "OFFER_TYPE_VIDEO" : Youtube video.
  /// - "OFFER_TYPE_SPEND_MATCH" : Spend Match up to Y.
  core.String offerType;

  /// (localized) Spend X amount for that country's offer.
  core.String spendXAmount;

  CountryOfferInfo();

  CountryOfferInfo.fromJson(core.Map _json) {
    if (_json.containsKey("getYAmount")) {
      getYAmount = _json["getYAmount"];
    }
    if (_json.containsKey("offerCountryCode")) {
      offerCountryCode = _json["offerCountryCode"];
    }
    if (_json.containsKey("offerType")) {
      offerType = _json["offerType"];
    }
    if (_json.containsKey("spendXAmount")) {
      spendXAmount = _json["spendXAmount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (getYAmount != null) {
      _json["getYAmount"] = getYAmount;
    }
    if (offerCountryCode != null) {
      _json["offerCountryCode"] = offerCountryCode;
    }
    if (offerType != null) {
      _json["offerType"] = offerType;
    }
    if (spendXAmount != null) {
      _json["spendXAmount"] = spendXAmount;
    }
    return _json;
  }
}

/// Request message for CreateLead.
class CreateLeadRequest {
  /// The lead resource. The `LeadType` must not be `LEAD_TYPE_UNSPECIFIED`
  /// and either `email` or `phone_number` must be provided.
  Lead lead;

  /// <a href="https://www.google.com/recaptcha/">reCaptcha</a> challenge info.
  RecaptchaChallenge recaptchaChallenge;

  /// Current request metadata.
  RequestMetadata requestMetadata;

  CreateLeadRequest();

  CreateLeadRequest.fromJson(core.Map _json) {
    if (_json.containsKey("lead")) {
      lead = new Lead.fromJson(_json["lead"]);
    }
    if (_json.containsKey("recaptchaChallenge")) {
      recaptchaChallenge =
          new RecaptchaChallenge.fromJson(_json["recaptchaChallenge"]);
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (lead != null) {
      _json["lead"] = (lead).toJson();
    }
    if (recaptchaChallenge != null) {
      _json["recaptchaChallenge"] = (recaptchaChallenge).toJson();
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    return _json;
  }
}

/// Response message for CreateLead.
class CreateLeadResponse {
  /// Lead that was created depending on the outcome of
  /// <a href="https://www.google.com/recaptcha/">reCaptcha</a> validation.
  Lead lead;

  /// The outcome of <a href="https://www.google.com/recaptcha/">reCaptcha</a>
  /// validation.
  /// Possible string values are:
  /// - "RECAPTCHA_STATUS_UNSPECIFIED" : Unchosen.
  /// - "RS_NOT_NEEDED" : No reCaptcha validation needed.
  /// - "RS_PASSED" : reCaptcha challenge passed.
  /// - "RS_FAILED" : reCaptcha challenge failed.
  core.String recaptchaStatus;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  CreateLeadResponse();

  CreateLeadResponse.fromJson(core.Map _json) {
    if (_json.containsKey("lead")) {
      lead = new Lead.fromJson(_json["lead"]);
    }
    if (_json.containsKey("recaptchaStatus")) {
      recaptchaStatus = _json["recaptchaStatus"];
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (lead != null) {
      _json["lead"] = (lead).toJson();
    }
    if (recaptchaStatus != null) {
      _json["recaptchaStatus"] = recaptchaStatus;
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Represents a whole calendar date, e.g. date of birth. The time of day and
/// time zone are either specified elsewhere or are not significant. The date
/// is relative to the Proleptic Gregorian Calendar. The day may be 0 to
/// represent a year and month where the day is not significant, e.g. credit
/// card
/// expiration date. The year may be 0 to represent a month and day independent
/// of year, e.g. anniversary date. Related types are google.type.TimeOfDay
/// and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year/month where the day is not significant.
  core.int day;

  /// Month of year. Must be from 1 to 12.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without
  /// a year.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// Debug information about this request.
class DebugInfo {
  /// Info about the server that serviced this request.
  core.String serverInfo;

  /// Server-side debug stack trace.
  core.String serverTraceInfo;

  /// URL of the service that handled this request.
  core.String serviceUrl;

  DebugInfo();

  DebugInfo.fromJson(core.Map _json) {
    if (_json.containsKey("serverInfo")) {
      serverInfo = _json["serverInfo"];
    }
    if (_json.containsKey("serverTraceInfo")) {
      serverTraceInfo = _json["serverTraceInfo"];
    }
    if (_json.containsKey("serviceUrl")) {
      serviceUrl = _json["serviceUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (serverInfo != null) {
      _json["serverInfo"] = serverInfo;
    }
    if (serverTraceInfo != null) {
      _json["serverTraceInfo"] = serverTraceInfo;
    }
    if (serviceUrl != null) {
      _json["serviceUrl"] = serviceUrl;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Key value data pair for an event.
class EventData {
  /// Data type.
  /// Possible string values are:
  /// - "EVENT_DATA_TYPE_UNSPECIFIED" : Unchosen.
  /// - "ACTION" : Action data.
  /// - "AGENCY_ID" : Agency ID data.
  /// - "AGENCY_NAME" : Agency name data.
  /// - "AGENCY_PHONE_NUMBER" : Agency phone number data.
  /// - "AGENCY_WEBSITE" : Agency website data.
  /// - "BUDGET" : Budget data.
  /// - "CENTER_POINT" : Center-point data.
  /// - "CERTIFICATION" : Certification data.
  /// - "COMMENT" : Comment data.
  /// - "COUNTRY" : Country data.
  /// - "CURRENCY" : Currency data.
  /// - "CURRENTLY_VIEWED_AGENCY_ID" : Currently viewed agency ID data.
  /// - "DISTANCE" : Distance data.
  /// - "DISTANCE_TYPE" : Distance type data.
  /// - "EXAM" : Exam data.
  /// - "HISTORY_TOKEN" : History token data.
  /// - "ID" : Identifier data.
  /// - "INDUSTRY" : Industry data.
  /// - "INSIGHT_TAG" : Insight tag data.
  /// - "LANGUAGE" : Language data.
  /// - "LOCATION" : Location  data.
  /// - "MARKETING_OPT_IN" : Marketing opt-in data.
  /// - "QUERY" : Query data.
  /// - "SEARCH_START_INDEX" : Search start index data.
  /// - "SERVICE" : Service data.
  /// - "SHOW_VOW" : Show vow data.
  /// - "SOLUTION" : Solution data.
  /// - "TRAFFIC_SOURCE_ID" : Traffic source ID data.
  /// - "TRAFFIC_SUB_ID" : Traffic sub ID data.
  /// - "VIEW_PORT" : Viewport data.
  /// - "WEBSITE" : Website data.
  /// - "DETAILS" : Details data.
  /// - "EXPERIMENT_ID" : Experiment ID data.
  /// - "GPS_MOTIVATION" : Google Partner Search motivation data.
  /// - "URL" : URL data.
  /// - "ELEMENT_FOCUS" : Element we wanted user to focus on.
  /// - "PROGRESS" : Progress when viewing an item \[0-100\].
  core.String key;

  /// Data values.
  core.List<core.String> values;

  EventData();

  EventData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("values")) {
      values = _json["values"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// A user's information on a specific exam.
class ExamStatus {
  /// The type of the exam.
  /// Possible string values are:
  /// - "CERTIFICATION_EXAM_TYPE_UNSPECIFIED" : Unchosen.
  /// - "CET_ADWORDS_FUNDAMENTALS" : Adwords Fundamentals exam.
  /// - "CET_ADWORDS_ADVANCED_SEARCH" : AdWords advanced search exam.
  /// - "CET_ADWORDS_ADVANCED_DISPLAY" : AdWords advanced display exam.
  /// - "CET_VIDEO_ADS" : VideoAds exam.
  /// - "CET_DOUBLECLICK" : DoubleClick exam.
  /// - "CET_ANALYTICS" : Analytics exam.
  /// - "CET_SHOPPING" : Shopping exam.
  /// - "CET_MOBILE" : Mobile exam.
  /// - "CET_DIGITAL_SALES" : Digital Sales exam.
  /// - "CET_MOBILE_SITES" : Mobile Sites exam.
  core.String examType;

  /// Date this exam is due to expire.
  core.String expiration;

  /// The date the user last passed this exam.
  core.String lastPassed;

  /// Whether this exam has been passed and not expired.
  core.bool passed;

  /// The date the user last taken this exam.
  core.String taken;

  /// Whether this exam is in the state of warning.
  core.bool warning;

  ExamStatus();

  ExamStatus.fromJson(core.Map _json) {
    if (_json.containsKey("examType")) {
      examType = _json["examType"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("lastPassed")) {
      lastPassed = _json["lastPassed"];
    }
    if (_json.containsKey("passed")) {
      passed = _json["passed"];
    }
    if (_json.containsKey("taken")) {
      taken = _json["taken"];
    }
    if (_json.containsKey("warning")) {
      warning = _json["warning"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (examType != null) {
      _json["examType"] = examType;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (lastPassed != null) {
      _json["lastPassed"] = lastPassed;
    }
    if (passed != null) {
      _json["passed"] = passed;
    }
    if (taken != null) {
      _json["taken"] = taken;
    }
    if (warning != null) {
      _json["warning"] = warning;
    }
    return _json;
  }
}

/// A token that allows a user to take an exam.
class ExamToken {
  /// The id of the exam the token is for.
  core.String examId;

  /// The type of the exam the token belongs to.
  /// Possible string values are:
  /// - "CERTIFICATION_EXAM_TYPE_UNSPECIFIED" : Unchosen.
  /// - "CET_ADWORDS_FUNDAMENTALS" : Adwords Fundamentals exam.
  /// - "CET_ADWORDS_ADVANCED_SEARCH" : AdWords advanced search exam.
  /// - "CET_ADWORDS_ADVANCED_DISPLAY" : AdWords advanced display exam.
  /// - "CET_VIDEO_ADS" : VideoAds exam.
  /// - "CET_DOUBLECLICK" : DoubleClick exam.
  /// - "CET_ANALYTICS" : Analytics exam.
  /// - "CET_SHOPPING" : Shopping exam.
  /// - "CET_MOBILE" : Mobile exam.
  /// - "CET_DIGITAL_SALES" : Digital Sales exam.
  /// - "CET_MOBILE_SITES" : Mobile Sites exam.
  core.String examType;

  /// The token, only present if the user has access to the exam.
  core.String token;

  ExamToken();

  ExamToken.fromJson(core.Map _json) {
    if (_json.containsKey("examId")) {
      examId = _json["examId"];
    }
    if (_json.containsKey("examType")) {
      examType = _json["examType"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (examId != null) {
      _json["examId"] = examId;
    }
    if (examType != null) {
      _json["examType"] = examType;
    }
    if (token != null) {
      _json["token"] = token;
    }
    return _json;
  }
}

/// Response message for GetCompany.
class GetCompanyResponse {
  /// The company.
  Company company;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  GetCompanyResponse();

  GetCompanyResponse.fromJson(core.Map _json) {
    if (_json.containsKey("company")) {
      company = new Company.fromJson(_json["company"]);
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (company != null) {
      _json["company"] = (company).toJson();
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Response message for
/// GetPartnersStatus.
class GetPartnersStatusResponse {
  /// Current response metadata.
  ResponseMetadata responseMetadata;

  GetPartnersStatusResponse();

  GetPartnersStatusResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Historical information about a Google Partners Offer.
class HistoricalOffer {
  /// Client's AdWords page URL.
  core.String adwordsUrl;

  /// Email address for client.
  core.String clientEmail;

  /// ID of client.
  core.String clientId;

  /// Name of the client.
  core.String clientName;

  /// Time offer was first created.
  core.String creationTime;

  /// Time this offer expires.
  core.String expirationTime;

  /// Time last action was taken.
  core.String lastModifiedTime;

  /// Offer code.
  core.String offerCode;

  /// Country Code for the offer country.
  core.String offerCountryCode;

  /// Type of offer.
  /// Possible string values are:
  /// - "OFFER_TYPE_UNSPECIFIED" : Unset.
  /// - "OFFER_TYPE_SPEND_X_GET_Y" : AdWords spend X get Y.
  /// - "OFFER_TYPE_VIDEO" : Youtube video.
  /// - "OFFER_TYPE_SPEND_MATCH" : Spend Match up to Y.
  core.String offerType;

  /// Name (First + Last) of the partners user to whom the incentive is
  /// allocated.
  core.String senderName;

  /// Status of the offer.
  /// Possible string values are:
  /// - "OFFER_STATUS_UNSPECIFIED" : Unset.
  /// - "OFFER_STATUS_DISTRIBUTED" : Offer distributed.
  /// - "OFFER_STATUS_REDEEMED" : Offer redeemed.
  /// - "OFFER_STATUS_AWARDED" : Offer awarded.
  /// - "OFFER_STATUS_EXPIRED" : Offer expired.
  core.String status;

  HistoricalOffer();

  HistoricalOffer.fromJson(core.Map _json) {
    if (_json.containsKey("adwordsUrl")) {
      adwordsUrl = _json["adwordsUrl"];
    }
    if (_json.containsKey("clientEmail")) {
      clientEmail = _json["clientEmail"];
    }
    if (_json.containsKey("clientId")) {
      clientId = _json["clientId"];
    }
    if (_json.containsKey("clientName")) {
      clientName = _json["clientName"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("expirationTime")) {
      expirationTime = _json["expirationTime"];
    }
    if (_json.containsKey("lastModifiedTime")) {
      lastModifiedTime = _json["lastModifiedTime"];
    }
    if (_json.containsKey("offerCode")) {
      offerCode = _json["offerCode"];
    }
    if (_json.containsKey("offerCountryCode")) {
      offerCountryCode = _json["offerCountryCode"];
    }
    if (_json.containsKey("offerType")) {
      offerType = _json["offerType"];
    }
    if (_json.containsKey("senderName")) {
      senderName = _json["senderName"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adwordsUrl != null) {
      _json["adwordsUrl"] = adwordsUrl;
    }
    if (clientEmail != null) {
      _json["clientEmail"] = clientEmail;
    }
    if (clientId != null) {
      _json["clientId"] = clientId;
    }
    if (clientName != null) {
      _json["clientName"] = clientName;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (expirationTime != null) {
      _json["expirationTime"] = expirationTime;
    }
    if (lastModifiedTime != null) {
      _json["lastModifiedTime"] = lastModifiedTime;
    }
    if (offerCode != null) {
      _json["offerCode"] = offerCode;
    }
    if (offerCountryCode != null) {
      _json["offerCountryCode"] = offerCountryCode;
    }
    if (offerType != null) {
      _json["offerType"] = offerType;
    }
    if (senderName != null) {
      _json["senderName"] = senderName;
    }
    if (status != null) {
      _json["status"] = status;
    }
    return _json;
  }
}

/// An object representing a latitude/longitude pair. This is expressed as a
/// pair
/// of doubles representing degrees latitude and degrees longitude. Unless
/// specified otherwise, this must conform to the
/// <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
/// standard</a>. Values must be within normalized ranges.
///
/// Example of normalization code in Python:
///
///     def NormalizeLongitude(longitude):
///       """Wraps decimal degrees longitude to [-180.0, 180.0]."""
///       q, r = divmod(longitude, 360.0)
///       if r > 180.0 or (r == 180.0 and q <= -1.0):
///         return r - 360.0
///       return r
///
///     def NormalizeLatLng(latitude, longitude):
///       """Wraps decimal degrees latitude and longitude to
///       [-90.0, 90.0] and [-180.0, 180.0], respectively."""
///       r = latitude % 360.0
///       if r <= 90.0:
///         return r, NormalizeLongitude(longitude)
///       elif r >= 270.0:
///         return r - 360, NormalizeLongitude(longitude)
///       else:
///         return 180 - r, NormalizeLongitude(longitude + 180.0)
///
///     assert 180.0 == NormalizeLongitude(180.0)
///     assert -180.0 == NormalizeLongitude(-180.0)
///     assert -179.0 == NormalizeLongitude(181.0)
///     assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
///     assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
///     assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
///     assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
///     assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
///     assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
///     assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
///     assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
///     assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
///     assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
class LatLng {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  core.double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  core.double longitude;

  LatLng();

  LatLng.fromJson(core.Map _json) {
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"];
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}

/// A lead resource that represents an advertiser contact for a `Company`. These
/// are usually generated via Google Partner Search (the advertiser portal).
class Lead {
  /// The AdWords Customer ID of the lead.
  core.String adwordsCustomerId;

  /// Comments lead source gave.
  core.String comments;

  /// Timestamp of when this lead was created.
  core.String createTime;

  /// Email address of lead source.
  core.String email;

  /// Last name of lead source.
  core.String familyName;

  /// First name of lead source.
  core.String givenName;

  /// List of reasons for using Google Partner Search and creating a lead.
  core.List<core.String> gpsMotivations;

  /// ID of the lead.
  core.String id;

  /// Language code of the lead's language preference, as defined by
  /// <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
  /// (IETF BCP 47, "Tags for Identifying Languages").
  core.String languageCode;

  /// Whether or not the lead signed up for marketing emails
  core.bool marketingOptIn;

  /// The minimum monthly budget lead source is willing to spend.
  Money minMonthlyBudget;

  /// Phone number of lead source.
  core.String phoneNumber;

  /// The lead's state in relation to the company.
  /// Possible string values are:
  /// - "LEAD_STATE_UNSPECIFIED" : Unchosen.
  /// - "LEAD" : Lead not yet contacted.
  /// - "CONTACTED" : Lead has been contacted.
  /// - "CLIENT" : Lead has become a client.
  /// - "OTHER" : Lead in a state not covered by other options.
  core.String state;

  /// Type of lead.
  /// Possible string values are:
  /// - "LEAD_TYPE_UNSPECIFIED" : Unchosen.
  /// - "LT_GPS" : Google Partner Search.
  core.String type;

  /// Website URL of lead source.
  core.String websiteUrl;

  Lead();

  Lead.fromJson(core.Map _json) {
    if (_json.containsKey("adwordsCustomerId")) {
      adwordsCustomerId = _json["adwordsCustomerId"];
    }
    if (_json.containsKey("comments")) {
      comments = _json["comments"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("familyName")) {
      familyName = _json["familyName"];
    }
    if (_json.containsKey("givenName")) {
      givenName = _json["givenName"];
    }
    if (_json.containsKey("gpsMotivations")) {
      gpsMotivations = _json["gpsMotivations"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("marketingOptIn")) {
      marketingOptIn = _json["marketingOptIn"];
    }
    if (_json.containsKey("minMonthlyBudget")) {
      minMonthlyBudget = new Money.fromJson(_json["minMonthlyBudget"]);
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("websiteUrl")) {
      websiteUrl = _json["websiteUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adwordsCustomerId != null) {
      _json["adwordsCustomerId"] = adwordsCustomerId;
    }
    if (comments != null) {
      _json["comments"] = comments;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (familyName != null) {
      _json["familyName"] = familyName;
    }
    if (givenName != null) {
      _json["givenName"] = givenName;
    }
    if (gpsMotivations != null) {
      _json["gpsMotivations"] = gpsMotivations;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (marketingOptIn != null) {
      _json["marketingOptIn"] = marketingOptIn;
    }
    if (minMonthlyBudget != null) {
      _json["minMonthlyBudget"] = (minMonthlyBudget).toJson();
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (websiteUrl != null) {
      _json["websiteUrl"] = websiteUrl;
    }
    return _json;
  }
}

/// Response message for
/// ListAnalytics.
class ListAnalyticsResponse {
  /// The list of analytics.
  /// Sorted in ascending order of
  /// Analytics.event_date.
  core.List<Analytics> analytics;

  /// Aggregated information across the response's
  /// analytics.
  AnalyticsSummary analyticsSummary;

  /// A token to retrieve next page of results.
  /// Pass this value in the `ListAnalyticsRequest.page_token` field in the
  /// subsequent call to
  /// ListAnalytics to retrieve the
  /// next page of results.
  core.String nextPageToken;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  ListAnalyticsResponse();

  ListAnalyticsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("analytics")) {
      analytics = _json["analytics"]
          .map((value) => new Analytics.fromJson(value))
          .toList();
    }
    if (_json.containsKey("analyticsSummary")) {
      analyticsSummary =
          new AnalyticsSummary.fromJson(_json["analyticsSummary"]);
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analytics != null) {
      _json["analytics"] = analytics.map((value) => (value).toJson()).toList();
    }
    if (analyticsSummary != null) {
      _json["analyticsSummary"] = (analyticsSummary).toJson();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Response message for
/// ListCompanies.
class ListCompaniesResponse {
  /// The list of companies.
  core.List<Company> companies;

  /// A token to retrieve next page of results.
  /// Pass this value in the `ListCompaniesRequest.page_token` field in the
  /// subsequent call to
  /// ListCompanies to retrieve the
  /// next page of results.
  core.String nextPageToken;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  ListCompaniesResponse();

  ListCompaniesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("companies")) {
      companies = _json["companies"]
          .map((value) => new Company.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (companies != null) {
      _json["companies"] = companies.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Response message for ListLeads.
class ListLeadsResponse {
  /// The list of leads.
  core.List<Lead> leads;

  /// A token to retrieve next page of results.
  /// Pass this value in the `ListLeadsRequest.page_token` field in the
  /// subsequent call to
  /// ListLeads to retrieve the
  /// next page of results.
  core.String nextPageToken;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  /// The total count of leads for the given company.
  core.int totalSize;

  ListLeadsResponse();

  ListLeadsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("leads")) {
      leads = _json["leads"].map((value) => new Lead.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (leads != null) {
      _json["leads"] = leads.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Response for ListOfferHistory.
class ListOffersHistoryResponse {
  /// True if the user has the option to show entire company history.
  core.bool canShowEntireCompany;

  /// Supply this token in a ListOffersHistoryRequest to retrieve the next page.
  core.String nextPageToken;

  /// Historical offers meeting request.
  core.List<HistoricalOffer> offers;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  /// True if this response is showing entire company history.
  core.bool showingEntireCompany;

  /// Number of results across all pages.
  core.int totalResults;

  ListOffersHistoryResponse();

  ListOffersHistoryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("canShowEntireCompany")) {
      canShowEntireCompany = _json["canShowEntireCompany"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("offers")) {
      offers = _json["offers"]
          .map((value) => new HistoricalOffer.fromJson(value))
          .toList();
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
    if (_json.containsKey("showingEntireCompany")) {
      showingEntireCompany = _json["showingEntireCompany"];
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (canShowEntireCompany != null) {
      _json["canShowEntireCompany"] = canShowEntireCompany;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (offers != null) {
      _json["offers"] = offers.map((value) => (value).toJson()).toList();
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    if (showingEntireCompany != null) {
      _json["showingEntireCompany"] = showingEntireCompany;
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}

/// Response for ListOffer.
class ListOffersResponse {
  /// Available Offers to be distributed.
  core.List<AvailableOffer> availableOffers;

  /// Reason why no Offers are available.
  /// Possible string values are:
  /// - "NO_OFFER_REASON_UNSPECIFIED" : Unset.
  /// - "NO_OFFER_REASON_NO_MCC" : Not an MCC.
  /// - "NO_OFFER_REASON_LIMIT_REACHED" : Offer limit has been reached.
  /// - "NO_OFFER_REASON_INELIGIBLE" : Ineligible for offers.
  core.String noOfferReason;

  /// Current response metadata.
  ResponseMetadata responseMetadata;

  ListOffersResponse();

  ListOffersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("availableOffers")) {
      availableOffers = _json["availableOffers"]
          .map((value) => new AvailableOffer.fromJson(value))
          .toList();
    }
    if (_json.containsKey("noOfferReason")) {
      noOfferReason = _json["noOfferReason"];
    }
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableOffers != null) {
      _json["availableOffers"] =
          availableOffers.map((value) => (value).toJson()).toList();
    }
    if (noOfferReason != null) {
      _json["noOfferReason"] = noOfferReason;
    }
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Response message for
/// ListUserStates.
class ListUserStatesResponse {
  /// Current response metadata.
  ResponseMetadata responseMetadata;

  /// User's states.
  core.List<core.String> userStates;

  ListUserStatesResponse();

  ListUserStatesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
    if (_json.containsKey("userStates")) {
      userStates = _json["userStates"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    if (userStates != null) {
      _json["userStates"] = userStates;
    }
    return _json;
  }
}

/// The localized company information.
class LocalizedCompanyInfo {
  /// List of country codes for the localized company info.
  core.List<core.String> countryCodes;

  /// Localized display name.
  core.String displayName;

  /// Language code of the localized company info, as defined by
  /// <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
  /// (IETF BCP 47, "Tags for Identifying Languages").
  core.String languageCode;

  /// Localized brief description that the company uses to advertise themselves.
  core.String overview;

  LocalizedCompanyInfo();

  LocalizedCompanyInfo.fromJson(core.Map _json) {
    if (_json.containsKey("countryCodes")) {
      countryCodes = _json["countryCodes"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("overview")) {
      overview = _json["overview"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (countryCodes != null) {
      _json["countryCodes"] = countryCodes;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (overview != null) {
      _json["overview"] = overview;
    }
    return _json;
  }
}

/// A location with address and geographic coordinates. May optionally contain a
/// detailed (multi-field) version of the address.
class Location {
  /// The single string version of the address.
  core.String address;

  /// The following address lines represent the most specific part of any
  /// address.
  core.List<core.String> addressLine;

  /// Top-level administrative subdivision of this country.
  core.String administrativeArea;

  /// Dependent locality or sublocality. Used for UK dependent localities, or
  /// neighborhoods or boroughs in other locations.
  core.String dependentLocality;

  /// Language code of the address. Should be in BCP 47 format.
  core.String languageCode;

  /// The latitude and longitude of the location, in degrees.
  LatLng latLng;

  /// Generally refers to the city/town portion of an address.
  core.String locality;

  /// Values are frequently alphanumeric.
  core.String postalCode;

  /// CLDR (Common Locale Data Repository) region code .
  core.String regionCode;

  /// Use of this code is very country-specific, but will refer to a secondary
  /// classification code for sorting mail.
  core.String sortingCode;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("addressLine")) {
      addressLine = _json["addressLine"];
    }
    if (_json.containsKey("administrativeArea")) {
      administrativeArea = _json["administrativeArea"];
    }
    if (_json.containsKey("dependentLocality")) {
      dependentLocality = _json["dependentLocality"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("latLng")) {
      latLng = new LatLng.fromJson(_json["latLng"]);
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("sortingCode")) {
      sortingCode = _json["sortingCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (addressLine != null) {
      _json["addressLine"] = addressLine;
    }
    if (administrativeArea != null) {
      _json["administrativeArea"] = administrativeArea;
    }
    if (dependentLocality != null) {
      _json["dependentLocality"] = dependentLocality;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (latLng != null) {
      _json["latLng"] = (latLng).toJson();
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (sortingCode != null) {
      _json["sortingCode"] = sortingCode;
    }
    return _json;
  }
}

/// Request message for
/// LogClientMessage.
class LogMessageRequest {
  /// Map of client info, such as URL, browser navigator, browser platform, etc.
  core.Map<core.String, core.String> clientInfo;

  /// Details about the client message.
  core.String details;

  /// Message level of client message.
  /// Possible string values are:
  /// - "MESSAGE_LEVEL_UNSPECIFIED" : Unchosen.
  /// - "ML_FINE" : Message level for tracing information.
  /// - "ML_INFO" : Message level for informational messages.
  /// - "ML_WARNING" : Message level for potential problems.
  /// - "ML_SEVERE" : Message level for serious failures.
  core.String level;

  /// Current request metadata.
  RequestMetadata requestMetadata;

  LogMessageRequest();

  LogMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clientInfo")) {
      clientInfo = _json["clientInfo"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("level")) {
      level = _json["level"];
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientInfo != null) {
      _json["clientInfo"] = clientInfo;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (level != null) {
      _json["level"] = level;
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    return _json;
  }
}

/// Response message for
/// LogClientMessage.
class LogMessageResponse {
  /// Current response metadata.
  ResponseMetadata responseMetadata;

  LogMessageResponse();

  LogMessageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Request message for
/// LogUserEvent.
class LogUserEventRequest {
  /// The action that occurred.
  /// Possible string values are:
  /// - "EVENT_ACTION_UNSPECIFIED" : Unchosen.
  /// - "SMB_CLICKED_FIND_A_PARTNER_BUTTON_BOTTOM" : Advertiser clicked `Find a
  /// partner` bottom button.
  /// - "SMB_CLICKED_FIND_A_PARTNER_BUTTON_TOP" : Advertiser clicked `Find a
  /// partner` top button.
  /// - "AGENCY_CLICKED_JOIN_NOW_BUTTON_BOTTOM" : Agency clicked `Join now`
  /// bottom button.
  /// - "AGENCY_CLICKED_JOIN_NOW_BUTTON_TOP" : Agency clicked `Join now` top
  /// button.
  /// - "SMB_CANCELED_PARTNER_CONTACT_FORM" : Advertiser canceled partner
  /// contact form.
  /// - "SMB_CLICKED_CONTACT_A_PARTNER" : Advertiser started partner contact
  /// form.
  /// - "SMB_COMPLETED_PARTNER_CONTACT_FORM" : Advertiser completed partner
  /// contact form.
  /// - "SMB_ENTERED_EMAIL_IN_CONTACT_PARTNER_FORM" : Advertiser entered email
  /// in contact form.
  /// - "SMB_ENTERED_NAME_IN_CONTACT_PARTNER_FORM" : Advertiser entered name in
  /// contact form.
  /// - "SMB_ENTERED_PHONE_IN_CONTACT_PARTNER_FORM" : Advertiser entered phone
  /// in contact form.
  /// - "SMB_FAILED_RECAPTCHA_IN_CONTACT_PARTNER_FORM" : Advertiser failed <a
  /// href="https://www.google.com/recaptcha/">reCaptcha</a>
  /// in contact form.
  /// - "PARTNER_VIEWED_BY_SMB" : Company viewed by advertiser.
  /// - "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_GPS" : Advertiser canceled partner
  /// contact form on Google Partner Search.
  /// - "SMB_CHANGED_A_SEARCH_PARAMETER_TOP" : Advertiser changed a top search
  /// parameter.
  /// - "SMB_CLICKED_CONTACT_A_PARTNER_ON_GPS" : Advertiser started partner
  /// contact form on Google Partner Search.
  /// - "SMB_CLICKED_SHOW_MORE_PARTNERS_BUTTON_BOTTOM" : Advertiser clicked
  /// `Show more partners` bottom button.
  /// - "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_GPS" : Advertiser completed
  /// partner contact form on Google Partner Search.
  /// - "SMB_NO_PARTNERS_AVAILABLE_WITH_SEARCH_CRITERIA" : Advertiser saw no
  /// partners available with search criteria.
  /// - "SMB_PERFORMED_SEARCH_ON_GPS" : Advertiser performed search on Google
  /// Partner Search.
  /// - "SMB_VIEWED_A_PARTNER_ON_GPS" : Advertiser viewed a partner on Google
  /// Partner Search.
  /// - "SMB_CANCELED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE" : Advertiser
  /// canceled partner contact form on profile page.
  /// - "SMB_CLICKED_CONTACT_A_PARTNER_ON_PROFILE_PAGE" : Advertiser started
  /// partner contact form on profile page.
  /// - "SMB_CLICKED_PARTNER_WEBSITE" : Advertiser clicked partner website.
  /// - "SMB_COMPLETED_PARTNER_CONTACT_FORM_ON_PROFILE_PAGE" : Advertiser
  /// completed contact form on profile page.
  /// - "SMB_VIEWED_A_PARTNER_PROFILE" : Advertiser viewed a partner profile.
  /// - "AGENCY_CLICKED_ACCEPT_TOS_BUTTON" : Agency clicked `accept Terms Of
  /// Service` button.
  /// - "AGENCY_CHANGED_TOS_COUNTRY" : Agency changed Terms Of Service country.
  /// - "AGENCY_ADDED_ADDRESS_IN_MY_PROFILE_PORTAL" : Agency added address in
  /// profile portal.
  /// - "AGENCY_ADDED_PHONE_NUMBER_IN_MY_PROFILE_PORTAL" : Agency added phone
  /// number in profile portal.
  /// - "AGENCY_CHANGED_PRIMARY_ACCOUNT_ASSOCIATION" : Agency changed primary
  /// account association.
  /// - "AGENCY_CHANGED_PRIMARY_COUNTRY_ASSOCIATION" : Agency changed primary
  /// country association.
  /// - "AGENCY_CLICKED_AFFILIATE_BUTTON_IN_MY_PROFILE_IN_PORTAL" : Agency
  /// clicked `affiliate` button in profile portal.
  /// - "AGENCY_CLICKED_GIVE_EDIT_ACCESS_IN_MY_PROFILE_PORTAL" : Agency clicked
  /// `give edit access` in profile portal.
  /// - "AGENCY_CLICKED_LOG_OUT_IN_MY_PROFILE_PORTAL" : Agency clicked `log out`
  /// in profile portal.
  /// - "AGENCY_CLICKED_MY_PROFILE_LEFT_NAV_IN_PORTAL" : Agency clicked profile
  /// portal left nav.
  /// - "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_COMPLETE_PROFILE" : Agency
  /// clicked `save and continue` at bottom of complete profile.
  /// - "AGENCY_CLICKED_UNAFFILIATE_IN_MY_PROFILE_PORTAL" : Agency clicked
  /// `unaffiliate` in profile portal.
  /// - "AGENCY_FILLED_OUT_COMP_AFFILIATION_IN_MY_PROFILE_PORTAL" : Agency
  /// filled out company affiliation in profile portal.
  /// - "AGENCY_SUCCESSFULLY_CONNECTED_WITH_COMPANY_IN_MY_PROFILE" : Agency
  /// successfully connected with company in profile portal.
  /// - "AGENCY_CLICKED_CREATE_MCC_IN_MY_PROFILE_PORTAL" : Agency clicked create
  /// MCC in profile portal.
  /// - "AGENCY_DIDNT_HAVE_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE" : Agency did
  /// not have an MCC associated on profile portal.
  /// - "AGENCY_HAD_AN_MCC_ASSOCIATED_ON_COMPLETE_PROFILE" : Agency had an MCC
  /// associated on profile portal.
  /// - "AGENCY_ADDED_JOB_FUNCTION_IN_MY_PROFILE_PORTAL" : Agency added job
  /// function in profile portal.
  /// - "AGENCY_LOOKED_AT_JOB_FUNCTION_DROP_DOWN" : Agency looked at job
  /// function drop-down.
  /// - "AGENCY_SELECTED_ACCOUNT_MANAGER_AS_JOB_FUNCTION" : Agency selected
  /// `account manage` as job function.
  /// - "AGENCY_SELECTED_ACCOUNT_PLANNER_AS_JOB_FUNCTION" : Agency selected
  /// `account planner` as job function.
  /// - "AGENCY_SELECTED_ANALYTICS_AS_JOB_FUNCTION" : Agency selected
  /// `Analytics` as job function.
  /// - "AGENCY_SELECTED_CREATIVE_AS_JOB_FUNCTION" : Agency selected `creative`
  /// as job function.
  /// - "AGENCY_SELECTED_MEDIA_BUYER_AS_JOB_FUNCTION" : Agency selected `media
  /// buyer` as job function.
  /// - "AGENCY_SELECTED_MEDIA_PLANNER_AS_JOB_FUNCTION" : Agency selected `media
  /// planner` as job function.
  /// - "AGENCY_SELECTED_OTHER_AS_JOB_FUNCTION" : Agency selected `other` as job
  /// function.
  /// - "AGENCY_SELECTED_PRODUCTION_AS_JOB_FUNCTION" : Agency selected
  /// `production` as job function.
  /// - "AGENCY_SELECTED_SEO_AS_JOB_FUNCTION" : Agency selected `SEO` as job
  /// function.
  /// - "AGENCY_SELECTED_SALES_REP_AS_JOB_FUNCTION" : Agency selected `sales
  /// rep` as job function.
  /// - "AGENCY_SELECTED_SEARCH_SPECIALIST_AS_JOB_FUNCTION" : Agency selected
  /// `search specialist` as job function.
  /// - "AGENCY_ADDED_CHANNELS_IN_MY_PROFILE_PORTAL" : Agency added channels in
  /// profile portal.
  /// - "AGENCY_LOOKED_AT_ADD_CHANNEL_DROP_DOWN" : Agency looked at `add
  /// channel` drop-down.
  /// - "AGENCY_SELECTED_CROSS_CHANNEL_FROM_ADD_CHANNEL" : Agency selected
  /// `cross channel` from add channel drop-down.
  /// - "AGENCY_SELECTED_DISPLAY_FROM_ADD_CHANNEL" : Agency selected `display`
  /// from add channel drop-down.
  /// - "AGENCY_SELECTED_MOBILE_FROM_ADD_CHANNEL" : Agency selected `mobile`
  /// from add channel drop-down.
  /// - "AGENCY_SELECTED_SEARCH_FROM_ADD_CHANNEL" : Agency selected `search`
  /// from add channel drop-down.
  /// - "AGENCY_SELECTED_SOCIAL_FROM_ADD_CHANNEL" : Agency selected `social`
  /// from add channel drop-down.
  /// - "AGENCY_SELECTED_TOOLS_FROM_ADD_CHANNEL" : Agency selected `tools` from
  /// add channel drop-down.
  /// - "AGENCY_SELECTED_YOUTUBE_FROM_ADD_CHANNEL" : Agency selected `YouTube`
  /// from add channel drop-down.
  /// - "AGENCY_ADDED_INDUSTRIES_IN_MY_PROFILE_PORTAL" : Agency added industries
  /// in profile portal.
  /// - "AGENCY_CHANGED_ADD_INDUSTRIES_DROP_DOWN" : Agency changed `add
  /// industries` drop-down.
  /// - "AGENCY_ADDED_MARKETS_IN_MY_PROFILE_PORTAL" : Agency added markets in
  /// profile portal.
  /// - "AGENCY_CHANGED_ADD_MARKETS_DROP_DOWN" : Agency changed `add markets`
  /// drop-down.
  /// - "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_MYPROFILE" : Agency checked
  /// `recieve mail promotions` in profile portal.
  /// - "AGENCY_CHECKED_RECIEVE_MAIL_PROMOTIONS_SIGNUP" : Agency checked
  /// `recieve mail promotions` in sign-up.
  /// - "AGENCY_SELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH" : Agency selected
  /// `opt-in beta tests and market research`.
  /// - "AGENCY_SELECTED_OPT_IN_BETA_TESTS_IN_MY_PROFILE_PORTAL" : Agency
  /// selected `opt-in beta tests` in profile portal.
  /// - "AGENCY_SELECTED_OPT_IN_NEWS_IN_MY_PROFILE_PORTAL" : Agency selected
  /// `opt-in news` in profile portal.
  /// - "AGENCY_SELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS" : Agency selected
  /// `opt-in news invitations and promotions`.
  /// - "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUG_IN_MY_PROFILE_PORTAL" : Agency
  /// selected `opt-in performance SUG` in profile portal.
  /// - "AGENCY_SELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS" : Agency selected
  /// `opt-in performance suggestions`.
  /// - "AGENCY_SELECTED_OPT_IN_SELECT_ALL_EMAIL_NOTIFICATIONS" : Agency
  /// selected `opt-in select all email notifications`.
  /// - "AGENCY_SELECTED_SELECT_ALL_OPT_INS_IN_MY_PROFILE_PORTAL" : Agency
  /// selected `select all opt-ins` in profile portal.
  /// - "AGENCY_CLICKED_BACK_BUTTON_ON_CONNECT_WITH_COMPANY" : Agency clicked
  /// back button on `connect with company`.
  /// - "AGENCY_CLICKED_CONTINUE_TO_OVERVIEW_ON_CONNECT_WITH_COMPANY" : Agency
  /// clicked continue to overview on `connect with company`.
  /// - "AGECNY_CLICKED_CREATE_MCC_CONNECT_WITH_COMPANY_NOT_FOUND" : Agency
  /// clicked `create MCC connect with company not found`.
  /// - "AGECNY_CLICKED_GIVE_EDIT_ACCESS_CONNECT_WITH_COMPANY_NOT_FOUND" :
  /// Agency clicked `give edit access connect with company not found`.
  /// - "AGECNY_CLICKED_LOG_OUT_CONNECT_WITH_COMPANY_NOT_FOUND" : Agency clicked
  /// `log out connect with company not found`.
  /// - "AGENCY_CLICKED_SKIP_FOR_NOW_ON_CONNECT_WITH_COMPANY_PAGE" : Agency
  /// clicked `skip for now on connect with company page`.
  /// - "AGENCY_CLOSED_CONNECTED_TO_COMPANY_X_BUTTON_WRONG_COMPANY" : Agency
  /// closed connection to company.
  /// - "AGENCY_COMPLETED_FIELD_CONNECT_WITH_COMPANY" : Agency completed field
  /// connect with company.
  /// - "AGECNY_FOUND_COMPANY_TO_CONNECT_WITH" : Agency found company to connect
  /// with.
  /// - "AGENCY_SUCCESSFULLY_CREATED_COMPANY" : Agency successfully created
  /// company.
  /// - "AGENCY_ADDED_NEW_COMPANY_LOCATION" : Agency added new company location.
  /// - "AGENCY_CLICKED_COMMUNITY_JOIN_NOW_LINK_IN_PORTAL_NOTIFICATIONS" :
  /// Agency clicked community `join now link` in portal notifications.
  /// - "AGENCY_CLICKED_CONNECT_TO_COMPANY_LINK_IN_PORTAL_NOTIFICATIONS" :
  /// Agency clicked `connect to company` link in portal notifications.
  /// - "AGENCY_CLICKED_GET_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS" : Agency
  /// cliecked `get certified` link in portal notifications.
  /// - "AGENCY_CLICKED_GET_VIDEO_ADS_CERTIFIED_LINK_IN_PORTAL_NOTIFICATIONS" :
  /// Agency clicked `get VideoAds certified` link in portal notifications.
  /// - "AGENCY_CLICKED_LINK_TO_MCC_LINK_IN_PORTAL_NOTIFICATIONS" : Agency
  /// clicked `link to MCC` link in portal notifications.
  /// - "AGENCY_CLICKED_INSIGHT_CONTENT_IN_PORTAL" : Agency clicked `insight
  /// content` in portal.
  /// - "AGENCY_CLICKED_INSIGHTS_VIEW_NOW_PITCH_DECKS_IN_PORTAL" : Agency
  /// clicked `insights view now pitch decks` in portal.
  /// - "AGENCY_CLICKED_INSIGHTS_LEFT_NAV_IN_PORTAL" : Agency clicked `insights`
  /// left nav in portal.
  /// - "AGENCY_CLICKED_INSIGHTS_UPLOAD_CONTENT" : Agency clicked `insights
  /// upload content`.
  /// - "AGENCY_CLICKED_INSIGHTS_VIEWED_DEPRECATED" : Agency clicked `insights
  /// viewed deprecated`.
  /// - "AGENCY_CLICKED_COMMUNITY_LEFT_NAV_IN_PORTAL" : Agency clicked
  /// `community` left nav in portal.
  /// - "AGENCY_CLICKED_JOIN_COMMUNITY_BUTTON_COMMUNITY_PORTAL" : Agency clicked
  /// `join community` button in community portal.
  /// - "AGENCY_CLICKED_CERTIFICATIONS_LEFT_NAV_IN_PORTAL" : Agency clicked
  /// `certifications` left nav in portal.
  /// - "AGENCY_CLICKED_CERTIFICATIONS_PRODUCT_LEFT_NAV_IN_PORTAL" : Agency
  /// clicked `certifications product` left nav in portal.
  /// - "AGENCY_CLICKED_PARTNER_STATUS_LEFT_NAV_IN_PORTAL" : Agency clicked
  /// `partner status` left nav in portal.
  /// - "AGENCY_CLICKED_PARTNER_STATUS_PRODUCT_LEFT_NAV_IN_PORTAL" : Agency
  /// clicked `partner status product` left nav in portal.
  /// - "AGENCY_CLICKED_OFFERS_LEFT_NAV_IN_PORTAL" : Agency clicked `offers`
  /// left nav in portal.
  /// - "AGENCY_CLICKED_SEND_BUTTON_ON_OFFERS_PAGE" : Agency clicked `send`
  /// button on offers page.
  /// - "AGENCY_CLICKED_EXAM_DETAILS_ON_CERT_ADWORDS_PAGE" : Agency clicked
  /// `exam details` on certifications AdWords page.
  /// - "AGENCY_CLICKED_SEE_EXAMS_CERTIFICATION_MAIN_PAGE" : Agency clicked `see
  /// exams` certifications main page.
  /// - "AGENCY_CLICKED_TAKE_EXAM_ON_CERT_EXAM_PAGE" : Agency clicked `take
  /// exam` on certifications exam page.
  /// - "AGENCY_OPENED_LAST_ADMIN_DIALOG" : Agency opened `last admin` dialog.
  /// - "AGENCY_OPENED_DIALOG_WITH_NO_USERS" : Agency opened dialog with no
  /// users.
  /// - "AGENCY_PROMOTED_USER_TO_ADMIN" : Agency promoted user to admin.
  /// - "AGENCY_UNAFFILIATED" : Agency unaffiliated.
  /// - "AGENCY_CHANGED_ROLES" : Agency changed roles.
  /// - "SMB_CLICKED_COMPANY_NAME_LINK_TO_PROFILE" : Advertiser clicked `company
  /// name` link to profile.
  /// - "SMB_VIEWED_ADWORDS_CERTIFICATE" : Advertiser viewed AdWords
  /// certificate.
  /// - "SMB_VIEWED_ADWORDS_SEARCH_CERTIFICATE" : Advertiser viewed AdWords
  /// Search certificate.
  /// - "SMB_VIEWED_ADWORDS_DISPLAY_CERTIFICATE" : Advertiser viewed AdWords
  /// Display certificate.
  /// - "SMB_CLICKED_ADWORDS_CERTIFICATE_HELP_ICON" : Advertiser clicked AdWords
  /// certificate help icon.
  /// - "SMB_VIEWED_ANALYTICS_CERTIFICATE" : Advertiser viewed Analytics
  /// certificate.
  /// - "SMB_VIEWED_DOUBLECLICK_CERTIFICATE" : Advertiser viewed DoubleClick
  /// certificate.
  /// - "SMB_VIEWED_MOBILE_SITES_CERTIFICATE" : Advertiser viewed Mobile Sites
  /// certificate.
  /// - "SMB_VIEWED_VIDEO_ADS_CERTIFICATE" : Advertiser viewed VideoAds
  /// certificate.
  /// - "SMB_VIEWED_SHOPPING_CERTIFICATE" : Advertiser clicked Shopping
  /// certificate help icon.
  /// - "SMB_CLICKED_VIDEO_ADS_CERTIFICATE_HELP_ICON" : Advertiser clicked
  /// VideoAds certificate help icon.
  /// - "SMB_VIEWED_DIGITAL_SALES_CERTIFICATE" : Advertiser viewed Digital Sales
  /// certificate.
  /// - "CLICKED_HELP_AT_BOTTOM" : Clicked `help` at bottom.
  /// - "CLICKED_HELP_AT_TOP" : Clicked `help` at top.
  /// - "CLIENT_ERROR" : Client error occurred.
  /// - "AGENCY_CLICKED_LEFT_NAV_STORIES" : Agency clicked left nav `stories`.
  /// - "CLICKED" : Click occured.
  /// - "SMB_VIEWED_MOBILE_CERTIFICATE" : Advertiser clicked Mobile certificate
  /// help icon.
  /// - "AGENCY_FAILED_COMPANY_VERIFICATION" : Agency failed the company
  /// verification.
  /// - "VISITED_LANDING" : User visited the landing portion of Google Partners.
  /// - "VISITED_GPS" : User visited the Google Partner Search portion of Google
  /// Partners.
  /// - "VISITED_AGENCY_PORTAL" : User visited the agency portal portion of
  /// Google Partners.
  /// - "CANCELLED_INDIVIDUAL_SIGN_UP" : User cancelled signing up.
  /// - "CANCELLED_COMPANY_SIGN_UP" : User cancelled signing up their company.
  /// - "AGENCY_CLICKED_SIGN_IN_BUTTON_TOP" : Agency clicked `Sign in` top
  /// button.
  /// - "AGENCY_CLICKED_SAVE_AND_CONTINUE_AT_BOT_OF_INCOMPLETE_PROFILE" : Agency
  /// clicked `save and continue` at bottom of incomplete profile.
  /// - "AGENCY_UNSELECTED_OPT_IN_NEWS_INVITATIONS_AND_PROMOS" : Agency
  /// unselected `opt-in news invitations and promotions`.
  /// - "AGENCY_UNSELECTED_OPT_IN_BETA_TESTS_AND_MKT_RESEARCH" : Agency
  /// unselected `opt-in beta tests and market research`.
  /// - "AGENCY_UNSELECTED_OPT_IN_PERFORMANCE_SUGGESTIONS" : Agency unselected
  /// `opt-in performance suggestions`.
  /// - "AGENCY_SELECTED_OPT_OUT_UNSELECT_ALL_EMAIL_NOTIFICATIONS" : Agency
  /// selected `opt-out unselect all email notifications`.
  /// - "AGENCY_LINKED_INDIVIDUAL_MCC" : Agency linked their individual MCC.
  /// - "AGENCY_SUGGESTED_TO_USER" : Agency was suggested to user for
  /// affiliation.
  /// - "AGENCY_IGNORED_SUGGESTED_AGENCIES_AND_SEARCHED" : Agency ignored
  /// suggested agencies and begin searching.
  /// - "AGENCY_PICKED_SUGGESTED_AGENCY" : Agency picked a suggested agency.
  /// - "AGENCY_SEARCHED_FOR_AGENCIES" : Agency searched for agencies.
  /// - "AGENCY_PICKED_SEARCHED_AGENCY" : Agency picked a searched agency.
  /// - "AGENCY_DISMISSED_AFFILIATION_WIDGET" : Agency dismissed affiliation
  /// widget.
  /// - "AGENCY_CLICKED_INSIGHTS_DOWNLOAD_CONTENT" : Agency clicked on the
  /// download link for downloading content.
  /// - "AGENCY_PROGRESS_INSIGHTS_VIEW_CONTENT" : Agency user is maklingg
  /// progress viewing a content item.
  /// - "AGENCY_CLICKED_CANCEL_ACCEPT_TOS_BUTTON" : Agency clicked `cancel Terms
  /// Of Service` button.
  /// - "SMB_ENTERED_WEBSITE_IN_CONTACT_PARTNER_FORM" : Advertiser entered
  /// website in contact form.
  core.String eventAction;

  /// The category the action belongs to.
  /// Possible string values are:
  /// - "EVENT_CATEGORY_UNSPECIFIED" : Unchosen.
  /// - "GOOGLE_PARTNER_SEARCH" : Google Partner Search category.
  /// - "GOOGLE_PARTNER_SIGNUP_FLOW" : Google Partner sign-up flow category.
  /// - "GOOGLE_PARTNER_PORTAL" : Google Partner portal category.
  /// - "GOOGLE_PARTNER_PORTAL_MY_PROFILE" : Google Partner portal my-profile
  /// category.
  /// - "GOOGLE_PARTNER_PORTAL_CERTIFICATIONS" : Google Partner portal
  /// certifications category.
  /// - "GOOGLE_PARTNER_PORTAL_COMMUNITY" : Google Partner portal community
  /// category.
  /// - "GOOGLE_PARTNER_PORTAL_INSIGHTS" : Google Partner portal insights
  /// category.
  /// - "GOOGLE_PARTNER_PORTAL_CLIENTS" : Google Partner portal clients
  /// category.
  /// - "GOOGLE_PARTNER_PUBLIC_USER_PROFILE" : Google Partner portal public user
  /// profile category.
  /// - "GOOGLE_PARTNER_PANEL" : Google Partner panel category.
  /// - "GOOGLE_PARTNER_PORTAL_LAST_ADMIN_DIALOG" : Google Partner portal last
  /// admin dialog category.
  /// - "GOOGLE_PARTNER_CLIENT" : Google Partner client category.
  /// - "GOOGLE_PARTNER_PORTAL_COMPANY_PROFILE" : Google Partner portal company
  /// profile category.
  /// - "EXTERNAL_LINKS" : External links category.
  /// - "GOOGLE_PARTNER_LANDING" : Google Partner landing category.
  core.String eventCategory;

  /// List of event data for the event.
  core.List<EventData> eventDatas;

  /// The scope of the event.
  /// Possible string values are:
  /// - "EVENT_SCOPE_UNSPECIFIED" : Unchosen.
  /// - "VISITOR" : Based on visitor.
  /// - "SESSION" : Based on session.
  /// - "PAGE" : Based on page visit.
  core.String eventScope;

  /// Advertiser lead information.
  Lead lead;

  /// Current request metadata.
  RequestMetadata requestMetadata;

  /// The URL where the event occurred.
  core.String url;

  LogUserEventRequest();

  LogUserEventRequest.fromJson(core.Map _json) {
    if (_json.containsKey("eventAction")) {
      eventAction = _json["eventAction"];
    }
    if (_json.containsKey("eventCategory")) {
      eventCategory = _json["eventCategory"];
    }
    if (_json.containsKey("eventDatas")) {
      eventDatas = _json["eventDatas"]
          .map((value) => new EventData.fromJson(value))
          .toList();
    }
    if (_json.containsKey("eventScope")) {
      eventScope = _json["eventScope"];
    }
    if (_json.containsKey("lead")) {
      lead = new Lead.fromJson(_json["lead"]);
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (eventAction != null) {
      _json["eventAction"] = eventAction;
    }
    if (eventCategory != null) {
      _json["eventCategory"] = eventCategory;
    }
    if (eventDatas != null) {
      _json["eventDatas"] =
          eventDatas.map((value) => (value).toJson()).toList();
    }
    if (eventScope != null) {
      _json["eventScope"] = eventScope;
    }
    if (lead != null) {
      _json["lead"] = (lead).toJson();
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Response message for
/// LogUserEvent.
class LogUserEventResponse {
  /// Current response metadata.
  ResponseMetadata responseMetadata;

  LogUserEventResponse();

  LogUserEventResponse.fromJson(core.Map _json) {
    if (_json.containsKey("responseMetadata")) {
      responseMetadata =
          new ResponseMetadata.fromJson(_json["responseMetadata"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (responseMetadata != null) {
      _json["responseMetadata"] = (responseMetadata).toJson();
    }
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class Money {
  /// The 3-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999 inclusive.
  /// If `units` is positive, `nanos` must be positive or zero.
  /// If `units` is zero, `nanos` can be positive, zero, or negative.
  /// If `units` is negative, `nanos` must be negative or zero.
  /// For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount.
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("units")) {
      units = _json["units"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}

/// Customers qualified for an offer.
class OfferCustomer {
  /// URL to the customer's AdWords page.
  core.String adwordsUrl;

  /// Country code of the customer.
  core.String countryCode;

  /// Time the customer was created.
  core.String creationTime;

  /// Days the customer is still eligible.
  core.int eligibilityDaysLeft;

  /// External CID for the customer.
  core.String externalCid;

  /// Formatted Get Y amount with currency code.
  core.String getYAmount;

  /// Name of the customer.
  core.String name;

  /// Type of the offer
  /// Possible string values are:
  /// - "OFFER_TYPE_UNSPECIFIED" : Unset.
  /// - "OFFER_TYPE_SPEND_X_GET_Y" : AdWords spend X get Y.
  /// - "OFFER_TYPE_VIDEO" : Youtube video.
  /// - "OFFER_TYPE_SPEND_MATCH" : Spend Match up to Y.
  core.String offerType;

  /// Formatted Spend X amount with currency code.
  core.String spendXAmount;

  OfferCustomer();

  OfferCustomer.fromJson(core.Map _json) {
    if (_json.containsKey("adwordsUrl")) {
      adwordsUrl = _json["adwordsUrl"];
    }
    if (_json.containsKey("countryCode")) {
      countryCode = _json["countryCode"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("eligibilityDaysLeft")) {
      eligibilityDaysLeft = _json["eligibilityDaysLeft"];
    }
    if (_json.containsKey("externalCid")) {
      externalCid = _json["externalCid"];
    }
    if (_json.containsKey("getYAmount")) {
      getYAmount = _json["getYAmount"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("offerType")) {
      offerType = _json["offerType"];
    }
    if (_json.containsKey("spendXAmount")) {
      spendXAmount = _json["spendXAmount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (adwordsUrl != null) {
      _json["adwordsUrl"] = adwordsUrl;
    }
    if (countryCode != null) {
      _json["countryCode"] = countryCode;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (eligibilityDaysLeft != null) {
      _json["eligibilityDaysLeft"] = eligibilityDaysLeft;
    }
    if (externalCid != null) {
      _json["externalCid"] = externalCid;
    }
    if (getYAmount != null) {
      _json["getYAmount"] = getYAmount;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (offerType != null) {
      _json["offerType"] = offerType;
    }
    if (spendXAmount != null) {
      _json["spendXAmount"] = spendXAmount;
    }
    return _json;
  }
}

/// A set of opt-ins for a user.
class OptIns {
  /// An opt-in about receiving email from Partners marketing teams. Includes
  /// member-only events and special promotional offers for Google products.
  core.bool marketComm;

  /// An opt-in about receiving email with customized AdWords campaign
  /// management
  /// tips.
  core.bool performanceSuggestions;

  /// An opt-in to allow recieivng phone calls about their Partners account.
  core.bool phoneContact;

  /// An opt-in to receive special promotional gifts and material in the mail.
  core.bool physicalMail;

  /// An opt-in about receiving email regarding new features and products.
  core.bool specialOffers;

  OptIns();

  OptIns.fromJson(core.Map _json) {
    if (_json.containsKey("marketComm")) {
      marketComm = _json["marketComm"];
    }
    if (_json.containsKey("performanceSuggestions")) {
      performanceSuggestions = _json["performanceSuggestions"];
    }
    if (_json.containsKey("phoneContact")) {
      phoneContact = _json["phoneContact"];
    }
    if (_json.containsKey("physicalMail")) {
      physicalMail = _json["physicalMail"];
    }
    if (_json.containsKey("specialOffers")) {
      specialOffers = _json["specialOffers"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (marketComm != null) {
      _json["marketComm"] = marketComm;
    }
    if (performanceSuggestions != null) {
      _json["performanceSuggestions"] = performanceSuggestions;
    }
    if (phoneContact != null) {
      _json["phoneContact"] = phoneContact;
    }
    if (physicalMail != null) {
      _json["physicalMail"] = physicalMail;
    }
    if (specialOffers != null) {
      _json["specialOffers"] = specialOffers;
    }
    return _json;
  }
}

/// Basic information from a public profile.
class PublicProfile {
  /// The URL to the main display image of the public profile. Being deprecated.
  core.String displayImageUrl;

  /// The display name of the public profile.
  core.String displayName;

  /// The ID which can be used to retrieve more details about the public
  /// profile.
  core.String id;

  /// The URL to the main profile image of the public profile.
  core.String profileImage;

  /// The URL of the public profile.
  core.String url;

  PublicProfile();

  PublicProfile.fromJson(core.Map _json) {
    if (_json.containsKey("displayImageUrl")) {
      displayImageUrl = _json["displayImageUrl"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("profileImage")) {
      profileImage = _json["profileImage"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayImageUrl != null) {
      _json["displayImageUrl"] = displayImageUrl;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (profileImage != null) {
      _json["profileImage"] = profileImage;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Information related to ranking of results.
class Rank {
  /// The type of rank.
  /// Possible string values are:
  /// - "RANK_TYPE_UNSPECIFIED" : Unchosen.
  /// - "RT_FINAL_SCORE" : Total final score.
  core.String type;

  /// The numerical value of the rank.
  core.double value;

  Rank();

  Rank.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// <a href="https://www.google.com/recaptcha/">reCaptcha</a> challenge info.
class RecaptchaChallenge {
  /// The ID of the reCaptcha challenge.
  core.String id;

  /// The response to the reCaptcha challenge.
  core.String response;

  RecaptchaChallenge();

  RecaptchaChallenge.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// Common data that is in each API request.
class RequestMetadata {
  /// Experiment IDs the current request belongs to.
  core.List<core.String> experimentIds;

  /// Locale to use for the current request.
  core.String locale;

  /// Google Partners session ID.
  core.String partnersSessionId;

  /// Source of traffic for the current request.
  TrafficSource trafficSource;

  /// Values to use instead of the user's respective defaults for the current
  /// request. These are only honored by whitelisted products.
  UserOverrides userOverrides;

  RequestMetadata();

  RequestMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("experimentIds")) {
      experimentIds = _json["experimentIds"];
    }
    if (_json.containsKey("locale")) {
      locale = _json["locale"];
    }
    if (_json.containsKey("partnersSessionId")) {
      partnersSessionId = _json["partnersSessionId"];
    }
    if (_json.containsKey("trafficSource")) {
      trafficSource = new TrafficSource.fromJson(_json["trafficSource"]);
    }
    if (_json.containsKey("userOverrides")) {
      userOverrides = new UserOverrides.fromJson(_json["userOverrides"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (experimentIds != null) {
      _json["experimentIds"] = experimentIds;
    }
    if (locale != null) {
      _json["locale"] = locale;
    }
    if (partnersSessionId != null) {
      _json["partnersSessionId"] = partnersSessionId;
    }
    if (trafficSource != null) {
      _json["trafficSource"] = (trafficSource).toJson();
    }
    if (userOverrides != null) {
      _json["userOverrides"] = (userOverrides).toJson();
    }
    return _json;
  }
}

/// Common data that is in each API response.
class ResponseMetadata {
  /// Debug information about this request.
  DebugInfo debugInfo;

  ResponseMetadata();

  ResponseMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("debugInfo")) {
      debugInfo = new DebugInfo.fromJson(_json["debugInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugInfo != null) {
      _json["debugInfo"] = (debugInfo).toJson();
    }
    return _json;
  }
}

/// Agency specialization status
class SpecializationStatus {
  /// The specialization this status is for.
  /// Possible string values are:
  /// - "BADGE_SPECIALIZATION_UNKNOWN" : Unknown specialization
  /// - "BADGE_SPECIALIZATION_ADWORDS_SEARCH" : AdWords Search specialization
  /// - "BADGE_SPECIALIZATION_ADWORDS_DISPLAY" : AdWords Display specialization
  /// - "BADGE_SPECIALIZATION_ADWORDS_MOBILE" : AdWords Mobile specialization
  /// - "BADGE_SPECIALIZATION_ADWORDS_VIDEO" : AdWords Video specialization
  /// - "BADGE_SPECIALIZATION_ADWORDS_SHOPPING" : AdWords Shopping
  /// specialization
  core.String badgeSpecialization;

  /// State of agency specialization.
  /// Possible string values are:
  /// - "BADGE_SPECIALIZATION_STATE_UNKNOWN" : Unknown state
  /// - "BADGE_SPECIALIZATION_STATE_PASSED" : Specialization passed
  /// - "BADGE_SPECIALIZATION_STATE_NOT_PASSED" : Specialization not passed
  /// - "BADGE_SPECIALIZATION_STATE_IN_GRACE" : Specialization in grace
  core.String badgeSpecializationState;

  SpecializationStatus();

  SpecializationStatus.fromJson(core.Map _json) {
    if (_json.containsKey("badgeSpecialization")) {
      badgeSpecialization = _json["badgeSpecialization"];
    }
    if (_json.containsKey("badgeSpecializationState")) {
      badgeSpecializationState = _json["badgeSpecializationState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (badgeSpecialization != null) {
      _json["badgeSpecialization"] = badgeSpecialization;
    }
    if (badgeSpecializationState != null) {
      _json["badgeSpecializationState"] = badgeSpecializationState;
    }
    return _json;
  }
}

/// Source of traffic for the current request.
class TrafficSource {
  /// Identifier to indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  core.String trafficSourceId;

  /// Second level identifier to indicate where the traffic comes from.
  /// An identifier has multiple letters created by a team which redirected the
  /// traffic to us.
  core.String trafficSubId;

  TrafficSource();

  TrafficSource.fromJson(core.Map _json) {
    if (_json.containsKey("trafficSourceId")) {
      trafficSourceId = _json["trafficSourceId"];
    }
    if (_json.containsKey("trafficSubId")) {
      trafficSubId = _json["trafficSubId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (trafficSourceId != null) {
      _json["trafficSourceId"] = trafficSourceId;
    }
    if (trafficSubId != null) {
      _json["trafficSubId"] = trafficSubId;
    }
    return _json;
  }
}

/// A resource representing a user of the Partners platform.
class User {
  /// This is the list of AdWords Manager Accounts the user has edit access to.
  /// If the user has edit access to multiple accounts, the user can choose the
  /// preferred account and we use this when a personal account is needed. Can
  /// be empty meaning the user has access to no accounts.
  /// @OutputOnly
  core.List<AdWordsManagerAccountInfo> availableAdwordsManagerAccounts;

  /// The list of achieved certifications. These are calculated based on exam
  /// results and other requirements.
  /// @OutputOnly
  core.List<Certification> certificationStatus;

  /// The company that the user is associated with.
  /// If not present, the user is not associated with any company.
  CompanyRelation company;

  /// The email address used by the user used for company verification.
  /// @OutputOnly
  core.String companyVerificationEmail;

  /// The list of exams the user ever taken. For each type of exam, only one
  /// entry is listed.
  core.List<ExamStatus> examStatus;

  /// The ID of the user.
  core.String id;

  /// The internal user ID.
  /// Only available for a whitelisted set of api clients.
  core.String internalId;

  /// The most recent time the user interacted with the Partners site.
  /// @OutputOnly
  core.String lastAccessTime;

  /// The list of emails the user has access to/can select as primary.
  /// @OutputOnly
  core.List<core.String> primaryEmails;

  /// The profile information of a Partners user, contains all the directly
  /// editable user information.
  UserProfile profile;

  /// Information about a user's external public profile outside Google
  /// Partners.
  PublicProfile publicProfile;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("availableAdwordsManagerAccounts")) {
      availableAdwordsManagerAccounts = _json["availableAdwordsManagerAccounts"]
          .map((value) => new AdWordsManagerAccountInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("certificationStatus")) {
      certificationStatus = _json["certificationStatus"]
          .map((value) => new Certification.fromJson(value))
          .toList();
    }
    if (_json.containsKey("company")) {
      company = new CompanyRelation.fromJson(_json["company"]);
    }
    if (_json.containsKey("companyVerificationEmail")) {
      companyVerificationEmail = _json["companyVerificationEmail"];
    }
    if (_json.containsKey("examStatus")) {
      examStatus = _json["examStatus"]
          .map((value) => new ExamStatus.fromJson(value))
          .toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("internalId")) {
      internalId = _json["internalId"];
    }
    if (_json.containsKey("lastAccessTime")) {
      lastAccessTime = _json["lastAccessTime"];
    }
    if (_json.containsKey("primaryEmails")) {
      primaryEmails = _json["primaryEmails"];
    }
    if (_json.containsKey("profile")) {
      profile = new UserProfile.fromJson(_json["profile"]);
    }
    if (_json.containsKey("publicProfile")) {
      publicProfile = new PublicProfile.fromJson(_json["publicProfile"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableAdwordsManagerAccounts != null) {
      _json["availableAdwordsManagerAccounts"] = availableAdwordsManagerAccounts
          .map((value) => (value).toJson())
          .toList();
    }
    if (certificationStatus != null) {
      _json["certificationStatus"] =
          certificationStatus.map((value) => (value).toJson()).toList();
    }
    if (company != null) {
      _json["company"] = (company).toJson();
    }
    if (companyVerificationEmail != null) {
      _json["companyVerificationEmail"] = companyVerificationEmail;
    }
    if (examStatus != null) {
      _json["examStatus"] =
          examStatus.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (internalId != null) {
      _json["internalId"] = internalId;
    }
    if (lastAccessTime != null) {
      _json["lastAccessTime"] = lastAccessTime;
    }
    if (primaryEmails != null) {
      _json["primaryEmails"] = primaryEmails;
    }
    if (profile != null) {
      _json["profile"] = (profile).toJson();
    }
    if (publicProfile != null) {
      _json["publicProfile"] = (publicProfile).toJson();
    }
    return _json;
  }
}

/// Values to use instead of the user's respective defaults. These are only
/// honored by whitelisted products.
class UserOverrides {
  /// IP address to use instead of the user's geo-located IP address.
  core.String ipAddress;

  /// Logged-in user ID to impersonate instead of the user's ID.
  core.String userId;

  UserOverrides();

  UserOverrides.fromJson(core.Map _json) {
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// The profile information of a Partners user.
class UserProfile {
  /// The user's mailing address, contains multiple fields.
  Location address;

  /// If the user has edit access to multiple accounts, the user can choose the
  /// preferred account and it is used when a personal account is needed. Can
  /// be empty.
  core.String adwordsManagerAccount;

  /// A list of ids representing which channels the user selected they were in.
  core.List<core.String> channels;

  /// The email address the user has selected on the Partners site as primary.
  core.String emailAddress;

  /// The list of opt-ins for the user, related to communication preferences.
  OptIns emailOptIns;

  /// The user's family name.
  core.String familyName;

  /// The user's given name.
  core.String givenName;

  /// A list of ids representing which industries the user selected.
  core.List<core.String> industries;

  /// A list of ids represnting which job categories the user selected.
  core.List<core.String> jobFunctions;

  /// The list of languages this user understands.
  core.List<core.String> languages;

  /// A list of ids representing which markets the user was interested in.
  core.List<core.String> markets;

  /// The user's phone number.
  core.String phoneNumber;

  /// The user's primary country, an ISO 2-character code.
  core.String primaryCountryCode;

  /// Whether the user's public profile is visible to anyone with the URL.
  core.bool profilePublic;

  UserProfile();

  UserProfile.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = new Location.fromJson(_json["address"]);
    }
    if (_json.containsKey("adwordsManagerAccount")) {
      adwordsManagerAccount = _json["adwordsManagerAccount"];
    }
    if (_json.containsKey("channels")) {
      channels = _json["channels"];
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("emailOptIns")) {
      emailOptIns = new OptIns.fromJson(_json["emailOptIns"]);
    }
    if (_json.containsKey("familyName")) {
      familyName = _json["familyName"];
    }
    if (_json.containsKey("givenName")) {
      givenName = _json["givenName"];
    }
    if (_json.containsKey("industries")) {
      industries = _json["industries"];
    }
    if (_json.containsKey("jobFunctions")) {
      jobFunctions = _json["jobFunctions"];
    }
    if (_json.containsKey("languages")) {
      languages = _json["languages"];
    }
    if (_json.containsKey("markets")) {
      markets = _json["markets"];
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("primaryCountryCode")) {
      primaryCountryCode = _json["primaryCountryCode"];
    }
    if (_json.containsKey("profilePublic")) {
      profilePublic = _json["profilePublic"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = (address).toJson();
    }
    if (adwordsManagerAccount != null) {
      _json["adwordsManagerAccount"] = adwordsManagerAccount;
    }
    if (channels != null) {
      _json["channels"] = channels;
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (emailOptIns != null) {
      _json["emailOptIns"] = (emailOptIns).toJson();
    }
    if (familyName != null) {
      _json["familyName"] = familyName;
    }
    if (givenName != null) {
      _json["givenName"] = givenName;
    }
    if (industries != null) {
      _json["industries"] = industries;
    }
    if (jobFunctions != null) {
      _json["jobFunctions"] = jobFunctions;
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    if (markets != null) {
      _json["markets"] = markets;
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (primaryCountryCode != null) {
      _json["primaryCountryCode"] = primaryCountryCode;
    }
    if (profilePublic != null) {
      _json["profilePublic"] = profilePublic;
    }
    return _json;
  }
}
