// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudbilling.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudbilling/v1';

/// Allows developers to manage billing for their Google Cloud Platform projects
///     programmatically.
class CloudbillingApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  BillingAccountsResourceApi get billingAccounts =>
      new BillingAccountsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  ServicesResourceApi get services => new ServicesResourceApi(_requester);

  CloudbillingApi(http.Client client,
      {core.String rootUrl: "https://cloudbilling.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class BillingAccountsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsProjectsResourceApi get projects =>
      new BillingAccountsProjectsResourceApi(_requester);

  BillingAccountsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets information about a billing account. The current authenticated user
  /// must be an [owner of the billing
  /// account](https://support.google.com/cloud/answer/4430947).
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the billing account to retrieve. For
  /// example,
  /// `billingAccounts/012345-567890-ABCDEF`.
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    return _response.then((data) => new BillingAccount.fromJson(data));
  }

  /// Lists the billing accounts that the current authenticated user
  /// [owns](https://support.google.com/cloud/answer/4430947).
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a
  /// `next_page_token` value returned from a previous `ListBillingAccounts`
  /// call. If unspecified, the first page of results is returned.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 100; this is
  /// also the
  /// default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBillingAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBillingAccountsResponse> list(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/billingAccounts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListBillingAccountsResponse.fromJson(data));
  }
}

class BillingAccountsProjectsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsProjectsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the projects associated with a billing account. The current
  /// authenticated user must have the "billing.resourceAssociations.list" IAM
  /// permission, which is often given to billing account
  /// [viewers](https://support.google.com/cloud/answer/4430947).
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the billing account associated with the
  /// projects that
  /// you want to list. For example, `billingAccounts/012345-567890-ABCDEF`.
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a
  /// `next_page_token` value returned from a previous `ListProjectBillingInfo`
  /// call. If unspecified, the first page of results is returned.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 100; this is
  /// also the
  /// default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProjectBillingInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProjectBillingInfoResponse> list(core.String name,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/projects';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListProjectBillingInfoResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the billing information for a project. The current authenticated user
  /// must have [permission to view the
  /// project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo
  /// ).
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the project for which billing information is
  /// retrieved. For example, `projects/tokyo-rain-123`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectBillingInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectBillingInfo> getBillingInfo(core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/billingInfo';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProjectBillingInfo.fromJson(data));
  }

  /// Sets or updates the billing account associated with a project. You specify
  /// the new billing account by setting the `billing_account_name` in the
  /// `ProjectBillingInfo` resource to the resource name of a billing account.
  /// Associating a project with an open billing account enables billing on the
  /// project and allows charges for resource usage. If the project already had
  /// a
  /// billing account, this method changes the billing account used for resource
  /// usage charges.
  ///
  /// *Note:* Incurred charges that have not yet been reported in the
  /// transaction
  /// history of the Google Cloud Console may be billed to the new billing
  /// account, even if the charge occurred before the new billing account was
  /// assigned to the project.
  ///
  /// The current authenticated user must have ownership privileges for both the
  /// [project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo
  /// ) and the [billing
  /// account](https://support.google.com/cloud/answer/4430947).
  ///
  /// You can disable billing on the project by setting the
  /// `billing_account_name` field to empty. This action disassociates the
  /// current billing account from the project. Any billable activity of your
  /// in-use services will stop, and your application could stop functioning as
  /// expected. Any unbilled charges to date will be billed to the previously
  /// associated account. The current authenticated user must be either an owner
  /// of the project or an owner of the billing account for the project.
  ///
  /// Note that associating a project with a *closed* billing account will have
  /// much the same effect as disabling billing on the project: any paid
  /// resources used by the project will be shut down. Thus, unless you wish to
  /// disable billing, you should always call this method with the name of an
  /// *open* billing account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the project associated with the billing
  /// information
  /// that you want to update. For example, `projects/tokyo-rain-123`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectBillingInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectBillingInfo> updateBillingInfo(
      ProjectBillingInfo request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/billingInfo';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProjectBillingInfo.fromJson(data));
  }
}

