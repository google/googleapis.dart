// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.admin.reports_v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client admin/reports_v1';

/// Fetches reports for the administrators of G Suite customers about the usage,
/// collaboration, security, and risk for their users.
class AdminApi {
  /// View audit reports for your G Suite domain
  static const AdminReportsAuditReadonlyScope =
      "https://www.googleapis.com/auth/admin.reports.audit.readonly";

  /// View usage reports for your G Suite domain
  static const AdminReportsUsageReadonlyScope =
      "https://www.googleapis.com/auth/admin.reports.usage.readonly";

  final commons.ApiRequester _requester;

  ActivitiesResourceApi get activities => new ActivitiesResourceApi(_requester);
  ChannelsResourceApi get channels => new ChannelsResourceApi(_requester);
  CustomerUsageReportsResourceApi get customerUsageReports =>
      new CustomerUsageReportsResourceApi(_requester);
  EntityUsageReportsResourceApi get entityUsageReports =>
      new EntityUsageReportsResourceApi(_requester);
  UserUsageReportResourceApi get userUsageReport =>
      new UserUsageReportResourceApi(_requester);

  AdminApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "admin/reports/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ActivitiesResourceApi {
  final commons.ApiRequester _requester;

  ActivitiesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of activities for a specific customer and application.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Represents the profile id or the user email for which the data
  /// should be filtered. When 'all' is specified as the userKey, it returns
  /// usageReports for all users.
  ///
  /// [applicationName] - Application name for which the events are to be
  /// retrieved.
  /// Value must have pattern
  /// "(admin)|(calendar)|(drive)|(login)|(mobile)|(token)|(groups)|(saml)|(chat)|(gplus)|(rules)|(jamboard)|(meet)|(user_accounts)|(access_transparency)|(groups_enterprise)".
  ///
  /// [actorIpAddress] - IP Address of host where the event was performed.
  /// Supports both IPv4 and IPv6 addresses.
  ///
  /// [customerId] - Represents the customer for which the data is to be
  /// fetched.
  /// Value must have pattern "C.+".
  ///
  /// [endTime] - Return events which occurred at or before this time.
  /// Value must have pattern
  /// "(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|([-+])(\d\d):(\d\d))".
  ///
  /// [eventName] - Name of the event being queried.
  ///
  /// [filters] - Event parameters in the form [parameter1
  /// name][operator][parameter1 value],[parameter2 name][operator][parameter2
  /// value],...
  /// Value must have pattern
  /// "(.+[<,<=,==,>=,>,<>].+,)*(.+[<,<=,==,>=,>,<>].+)".
  ///
  /// [maxResults] - Number of activity records to be shown in each page.
  /// Value must be between "1" and "1000".
  ///
  /// [orgUnitID] - the organizational unit's(OU) ID to filter activities from
  /// users belonging to a specific OU or one of its sub-OU(s)
  /// Value must have pattern "(id:[a-z0-9]+)".
  ///
  /// [pageToken] - Token to specify next page.
  ///
  /// [startTime] - Return events which occurred at or after this time.
  /// Value must have pattern
  /// "(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|([-+])(\d\d):(\d\d))".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Activities].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Activities> list(
      core.String userKey, core.String applicationName,
      {core.String actorIpAddress,
      core.String customerId,
      core.String endTime,
      core.String eventName,
      core.String filters,
      core.int maxResults,
      core.String orgUnitID,
      core.String pageToken,
      core.String startTime,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (applicationName == null) {
      throw new core.ArgumentError("Parameter applicationName is required.");
    }
    if (actorIpAddress != null) {
      _queryParams["actorIpAddress"] = [actorIpAddress];
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (eventName != null) {
      _queryParams["eventName"] = [eventName];
    }
    if (filters != null) {
      _queryParams["filters"] = [filters];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orgUnitID != null) {
      _queryParams["orgUnitID"] = [orgUnitID];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'activity/users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/applications/' +
        commons.Escaper.ecapeVariable('$applicationName');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Activities.fromJson(data));
  }

  /// Push changes to activities
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Represents the profile id or the user email for which the data
  /// should be filtered. When 'all' is specified as the userKey, it returns
  /// usageReports for all users.
  ///
  /// [applicationName] - Application name for which the events are to be
  /// retrieved.
  /// Value must have pattern
  /// "(admin)|(calendar)|(drive)|(login)|(mobile)|(token)|(groups)|(saml)|(chat)|(gplus)|(rules)|(jamboard)|(meet)|(user_accounts)|(access_transparency)|(groups_enterprise)".
  ///
  /// [actorIpAddress] - IP Address of host where the event was performed.
  /// Supports both IPv4 and IPv6 addresses.
  ///
  /// [customerId] - Represents the customer for which the data is to be
  /// fetched.
  /// Value must have pattern "C.+".
  ///
  /// [endTime] - Return events which occurred at or before this time.
  /// Value must have pattern
  /// "(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|([-+])(\d\d):(\d\d))".
  ///
  /// [eventName] - Name of the event being queried.
  ///
  /// [filters] - Event parameters in the form [parameter1
  /// name][operator][parameter1 value],[parameter2 name][operator][parameter2
  /// value],...
  /// Value must have pattern
  /// "(.+[<,<=,==,>=,>,<>].+,)*(.+[<,<=,==,>=,>,<>].+)".
  ///
  /// [maxResults] - Number of activity records to be shown in each page.
  /// Value must be between "1" and "1000".
  ///
  /// [orgUnitID] - the organizational unit's(OU) ID to filter activities from
  /// users belonging to a specific OU or one of its sub-OU(s)
  /// Value must have pattern "(id:[a-z0-9]+)".
  ///
  /// [pageToken] - Token to specify next page.
  ///
  /// [startTime] - Return events which occurred at or after this time.
  /// Value must have pattern
  /// "(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|([-+])(\d\d):(\d\d))".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
      Channel request, core.String userKey, core.String applicationName,
      {core.String actorIpAddress,
      core.String customerId,
      core.String endTime,
      core.String eventName,
      core.String filters,
      core.int maxResults,
      core.String orgUnitID,
      core.String pageToken,
      core.String startTime,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (applicationName == null) {
      throw new core.ArgumentError("Parameter applicationName is required.");
    }
    if (actorIpAddress != null) {
      _queryParams["actorIpAddress"] = [actorIpAddress];
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (eventName != null) {
      _queryParams["eventName"] = [eventName];
    }
    if (filters != null) {
      _queryParams["filters"] = [filters];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orgUnitID != null) {
      _queryParams["orgUnitID"] = [orgUnitID];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'activity/users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/applications/' +
        commons.Escaper.ecapeVariable('$applicationName') +
        '/watch';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Channel.fromJson(data));
  }
}

class ChannelsResourceApi {
  final commons.ApiRequester _requester;

  ChannelsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Stop watching resources through this channel
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future stop(Channel request, {core.String $fields}) {
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

    _downloadOptions = null;

    _url = '/admin/reports_v1/channels/stop';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }
}

class CustomerUsageReportsResourceApi {
  final commons.ApiRequester _requester;

  CustomerUsageReportsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a report which is a collection of properties / statistics for a
  /// specific customer.
  ///
  /// Request parameters:
  ///
  /// [date] - Represents the date in yyyy-mm-dd format for which the data is to
  /// be fetched.
  /// Value must have pattern "(\d){4}-(\d){2}-(\d){2}".
  ///
  /// [customerId] - Represents the customer for which the data is to be
  /// fetched.
  /// Value must have pattern "C.+".
  ///
  /// [pageToken] - Token to specify next page.
  ///
  /// [parameters] - Represents the application name, parameter name pairs to
  /// fetch in csv as app_name1:param_name1, app_name2:param_name2.
  /// Value must have pattern
  /// "(((accounts)|(app_maker)|(apps_scripts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)|(meet)):[^,]+,)*(((accounts)|(app_maker)|(apps_scripts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)|(meet)):[^,]+)".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsageReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsageReports> get(core.String date,
      {core.String customerId,
      core.String pageToken,
      core.String parameters,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (date == null) {
      throw new core.ArgumentError("Parameter date is required.");
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (parameters != null) {
      _queryParams["parameters"] = [parameters];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'usage/dates/' + commons.Escaper.ecapeVariable('$date');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UsageReports.fromJson(data));
  }
}

class EntityUsageReportsResourceApi {
  final commons.ApiRequester _requester;

  EntityUsageReportsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a report which is a collection of properties / statistics for a
  /// set of objects.
  ///
  /// Request parameters:
  ///
  /// [entityType] - Type of object. Should be one of - gplus_communities.
  /// Value must have pattern "(gplus_communities)".
  ///
  /// [entityKey] - Represents the key of object for which the data should be
  /// filtered.
  ///
  /// [date] - Represents the date in yyyy-mm-dd format for which the data is to
  /// be fetched.
  /// Value must have pattern "(\d){4}-(\d){2}-(\d){2}".
  ///
  /// [customerId] - Represents the customer for which the data is to be
  /// fetched.
  /// Value must have pattern "C.+".
  ///
  /// [filters] - Represents the set of filters including parameter operator
  /// value.
  /// Value must have pattern
  /// "(((gplus)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+,)*(((gplus)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+)".
  ///
  /// [maxResults] - Maximum number of results to return. Maximum allowed is
  /// 1000
  ///
  /// [pageToken] - Token to specify next page.
  ///
  /// [parameters] - Represents the application name, parameter name pairs to
  /// fetch in csv as app_name1:param_name1, app_name2:param_name2.
  /// Value must have pattern "(((gplus)):[^,]+,)*(((gplus)):[^,]+)".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsageReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsageReports> get(
      core.String entityType, core.String entityKey, core.String date,
      {core.String customerId,
      core.String filters,
      core.int maxResults,
      core.String pageToken,
      core.String parameters,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (entityType == null) {
      throw new core.ArgumentError("Parameter entityType is required.");
    }
    if (entityKey == null) {
      throw new core.ArgumentError("Parameter entityKey is required.");
    }
    if (date == null) {
      throw new core.ArgumentError("Parameter date is required.");
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (filters != null) {
      _queryParams["filters"] = [filters];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (parameters != null) {
      _queryParams["parameters"] = [parameters];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'usage/' +
        commons.Escaper.ecapeVariable('$entityType') +
        '/' +
        commons.Escaper.ecapeVariable('$entityKey') +
        '/dates/' +
        commons.Escaper.ecapeVariable('$date');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UsageReports.fromJson(data));
  }
}

class UserUsageReportResourceApi {
  final commons.ApiRequester _requester;

  UserUsageReportResourceApi(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report which is a collection of properties / statistics for a
  /// set of users.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Represents the profile id or the user email for which the data
  /// should be filtered.
  ///
  /// [date] - Represents the date in yyyy-mm-dd format for which the data is to
  /// be fetched.
  /// Value must have pattern "(\d){4}-(\d){2}-(\d){2}".
  ///
  /// [customerId] - Represents the customer for which the data is to be
  /// fetched.
  /// Value must have pattern "C.+".
  ///
  /// [filters] - Represents the set of filters including parameter operator
  /// value.
  /// Value must have pattern
  /// "(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+,)*(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+)".
  ///
  /// [maxResults] - Maximum number of results to return. Maximum allowed is
  /// 1000
  ///
  /// [orgUnitID] - the organizational unit's ID to filter usage parameters from
  /// users belonging to a specific OU or one of its sub-OU(s).
  /// Value must have pattern "(id:[a-z0-9]+)".
  ///
  /// [pageToken] - Token to specify next page.
  ///
  /// [parameters] - Represents the application name, parameter name pairs to
  /// fetch in csv as app_name1:param_name1, app_name2:param_name2.
  /// Value must have pattern
  /// "(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[^,]+,)*(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[^,]+)".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsageReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsageReports> get(core.String userKey, core.String date,
      {core.String customerId,
      core.String filters,
      core.int maxResults,
      core.String orgUnitID,
      core.String pageToken,
      core.String parameters,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userKey == null) {
      throw new core.ArgumentError("Parameter userKey is required.");
    }
    if (date == null) {
      throw new core.ArgumentError("Parameter date is required.");
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (filters != null) {
      _queryParams["filters"] = [filters];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (orgUnitID != null) {
      _queryParams["orgUnitID"] = [orgUnitID];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (parameters != null) {
      _queryParams["parameters"] = [parameters];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'usage/users/' +
        commons.Escaper.ecapeVariable('$userKey') +
        '/dates/' +
        commons.Escaper.ecapeVariable('$date');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UsageReports.fromJson(data));
  }
}

/// JSON template for a collection of activites.
class Activities {
  /// ETag of the resource.
  core.String etag;

  /// Each record in read response.
  core.List<Activity> items;

  /// Kind of list response this is.
  core.String kind;

  /// Token for retrieving the next page
  core.String nextPageToken;

  Activities();

  Activities.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Activity>((value) => new Activity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// User doing the action.
class ActivityActor {
  /// User or OAuth 2LO request.
  core.String callerType;

  /// Email address of the user.
  core.String email;

  /// For OAuth 2LO API requests, consumer_key of the requestor.
  core.String key;

  /// Obfuscated user id of the user.
  core.String profileId;

  ActivityActor();

  ActivityActor.fromJson(core.Map _json) {
    if (_json.containsKey("callerType")) {
      callerType = _json["callerType"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("profileId")) {
      profileId = _json["profileId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (callerType != null) {
      _json["callerType"] = callerType;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (profileId != null) {
      _json["profileId"] = profileId;
    }
    return _json;
  }
}

/// Nested value of the parameter.
class ActivityEventsParametersMessageValue {
  /// Looping to get parameter values.
  core.List<NestedParameter> parameter;

  ActivityEventsParametersMessageValue();

  ActivityEventsParametersMessageValue.fromJson(core.Map _json) {
    if (_json.containsKey("parameter")) {
      parameter = (_json["parameter"] as core.List)
          .map<NestedParameter>((value) => new NestedParameter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ActivityEventsParametersMultiMessageValue {
  /// Parameter value.
  core.List<NestedParameter> parameter;

  ActivityEventsParametersMultiMessageValue();

  ActivityEventsParametersMultiMessageValue.fromJson(core.Map _json) {
    if (_json.containsKey("parameter")) {
      parameter = (_json["parameter"] as core.List)
          .map<NestedParameter>((value) => new NestedParameter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parameter != null) {
      _json["parameter"] = parameter.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ActivityEventsParameters {
  /// Boolean value of the parameter.
  core.bool boolValue;

  /// Integral value of the parameter.
  core.String intValue;

  /// Nested value of the parameter.
  ActivityEventsParametersMessageValue messageValue;

  /// Multi-int value of the parameter.
  core.List<core.String> multiIntValue;

  /// Nested values of the parameter.
  core.List<ActivityEventsParametersMultiMessageValue> multiMessageValue;

  /// Multi-string value of the parameter.
  core.List<core.String> multiValue;

  /// The name of the parameter.
  core.String name;

  /// String value of the parameter.
  core.String value;

  ActivityEventsParameters();

  ActivityEventsParameters.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("intValue")) {
      intValue = _json["intValue"];
    }
    if (_json.containsKey("messageValue")) {
      messageValue = new ActivityEventsParametersMessageValue.fromJson(
          _json["messageValue"]);
    }
    if (_json.containsKey("multiIntValue")) {
      multiIntValue = (_json["multiIntValue"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("multiMessageValue")) {
      multiMessageValue = (_json["multiMessageValue"] as core.List)
          .map<ActivityEventsParametersMultiMessageValue>((value) =>
              new ActivityEventsParametersMultiMessageValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("multiValue")) {
      multiValue = (_json["multiValue"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (intValue != null) {
      _json["intValue"] = intValue;
    }
    if (messageValue != null) {
      _json["messageValue"] = (messageValue).toJson();
    }
    if (multiIntValue != null) {
      _json["multiIntValue"] = multiIntValue;
    }
    if (multiMessageValue != null) {
      _json["multiMessageValue"] =
          multiMessageValue.map((value) => (value).toJson()).toList();
    }
    if (multiValue != null) {
      _json["multiValue"] = multiValue;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class ActivityEvents {
  /// Name of event.
  core.String name;

  /// Parameter value pairs for various applications.
  core.List<ActivityEventsParameters> parameters;

  /// Type of event.
  core.String type;

  ActivityEvents();

  ActivityEvents.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<ActivityEventsParameters>(
              (value) => new ActivityEventsParameters.fromJson(value))
          .toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Unique identifier for each activity record.
class ActivityId {
  /// Application name to which the event belongs.
  core.String applicationName;

  /// Obfuscated customer ID of the source customer.
  core.String customerId;

  /// Time of occurrence of the activity.
  core.DateTime time;

  /// Unique qualifier if multiple events have the same time.
  core.String uniqueQualifier;

  ActivityId();

  ActivityId.fromJson(core.Map _json) {
    if (_json.containsKey("applicationName")) {
      applicationName = _json["applicationName"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("time")) {
      time = core.DateTime.parse(_json["time"]);
    }
    if (_json.containsKey("uniqueQualifier")) {
      uniqueQualifier = _json["uniqueQualifier"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (applicationName != null) {
      _json["applicationName"] = applicationName;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (time != null) {
      _json["time"] = (time).toIso8601String();
    }
    if (uniqueQualifier != null) {
      _json["uniqueQualifier"] = uniqueQualifier;
    }
    return _json;
  }
}

/// JSON template for the activity resource.
class Activity {
  /// User doing the action.
  ActivityActor actor;

  /// ETag of the entry.
  core.String etag;

  /// Activity events.
  core.List<ActivityEvents> events;

  /// Unique identifier for each activity record.
  ActivityId id;

  /// IP Address of the user doing the action.
  core.String ipAddress;

  /// Kind of resource this is.
  core.String kind;

  /// Domain of source customer.
  core.String ownerDomain;

  Activity();

  Activity.fromJson(core.Map _json) {
    if (_json.containsKey("actor")) {
      actor = new ActivityActor.fromJson(_json["actor"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List)
          .map<ActivityEvents>((value) => new ActivityEvents.fromJson(value))
          .toList();
    }
    if (_json.containsKey("id")) {
      id = new ActivityId.fromJson(_json["id"]);
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("ownerDomain")) {
      ownerDomain = _json["ownerDomain"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actor != null) {
      _json["actor"] = (actor).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (events != null) {
      _json["events"] = events.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = (id).toJson();
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (ownerDomain != null) {
      _json["ownerDomain"] = ownerDomain;
    }
    return _json;
  }
}

/// An notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds. Optional.
  core.String expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "api#channel".
  core.String kind;

  /// Additional parameters controlling delivery channel behavior. Optional.
  core.Map<core.String, core.String> params;

  /// A Boolean value to indicate whether payload is wanted. Optional.
  core.bool payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  /// Stable across different API versions.
  core.String resourceId;

  /// A version-specific identifier for the watched resource.
  core.String resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel. Optional.
  core.String token;

  /// The type of delivery mechanism used for this channel.
  core.String type;

  Channel();

  Channel.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("expiration")) {
      expiration = _json["expiration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("resourceUri")) {
      resourceUri = _json["resourceUri"];
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = address;
    }
    if (expiration != null) {
      _json["expiration"] = expiration;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (resourceUri != null) {
      _json["resourceUri"] = resourceUri;
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// JSON template for a parameter used in various reports.
class NestedParameter {
  /// Boolean value of the parameter.
  core.bool boolValue;

  /// Integral value of the parameter.
  core.String intValue;

  /// Multiple boolean values of the parameter.
  core.List<core.bool> multiBoolValue;

  /// Multiple integral values of the parameter.
  core.List<core.String> multiIntValue;

  /// Multiple string values of the parameter.
  core.List<core.String> multiValue;

  /// The name of the parameter.
  core.String name;

  /// String value of the parameter.
  core.String value;

  NestedParameter();

  NestedParameter.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("intValue")) {
      intValue = _json["intValue"];
    }
    if (_json.containsKey("multiBoolValue")) {
      multiBoolValue = (_json["multiBoolValue"] as core.List).cast<core.bool>();
    }
    if (_json.containsKey("multiIntValue")) {
      multiIntValue = (_json["multiIntValue"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("multiValue")) {
      multiValue = (_json["multiValue"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (intValue != null) {
      _json["intValue"] = intValue;
    }
    if (multiBoolValue != null) {
      _json["multiBoolValue"] = multiBoolValue;
    }
    if (multiIntValue != null) {
      _json["multiIntValue"] = multiIntValue;
    }
    if (multiValue != null) {
      _json["multiValue"] = multiValue;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Information about the type of the item.
class UsageReportEntity {
  /// Obfuscated customer id for the record.
  core.String customerId;

  /// Object key. Only relevant if entity.type = "OBJECT" Note: external-facing
  /// name of report is "Entities" rather than "Objects".
  core.String entityId;

  /// Obfuscated user id for the record.
  core.String profileId;

  /// The type of item, can be customer, user, or entity (aka. object).
  core.String type;

  /// user's email. Only relevant if entity.type = "USER"
  core.String userEmail;

  UsageReportEntity();

  UsageReportEntity.fromJson(core.Map _json) {
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("profileId")) {
      profileId = _json["profileId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("userEmail")) {
      userEmail = _json["userEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (profileId != null) {
      _json["profileId"] = profileId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (userEmail != null) {
      _json["userEmail"] = userEmail;
    }
    return _json;
  }
}

class UsageReportParameters {
  /// Boolean value of the parameter.
  core.bool boolValue;

  /// RFC 3339 formatted value of the parameter.
  core.DateTime datetimeValue;

  /// Integral value of the parameter.
  core.String intValue;

  /// Nested message value of the parameter.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> msgValue;

  /// The name of the parameter.
  core.String name;

  /// String value of the parameter.
  core.String stringValue;

  UsageReportParameters();

  UsageReportParameters.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("datetimeValue")) {
      datetimeValue = core.DateTime.parse(_json["datetimeValue"]);
    }
    if (_json.containsKey("intValue")) {
      intValue = _json["intValue"];
    }
    if (_json.containsKey("msgValue")) {
      msgValue = (_json["msgValue"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (datetimeValue != null) {
      _json["datetimeValue"] = (datetimeValue).toIso8601String();
    }
    if (intValue != null) {
      _json["intValue"] = intValue;
    }
    if (msgValue != null) {
      _json["msgValue"] = msgValue;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/// JSON template for a usage report.
class UsageReport {
  /// The date to which the record belongs.
  core.String date;

  /// Information about the type of the item.
  UsageReportEntity entity;

  /// ETag of the resource.
  core.String etag;

  /// The kind of object.
  core.String kind;

  /// Parameter value pairs for various applications.
  core.List<UsageReportParameters> parameters;

  UsageReport();

  UsageReport.fromJson(core.Map _json) {
    if (_json.containsKey("date")) {
      date = _json["date"];
    }
    if (_json.containsKey("entity")) {
      entity = new UsageReportEntity.fromJson(_json["entity"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List)
          .map<UsageReportParameters>(
              (value) => new UsageReportParameters.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (date != null) {
      _json["date"] = date;
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (parameters != null) {
      _json["parameters"] =
          parameters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class UsageReportsWarningsData {
  /// Key associated with a key-value pair to give detailed information on the
  /// warning.
  core.String key;

  /// Value associated with a key-value pair to give detailed information on the
  /// warning.
  core.String value;

  UsageReportsWarningsData();

  UsageReportsWarningsData.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class UsageReportsWarnings {
  /// Machine readable code / warning type.
  core.String code;

  /// Key-Value pairs to give detailed information on the warning.
  core.List<UsageReportsWarningsData> data;

  /// Human readable message for the warning.
  core.String message;

  UsageReportsWarnings();

  UsageReportsWarnings.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.List)
          .map<UsageReportsWarningsData>(
              (value) => new UsageReportsWarningsData.fromJson(value))
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
    if (data != null) {
      _json["data"] = data.map((value) => (value).toJson()).toList();
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// JSON template for a collection of usage reports.
class UsageReports {
  /// ETag of the resource.
  core.String etag;

  /// The kind of object.
  core.String kind;

  /// Token for retrieving the next page
  core.String nextPageToken;

  /// Various application parameter records.
  core.List<UsageReport> usageReports;

  /// Warnings if any.
  core.List<UsageReportsWarnings> warnings;

  UsageReports();

  UsageReports.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("usageReports")) {
      usageReports = (_json["usageReports"] as core.List)
          .map<UsageReport>((value) => new UsageReport.fromJson(value))
          .toList();
    }
    if (_json.containsKey("warnings")) {
      warnings = (_json["warnings"] as core.List)
          .map<UsageReportsWarnings>(
              (value) => new UsageReportsWarnings.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (usageReports != null) {
      _json["usageReports"] =
          usageReports.map((value) => (value).toJson()).toList();
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