class ServicesResourceApi {
  final commons.ApiRequester _requester;

  ServicesSkusResourceApi get skus => new ServicesSkusResourceApi(_requester);

  ServicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists all public cloud services.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a
  /// `next_page_token` value returned from a previous `ListServices`
  /// call. If unspecified, the first page of results is returned.
  ///
  /// [pageSize] - Requested page size. Defaults to 5000.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/services';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListServicesResponse.fromJson(data));
  }
}

class ServicesSkusResourceApi {
  final commons.ApiRequester _requester;

  ServicesSkusResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists all publicly available SKUs for a given cloud service.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the service.
  /// Example: "services/DA34-426B-A397"
  /// Value must have pattern "^services/[^/]+$".
  ///
  /// [currencyCode] - The ISO 4217 currency code for the pricing info in the
  /// response proto.
  /// Will use the conversion rate as of start_time.
  /// Optional. If not specified USD will be used.
  ///
  /// [endTime] - Optional exclusive end time of the time range for which the
  /// pricing
  /// versions will be returned. Timestamps in the future are not allowed.
  /// The time range has to be within a single calendar month in
  /// America/Los_Angeles timezone. Time range as a whole is optional. If not
  /// specified, the latest pricing will be returned (up to 12 hours old at
  /// most).
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a
  /// `next_page_token` value returned from a previous `ListSkus`
  /// call. If unspecified, the first page of results is returned.
  ///
  /// [startTime] - Optional inclusive start time of the time range for which
  /// the pricing
  /// versions will be returned. Timestamps in the future are not allowed.
  /// The time range has to be within a single calendar month in
  /// America/Los_Angeles timezone. Time range as a whole is optional. If not
  /// specified, the latest pricing will be returned (up to 12 hours old at
  /// most).
  ///
  /// [pageSize] - Requested page size. Defaults to 5000.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSkusResponse> list(core.String parent,
      {core.String currencyCode,
      core.String endTime,
      core.String pageToken,
      core.String startTime,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (currencyCode != null) {
      _queryParams["currencyCode"] = [currencyCode];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/skus';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSkusResponse.fromJson(data));
  }
}

/// Represents the aggregation level and interval for pricing of a single SKU.
class AggregationInfo {
  /// The number of intervals to aggregate over.
  /// Example: If aggregation_level is "DAILY" and aggregation_count is 14,
  /// aggregation will be over 14 days.
  core.int aggregationCount;

  ///
  /// Possible string values are:
  /// - "AGGREGATION_INTERVAL_UNSPECIFIED"
  /// - "DAILY"
  /// - "MONTHLY"
  core.String aggregationInterval;

  ///
  /// Possible string values are:
  /// - "AGGREGATION_LEVEL_UNSPECIFIED"
  /// - "ACCOUNT"
  /// - "PROJECT"
  core.String aggregationLevel;

  AggregationInfo();

  AggregationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("aggregationCount")) {
      aggregationCount = _json["aggregationCount"];
    }
    if (_json.containsKey("aggregationInterval")) {
      aggregationInterval = _json["aggregationInterval"];
    }
    if (_json.containsKey("aggregationLevel")) {
      aggregationLevel = _json["aggregationLevel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aggregationCount != null) {
      _json["aggregationCount"] = aggregationCount;
    }
    if (aggregationInterval != null) {
      _json["aggregationInterval"] = aggregationInterval;
    }
    if (aggregationLevel != null) {
      _json["aggregationLevel"] = aggregationLevel;
    }
    return _json;
  }
}

/// A billing account in [Google Cloud
/// Console](https://console.cloud.google.com/). You can assign a billing
/// account
/// to one or more projects.
class BillingAccount {
  /// The display name given to the billing account, such as `My Billing
  /// Account`. This name is displayed in the Google Cloud Console.
  core.String displayName;

  /// The resource name of the billing account. The resource name has the form
  /// `billingAccounts/{billing_account_id}`. For example,
  /// `billingAccounts/012345-567890-ABCDEF` would be the resource name for
  /// billing account `012345-567890-ABCDEF`.
  core.String name;

  /// True if the billing account is open, and will therefore be charged for any
  /// usage on associated projects. False if the billing account is closed, and
  /// therefore projects associated with it will be unable to use paid services.
  core.bool open;

  BillingAccount();

  BillingAccount.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("open")) {
      open = _json["open"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (open != null) {
      _json["open"] = open;
    }
    return _json;
  }
}

/// Represents the category hierarchy of a SKU.
class Category {
  /// The type of product the SKU refers to.
  /// Example: "Compute", "Storage", "Network", "ApplicationServices" etc.
  core.String resourceFamily;

  /// A group classification for related SKUs.
  /// Example: "RAM", "GPU", "Prediction", "Ops", "GoogleEgress" etc.
  core.String resourceGroup;

  /// The display name of the service this SKU belongs to.
  core.String serviceDisplayName;

  /// Represents how the SKU is consumed.
  /// Example: "OnDemand", "Preemptible", "Commit1Mo", "Commit1Yr" etc.
  core.String usageType;

  Category();

  Category.fromJson(core.Map _json) {
    if (_json.containsKey("resourceFamily")) {
      resourceFamily = _json["resourceFamily"];
    }
    if (_json.containsKey("resourceGroup")) {
      resourceGroup = _json["resourceGroup"];
    }
    if (_json.containsKey("serviceDisplayName")) {
      serviceDisplayName = _json["serviceDisplayName"];
    }
    if (_json.containsKey("usageType")) {
      usageType = _json["usageType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceFamily != null) {
      _json["resourceFamily"] = resourceFamily;
    }
    if (resourceGroup != null) {
      _json["resourceGroup"] = resourceGroup;
    }
    if (serviceDisplayName != null) {
      _json["serviceDisplayName"] = serviceDisplayName;
    }
    if (usageType != null) {
      _json["usageType"] = usageType;
    }
    return _json;
  }
}

/// Response message for `ListBillingAccounts`.
class ListBillingAccountsResponse {
  /// A list of billing accounts.
  core.List<BillingAccount> billingAccounts;

  /// A token to retrieve the next page of results. To retrieve the next page,
  /// call `ListBillingAccounts` again with the `page_token` field set to this
  /// value. This field is empty if there are no more results to retrieve.
  core.String nextPageToken;

  ListBillingAccountsResponse();

  ListBillingAccountsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("billingAccounts")) {
      billingAccounts = _json["billingAccounts"]
          .map<BillingAccount>((value) => new BillingAccount.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (billingAccounts != null) {
      _json["billingAccounts"] =
          billingAccounts.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Request message for `ListProjectBillingInfoResponse`.
class ListProjectBillingInfoResponse {
  /// A token to retrieve the next page of results. To retrieve the next page,
  /// call `ListProjectBillingInfo` again with the `page_token` field set to
  /// this
  /// value. This field is empty if there are no more results to retrieve.
  core.String nextPageToken;

  /// A list of `ProjectBillingInfo` resources representing the projects
  /// associated with the billing account.
  core.List<ProjectBillingInfo> projectBillingInfo;

  ListProjectBillingInfoResponse();

  ListProjectBillingInfoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("projectBillingInfo")) {
      projectBillingInfo = _json["projectBillingInfo"]
          .map<ProjectBillingInfo>(
              (value) => new ProjectBillingInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (projectBillingInfo != null) {
      _json["projectBillingInfo"] =
          projectBillingInfo.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for `ListServices`.
class ListServicesResponse {
  /// A token to retrieve the next page of results. To retrieve the next page,
  /// call `ListServices` again with the `page_token` field set to this
  /// value. This field is empty if there are no more results to retrieve.
  core.String nextPageToken;

  /// A list of services.
  core.List<Service> services;

  ListServicesResponse();

  ListServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("services")) {
      services = _json["services"]
          .map<Service>((value) => new Service.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (services != null) {
      _json["services"] = services.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for `ListSkus`.
class ListSkusResponse {
  /// A token to retrieve the next page of results. To retrieve the next page,
  /// call `ListSkus` again with the `page_token` field set to this
  /// value. This field is empty if there are no more results to retrieve.
  core.String nextPageToken;

  /// The list of public SKUs of the given service.
  core.List<Sku> skus;

  ListSkusResponse();

  ListSkusResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("skus")) {
      skus =
          _json["skus"].map<Sku>((value) => new Sku.fromJson(value)).toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (skus != null) {
      _json["skus"] = skus.map((value) => (value).toJson()).toList();
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

/// Expresses a mathematical pricing formula. For Example:-
///
/// `usage_unit: GBy`
/// `tiered_rates:`
///    `[start_usage_amount: 20, unit_price: $10]`
///    `[start_usage_amount: 100, unit_price: $5]`
///
/// The above expresses a pricing formula where the first 20GB is free, the
/// next 80GB is priced at $10 per GB followed by $5 per GB for additional
/// usage.
class PricingExpression {
  /// The base unit for the SKU which is the unit used in usage exports.
  /// Example: "By"
  core.String baseUnit;

  /// Conversion factor for converting from price per usage_unit to price per
  /// base_unit, and start_usage_amount to start_usage_amount in base_unit.
  /// unit_price / base_unit_conversion_factor = price per base_unit.
  /// start_usage_amount * base_unit_conversion_factor = start_usage_amount in
  /// base_unit.
  core.double baseUnitConversionFactor;

  /// The base unit in human readable form.
  /// Example: "byte".
  core.String baseUnitDescription;

  /// The recommended quantity of units for displaying pricing info. When
  /// displaying pricing info it is recommended to display:
  /// (unit_price * display_quantity) per display_quantity usage_unit.
  /// This field does not affect the pricing formula and is for display purposes
  /// only.
  /// Example: If the unit_price is "0.0001 USD", the usage_unit is "GB" and
  /// the display_quantity is "1000" then the recommended way of displaying the
  /// pricing info is "0.10 USD per 1000 GB"
  core.double displayQuantity;

  /// The list of tiered rates for this pricing. The total cost is computed by
  /// applying each of the tiered rates on usage. This repeated list is sorted
  /// by ascending order of start_usage_amount.
  core.List<TierRate> tieredRates;

  /// The short hand for unit of usage this pricing is specified in.
  /// Example: usage_unit of "GiBy" means that usage is specified in "Gibi
  /// Byte".
  core.String usageUnit;

  /// The unit of usage in human readable form.
  /// Example: "gibi byte".
  core.String usageUnitDescription;

  PricingExpression();

  PricingExpression.fromJson(core.Map _json) {
    if (_json.containsKey("baseUnit")) {
      baseUnit = _json["baseUnit"];
    }
    if (_json.containsKey("baseUnitConversionFactor")) {
      baseUnitConversionFactor = _json["baseUnitConversionFactor"];
    }
    if (_json.containsKey("baseUnitDescription")) {
      baseUnitDescription = _json["baseUnitDescription"];
    }
    if (_json.containsKey("displayQuantity")) {
      displayQuantity = _json["displayQuantity"];
    }
    if (_json.containsKey("tieredRates")) {
      tieredRates = _json["tieredRates"]
          .map<TierRate>((value) => new TierRate.fromJson(value))
          .toList();
    }
    if (_json.containsKey("usageUnit")) {
      usageUnit = _json["usageUnit"];
    }
    if (_json.containsKey("usageUnitDescription")) {
      usageUnitDescription = _json["usageUnitDescription"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (baseUnit != null) {
      _json["baseUnit"] = baseUnit;
    }
    if (baseUnitConversionFactor != null) {
      _json["baseUnitConversionFactor"] = baseUnitConversionFactor;
    }
    if (baseUnitDescription != null) {
      _json["baseUnitDescription"] = baseUnitDescription;
    }
    if (displayQuantity != null) {
      _json["displayQuantity"] = displayQuantity;
    }
    if (tieredRates != null) {
      _json["tieredRates"] =
          tieredRates.map((value) => (value).toJson()).toList();
    }
    if (usageUnit != null) {
      _json["usageUnit"] = usageUnit;
    }
    if (usageUnitDescription != null) {
      _json["usageUnitDescription"] = usageUnitDescription;
    }
    return _json;
  }
}

/// Represents the pricing information for a SKU at a single point of time.
class PricingInfo {
  /// Aggregation Info. This can be left unspecified if the pricing expression
  /// doesn't require aggregation.
  AggregationInfo aggregationInfo;

  /// Conversion rate used for currency conversion, from USD to the currency
  /// specified in the request. This includes any surcharge collected for
  /// billing
  /// in non USD currency. If a currency is not specified in the request this
  /// defaults to 1.0.
  /// Example: USD * currency_conversion_rate = JPY
  core.double currencyConversionRate;

  /// The timestamp from which this pricing was effective within the requested
  /// time range. This is guaranteed to be greater than or equal to the
  /// start_time field in the request and less than the end_time field in the
  /// request. If a time range was not specified in the request this field will
  /// be equivalent to a time within the last 12 hours, indicating the latest
  /// pricing info.
  core.String effectiveTime;

  /// Expresses the pricing formula. See `PricingExpression` for an example.
  PricingExpression pricingExpression;

  /// An optional human readable summary of the pricing information, has a
  /// maximum length of 256 characters.
  core.String summary;

  PricingInfo();

  PricingInfo.fromJson(core.Map _json) {
    if (_json.containsKey("aggregationInfo")) {
      aggregationInfo = new AggregationInfo.fromJson(_json["aggregationInfo"]);
    }
    if (_json.containsKey("currencyConversionRate")) {
      currencyConversionRate = _json["currencyConversionRate"];
    }
    if (_json.containsKey("effectiveTime")) {
      effectiveTime = _json["effectiveTime"];
    }
    if (_json.containsKey("pricingExpression")) {
      pricingExpression =
          new PricingExpression.fromJson(_json["pricingExpression"]);
    }
    if (_json.containsKey("summary")) {
      summary = _json["summary"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aggregationInfo != null) {
      _json["aggregationInfo"] = (aggregationInfo).toJson();
    }
    if (currencyConversionRate != null) {
      _json["currencyConversionRate"] = currencyConversionRate;
    }
    if (effectiveTime != null) {
      _json["effectiveTime"] = effectiveTime;
    }
    if (pricingExpression != null) {
      _json["pricingExpression"] = (pricingExpression).toJson();
    }
    if (summary != null) {
      _json["summary"] = summary;
    }
    return _json;
  }
}

/// Encapsulation of billing information for a Cloud Console project. A project
/// has at most one associated billing account at a time (but a billing account
/// can be assigned to multiple projects).
class ProjectBillingInfo {
  /// The resource name of the billing account associated with the project, if
  /// any. For example, `billingAccounts/012345-567890-ABCDEF`.
  core.String billingAccountName;

  /// True if the project is associated with an open billing account, to which
  /// usage on the project is charged. False if the project is associated with a
  /// closed billing account, or no billing account at all, and therefore cannot
  /// use paid services. This field is read-only.
  core.bool billingEnabled;

  /// The resource name for the `ProjectBillingInfo`; has the form
  /// `projects/{project_id}/billingInfo`. For example, the resource name for
  /// the
  /// billing information for project `tokyo-rain-123` would be
  /// `projects/tokyo-rain-123/billingInfo`. This field is read-only.
  core.String name;

  /// The ID of the project that this `ProjectBillingInfo` represents, such as
  /// `tokyo-rain-123`. This is a convenience field so that you don't need to
  /// parse the `name` field to obtain a project ID. This field is read-only.
  core.String projectId;

  ProjectBillingInfo();

  ProjectBillingInfo.fromJson(core.Map _json) {
    if (_json.containsKey("billingAccountName")) {
      billingAccountName = _json["billingAccountName"];
    }
    if (_json.containsKey("billingEnabled")) {
      billingEnabled = _json["billingEnabled"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (billingAccountName != null) {
      _json["billingAccountName"] = billingAccountName;
    }
    if (billingEnabled != null) {
      _json["billingEnabled"] = billingEnabled;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/// Encapsulates a single service in Google Cloud Platform.
class Service {
  /// A human readable display name for this service.
  core.String displayName;

  /// The resource name for the service.
  /// Example: "services/DA34-426B-A397"
  core.String name;

  /// The identifier for the service.
  /// Example: "DA34-426B-A397"
  core.String serviceId;

  Service();

  Service.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("serviceId")) {
      serviceId = _json["serviceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (serviceId != null) {
      _json["serviceId"] = serviceId;
    }
    return _json;
  }
}

/// Encapsulates a single SKU in Google Cloud Platform
class Sku {
  /// The category hierarchy of this SKU, purely for organizational purpose.
  Category category;

  /// A human readable description of the SKU, has a maximum length of 256
  /// characters.
  core.String description;

  /// The resource name for the SKU.
  /// Example: "services/DA34-426B-A397/skus/AA95-CD31-42FE"
  core.String name;

  /// A timeline of pricing info for this SKU in chronological order.
  core.List<PricingInfo> pricingInfo;

  /// Identifies the service provider.
  /// This is 'Google' for first party services in Google Cloud Platform.
  core.String serviceProviderName;

  /// List of service regions this SKU is offered at.
  /// Example: "asia-east1"
  /// Service regions can be found at https://cloud.google.com/about/locations/
  core.List<core.String> serviceRegions;

  /// The identifier for the SKU.
  /// Example: "AA95-CD31-42FE"
  core.String skuId;

  Sku();

  Sku.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = new Category.fromJson(_json["category"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pricingInfo")) {
      pricingInfo = _json["pricingInfo"]
          .map<PricingInfo>((value) => new PricingInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("serviceProviderName")) {
      serviceProviderName = _json["serviceProviderName"];
    }
    if (_json.containsKey("serviceRegions")) {
      serviceRegions = _json["serviceRegions"];
    }
    if (_json.containsKey("skuId")) {
      skuId = _json["skuId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (category != null) {
      _json["category"] = (category).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pricingInfo != null) {
      _json["pricingInfo"] =
          pricingInfo.map((value) => (value).toJson()).toList();
    }
    if (serviceProviderName != null) {
      _json["serviceProviderName"] = serviceProviderName;
    }
    if (serviceRegions != null) {
      _json["serviceRegions"] = serviceRegions;
    }
    if (skuId != null) {
      _json["skuId"] = skuId;
    }
    return _json;
  }
}

/// The price rate indicating starting usage and its corresponding price.
class TierRate {
  /// Usage is priced at this rate only after this amount.
  /// Example: start_usage_amount of 10 indicates that the usage will be priced
  /// at the unit_price after the first 10 usage_units.
  core.double startUsageAmount;

  /// The price per unit of usage.
  /// Example: unit_price of amount $10 indicates that each unit will cost $10.
  Money unitPrice;

  TierRate();

  TierRate.fromJson(core.Map _json) {
    if (_json.containsKey("startUsageAmount")) {
      startUsageAmount = _json["startUsageAmount"];
    }
    if (_json.containsKey("unitPrice")) {
      unitPrice = new Money.fromJson(_json["unitPrice"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (startUsageAmount != null) {
      _json["startUsageAmount"] = startUsageAmount;
    }
    if (unitPrice != null) {
      _json["unitPrice"] = (unitPrice).toJson();
    }
    return _json;
  }
}
