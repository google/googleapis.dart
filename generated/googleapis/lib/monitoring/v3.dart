// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.monitoring.v3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client monitoring/v3';

/// Manages your Stackdriver Monitoring data and configurations. Most projects
/// must be associated with a Stackdriver account, with a few exceptions as
/// noted on the individual method pages. The table entries below are presented
/// in alphabetical order, not in order of common use. For explanations of the
/// concepts found in the table entries, read the Stackdriver Monitoring
/// documentation.
class MonitoringApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and write monitoring data for all of your Google and third-party
  /// Cloud and API projects
  static const MonitoringScope = "https://www.googleapis.com/auth/monitoring";

  /// View monitoring data for all of your Google Cloud and third-party projects
  static const MonitoringReadScope =
      "https://www.googleapis.com/auth/monitoring.read";

  /// Publish metric data to your Google Cloud projects
  static const MonitoringWriteScope =
      "https://www.googleapis.com/auth/monitoring.write";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  UptimeCheckIpsResourceApi get uptimeCheckIps =>
      new UptimeCheckIpsResourceApi(_requester);

  MonitoringApi(http.Client client,
      {core.String rootUrl = "https://monitoring.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAlertPoliciesResourceApi get alertPolicies =>
      new ProjectsAlertPoliciesResourceApi(_requester);
  ProjectsCollectdTimeSeriesResourceApi get collectdTimeSeries =>
      new ProjectsCollectdTimeSeriesResourceApi(_requester);
  ProjectsGroupsResourceApi get groups =>
      new ProjectsGroupsResourceApi(_requester);
  ProjectsMetricDescriptorsResourceApi get metricDescriptors =>
      new ProjectsMetricDescriptorsResourceApi(_requester);
  ProjectsMonitoredResourceDescriptorsResourceApi
      get monitoredResourceDescriptors =>
          new ProjectsMonitoredResourceDescriptorsResourceApi(_requester);
  ProjectsNotificationChannelDescriptorsResourceApi
      get notificationChannelDescriptors =>
          new ProjectsNotificationChannelDescriptorsResourceApi(_requester);
  ProjectsNotificationChannelsResourceApi get notificationChannels =>
      new ProjectsNotificationChannelsResourceApi(_requester);
  ProjectsTimeSeriesResourceApi get timeSeries =>
      new ProjectsTimeSeriesResourceApi(_requester);
  ProjectsUptimeCheckConfigsResourceApi get uptimeCheckConfigs =>
      new ProjectsUptimeCheckConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsAlertPoliciesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsAlertPoliciesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new alerting policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project in which to create the alerting policy. The format is
  /// projects/[PROJECT_ID].Note that this field names the parent container in
  /// which the alerting policy will be written, not the name of the created
  /// policy. The alerting policy that is returned will have a name that
  /// contains a normalized representation of this name as a prefix but adds a
  /// suffix of the form /alertPolicies/[POLICY_ID], identifying the policy in
  /// the container.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertPolicy> create(AlertPolicy request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/alertPolicies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AlertPolicy.fromJson(data));
  }

  /// Deletes an alerting policy.
  ///
  /// Request parameters:
  ///
  /// [name] - The alerting policy to delete. The format is:
  /// projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  /// For more information, see AlertPolicy.
  /// Value must have pattern "^projects/[^/]+/alertPolicies/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a single alerting policy.
  ///
  /// Request parameters:
  ///
  /// [name] - The alerting policy to retrieve. The format is
  /// projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  ///
  /// Value must have pattern "^projects/[^/]+/alertPolicies/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertPolicy> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AlertPolicy.fromJson(data));
  }

  /// Lists the existing alerting policies for the project.
  ///
  /// Request parameters:
  ///
  /// [name] - The project whose alert policies are to be listed. The format is
  /// projects/[PROJECT_ID]
  /// Note that this field names the parent container in which the alerting
  /// policies to be listed are stored. To retrieve a single alerting policy by
  /// name, use the GetAlertPolicy operation, instead.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [orderBy] - A comma-separated list of fields by which to sort the result.
  /// Supports the same set of field references as the filter field. Entries can
  /// be prefixed with a minus sign to sort by the field in descending order.For
  /// more details, see sorting and filtering.
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return more results from the previous method
  /// call.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by alert policies to be included in the response.For more details, see
  /// sorting and filtering.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertPoliciesResponse> list(core.String name,
      {core.String orderBy,
      core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/alertPolicies';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAlertPoliciesResponse.fromJson(data));
  }

  /// Updates an alerting policy. You can either replace the entire policy with
  /// a new one or replace only certain fields in the current alerting policy by
  /// specifying the fields to be updated via updateMask. Returns the updated
  /// alerting policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required if the policy exists. The resource name for this policy.
  /// The syntax is:
  /// projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  /// [ALERT_POLICY_ID] is assigned by Stackdriver Monitoring when the policy is
  /// created. When calling the alertPolicies.create method, do not include the
  /// name field in the alerting policy passed as part of the request.
  /// Value must have pattern "^projects/[^/]+/alertPolicies/[^/]+$".
  ///
  /// [updateMask] - Optional. A list of alerting policy field names. If this
  /// field is not empty, each listed field in the existing alerting policy is
  /// set to the value of the corresponding field in the supplied policy
  /// (alert_policy), or to the field's default value if the field is not in the
  /// supplied alerting policy. Fields not listed retain their previous
  /// value.Examples of valid field masks include display_name, documentation,
  /// documentation.content, documentation.mime_type, user_labels,
  /// user_label.nameofkey, enabled, conditions, combiner, etc.If this field is
  /// empty, then the supplied alerting policy replaces the existing policy. It
  /// is the same as deleting the existing policy and adding the supplied
  /// policy, except for the following:
  /// The new policy will have the same [ALERT_POLICY_ID] as the former policy.
  /// This gives you continuity with the former policy in your notifications and
  /// incidents.
  /// Conditions in the new policy will keep their former [CONDITION_ID] if the
  /// supplied condition includes the name field with that [CONDITION_ID]. If
  /// the supplied condition omits the name field, then a new [CONDITION_ID] is
  /// created.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertPolicy> patch(AlertPolicy request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AlertPolicy.fromJson(data));
  }
}

class ProjectsCollectdTimeSeriesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsCollectdTimeSeriesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Stackdriver Monitoring Agent only: Creates a new time series.<aside
  /// class="caution">This method is only for use by the Stackdriver Monitoring
  /// Agent. Use projects.timeSeries.create instead.</aside>
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project in which to create the time series. The format is
  /// "projects/PROJECT_ID_OR_NUMBER".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateCollectdTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateCollectdTimeSeriesResponse> create(
      CreateCollectdTimeSeriesRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/collectdTimeSeries';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CreateCollectdTimeSeriesResponse.fromJson(data));
  }
}

class ProjectsGroupsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsGroupsMembersResourceApi get members =>
      new ProjectsGroupsMembersResourceApi(_requester);

  ProjectsGroupsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project in which to create the group. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [validateOnly] - If true, validate this request but do not create the
  /// group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> create(Group request, core.String name,
      {core.bool validateOnly, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (validateOnly != null) {
      _queryParams["validateOnly"] = ["${validateOnly}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name') + '/groups';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// Deletes an existing group.
  ///
  /// Request parameters:
  ///
  /// [name] - The group to delete. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  /// Value must have pattern "^projects/[^/]+/groups/[^/]+$".
  ///
  /// [recursive] - If this field is true, then the request means to delete a
  /// group with all its descendants. Otherwise, the request means to delete a
  /// group only when it has no descendants. The default value is false.
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
  async.Future<Empty> delete(core.String name,
      {core.bool recursive, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (recursive != null) {
      _queryParams["recursive"] = ["${recursive}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a single group.
  ///
  /// Request parameters:
  ///
  /// [name] - The group to retrieve. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  /// Value must have pattern "^projects/[^/]+/groups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }

  /// Lists the existing groups.
  ///
  /// Request parameters:
  ///
  /// [name] - The project whose groups are to be listed. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [ancestorsOfGroup] - A group name:
  /// "projects/{project_id_or_number}/groups/{group_id}". Returns groups that
  /// are ancestors of the specified group. The groups are returned in order,
  /// starting with the immediate parent and ending with the most distant
  /// ancestor. If the specified group has no immediate parent, the results are
  /// empty.
  ///
  /// [childrenOfGroup] - A group name:
  /// "projects/{project_id_or_number}/groups/{group_id}". Returns groups whose
  /// parentName field contains the group name. If no groups have this parent,
  /// the results are empty.
  ///
  /// [descendantsOfGroup] - A group name:
  /// "projects/{project_id_or_number}/groups/{group_id}". Returns the
  /// descendants of the specified group. This is a superset of the results
  /// returned by the childrenOfGroup filter, and includes children-of-children,
  /// and so forth.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String ancestorsOfGroup,
      core.String childrenOfGroup,
      core.String descendantsOfGroup,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (ancestorsOfGroup != null) {
      _queryParams["ancestorsOfGroup"] = [ancestorsOfGroup];
    }
    if (childrenOfGroup != null) {
      _queryParams["childrenOfGroup"] = [childrenOfGroup];
    }
    if (descendantsOfGroup != null) {
      _queryParams["descendantsOfGroup"] = [descendantsOfGroup];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name') + '/groups';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListGroupsResponse.fromJson(data));
  }

  /// Updates an existing group. You can change any group attributes except
  /// name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of this group. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". When creating a
  /// group, this field is ignored and a new name is created consisting of the
  /// project specified in the call to CreateGroup and a unique {group_id} that
  /// is generated automatically.
  /// Value must have pattern "^projects/[^/]+/groups/[^/]+$".
  ///
  /// [validateOnly] - If true, validate this request but do not update the
  /// existing group.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> update(Group request, core.String name,
      {core.bool validateOnly, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (validateOnly != null) {
      _queryParams["validateOnly"] = ["${validateOnly}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Group.fromJson(data));
  }
}

class ProjectsGroupsMembersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsGroupsMembersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists the monitored resources that are members of a group.
  ///
  /// Request parameters:
  ///
  /// [name] - The group whose members are listed. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  /// Value must have pattern "^projects/[^/]+/groups/[^/]+$".
  ///
  /// [interval_endTime] - Required. The end of the time interval.
  ///
  /// [filter] - An optional list filter describing the members to be returned.
  /// The filter may reference the type, labels, and metadata of monitored
  /// resources that comprise the group. For example, to return only resources
  /// representing Compute Engine VM instances, use this filter:
  /// resource.type = "gce_instance"
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [interval_startTime] - Optional. The beginning of the time interval. The
  /// default value for the start time is the end time. The start time must not
  /// be later than the end time.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupMembersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupMembersResponse> list(core.String name,
      {core.String interval_endTime,
      core.String filter,
      core.String pageToken,
      core.String interval_startTime,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (interval_endTime != null) {
      _queryParams["interval.endTime"] = [interval_endTime];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (interval_startTime != null) {
      _queryParams["interval.startTime"] = [interval_startTime];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name') + '/members';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListGroupMembersResponse.fromJson(data));
  }
}

class ProjectsMetricDescriptorsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMetricDescriptorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new metric descriptor. User-created metric descriptors define
  /// custom metrics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetricDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetricDescriptor> create(
      MetricDescriptor request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/metricDescriptors';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MetricDescriptor.fromJson(data));
  }

  /// Deletes a metric descriptor. Only user-created custom metrics can be
  /// deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - The metric descriptor on which to execute the request. The format
  /// is "projects/{project_id_or_number}/metricDescriptors/{metric_id}". An
  /// example of {metric_id} is: "custom.googleapis.com/my_test_metric".
  /// Value must have pattern "^projects/[^/]+/metricDescriptors/.+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a single metric descriptor. This method does not require a
  /// Stackdriver account.
  ///
  /// Request parameters:
  ///
  /// [name] - The metric descriptor on which to execute the request. The format
  /// is "projects/{project_id_or_number}/metricDescriptors/{metric_id}". An
  /// example value of {metric_id} is
  /// "compute.googleapis.com/instance/disk/read_bytes_count".
  /// Value must have pattern "^projects/[^/]+/metricDescriptors/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MetricDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MetricDescriptor> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new MetricDescriptor.fromJson(data));
  }

  /// Lists metric descriptors that match a filter. This method does not require
  /// a Stackdriver account.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - If this field is empty, all custom and system-defined metric
  /// descriptors are returned. Otherwise, the filter specifies which metric
  /// descriptors are to be returned. For example, the following filter matches
  /// all custom metrics:
  /// metric.type = starts_with("custom.googleapis.com/")
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMetricDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMetricDescriptorsResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/metricDescriptors';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListMetricDescriptorsResponse.fromJson(data));
  }
}

class ProjectsMonitoredResourceDescriptorsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMonitoredResourceDescriptorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets a single monitored resource descriptor. This method does not require
  /// a Stackdriver account.
  ///
  /// Request parameters:
  ///
  /// [name] - The monitored resource descriptor to get. The format is
  /// "projects/{project_id_or_number}/monitoredResourceDescriptors/{resource_type}".
  /// The {resource_type} is a predefined type, such as cloudsql_database.
  /// Value must have pattern
  /// "^projects/[^/]+/monitoredResourceDescriptors/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MonitoredResourceDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MonitoredResourceDescriptor> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new MonitoredResourceDescriptor.fromJson(data));
  }

  /// Lists monitored resource descriptors that match a filter. This method does
  /// not require a Stackdriver account.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return.
  ///
  /// [filter] - An optional filter describing the descriptors to be returned.
  /// The filter can reference the descriptor's type and labels. For example,
  /// the following filter returns only Google Compute Engine descriptors that
  /// have an id label:
  /// resource.type = starts_with("gce_") AND resource.label:id
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMonitoredResourceDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMonitoredResourceDescriptorsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/monitoredResourceDescriptors';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ListMonitoredResourceDescriptorsResponse.fromJson(data));
  }
}

class ProjectsNotificationChannelDescriptorsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsNotificationChannelDescriptorsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets a single channel descriptor. The descriptor indicates which fields
  /// are expected / permitted for a notification channel of the given type.
  ///
  /// Request parameters:
  ///
  /// [name] - The channel type for which to execute the request. The format is
  /// projects/[PROJECT_ID]/notificationChannelDescriptors/{channel_type}.
  /// Value must have pattern
  /// "^projects/[^/]+/notificationChannelDescriptors/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannelDescriptor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannelDescriptor> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new NotificationChannelDescriptor.fromJson(data));
  }

  /// Lists the descriptors for supported channel types. The use of descriptors
  /// makes it possible for new channel types to be dynamically added.
  ///
  /// Request parameters:
  ///
  /// [name] - The REST resource name of the parent from which to retrieve the
  /// notification channel descriptors. The expected syntax is:
  /// projects/[PROJECT_ID]
  /// Note that this names the parent container in which to look for the
  /// descriptors; to retrieve a single descriptor by name, use the
  /// GetNotificationChannelDescriptor operation, instead.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - If non-empty, page_token must contain a value returned as
  /// the next_page_token in a previous response to request the next set of
  /// results.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// If not set to a positive number, a reasonable value will be chosen by the
  /// service.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationChannelDescriptorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationChannelDescriptorsResponse> list(
      core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

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

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/notificationChannelDescriptors';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new ListNotificationChannelDescriptorsResponse.fromJson(data));
  }
}

class ProjectsNotificationChannelsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsNotificationChannelsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new notification channel, representing a single notification
  /// endpoint such as an email address, SMS number, or PagerDuty service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is:
  /// projects/[PROJECT_ID]
  /// Note that this names the container into which the channel will be written.
  /// This does not name the newly created channel. The resulting channel's name
  /// will have a normalized version of this field as a prefix, but will add
  /// /notificationChannels/[CHANNEL_ID] to identify the channel.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> create(
      NotificationChannel request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/notificationChannels';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NotificationChannel.fromJson(data));
  }

  /// Deletes a notification channel.
  ///
  /// Request parameters:
  ///
  /// [name] - The channel for which to execute the request. The format is
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID].
  /// Value must have pattern "^projects/[^/]+/notificationChannels/[^/]+$".
  ///
  /// [force] - If true, the notification channel will be deleted regardless of
  /// its use in alert policies (the policies will be updated to remove the
  /// channel). If false, channels that are still referenced by an existing
  /// alerting policy will fail to be deleted in a delete operation.
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
  async.Future<Empty> delete(core.String name,
      {core.bool force, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (force != null) {
      _queryParams["force"] = ["${force}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a single notification channel. The channel includes the relevant
  /// configuration details with which the channel was created. However, the
  /// response may truncate or omit passwords, API keys, or other private key
  /// matter and thus the response may not be 100% identical to the information
  /// that was supplied in the call to the create method.
  ///
  /// Request parameters:
  ///
  /// [name] - The channel for which to execute the request. The format is
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID].
  /// Value must have pattern "^projects/[^/]+/notificationChannels/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NotificationChannel.fromJson(data));
  }

  /// Requests a verification code for an already verified channel that can then
  /// be used in a call to VerifyNotificationChannel() on a different channel
  /// with an equivalent identity in the same or in a different project. This
  /// makes it possible to copy a channel between projects without requiring
  /// manual reverification of the channel. If the channel is not in the
  /// verified state, this method will fail (in other words, this may only be
  /// used if the SendNotificationChannelVerificationCode and
  /// VerifyNotificationChannel paths have already been used to put the given
  /// channel into the verified state).There is no guarantee that the
  /// verification codes returned by this method will be of a similar structure
  /// or form as the ones that are delivered to the channel via
  /// SendNotificationChannelVerificationCode; while VerifyNotificationChannel()
  /// will recognize both the codes delivered via
  /// SendNotificationChannelVerificationCode() and returned from
  /// GetNotificationChannelVerificationCode(), it is typically the case that
  /// the verification codes delivered via
  /// SendNotificationChannelVerificationCode() will be shorter and also have a
  /// shorter expiration (e.g. codes such as "G-123456") whereas
  /// GetVerificationCode() will typically return a much longer, websafe base 64
  /// encoded string that has a longer expiration time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The notification channel for which a verification code is to be
  /// generated and retrieved. This must name a channel that is already
  /// verified; if the specified channel is not verified, the request will fail.
  /// Value must have pattern "^projects/[^/]+/notificationChannels/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetNotificationChannelVerificationCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetNotificationChannelVerificationCodeResponse>
      getVerificationCode(GetNotificationChannelVerificationCodeRequest request,
          core.String name,
          {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':getVerificationCode';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) =>
        new GetNotificationChannelVerificationCodeResponse.fromJson(data));
  }

  /// Lists the notification channels that have been created for the project.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is
  /// projects/[PROJECT_ID]. That is, this names the container in which to look
  /// for the notification channels; it does not name a specific channel. To
  /// query a specific channel by REST resource name, use the
  /// GetNotificationChannel operation.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - If provided, this field specifies the criteria that must be met
  /// by notification channels to be included in the response.For more details,
  /// see sorting and filtering.
  ///
  /// [orderBy] - A comma-separated list of fields by which to sort the result.
  /// Supports the same set of fields as in filter. Entries can be prefixed with
  /// a minus sign to sort in descending rather than ascending order.For more
  /// details, see sorting and filtering.
  ///
  /// [pageToken] - If non-empty, page_token must contain a value returned as
  /// the next_page_token in a previous response to request the next set of
  /// results.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// If not set to a positive number, a reasonable value will be chosen by the
  /// service.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNotificationChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNotificationChannelsResponse> list(core.String name,
      {core.String filter,
      core.String orderBy,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
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

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/notificationChannels';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListNotificationChannelsResponse.fromJson(data));
  }

  /// Updates a notification channel. Fields not specified in the field mask
  /// remain unchanged.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The full REST resource name for this channel. The syntax is:
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
  /// The [CHANNEL_ID] is automatically assigned by the server on creation.
  /// Value must have pattern "^projects/[^/]+/notificationChannels/[^/]+$".
  ///
  /// [updateMask] - The fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> patch(
      NotificationChannel request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NotificationChannel.fromJson(data));
  }

  /// Causes a verification code to be delivered to the channel. The code can
  /// then be supplied in VerifyNotificationChannel to verify the channel.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The notification channel to which to send a verification code.
  /// Value must have pattern "^projects/[^/]+/notificationChannels/[^/]+$".
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
  async.Future<Empty> sendVerificationCode(
      SendNotificationChannelVerificationCodeRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':sendVerificationCode';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Verifies a NotificationChannel by proving receipt of the code delivered to
  /// the channel as a result of calling
  /// SendNotificationChannelVerificationCode.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The notification channel to verify.
  /// Value must have pattern "^projects/[^/]+/notificationChannels/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NotificationChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NotificationChannel> verify(
      VerifyNotificationChannelRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name') + ':verify';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new NotificationChannel.fromJson(data));
  }
}

class ProjectsTimeSeriesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTimeSeriesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates or adds data to one or more time series. The response is empty if
  /// all time series in the request were written. If any time series could not
  /// be written, a corresponding failure message is included in the error
  /// response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Empty> create(CreateTimeSeriesRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v3/' + commons.Escaper.ecapeVariableReserved('$name') + '/timeSeries';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Lists time series that match a filter. This method does not require a
  /// Stackdriver account.
  ///
  /// Request parameters:
  ///
  /// [name] - The project on which to execute the request. The format is
  /// "projects/{project_id_or_number}".
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [view] - Specifies which information is returned about the time series.
  /// Possible string values are:
  /// - "FULL" : A FULL.
  /// - "HEADERS" : A HEADERS.
  ///
  /// [aggregation_groupByFields] - The set of fields to preserve when
  /// crossSeriesReducer is specified. The groupByFields determine how the time
  /// series are partitioned into subsets prior to applying the aggregation
  /// function. Each subset contains time series that have the same value for
  /// each of the grouping fields. Each individual time series is a member of
  /// exactly one subset. The crossSeriesReducer is applied to each subset of
  /// time series. It is not possible to reduce across different resource types,
  /// so this field implicitly contains resource.type. Fields not specified in
  /// groupByFields are aggregated away. If groupByFields is not specified and
  /// all the time series have the same resource type, then the time series are
  /// aggregated into a single output time series. If crossSeriesReducer is not
  /// defined, this field is ignored.
  ///
  /// [interval_endTime] - Required. The end of the time interval.
  ///
  /// [aggregation_alignmentPeriod] - The alignment period for per-time series
  /// alignment. If present, alignmentPeriod must be at least 60 seconds. After
  /// per-time series alignment, each time series will contain data points only
  /// on the period boundaries. If perSeriesAligner is not specified or equals
  /// ALIGN_NONE, then this field is ignored. If perSeriesAligner is specified
  /// and does not equal ALIGN_NONE, then this field must be defined; otherwise
  /// an error is returned.
  ///
  /// [pageSize] - A positive number that is the maximum number of results to
  /// return. If page_size is empty or more than 100,000 results, the effective
  /// page_size is 100,000 results. If view is set to FULL, this is the maximum
  /// number of Points returned. If view is set to HEADERS, this is the maximum
  /// number of TimeSeries returned.
  ///
  /// [orderBy] - Unsupported: must be left blank. The points in each time
  /// series are returned in reverse time order.
  ///
  /// [aggregation_crossSeriesReducer] - The approach to be used to combine time
  /// series. Not all reducer functions may be applied to all time series,
  /// depending on the metric type and the value type of the original time
  /// series. Reduction may change the metric type of value type of the time
  /// series.Time series data must be aligned in order to perform cross-time
  /// series reduction. If crossSeriesReducer is specified, then
  /// perSeriesAligner must be specified and not equal ALIGN_NONE and
  /// alignmentPeriod must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : A REDUCE_NONE.
  /// - "REDUCE_MEAN" : A REDUCE_MEAN.
  /// - "REDUCE_MIN" : A REDUCE_MIN.
  /// - "REDUCE_MAX" : A REDUCE_MAX.
  /// - "REDUCE_SUM" : A REDUCE_SUM.
  /// - "REDUCE_STDDEV" : A REDUCE_STDDEV.
  /// - "REDUCE_COUNT" : A REDUCE_COUNT.
  /// - "REDUCE_COUNT_TRUE" : A REDUCE_COUNT_TRUE.
  /// - "REDUCE_COUNT_FALSE" : A REDUCE_COUNT_FALSE.
  /// - "REDUCE_FRACTION_TRUE" : A REDUCE_FRACTION_TRUE.
  /// - "REDUCE_PERCENTILE_99" : A REDUCE_PERCENTILE_99.
  /// - "REDUCE_PERCENTILE_95" : A REDUCE_PERCENTILE_95.
  /// - "REDUCE_PERCENTILE_50" : A REDUCE_PERCENTILE_50.
  /// - "REDUCE_PERCENTILE_05" : A REDUCE_PERCENTILE_05.
  ///
  /// [filter] - A monitoring filter that specifies which time series should be
  /// returned. The filter must specify a single metric type, and can
  /// additionally specify metric labels and other information. For example:
  /// metric.type = "compute.googleapis.com/instance/cpu/usage_time" AND
  ///     metric.labels.instance_name = "my-instance-name"
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return additional results from the previous
  /// method call.
  ///
  /// [aggregation_perSeriesAligner] - The approach to be used to align
  /// individual time series. Not all alignment functions may be applied to all
  /// time series, depending on the metric type and value type of the original
  /// time series. Alignment may change the metric type or the value type of the
  /// time series.Time series data must be aligned in order to perform
  /// cross-time series reduction. If crossSeriesReducer is specified, then
  /// perSeriesAligner must be specified and not equal ALIGN_NONE and
  /// alignmentPeriod must be specified; otherwise, an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : A ALIGN_NONE.
  /// - "ALIGN_DELTA" : A ALIGN_DELTA.
  /// - "ALIGN_RATE" : A ALIGN_RATE.
  /// - "ALIGN_INTERPOLATE" : A ALIGN_INTERPOLATE.
  /// - "ALIGN_NEXT_OLDER" : A ALIGN_NEXT_OLDER.
  /// - "ALIGN_MIN" : A ALIGN_MIN.
  /// - "ALIGN_MAX" : A ALIGN_MAX.
  /// - "ALIGN_MEAN" : A ALIGN_MEAN.
  /// - "ALIGN_COUNT" : A ALIGN_COUNT.
  /// - "ALIGN_SUM" : A ALIGN_SUM.
  /// - "ALIGN_STDDEV" : A ALIGN_STDDEV.
  /// - "ALIGN_COUNT_TRUE" : A ALIGN_COUNT_TRUE.
  /// - "ALIGN_COUNT_FALSE" : A ALIGN_COUNT_FALSE.
  /// - "ALIGN_FRACTION_TRUE" : A ALIGN_FRACTION_TRUE.
  /// - "ALIGN_PERCENTILE_99" : A ALIGN_PERCENTILE_99.
  /// - "ALIGN_PERCENTILE_95" : A ALIGN_PERCENTILE_95.
  /// - "ALIGN_PERCENTILE_50" : A ALIGN_PERCENTILE_50.
  /// - "ALIGN_PERCENTILE_05" : A ALIGN_PERCENTILE_05.
  /// - "ALIGN_PERCENT_CHANGE" : A ALIGN_PERCENT_CHANGE.
  ///
  /// [interval_startTime] - Optional. The beginning of the time interval. The
  /// default value for the start time is the end time. The start time must not
  /// be later than the end time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTimeSeriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTimeSeriesResponse> list(core.String name,
      {core.String view,
      core.List<core.String> aggregation_groupByFields,
      core.String interval_endTime,
      core.String aggregation_alignmentPeriod,
      core.int pageSize,
      core.String orderBy,
      core.String aggregation_crossSeriesReducer,
      core.String filter,
      core.String pageToken,
      core.String aggregation_perSeriesAligner,
      core.String interval_startTime,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (aggregation_groupByFields != null) {
      _queryParams["aggregation.groupByFields"] = aggregation_groupByFields;
    }
    if (interval_endTime != null) {
      _queryParams["interval.endTime"] = [interval_endTime];
    }
    if (aggregation_alignmentPeriod != null) {
      _queryParams["aggregation.alignmentPeriod"] = [
        aggregation_alignmentPeriod
      ];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (aggregation_crossSeriesReducer != null) {
      _queryParams["aggregation.crossSeriesReducer"] = [
        aggregation_crossSeriesReducer
      ];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (aggregation_perSeriesAligner != null) {
      _queryParams["aggregation.perSeriesAligner"] = [
        aggregation_perSeriesAligner
      ];
    }
    if (interval_startTime != null) {
      _queryParams["interval.startTime"] = [interval_startTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v3/' + commons.Escaper.ecapeVariableReserved('$name') + '/timeSeries';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTimeSeriesResponse.fromJson(data));
  }
}

class ProjectsUptimeCheckConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsUptimeCheckConfigsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new uptime check configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project in which to create the uptime check. The format  is
  /// projects/[PROJECT_ID].
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UptimeCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UptimeCheckConfig> create(
      UptimeCheckConfig request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/uptimeCheckConfigs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UptimeCheckConfig.fromJson(data));
  }

  /// Deletes an uptime check configuration. Note that this method will fail if
  /// the uptime check configuration is referenced by an alert policy or other
  /// dependent configs that would be rendered invalid by the deletion.
  ///
  /// Request parameters:
  ///
  /// [name] - The uptime check configuration to delete. The format  is
  /// projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID].
  /// Value must have pattern "^projects/[^/]+/uptimeCheckConfigs/[^/]+$".
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
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a single uptime check configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - The uptime check configuration to retrieve. The format  is
  /// projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID].
  /// Value must have pattern "^projects/[^/]+/uptimeCheckConfigs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UptimeCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UptimeCheckConfig> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UptimeCheckConfig.fromJson(data));
  }

  /// Lists the existing valid uptime check configurations for the project,
  /// leaving out any invalid configurations.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project whose uptime check configurations are listed. The
  /// format  is projects/[PROJECT_ID].
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return more results from the previous method
  /// call.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// The server may further constrain the maximum number of results returned in
  /// a single page. If the page_size is <=0, the server will decide the number
  /// of results to be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUptimeCheckConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUptimeCheckConfigsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
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

    _url = 'v3/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/uptimeCheckConfigs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUptimeCheckConfigsResponse.fromJson(data));
  }

  /// Updates an uptime check configuration. You can either replace the entire
  /// configuration with a new one or replace only certain fields in the current
  /// configuration by specifying the fields to be updated via "updateMask".
  /// Returns the updated configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A unique resource name for this UptimeCheckConfig. The format
  /// is:projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID].This field
  /// should be omitted when creating the uptime check configuration; on create,
  /// the resource name is assigned by the server and included in the response.
  /// Value must have pattern "^projects/[^/]+/uptimeCheckConfigs/[^/]+$".
  ///
  /// [updateMask] - Optional. If present, only the listed fields in the current
  /// uptime check configuration are updated with values from the new
  /// configuration. If this field is empty, then the current configuration is
  /// completely replaced with the new configuration.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UptimeCheckConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UptimeCheckConfig> patch(
      UptimeCheckConfig request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UptimeCheckConfig.fromJson(data));
  }
}

class UptimeCheckIpsResourceApi {
  final commons.ApiRequester _requester;

  UptimeCheckIpsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns the list of IPs that checkers run from
  ///
  /// Request parameters:
  ///
  /// [pageToken] - If this field is not empty then it must contain the
  /// nextPageToken value returned by a previous call to this method. Using this
  /// field causes the method to return more results from the previous method
  /// call. NOTE: this field is not yet implemented
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// The server may further constrain the maximum number of results returned in
  /// a single page. If the page_size is <=0, the server will decide the number
  /// of results to be returned. NOTE: this field is not yet implemented
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUptimeCheckIpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUptimeCheckIpsResponse> list(
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v3/uptimeCheckIps';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUptimeCheckIpsResponse.fromJson(data));
  }
}

/// Describes how to combine multiple time series to provide different views of
/// the data. Aggregation consists of an alignment step on individual time
/// series (alignment_period and per_series_aligner) followed by an optional
/// reduction step of the data across the aligned time series
/// (cross_series_reducer and group_by_fields). For more details, see
/// Aggregation.
class Aggregation {
  /// The alignment period for per-time series alignment. If present,
  /// alignmentPeriod must be at least 60 seconds. After per-time series
  /// alignment, each time series will contain data points only on the period
  /// boundaries. If perSeriesAligner is not specified or equals ALIGN_NONE,
  /// then this field is ignored. If perSeriesAligner is specified and does not
  /// equal ALIGN_NONE, then this field must be defined; otherwise an error is
  /// returned.
  core.String alignmentPeriod;

  /// The approach to be used to combine time series. Not all reducer functions
  /// may be applied to all time series, depending on the metric type and the
  /// value type of the original time series. Reduction may change the metric
  /// type of value type of the time series.Time series data must be aligned in
  /// order to perform cross-time series reduction. If crossSeriesReducer is
  /// specified, then perSeriesAligner must be specified and not equal
  /// ALIGN_NONE and alignmentPeriod must be specified; otherwise, an error is
  /// returned.
  /// Possible string values are:
  /// - "REDUCE_NONE" : No cross-time series reduction. The output of the
  /// aligner is returned.
  /// - "REDUCE_MEAN" : Reduce by computing the mean across time series for each
  /// alignment period. This reducer is valid for delta and gauge metrics with
  /// numeric or distribution values. The value type of the output is DOUBLE.
  /// - "REDUCE_MIN" : Reduce by computing the minimum across time series for
  /// each alignment period. This reducer is valid for delta and gauge metrics
  /// with numeric values. The value type of the output is the same as the value
  /// type of the input.
  /// - "REDUCE_MAX" : Reduce by computing the maximum across time series for
  /// each alignment period. This reducer is valid for delta and gauge metrics
  /// with numeric values. The value type of the output is the same as the value
  /// type of the input.
  /// - "REDUCE_SUM" : Reduce by computing the sum across time series for each
  /// alignment period. This reducer is valid for delta and gauge metrics with
  /// numeric and distribution values. The value type of the output is the same
  /// as the value type of the input.
  /// - "REDUCE_STDDEV" : Reduce by computing the standard deviation across time
  /// series for each alignment period. This reducer is valid for delta and
  /// gauge metrics with numeric or distribution values. The value type of the
  /// output is DOUBLE.
  /// - "REDUCE_COUNT" : Reduce by computing the count of data points across
  /// time series for each alignment period. This reducer is valid for delta and
  /// gauge metrics of numeric, Boolean, distribution, and string value type.
  /// The value type of the output is INT64.
  /// - "REDUCE_COUNT_TRUE" : Reduce by computing the count of True-valued data
  /// points across time series for each alignment period. This reducer is valid
  /// for delta and gauge metrics of Boolean value type. The value type of the
  /// output is INT64.
  /// - "REDUCE_COUNT_FALSE" : Reduce by computing the count of False-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for delta and gauge metrics of Boolean value type. The value type of
  /// the output is INT64.
  /// - "REDUCE_FRACTION_TRUE" : Reduce by computing the fraction of True-valued
  /// data points across time series for each alignment period. This reducer is
  /// valid for delta and gauge metrics of Boolean value type. The output value
  /// is in the range 0, 1 and has value type DOUBLE.
  /// - "REDUCE_PERCENTILE_99" : Reduce by computing 99th percentile of data
  /// points across time series for each alignment period. This reducer is valid
  /// for gauge and delta metrics of numeric and distribution type. The value of
  /// the output is DOUBLE
  /// - "REDUCE_PERCENTILE_95" : Reduce by computing 95th percentile of data
  /// points across time series for each alignment period. This reducer is valid
  /// for gauge and delta metrics of numeric and distribution type. The value of
  /// the output is DOUBLE
  /// - "REDUCE_PERCENTILE_50" : Reduce by computing 50th percentile of data
  /// points across time series for each alignment period. This reducer is valid
  /// for gauge and delta metrics of numeric and distribution type. The value of
  /// the output is DOUBLE
  /// - "REDUCE_PERCENTILE_05" : Reduce by computing 5th percentile of data
  /// points across time series for each alignment period. This reducer is valid
  /// for gauge and delta metrics of numeric and distribution type. The value of
  /// the output is DOUBLE
  core.String crossSeriesReducer;

  /// The set of fields to preserve when crossSeriesReducer is specified. The
  /// groupByFields determine how the time series are partitioned into subsets
  /// prior to applying the aggregation function. Each subset contains time
  /// series that have the same value for each of the grouping fields. Each
  /// individual time series is a member of exactly one subset. The
  /// crossSeriesReducer is applied to each subset of time series. It is not
  /// possible to reduce across different resource types, so this field
  /// implicitly contains resource.type. Fields not specified in groupByFields
  /// are aggregated away. If groupByFields is not specified and all the time
  /// series have the same resource type, then the time series are aggregated
  /// into a single output time series. If crossSeriesReducer is not defined,
  /// this field is ignored.
  core.List<core.String> groupByFields;

  /// The approach to be used to align individual time series. Not all alignment
  /// functions may be applied to all time series, depending on the metric type
  /// and value type of the original time series. Alignment may change the
  /// metric type or the value type of the time series.Time series data must be
  /// aligned in order to perform cross-time series reduction. If
  /// crossSeriesReducer is specified, then perSeriesAligner must be specified
  /// and not equal ALIGN_NONE and alignmentPeriod must be specified; otherwise,
  /// an error is returned.
  /// Possible string values are:
  /// - "ALIGN_NONE" : No alignment. Raw data is returned. Not valid if
  /// cross-time series reduction is requested. The value type of the result is
  /// the same as the value type of the input.
  /// - "ALIGN_DELTA" : Align and convert to delta metric type. This alignment
  /// is valid for cumulative metrics and delta metrics. Aligning an existing
  /// delta metric to a delta metric requires that the alignment period be
  /// increased. The value type of the result is the same as the value type of
  /// the input.One can think of this aligner as a rate but without time units;
  /// that is, the output is conceptually (second_point - first_point).
  /// - "ALIGN_RATE" : Align and convert to a rate. This alignment is valid for
  /// cumulative metrics and delta metrics with numeric values. The output is a
  /// gauge metric with value type DOUBLE.One can think of this aligner as
  /// conceptually providing the slope of the line that passes through the value
  /// at the start and end of the window. In other words, this is conceptually
  /// ((y1 - y0)/(t1 - t0)), and the output unit is one that has a "/time"
  /// dimension.If, by rate, you are looking for percentage change, see the
  /// ALIGN_PERCENT_CHANGE aligner option.
  /// - "ALIGN_INTERPOLATE" : Align by interpolating between adjacent points
  /// around the period boundary. This alignment is valid for gauge metrics with
  /// numeric values. The value type of the result is the same as the value type
  /// of the input.
  /// - "ALIGN_NEXT_OLDER" : Align by shifting the oldest data point before the
  /// period boundary to the boundary. This alignment is valid for gauge
  /// metrics. The value type of the result is the same as the value type of the
  /// input.
  /// - "ALIGN_MIN" : Align time series via aggregation. The resulting data
  /// point in the alignment period is the minimum of all data points in the
  /// period. This alignment is valid for gauge and delta metrics with numeric
  /// values. The value type of the result is the same as the value type of the
  /// input.
  /// - "ALIGN_MAX" : Align time series via aggregation. The resulting data
  /// point in the alignment period is the maximum of all data points in the
  /// period. This alignment is valid for gauge and delta metrics with numeric
  /// values. The value type of the result is the same as the value type of the
  /// input.
  /// - "ALIGN_MEAN" : Align time series via aggregation. The resulting data
  /// point in the alignment period is the average or arithmetic mean of all
  /// data points in the period. This alignment is valid for gauge and delta
  /// metrics with numeric values. The value type of the output is DOUBLE.
  /// - "ALIGN_COUNT" : Align time series via aggregation. The resulting data
  /// point in the alignment period is the count of all data points in the
  /// period. This alignment is valid for gauge and delta metrics with numeric
  /// or Boolean values. The value type of the output is INT64.
  /// - "ALIGN_SUM" : Align time series via aggregation. The resulting data
  /// point in the alignment period is the sum of all data points in the period.
  /// This alignment is valid for gauge and delta metrics with numeric and
  /// distribution values. The value type of the output is the same as the value
  /// type of the input.
  /// - "ALIGN_STDDEV" : Align time series via aggregation. The resulting data
  /// point in the alignment period is the standard deviation of all data points
  /// in the period. This alignment is valid for gauge and delta metrics with
  /// numeric values. The value type of the output is DOUBLE.
  /// - "ALIGN_COUNT_TRUE" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the count of True-valued data points
  /// in the period. This alignment is valid for gauge metrics with Boolean
  /// values. The value type of the output is INT64.
  /// - "ALIGN_COUNT_FALSE" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the count of False-valued data
  /// points in the period. This alignment is valid for gauge metrics with
  /// Boolean values. The value type of the output is INT64.
  /// - "ALIGN_FRACTION_TRUE" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the fraction of True-valued data
  /// points in the period. This alignment is valid for gauge metrics with
  /// Boolean values. The output value is in the range 0, 1 and has value type
  /// DOUBLE.
  /// - "ALIGN_PERCENTILE_99" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the 99th percentile of all data
  /// points in the period. This alignment is valid for gauge and delta metrics
  /// with distribution values. The output is a gauge metric with value type
  /// DOUBLE.
  /// - "ALIGN_PERCENTILE_95" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the 95th percentile of all data
  /// points in the period. This alignment is valid for gauge and delta metrics
  /// with distribution values. The output is a gauge metric with value type
  /// DOUBLE.
  /// - "ALIGN_PERCENTILE_50" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the 50th percentile of all data
  /// points in the period. This alignment is valid for gauge and delta metrics
  /// with distribution values. The output is a gauge metric with value type
  /// DOUBLE.
  /// - "ALIGN_PERCENTILE_05" : Align time series via aggregation. The resulting
  /// data point in the alignment period is the 5th percentile of all data
  /// points in the period. This alignment is valid for gauge and delta metrics
  /// with distribution values. The output is a gauge metric with value type
  /// DOUBLE.
  /// - "ALIGN_PERCENT_CHANGE" : Align and convert to a percentage change. This
  /// alignment is valid for gauge and delta metrics with numeric values. This
  /// alignment conceptually computes the equivalent of "((current -
  /// previous)/previous)*100" where previous value is determined based on the
  /// alignmentPeriod. In the event that previous is 0 the calculated value is
  /// infinity with the exception that if both (current - previous) and previous
  /// are 0 the calculated value is 0. A 10 minute moving mean is computed at
  /// each point of the time window prior to the above calculation to smooth the
  /// metric and prevent false positives from very short lived spikes. Only
  /// applicable for data that is >= 0. Any values < 0 are treated as no data.
  /// While delta metrics are accepted by this alignment special care should be
  /// taken that the values for the metric will always be positive. The output
  /// is a gauge metric with value type DOUBLE.
  core.String perSeriesAligner;

  Aggregation();

  Aggregation.fromJson(core.Map _json) {
    if (_json.containsKey("alignmentPeriod")) {
      alignmentPeriod = _json["alignmentPeriod"];
    }
    if (_json.containsKey("crossSeriesReducer")) {
      crossSeriesReducer = _json["crossSeriesReducer"];
    }
    if (_json.containsKey("groupByFields")) {
      groupByFields = (_json["groupByFields"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("perSeriesAligner")) {
      perSeriesAligner = _json["perSeriesAligner"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alignmentPeriod != null) {
      _json["alignmentPeriod"] = alignmentPeriod;
    }
    if (crossSeriesReducer != null) {
      _json["crossSeriesReducer"] = crossSeriesReducer;
    }
    if (groupByFields != null) {
      _json["groupByFields"] = groupByFields;
    }
    if (perSeriesAligner != null) {
      _json["perSeriesAligner"] = perSeriesAligner;
    }
    return _json;
  }
}

/// A description of the conditions under which some aspect of your system is
/// considered to be "unhealthy" and the ways to notify people or services about
/// this state. For an overview of alert policies, see Introduction to Alerting.
class AlertPolicy {
  /// How to combine the results of multiple conditions to determine if an
  /// incident should be opened.
  /// Possible string values are:
  /// - "COMBINE_UNSPECIFIED" : An unspecified combiner.
  /// - "AND" : Combine conditions using the logical AND operator. An incident
  /// is created only if all conditions are met simultaneously. This combiner is
  /// satisfied if all conditions are met, even if they are met on completely
  /// different resources.
  /// - "OR" : Combine conditions using the logical OR operator. An incident is
  /// created if any of the listed conditions is met.
  /// - "AND_WITH_MATCHING_RESOURCE" : Combine conditions using logical AND
  /// operator, but unlike the regular AND option, an incident is created only
  /// if all conditions are met simultaneously on at least one resource.
  core.String combiner;

  /// A list of conditions for the policy. The conditions are combined by AND or
  /// OR according to the combiner field. If the combined conditions evaluate to
  /// true, then an incident is created. A policy can have from one to six
  /// conditions.
  core.List<Condition> conditions;

  /// A read-only record of the creation of the alerting policy. If provided in
  /// a call to create or update, this field will be ignored.
  MutationRecord creationRecord;

  /// A short name or phrase used to identify the policy in dashboards,
  /// notifications, and incidents. To avoid confusion, don't use the same
  /// display name for multiple policies in the same project. The name is
  /// limited to 512 Unicode characters.
  core.String displayName;

  /// Documentation that is included with notifications and incidents related to
  /// this policy. Best practice is for the documentation to include information
  /// to help responders understand, mitigate, escalate, and correct the
  /// underlying problems detected by the alerting policy. Notification channels
  /// that have limited capacity might not show this documentation.
  Documentation documentation;

  /// Whether or not the policy is enabled. On write, the default interpretation
  /// if unset is that the policy is enabled. On read, clients should not make
  /// any assumption about the state if it has not been populated. The field
  /// should always be populated on List and Get operations, unless a field
  /// projection has been specified that strips it out.
  core.bool enabled;

  /// A read-only record of the most recent change to the alerting policy. If
  /// provided in a call to create or update, this field will be ignored.
  MutationRecord mutationRecord;

  /// Required if the policy exists. The resource name for this policy. The
  /// syntax is:
  /// projects/[PROJECT_ID]/alertPolicies/[ALERT_POLICY_ID]
  /// [ALERT_POLICY_ID] is assigned by Stackdriver Monitoring when the policy is
  /// created. When calling the alertPolicies.create method, do not include the
  /// name field in the alerting policy passed as part of the request.
  core.String name;

  /// Identifies the notification channels to which notifications should be sent
  /// when incidents are opened or closed or when new violations occur on an
  /// already opened incident. Each element of this array corresponds to the
  /// name field in each of the NotificationChannel objects that are returned
  /// from the ListNotificationChannels method. The syntax of the entries in
  /// this field is:
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
  core.List<core.String> notificationChannels;

  /// User-supplied key/value data to be used for organizing and identifying the
  /// AlertPolicy objects.The field can contain up to 64 entries. Each key and
  /// value is limited to 63 Unicode characters or 128 bytes, whichever is
  /// smaller. Labels and values can contain only lowercase letters, numerals,
  /// underscores, and dashes. Keys must begin with a letter.
  core.Map<core.String, core.String> userLabels;

  AlertPolicy();

  AlertPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("combiner")) {
      combiner = _json["combiner"];
    }
    if (_json.containsKey("conditions")) {
      conditions = (_json["conditions"] as core.List)
          .map<Condition>((value) => new Condition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("creationRecord")) {
      creationRecord = new MutationRecord.fromJson(_json["creationRecord"]);
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("documentation")) {
      documentation = new Documentation.fromJson(_json["documentation"]);
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("mutationRecord")) {
      mutationRecord = new MutationRecord.fromJson(_json["mutationRecord"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notificationChannels")) {
      notificationChannels =
          (_json["notificationChannels"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("userLabels")) {
      userLabels =
          (_json["userLabels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (combiner != null) {
      _json["combiner"] = combiner;
    }
    if (conditions != null) {
      _json["conditions"] =
          conditions.map((value) => (value).toJson()).toList();
    }
    if (creationRecord != null) {
      _json["creationRecord"] = (creationRecord).toJson();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (documentation != null) {
      _json["documentation"] = (documentation).toJson();
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (mutationRecord != null) {
      _json["mutationRecord"] = (mutationRecord).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notificationChannels != null) {
      _json["notificationChannels"] = notificationChannels;
    }
    if (userLabels != null) {
      _json["userLabels"] = userLabels;
    }
    return _json;
  }
}

/// A type of authentication to perform against the specified resource or URL
/// that uses username and password. Currently, only Basic authentication is
/// supported in Uptime Monitoring.
class BasicAuthentication {
  /// The password to authenticate.
  core.String password;

  /// The username to authenticate.
  core.String username;

  BasicAuthentication();

  BasicAuthentication.fromJson(core.Map _json) {
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (password != null) {
      _json["password"] = password;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/// BucketOptions describes the bucket boundaries used to create a histogram for
/// the distribution. The buckets can be in a linear sequence, an exponential
/// sequence, or each bucket can be specified explicitly. BucketOptions does not
/// include the number of values in each bucket.A bucket has an inclusive lower
/// bound and exclusive upper bound for the values that are counted for that
/// bucket. The upper bound of a bucket must be strictly greater than the lower
/// bound. The sequence of N buckets for a distribution consists of an underflow
/// bucket (number 0), zero or more finite buckets (number 1 through N - 2) and
/// an overflow bucket (number N - 1). The buckets are contiguous: the lower
/// bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1.
/// The buckets span the whole range of finite values: lower bound of the
/// underflow bucket is -infinity and the upper bound of the overflow bucket is
/// +infinity. The finite buckets are so-called because both bounds are finite.
class BucketOptions {
  /// The explicit buckets.
  Explicit explicitBuckets;

  /// The exponential buckets.
  Exponential exponentialBuckets;

  /// The linear bucket.
  Linear linearBuckets;

  BucketOptions();

  BucketOptions.fromJson(core.Map _json) {
    if (_json.containsKey("explicitBuckets")) {
      explicitBuckets = new Explicit.fromJson(_json["explicitBuckets"]);
    }
    if (_json.containsKey("exponentialBuckets")) {
      exponentialBuckets =
          new Exponential.fromJson(_json["exponentialBuckets"]);
    }
    if (_json.containsKey("linearBuckets")) {
      linearBuckets = new Linear.fromJson(_json["linearBuckets"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (explicitBuckets != null) {
      _json["explicitBuckets"] = (explicitBuckets).toJson();
    }
    if (exponentialBuckets != null) {
      _json["exponentialBuckets"] = (exponentialBuckets).toJson();
    }
    if (linearBuckets != null) {
      _json["linearBuckets"] = (linearBuckets).toJson();
    }
    return _json;
  }
}

/// A collection of data points sent from a collectd-based plugin. See the
/// collectd documentation for more information.
class CollectdPayload {
  /// The end time of the interval.
  core.String endTime;

  /// The measurement metadata. Example: "process_id" -> 12345
  core.Map<core.String, TypedValue> metadata;

  /// The name of the plugin. Example: "disk".
  core.String plugin;

  /// The instance name of the plugin Example: "hdcl".
  core.String pluginInstance;

  /// The start time of the interval.
  core.String startTime;

  /// The measurement type. Example: "memory".
  core.String type;

  /// The measurement type instance. Example: "used".
  core.String typeInstance;

  /// The measured values during this time interval. Each value must have a
  /// different dataSourceName.
  core.List<CollectdValue> values;

  CollectdPayload();

  CollectdPayload.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("metadata")) {
      metadata = commons.mapMap<core.Map, TypedValue>(
          _json["metadata"].cast<core.String, core.Map>(),
          (core.Map item) => new TypedValue.fromJson(item));
    }
    if (_json.containsKey("plugin")) {
      plugin = _json["plugin"];
    }
    if (_json.containsKey("pluginInstance")) {
      pluginInstance = _json["pluginInstance"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("typeInstance")) {
      typeInstance = _json["typeInstance"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<CollectdValue>((value) => new CollectdValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (metadata != null) {
      _json["metadata"] =
          commons.mapMap<TypedValue, core.Map<core.String, core.Object>>(
              metadata, (TypedValue item) => (item).toJson());
    }
    if (plugin != null) {
      _json["plugin"] = plugin;
    }
    if (pluginInstance != null) {
      _json["pluginInstance"] = pluginInstance;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (typeInstance != null) {
      _json["typeInstance"] = typeInstance;
    }
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Describes the error status for payloads that were not written.
class CollectdPayloadError {
  /// Records the error status for the payload. If this field is present, the
  /// partial errors for nested values won't be populated.
  Status error;

  /// The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads.
  core.int index;

  /// Records the error status for values that were not written due to an
  /// error.Failed payloads for which nothing is written will not include
  /// partial value errors.
  core.List<CollectdValueError> valueErrors;

  CollectdPayloadError();

  CollectdPayloadError.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("valueErrors")) {
      valueErrors = (_json["valueErrors"] as core.List)
          .map<CollectdValueError>(
              (value) => new CollectdValueError.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (valueErrors != null) {
      _json["valueErrors"] =
          valueErrors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A single data point from a collectd-based plugin.
class CollectdValue {
  /// The data source for the collectd value. For example there are two data
  /// sources for network measurements: "rx" and "tx".
  core.String dataSourceName;

  /// The type of measurement.
  /// Possible string values are:
  /// - "UNSPECIFIED_DATA_SOURCE_TYPE" : An unspecified data source type. This
  /// corresponds to
  /// google.api.MetricDescriptor.MetricKind.METRIC_KIND_UNSPECIFIED.
  /// - "GAUGE" : An instantaneous measurement of a varying quantity. This
  /// corresponds to google.api.MetricDescriptor.MetricKind.GAUGE.
  /// - "COUNTER" : A cumulative value over time. This corresponds to
  /// google.api.MetricDescriptor.MetricKind.CUMULATIVE.
  /// - "DERIVE" : A rate of change of the measurement.
  /// - "ABSOLUTE" : An amount of change since the last measurement interval.
  /// This corresponds to google.api.MetricDescriptor.MetricKind.DELTA.
  core.String dataSourceType;

  /// The measurement value.
  TypedValue value;

  CollectdValue();

  CollectdValue.fromJson(core.Map _json) {
    if (_json.containsKey("dataSourceName")) {
      dataSourceName = _json["dataSourceName"];
    }
    if (_json.containsKey("dataSourceType")) {
      dataSourceType = _json["dataSourceType"];
    }
    if (_json.containsKey("value")) {
      value = new TypedValue.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataSourceName != null) {
      _json["dataSourceName"] = dataSourceName;
    }
    if (dataSourceType != null) {
      _json["dataSourceType"] = dataSourceType;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// Describes the error status for values that were not written.
class CollectdValueError {
  /// Records the error status for the value.
  Status error;

  /// The zero-based index in CollectdPayload.values within the parent
  /// CreateCollectdTimeSeriesRequest.collectd_payloads.
  core.int index;

  CollectdValueError();

  CollectdValueError.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (index != null) {
      _json["index"] = index;
    }
    return _json;
  }
}

/// A condition is a true/false test that determines when an alerting policy
/// should open an incident. If a condition evaluates to true, it signifies that
/// something is wrong.
class Condition {
  /// A condition that checks that a time series continues to receive new data
  /// points.
  MetricAbsence conditionAbsent;

  /// A condition that compares a time series against a threshold.
  MetricThreshold conditionThreshold;

  /// A short name or phrase used to identify the condition in dashboards,
  /// notifications, and incidents. To avoid confusion, don't use the same
  /// display name for multiple conditions in the same policy.
  core.String displayName;

  /// Required if the condition exists. The unique resource name for this
  /// condition. Its syntax is:
  /// projects/[PROJECT_ID]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID]
  /// [CONDITION_ID] is assigned by Stackdriver Monitoring when the condition is
  /// created as part of a new or updated alerting policy.When calling the
  /// alertPolicies.create method, do not include the name field in the
  /// conditions of the requested alerting policy. Stackdriver Monitoring
  /// creates the condition identifiers and includes them in the new policy.When
  /// calling the alertPolicies.update method to update a policy, including a
  /// condition name causes the existing condition to be updated. Conditions
  /// without names are added to the updated policy. Existing conditions are
  /// deleted if they are not updated.Best practice is to preserve
  /// [CONDITION_ID] if you make only small changes, such as those to condition
  /// thresholds, durations, or trigger values. Otherwise, treat the change as a
  /// new condition and let the existing condition be deleted.
  core.String name;

  Condition();

  Condition.fromJson(core.Map _json) {
    if (_json.containsKey("conditionAbsent")) {
      conditionAbsent = new MetricAbsence.fromJson(_json["conditionAbsent"]);
    }
    if (_json.containsKey("conditionThreshold")) {
      conditionThreshold =
          new MetricThreshold.fromJson(_json["conditionThreshold"]);
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (conditionAbsent != null) {
      _json["conditionAbsent"] = (conditionAbsent).toJson();
    }
    if (conditionThreshold != null) {
      _json["conditionThreshold"] = (conditionThreshold).toJson();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Used to perform string matching. It allows substring and regular
/// expressions, together with their negations.
class ContentMatcher {
  /// String or regex content to match (max 1024 bytes)
  core.String content;

  ContentMatcher();

  ContentMatcher.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    return _json;
  }
}

/// The CreateCollectdTimeSeries request.
class CreateCollectdTimeSeriesRequest {
  /// The collectd payloads representing the time series data. You must not
  /// include more than a single point for each time series, so no two payloads
  /// can have the same values for all of the fields plugin, plugin_instance,
  /// type, and type_instance.
  core.List<CollectdPayload> collectdPayloads;

  /// The version of collectd that collected the data. Example: "5.3.0-192.el6".
  core.String collectdVersion;

  /// The monitored resource associated with the time series.
  MonitoredResource resource;

  CreateCollectdTimeSeriesRequest();

  CreateCollectdTimeSeriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("collectdPayloads")) {
      collectdPayloads = (_json["collectdPayloads"] as core.List)
          .map<CollectdPayload>((value) => new CollectdPayload.fromJson(value))
          .toList();
    }
    if (_json.containsKey("collectdVersion")) {
      collectdVersion = _json["collectdVersion"];
    }
    if (_json.containsKey("resource")) {
      resource = new MonitoredResource.fromJson(_json["resource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collectdPayloads != null) {
      _json["collectdPayloads"] =
          collectdPayloads.map((value) => (value).toJson()).toList();
    }
    if (collectdVersion != null) {
      _json["collectdVersion"] = collectdVersion;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/// The CreateCollectdTimeSeries response.
class CreateCollectdTimeSeriesResponse {
  /// Records the error status for points that were not written due to an
  /// error.Failed requests for which nothing is written will return an error
  /// response instead.
  core.List<CollectdPayloadError> payloadErrors;

  CreateCollectdTimeSeriesResponse();

  CreateCollectdTimeSeriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("payloadErrors")) {
      payloadErrors = (_json["payloadErrors"] as core.List)
          .map<CollectdPayloadError>(
              (value) => new CollectdPayloadError.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (payloadErrors != null) {
      _json["payloadErrors"] =
          payloadErrors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The CreateTimeSeries request.
class CreateTimeSeriesRequest {
  /// The new data to be added to a list of time series. Adds at most one data
  /// point to each of several time series. The new data point must be more
  /// recent than any other point in its time series. Each TimeSeries value must
  /// fully specify a unique time series by supplying all label values for the
  /// metric and the monitored resource.The maximum number of TimeSeries objects
  /// per Create request is 200.
  core.List<TimeSeries> timeSeries;

  CreateTimeSeriesRequest();

  CreateTimeSeriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("timeSeries")) {
      timeSeries = (_json["timeSeries"] as core.List)
          .map<TimeSeries>((value) => new TimeSeries.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (timeSeries != null) {
      _json["timeSeries"] =
          timeSeries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Distribution contains summary statistics for a population of values. It
/// optionally contains a histogram representing the distribution of those
/// values across a set of buckets.The summary statistics are the count, mean,
/// sum of the squared deviation from the mean, the minimum, and the maximum of
/// the set of population of values. The histogram is based on a sequence of
/// buckets and gives a count of values that fall into each bucket. The
/// boundaries of the buckets are given either explicitly or by formulas for
/// buckets of fixed or exponentially increasing widths.Although it is not
/// forbidden, it is generally a bad idea to include non-finite values
/// (infinities or NaNs) in the population of values, as this will render the
/// mean and sum_of_squared_deviation fields meaningless.
class Distribution {
  /// Required in the Stackdriver Monitoring API v3. The values for each bucket
  /// specified in bucket_options. The sum of the values in bucketCounts must
  /// equal the value in the count field of the Distribution object. The order
  /// of the bucket counts follows the numbering schemes described for the three
  /// bucket types. The underflow bucket has number 0; the finite buckets, if
  /// any, have numbers 1 through N-2; and the overflow bucket has number N-1.
  /// The size of bucket_counts must not be greater than N. If the size is less
  /// than N, then the remaining buckets are assigned values of zero.
  core.List<core.String> bucketCounts;

  /// Required in the Stackdriver Monitoring API v3. Defines the histogram
  /// bucket boundaries.
  BucketOptions bucketOptions;

  /// The number of values in the population. Must be non-negative. This value
  /// must equal the sum of the values in bucket_counts if a histogram is
  /// provided.
  core.String count;

  /// Must be in increasing order of value field.
  core.List<Exemplar> exemplars;

  /// The arithmetic mean of the values in the population. If count is zero then
  /// this field must be zero.
  core.double mean;

  /// If specified, contains the range of the population values. The field must
  /// not be present if the count is zero. This field is presently ignored by
  /// the Stackdriver Monitoring API v3.
  Range range;

  /// The sum of squared deviations from the mean of the values in the
  /// population. For values x_i this is:
  /// Sum[i=1..n]((x_i - mean)^2)
  /// Knuth, "The Art of Computer Programming", Vol. 2, page 323, 3rd edition
  /// describes Welford's method for accumulating this sum in one pass.If count
  /// is zero then this field must be zero.
  core.double sumOfSquaredDeviation;

  Distribution();

  Distribution.fromJson(core.Map _json) {
    if (_json.containsKey("bucketCounts")) {
      bucketCounts = (_json["bucketCounts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("bucketOptions")) {
      bucketOptions = new BucketOptions.fromJson(_json["bucketOptions"]);
    }
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("exemplars")) {
      exemplars = (_json["exemplars"] as core.List)
          .map<Exemplar>((value) => new Exemplar.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mean")) {
      mean = _json["mean"].toDouble();
    }
    if (_json.containsKey("range")) {
      range = new Range.fromJson(_json["range"]);
    }
    if (_json.containsKey("sumOfSquaredDeviation")) {
      sumOfSquaredDeviation = _json["sumOfSquaredDeviation"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bucketCounts != null) {
      _json["bucketCounts"] = bucketCounts;
    }
    if (bucketOptions != null) {
      _json["bucketOptions"] = (bucketOptions).toJson();
    }
    if (count != null) {
      _json["count"] = count;
    }
    if (exemplars != null) {
      _json["exemplars"] = exemplars.map((value) => (value).toJson()).toList();
    }
    if (mean != null) {
      _json["mean"] = mean;
    }
    if (range != null) {
      _json["range"] = (range).toJson();
    }
    if (sumOfSquaredDeviation != null) {
      _json["sumOfSquaredDeviation"] = sumOfSquaredDeviation;
    }
    return _json;
  }
}

/// A content string and a MIME type that describes the content string's format.
class Documentation {
  /// The text of the documentation, interpreted according to mime_type. The
  /// content may not exceed 8,192 Unicode characters and may not exceed more
  /// than 10,240 bytes when encoded in UTF-8 format, whichever is smaller.
  core.String content;

  /// The format of the content field. Presently, only the value "text/markdown"
  /// is supported. See Markdown (https://en.wikipedia.org/wiki/Markdown) for
  /// more information.
  core.String mimeType;

  Documentation();

  Documentation.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    return _json;
  }
}

/// A set of (label, value) pairs which were dropped during aggregation,
/// attached to google.api.Distribution.Exemplars in google.api.Distribution
/// values during aggregation.These values are used in combination with the
/// label values that remain on the aggregated Distribution timeseries to
/// construct the full label set for the exemplar values. The resulting full
/// label set may be used to identify the specific task/job/instance (for
/// example) which may be contributing to a long-tail, while allowing the
/// storage savings of only storing aggregated distribution values for a large
/// group.Note that there are no guarantees on ordering of the labels from
/// exemplar-to-exemplar and from distribution-to-distribution in the same
/// stream, and there may be duplicates. It is up to clients to resolve any
/// ambiguities.
class DroppedLabels {
  /// Map from label to its value, for all labels dropped in any aggregation.
  core.Map<core.String, core.String> label;

  DroppedLabels();

  DroppedLabels.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = (_json["label"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
/// service Foo {
///   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
/// }
/// The JSON representation for Empty is empty JSON object {}.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Exemplars are example points that may be used to annotate aggregated
/// distribution values. They are metadata that gives information about a
/// particular value added to a Distribution bucket, such as a trace ID that was
/// active when a value was added. They may contain further information, such as
/// a example values and timestamps, origin, etc.
class Exemplar {
  /// Contextual information about the example value. Examples are:Trace:
  /// type.googleapis.com/google.monitoring.v3.SpanContextLiteral string:
  /// type.googleapis.com/google.protobuf.StringValueLabels dropped during
  /// aggregation:  type.googleapis.com/google.monitoring.v3.DroppedLabelsThere
  /// may be only a single attachment of any given message type in a single
  /// exemplar, and this is enforced by the system.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> attachments;

  /// The observation (sampling) time of the above value.
  core.String timestamp;

  /// Value of the exemplar point. This value determines to which bucket the
  /// exemplar belongs.
  core.double value;

  Exemplar();

  Exemplar.fromJson(core.Map _json) {
    if (_json.containsKey("attachments")) {
      attachments = (_json["attachments"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attachments != null) {
      _json["attachments"] = attachments;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1
/// (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i <
/// N-1): boundsi  Lower bound (1 <= i < N); boundsi - 1The bounds field must
/// contain at least one element. If bounds has only one element, then there are
/// no finite buckets, and that single element is the common boundary of the
/// overflow and underflow buckets.
class Explicit {
  /// The values must be monotonically increasing.
  core.List<core.double> bounds;

  Explicit();

  Explicit.fromJson(core.Map _json) {
    if (_json.containsKey("bounds")) {
      bounds = (_json["bounds"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bounds != null) {
      _json["bounds"] = bounds;
    }
    return _json;
  }
}

/// Specifies an exponential sequence of buckets that have a width that is
/// proportional to the value of the lower bound. Each bucket represents a
/// constant relative uncertainty on a specific value in the bucket.There are
/// num_finite_buckets + 2 (= N) buckets. Bucket i has the following
/// boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).  Lower
/// bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).
class Exponential {
  /// Must be greater than 1.
  core.double growthFactor;

  /// Must be greater than 0.
  core.int numFiniteBuckets;

  /// Must be greater than 0.
  core.double scale;

  Exponential();

  Exponential.fromJson(core.Map _json) {
    if (_json.containsKey("growthFactor")) {
      growthFactor = _json["growthFactor"].toDouble();
    }
    if (_json.containsKey("numFiniteBuckets")) {
      numFiniteBuckets = _json["numFiniteBuckets"];
    }
    if (_json.containsKey("scale")) {
      scale = _json["scale"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (growthFactor != null) {
      _json["growthFactor"] = growthFactor;
    }
    if (numFiniteBuckets != null) {
      _json["numFiniteBuckets"] = numFiniteBuckets;
    }
    if (scale != null) {
      _json["scale"] = scale;
    }
    return _json;
  }
}

/// A single field of a message type.
class Field {
  /// The field cardinality.
  /// Possible string values are:
  /// - "CARDINALITY_UNKNOWN" : For fields with unknown cardinality.
  /// - "CARDINALITY_OPTIONAL" : For optional fields.
  /// - "CARDINALITY_REQUIRED" : For required fields. Proto2 syntax only.
  /// - "CARDINALITY_REPEATED" : For repeated fields.
  core.String cardinality;

  /// The string value of the default value of this field. Proto2 syntax only.
  core.String defaultValue;

  /// The field JSON name.
  core.String jsonName;

  /// The field type.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Field type unknown.
  /// - "TYPE_DOUBLE" : Field type double.
  /// - "TYPE_FLOAT" : Field type float.
  /// - "TYPE_INT64" : Field type int64.
  /// - "TYPE_UINT64" : Field type uint64.
  /// - "TYPE_INT32" : Field type int32.
  /// - "TYPE_FIXED64" : Field type fixed64.
  /// - "TYPE_FIXED32" : Field type fixed32.
  /// - "TYPE_BOOL" : Field type bool.
  /// - "TYPE_STRING" : Field type string.
  /// - "TYPE_GROUP" : Field type group. Proto2 syntax only, and deprecated.
  /// - "TYPE_MESSAGE" : Field type message.
  /// - "TYPE_BYTES" : Field type bytes.
  /// - "TYPE_UINT32" : Field type uint32.
  /// - "TYPE_ENUM" : Field type enum.
  /// - "TYPE_SFIXED32" : Field type sfixed32.
  /// - "TYPE_SFIXED64" : Field type sfixed64.
  /// - "TYPE_SINT32" : Field type sint32.
  /// - "TYPE_SINT64" : Field type sint64.
  core.String kind;

  /// The field name.
  core.String name;

  /// The field number.
  core.int number;

  /// The index of the field type in Type.oneofs, for message or enumeration
  /// types. The first type has index 1; zero means the type is not in the list.
  core.int oneofIndex;

  /// The protocol buffer options.
  core.List<Option> options;

  /// Whether to use alternative packed wire representation.
  core.bool packed;

  /// The field type URL, without the scheme, for message or enumeration types.
  /// Example: "type.googleapis.com/google.protobuf.Timestamp".
  core.String typeUrl;

  Field();

  Field.fromJson(core.Map _json) {
    if (_json.containsKey("cardinality")) {
      cardinality = _json["cardinality"];
    }
    if (_json.containsKey("defaultValue")) {
      defaultValue = _json["defaultValue"];
    }
    if (_json.containsKey("jsonName")) {
      jsonName = _json["jsonName"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("oneofIndex")) {
      oneofIndex = _json["oneofIndex"];
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("packed")) {
      packed = _json["packed"];
    }
    if (_json.containsKey("typeUrl")) {
      typeUrl = _json["typeUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cardinality != null) {
      _json["cardinality"] = cardinality;
    }
    if (defaultValue != null) {
      _json["defaultValue"] = defaultValue;
    }
    if (jsonName != null) {
      _json["jsonName"] = jsonName;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (oneofIndex != null) {
      _json["oneofIndex"] = oneofIndex;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (packed != null) {
      _json["packed"] = packed;
    }
    if (typeUrl != null) {
      _json["typeUrl"] = typeUrl;
    }
    return _json;
  }
}

/// The GetNotificationChannelVerificationCode request.
class GetNotificationChannelVerificationCodeRequest {
  /// The desired expiration time. If specified, the API will guarantee that the
  /// returned code will not be valid after the specified timestamp; however,
  /// the API cannot guarantee that the returned code will be valid for at least
  /// as long as the requested time (the API puts an upper bound on the amount
  /// of time for which a code may be valid). If omitted, a default expiration
  /// will be used, which may be less than the max permissible expiration (so
  /// specifying an expiration may extend the code's lifetime over omitting an
  /// expiration, even though the API does impose an upper limit on the maximum
  /// expiration that is permitted).
  core.String expireTime;

  GetNotificationChannelVerificationCodeRequest();

  GetNotificationChannelVerificationCodeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    return _json;
  }
}

/// The GetNotificationChannelVerificationCode request.
class GetNotificationChannelVerificationCodeResponse {
  /// The verification code, which may be used to verify other channels that
  /// have an equivalent identity (i.e. other channels of the same type with the
  /// same fingerprint such as other email channels with the same email address
  /// or other sms channels with the same number).
  core.String code;

  /// The expiration time associated with the code that was returned. If an
  /// expiration was provided in the request, this is the minimum of the
  /// requested expiration in the request and the max permitted expiration.
  core.String expireTime;

  GetNotificationChannelVerificationCodeResponse();

  GetNotificationChannelVerificationCodeResponse.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    return _json;
  }
}

/// The description of a dynamic collection of monitored resources. Each group
/// has a filter that is matched against monitored resources and their
/// associated metadata. If a group's filter matches an available monitored
/// resource, then that resource is a member of that group. Groups can contain
/// any number of monitored resources, and each monitored resource can be a
/// member of any number of groups.Groups can be nested in parent-child
/// hierarchies. The parentName field identifies an optional parent for each
/// group. If a group has a parent, then the only monitored resources available
/// to be matched by the group's filter are the resources contained in the
/// parent group. In other words, a group contains the monitored resources that
/// match its filter and the filters of all the group's ancestors. A group
/// without a parent can contain any monitored resource.For example, consider an
/// infrastructure running a set of instances with two user-defined tags:
/// "environment" and "role". A parent group has a filter,
/// environment="production". A child of that parent group has a filter,
/// role="transcoder". The parent group contains all instances in the production
/// environment, regardless of their roles. The child group contains instances
/// that have the transcoder role and are in the production environment.The
/// monitored resources contained in a group can change at any moment, depending
/// on what resources exist and what filters are associated with the group and
/// its ancestors.
class Group {
  /// A user-assigned name for this group, used only for display purposes.
  core.String displayName;

  /// The filter used to determine which monitored resources belong to this
  /// group.
  core.String filter;

  /// If true, the members of this group are considered to be a cluster. The
  /// system can perform additional analysis on groups that are clusters.
  core.bool isCluster;

  /// Output only. The name of this group. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". When creating a
  /// group, this field is ignored and a new name is created consisting of the
  /// project specified in the call to CreateGroup and a unique {group_id} that
  /// is generated automatically.
  core.String name;

  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For groups with no
  /// parent, parentName is the empty string, "".
  core.String parentName;

  Group();

  Group.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("isCluster")) {
      isCluster = _json["isCluster"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parentName")) {
      parentName = _json["parentName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (isCluster != null) {
      _json["isCluster"] = isCluster;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parentName != null) {
      _json["parentName"] = parentName;
    }
    return _json;
  }
}

/// Information involved in an HTTP/HTTPS uptime check request.
class HttpCheck {
  /// The authentication information. Optional when creating an HTTP check;
  /// defaults to empty.
  BasicAuthentication authInfo;

  /// The list of headers to send as part of the uptime check request. If two
  /// headers have the same key and different values, they should be entered as
  /// a single header, with the value being a comma-separated list of all the
  /// desired values as described at
  /// https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page 31). Entering two
  /// separate headers with the same key in a Create call will cause the first
  /// to be overwritten by the second. The maximum number of headers allowed is
  /// 100.
  core.Map<core.String, core.String> headers;

  /// Boolean specifiying whether to encrypt the header information. Encryption
  /// should be specified for any headers related to authentication that you do
  /// not wish to be seen when retrieving the configuration. The server will be
  /// responsible for encrypting the headers. On Get/List calls, if mask_headers
  /// is set to True then the headers will be obscured with ******.
  core.bool maskHeaders;

  /// The path to the page to run the check against. Will be combined with the
  /// host (specified within the MonitoredResource) and port to construct the
  /// full URL. Optional (defaults to "/"). If the provided path does not begin
  /// with "/", it will be prepended automatically.
  core.String path;

  /// The port to the page to run the check against. Will be combined with host
  /// (specified within the MonitoredResource) and path to construct the full
  /// URL. Optional (defaults to 80 without SSL, or 443 with SSL).
  core.int port;

  /// If true, use HTTPS instead of HTTP to run the check.
  core.bool useSsl;

  HttpCheck();

  HttpCheck.fromJson(core.Map _json) {
    if (_json.containsKey("authInfo")) {
      authInfo = new BasicAuthentication.fromJson(_json["authInfo"]);
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("maskHeaders")) {
      maskHeaders = _json["maskHeaders"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("useSsl")) {
      useSsl = _json["useSsl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authInfo != null) {
      _json["authInfo"] = (authInfo).toJson();
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (maskHeaders != null) {
      _json["maskHeaders"] = maskHeaders;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (useSsl != null) {
      _json["useSsl"] = useSsl;
    }
    return _json;
  }
}

/// An internal checker allows uptime checks to run on private/internal GCP
/// resources.
class InternalChecker {
  /// The checker's human-readable name. The display name should be unique
  /// within a Stackdriver Workspace in order to make it easier to identify;
  /// however, uniqueness is not enforced.
  core.String displayName;

  /// The GCP zone the uptime check should egress from. Only respected for
  /// internal uptime checks, where internal_network is specified.
  core.String gcpZone;

  /// A unique resource name for this InternalChecker. The format
  /// is:projects/[PROJECT_ID]/internalCheckers/[INTERNAL_CHECKER_ID].PROJECT_ID
  /// is the stackdriver workspace project for the uptime check config
  /// associated with the internal checker.
  core.String name;

  /// The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the
  /// internal resource lives (ex: "default").
  core.String network;

  /// The GCP project_id where the internal checker lives. Not necessary the
  /// same as the workspace project.
  core.String peerProjectId;

  /// The current operational state of the internal checker.
  /// Possible string values are:
  /// - "UNSPECIFIED" : An internal checker should never be in the unspecified
  /// state.
  /// - "CREATING" : The checker is being created, provisioned, and configured.
  /// A checker in this state can be returned by ListInternalCheckers or
  /// GetInternalChecker, as well as by examining the longrunning.Operation that
  /// created it.
  /// - "RUNNING" : The checker is running and available for use. A checker in
  /// this state can be returned by ListInternalCheckers or GetInternalChecker
  /// as well as by examining the longrunning.Operation that created it. If a
  /// checker is being torn down, it is neither visible nor usable, so there is
  /// no "deleting" or "down" state.
  core.String state;

  InternalChecker();

  InternalChecker.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("gcpZone")) {
      gcpZone = _json["gcpZone"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("peerProjectId")) {
      peerProjectId = _json["peerProjectId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (gcpZone != null) {
      _json["gcpZone"] = gcpZone;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (peerProjectId != null) {
      _json["peerProjectId"] = peerProjectId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// A description of a label.
class LabelDescriptor {
  /// A human-readable description for the label.
  core.String description;

  /// The label key.
  core.String key;

  /// The type of data that can be assigned to the label.
  /// Possible string values are:
  /// - "STRING" : A variable-length string. This is the default.
  /// - "BOOL" : Boolean; true or false.
  /// - "INT64" : A 64-bit signed integer.
  core.String valueType;

  LabelDescriptor();

  LabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Specifies a linear sequence of buckets that all have the same width (except
/// overflow and underflow). Each bucket represents a constant absolute
/// uncertainty on the specific value in the bucket.There are num_finite_buckets
/// + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i
/// < N-1): offset + (width * i).  Lower bound (1 <= i < N): offset + (width *
/// (i - 1)).
class Linear {
  /// Must be greater than 0.
  core.int numFiniteBuckets;

  /// Lower bound of the first bucket.
  core.double offset;

  /// Must be greater than 0.
  core.double width;

  Linear();

  Linear.fromJson(core.Map _json) {
    if (_json.containsKey("numFiniteBuckets")) {
      numFiniteBuckets = _json["numFiniteBuckets"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"].toDouble();
    }
    if (_json.containsKey("width")) {
      width = _json["width"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (numFiniteBuckets != null) {
      _json["numFiniteBuckets"] = numFiniteBuckets;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/// The protocol for the ListAlertPolicies response.
class ListAlertPoliciesResponse {
  /// The returned alert policies.
  core.List<AlertPolicy> alertPolicies;

  /// If there might be more results than were returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  ListAlertPoliciesResponse();

  ListAlertPoliciesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("alertPolicies")) {
      alertPolicies = (_json["alertPolicies"] as core.List)
          .map<AlertPolicy>((value) => new AlertPolicy.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alertPolicies != null) {
      _json["alertPolicies"] =
          alertPolicies.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The ListGroupMembers response.
class ListGroupMembersResponse {
  /// A set of monitored resources in the group.
  core.List<MonitoredResource> members;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  /// The total number of elements matching this request.
  core.int totalSize;

  ListGroupMembersResponse();

  ListGroupMembersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List)
          .map<MonitoredResource>(
              (value) => new MonitoredResource.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (members != null) {
      _json["members"] = members.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// The ListGroups response.
class ListGroupsResponse {
  /// The groups that match the specified filters.
  core.List<Group> group;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  ListGroupsResponse();

  ListGroupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("group")) {
      group = (_json["group"] as core.List)
          .map<Group>((value) => new Group.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (group != null) {
      _json["group"] = group.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The ListMetricDescriptors response.
class ListMetricDescriptorsResponse {
  /// The metric descriptors that are available to the project and that match
  /// the value of filter, if present.
  core.List<MetricDescriptor> metricDescriptors;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  ListMetricDescriptorsResponse();

  ListMetricDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("metricDescriptors")) {
      metricDescriptors = (_json["metricDescriptors"] as core.List)
          .map<MetricDescriptor>(
              (value) => new MetricDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metricDescriptors != null) {
      _json["metricDescriptors"] =
          metricDescriptors.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The ListMonitoredResourceDescriptors response.
class ListMonitoredResourceDescriptorsResponse {
  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  /// The monitored resource descriptors that are available to this project and
  /// that match filter, if present.
  core.List<MonitoredResourceDescriptor> resourceDescriptors;

  ListMonitoredResourceDescriptorsResponse();

  ListMonitoredResourceDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resourceDescriptors")) {
      resourceDescriptors = (_json["resourceDescriptors"] as core.List)
          .map<MonitoredResourceDescriptor>(
              (value) => new MonitoredResourceDescriptor.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resourceDescriptors != null) {
      _json["resourceDescriptors"] =
          resourceDescriptors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The ListNotificationChannelDescriptors response.
class ListNotificationChannelDescriptorsResponse {
  /// The monitored resource descriptors supported for the specified project,
  /// optionally filtered.
  core.List<NotificationChannelDescriptor> channelDescriptors;

  /// If not empty, indicates that there may be more results that match the
  /// request. Use the value in the page_token field in a subsequent request to
  /// fetch the next set of results. If empty, all results have been returned.
  core.String nextPageToken;

  ListNotificationChannelDescriptorsResponse();

  ListNotificationChannelDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("channelDescriptors")) {
      channelDescriptors = (_json["channelDescriptors"] as core.List)
          .map<NotificationChannelDescriptor>(
              (value) => new NotificationChannelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (channelDescriptors != null) {
      _json["channelDescriptors"] =
          channelDescriptors.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The ListNotificationChannels response.
class ListNotificationChannelsResponse {
  /// If not empty, indicates that there may be more results that match the
  /// request. Use the value in the page_token field in a subsequent request to
  /// fetch the next set of results. If empty, all results have been returned.
  core.String nextPageToken;

  /// The notification channels defined for the specified project.
  core.List<NotificationChannel> notificationChannels;

  ListNotificationChannelsResponse();

  ListNotificationChannelsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("notificationChannels")) {
      notificationChannels = (_json["notificationChannels"] as core.List)
          .map<NotificationChannel>(
              (value) => new NotificationChannel.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (notificationChannels != null) {
      _json["notificationChannels"] =
          notificationChannels.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The ListTimeSeries response.
class ListTimeSeriesResponse {
  /// Query execution errors that may have caused the time series data returned
  /// to be incomplete.
  core.List<Status> executionErrors;

  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  /// One or more time series that match the filter included in the request.
  core.List<TimeSeries> timeSeries;

  ListTimeSeriesResponse();

  ListTimeSeriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("executionErrors")) {
      executionErrors = (_json["executionErrors"] as core.List)
          .map<Status>((value) => new Status.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("timeSeries")) {
      timeSeries = (_json["timeSeries"] as core.List)
          .map<TimeSeries>((value) => new TimeSeries.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (executionErrors != null) {
      _json["executionErrors"] =
          executionErrors.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (timeSeries != null) {
      _json["timeSeries"] =
          timeSeries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The protocol for the ListUptimeCheckConfigs response.
class ListUptimeCheckConfigsResponse {
  /// This field represents the pagination token to retrieve the next page of
  /// results. If the value is empty, it means no further results for the
  /// request. To retrieve the next page of results, the value of the
  /// next_page_token is passed to the subsequent List method call (in the
  /// request message's page_token field).
  core.String nextPageToken;

  /// The total number of uptime check configurations for the project,
  /// irrespective of any pagination.
  core.int totalSize;

  /// The returned uptime check configurations.
  core.List<UptimeCheckConfig> uptimeCheckConfigs;

  ListUptimeCheckConfigsResponse();

  ListUptimeCheckConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
    if (_json.containsKey("uptimeCheckConfigs")) {
      uptimeCheckConfigs = (_json["uptimeCheckConfigs"] as core.List)
          .map<UptimeCheckConfig>(
              (value) => new UptimeCheckConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    if (uptimeCheckConfigs != null) {
      _json["uptimeCheckConfigs"] =
          uptimeCheckConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The protocol for the ListUptimeCheckIps response.
class ListUptimeCheckIpsResponse {
  /// This field represents the pagination token to retrieve the next page of
  /// results. If the value is empty, it means no further results for the
  /// request. To retrieve the next page of results, the value of the
  /// next_page_token is passed to the subsequent List method call (in the
  /// request message's page_token field). NOTE: this field is not yet
  /// implemented
  core.String nextPageToken;

  /// The returned list of IP addresses (including region and location) that the
  /// checkers run from.
  core.List<UptimeCheckIp> uptimeCheckIps;

  ListUptimeCheckIpsResponse();

  ListUptimeCheckIpsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("uptimeCheckIps")) {
      uptimeCheckIps = (_json["uptimeCheckIps"] as core.List)
          .map<UptimeCheckIp>((value) => new UptimeCheckIp.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (uptimeCheckIps != null) {
      _json["uptimeCheckIps"] =
          uptimeCheckIps.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A specific metric, identified by specifying values for all of the labels of
/// a MetricDescriptor.
class Metric {
  /// The set of label values that uniquely identify this metric. All labels
  /// listed in the MetricDescriptor must be assigned values.
  core.Map<core.String, core.String> labels;

  /// An existing metric type, see google.api.MetricDescriptor. For example,
  /// custom.googleapis.com/invoice/paid/amount.
  core.String type;

  Metric();

  Metric.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A condition type that checks that monitored resources are reporting data.
/// The configuration defines a metric and a set of monitored resources. The
/// predicate is considered in violation when a time series for the specified
/// metric of a monitored resource does not include any data in the specified
/// duration.
class MetricAbsence {
  /// Specifies the alignment of data points in individual time series as well
  /// as how to combine the retrieved time series together (such as when
  /// aggregating multiple streams on each resource to a single stream for each
  /// resource or when aggregating streams across all members of a group of
  /// resrouces). Multiple aggregations are applied in the order specified.This
  /// field is similar to the one in the MetricService.ListTimeSeries request.
  /// It is advisable to use the ListTimeSeries method when debugging this
  /// field.
  core.List<Aggregation> aggregations;

  /// The amount of time that a time series must fail to report new data to be
  /// considered failing. Currently, only values that are a multiple of a
  /// minute--e.g. 60, 120, or 300 seconds--are supported. If an invalid value
  /// is given, an error will be returned. The Duration.nanos field is ignored.
  core.String duration;

  /// A filter that identifies which time series should be compared with the
  /// threshold.The filter is similar to the one that is specified in the
  /// MetricService.ListTimeSeries request (that call is useful to verify the
  /// time series that will be retrieved / processed) and must specify the
  /// metric type and optionally may contain restrictions on resource type,
  /// resource labels, and metric labels. This field may not exceed 2048 Unicode
  /// characters in length.
  core.String filter;

  /// The number/percent of time series for which the comparison must hold in
  /// order for the condition to trigger. If unspecified, then the condition
  /// will trigger if the comparison is true for any of the time series that
  /// have been identified by filter and aggregations.
  Trigger trigger;

  MetricAbsence();

  MetricAbsence.fromJson(core.Map _json) {
    if (_json.containsKey("aggregations")) {
      aggregations = (_json["aggregations"] as core.List)
          .map<Aggregation>((value) => new Aggregation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("trigger")) {
      trigger = new Trigger.fromJson(_json["trigger"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aggregations != null) {
      _json["aggregations"] =
          aggregations.map((value) => (value).toJson()).toList();
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (trigger != null) {
      _json["trigger"] = (trigger).toJson();
    }
    return _json;
  }
}

/// Defines a metric type and its schema. Once a metric descriptor is created,
/// deleting or altering it stops data collection and makes the metric type's
/// existing data unusable.
class MetricDescriptor {
  /// A detailed description of the metric, which can be used in documentation.
  core.String description;

  /// A concise name for the metric, which can be displayed in user interfaces.
  /// Use sentence case without an ending period, for example "Request count".
  /// This field is optional but it is recommended to be set for any metrics
  /// associated with user-visible concepts, such as Quota.
  core.String displayName;

  /// The set of labels that can be used to describe a specific instance of this
  /// metric type. For example, the
  /// appengine.googleapis.com/http/server/response_latencies metric type has a
  /// label for the HTTP response code, response_code, so you can look at
  /// latencies for successful responses or just for responses that failed.
  core.List<LabelDescriptor> labels;

  /// Optional. The launch stage of the metric definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects whitelisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// Optional. Metadata which can be used to guide usage of the metric.
  MetricDescriptorMetadata metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc.
  /// Some combinations of metric_kind and value_type might not be supported.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String metricKind;

  /// The resource name of the metric descriptor.
  core.String name;

  /// The metric type, including its DNS name prefix. The type is not
  /// URL-encoded. All user-defined metric types have the DNS name
  /// custom.googleapis.com or external.googleapis.com. Metric types should use
  /// a natural hierarchical grouping. For example:
  /// "custom.googleapis.com/invoice/paid/amount"
  /// "external.googleapis.com/prometheus/up"
  /// "appengine.googleapis.com/http/server/response_latencies"
  core.String type;

  /// The unit in which the metric value is reported. It is only applicable if
  /// the value_type is INT64, DOUBLE, or DISTRIBUTION. The supported units are
  /// a subset of The Unified Code for Units of Measure
  /// (http://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT)
  /// bit bit
  /// By byte
  /// s second
  /// min minute
  /// h hour
  /// d dayPrefixes (PREFIX)
  /// k kilo (10**3)
  /// M mega (10**6)
  /// G giga (10**9)
  /// T tera (10**12)
  /// P peta (10**15)
  /// E exa (10**18)
  /// Z zetta (10**21)
  /// Y yotta (10**24)
  /// m milli (10**-3)
  /// u micro (10**-6)
  /// n nano (10**-9)
  /// p pico (10**-12)
  /// f femto (10**-15)
  /// a atto (10**-18)
  /// z zepto (10**-21)
  /// y yocto (10**-24)
  /// Ki kibi (2**10)
  /// Mi mebi (2**20)
  /// Gi gibi (2**30)
  /// Ti tebi (2**40)GrammarThe grammar also includes these connectors:
  /// / division (as an infix operator, e.g. 1/s).
  /// . multiplication (as an infix operator, e.g. GBy.d)The grammar for a unit
  /// is as follows:
  /// Expression = Component { "." Component } { "/" Component } ;
  ///
  /// Component = ( [ PREFIX ] UNIT | "%" ) [ Annotation ]
  ///           | Annotation
  ///           | "1"
  ///           ;
  ///
  /// Annotation = "{" NAME "}" ;
  /// Notes:
  /// Annotation is just a comment if it follows a UNIT and is  equivalent to 1
  /// if it is used alone. For examples,  {requests}/s == 1/s, By{transmitted}/s
  /// == By/s.
  /// NAME is a sequence of non-blank printable ASCII characters not  containing
  /// '{' or '}'.
  /// 1 represents dimensionless value 1, such as in 1/s.
  /// % represents dimensionless value 1/100, and annotates values giving  a
  /// percentage.
  core.String unit;

  /// Whether the measurement is an integer, a floating-point number, etc. Some
  /// combinations of metric_kind and value_type might not be supported.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is GAUGE.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is GAUGE.
  /// - "DISTRIBUTION" : The value is a Distribution.
  /// - "MONEY" : The value is money.
  core.String valueType;

  MetricDescriptor();

  MetricDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new MetricDescriptorMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("metricKind")) {
      metricKind = _json["metricKind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unit")) {
      unit = _json["unit"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (metricKind != null) {
      _json["metricKind"] = metricKind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unit != null) {
      _json["unit"] = unit;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this
  /// age are guaranteed to be ingested and available to be read, excluding data
  /// loss due to errors.
  core.String ingestDelay;

  /// Deprecated. Please use the MetricDescriptor.launch_stage instead. The
  /// launch stage of the metric definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects whitelisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// The sampling period of metric data points. For metrics which are written
  /// periodically, consecutive data points are stored at this time interval,
  /// excluding data loss due to errors. Metrics with a higher granularity have
  /// a smaller sampling period.
  core.String samplePeriod;

  MetricDescriptorMetadata();

  MetricDescriptorMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("ingestDelay")) {
      ingestDelay = _json["ingestDelay"];
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("samplePeriod")) {
      samplePeriod = _json["samplePeriod"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ingestDelay != null) {
      _json["ingestDelay"] = ingestDelay;
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (samplePeriod != null) {
      _json["samplePeriod"] = samplePeriod;
    }
    return _json;
  }
}

/// A condition type that compares a collection of time series against a
/// threshold.
class MetricThreshold {
  /// Specifies the alignment of data points in individual time series as well
  /// as how to combine the retrieved time series together (such as when
  /// aggregating multiple streams on each resource to a single stream for each
  /// resource or when aggregating streams across all members of a group of
  /// resrouces). Multiple aggregations are applied in the order specified.This
  /// field is similar to the one in the MetricService.ListTimeSeries request.
  /// It is advisable to use the ListTimeSeries method when debugging this
  /// field.
  core.List<Aggregation> aggregations;

  /// The comparison to apply between the time series (indicated by filter and
  /// aggregation) and the threshold (indicated by threshold_value). The
  /// comparison is applied on each time series, with the time series on the
  /// left-hand side and the threshold on the right-hand side.Only COMPARISON_LT
  /// and COMPARISON_GT are supported currently.
  /// Possible string values are:
  /// - "COMPARISON_UNSPECIFIED" : No ordering relationship is specified.
  /// - "COMPARISON_GT" : The left argument is greater than the right argument.
  /// - "COMPARISON_GE" : The left argument is greater than or equal to the
  /// right argument.
  /// - "COMPARISON_LT" : The left argument is less than the right argument.
  /// - "COMPARISON_LE" : The left argument is less than or equal to the right
  /// argument.
  /// - "COMPARISON_EQ" : The left argument is equal to the right argument.
  /// - "COMPARISON_NE" : The left argument is not equal to the right argument.
  core.String comparison;

  /// Specifies the alignment of data points in individual time series selected
  /// by denominatorFilter as well as how to combine the retrieved time series
  /// together (such as when aggregating multiple streams on each resource to a
  /// single stream for each resource or when aggregating streams across all
  /// members of a group of resources).When computing ratios, the aggregations
  /// and denominator_aggregations fields must use the same alignment period and
  /// produce time series that have the same periodicity and labels.This field
  /// is similar to the one in the MetricService.ListTimeSeries request. It is
  /// advisable to use the ListTimeSeries method when debugging this field.
  core.List<Aggregation> denominatorAggregations;

  /// A filter that identifies a time series that should be used as the
  /// denominator of a ratio that will be compared with the threshold. If a
  /// denominator_filter is specified, the time series specified by the filter
  /// field will be used as the numerator.The filter is similar to the one that
  /// is specified in the MetricService.ListTimeSeries request (that call is
  /// useful to verify the time series that will be retrieved / processed) and
  /// must specify the metric type and optionally may contain restrictions on
  /// resource type, resource labels, and metric labels. This field may not
  /// exceed 2048 Unicode characters in length.
  core.String denominatorFilter;

  /// The amount of time that a time series must violate the threshold to be
  /// considered failing. Currently, only values that are a multiple of a
  /// minute--e.g., 0, 60, 120, or 300 seconds--are supported. If an invalid
  /// value is given, an error will be returned. When choosing a duration, it is
  /// useful to keep in mind the frequency of the underlying time series data
  /// (which may also be affected by any alignments specified in the
  /// aggregations field); a good duration is long enough so that a single
  /// outlier does not generate spurious alerts, but short enough that unhealthy
  /// states are detected and alerted on quickly.
  core.String duration;

  /// A filter that identifies which time series should be compared with the
  /// threshold.The filter is similar to the one that is specified in the
  /// MetricService.ListTimeSeries request (that call is useful to verify the
  /// time series that will be retrieved / processed) and must specify the
  /// metric type and optionally may contain restrictions on resource type,
  /// resource labels, and metric labels. This field may not exceed 2048 Unicode
  /// characters in length.
  core.String filter;

  /// A value against which to compare the time series.
  core.double thresholdValue;

  /// The number/percent of time series for which the comparison must hold in
  /// order for the condition to trigger. If unspecified, then the condition
  /// will trigger if the comparison is true for any of the time series that
  /// have been identified by filter and aggregations, or by the ratio, if
  /// denominator_filter and denominator_aggregations are specified.
  Trigger trigger;

  MetricThreshold();

  MetricThreshold.fromJson(core.Map _json) {
    if (_json.containsKey("aggregations")) {
      aggregations = (_json["aggregations"] as core.List)
          .map<Aggregation>((value) => new Aggregation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("comparison")) {
      comparison = _json["comparison"];
    }
    if (_json.containsKey("denominatorAggregations")) {
      denominatorAggregations = (_json["denominatorAggregations"] as core.List)
          .map<Aggregation>((value) => new Aggregation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("denominatorFilter")) {
      denominatorFilter = _json["denominatorFilter"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("thresholdValue")) {
      thresholdValue = _json["thresholdValue"].toDouble();
    }
    if (_json.containsKey("trigger")) {
      trigger = new Trigger.fromJson(_json["trigger"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aggregations != null) {
      _json["aggregations"] =
          aggregations.map((value) => (value).toJson()).toList();
    }
    if (comparison != null) {
      _json["comparison"] = comparison;
    }
    if (denominatorAggregations != null) {
      _json["denominatorAggregations"] =
          denominatorAggregations.map((value) => (value).toJson()).toList();
    }
    if (denominatorFilter != null) {
      _json["denominatorFilter"] = denominatorFilter;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (thresholdValue != null) {
      _json["thresholdValue"] = thresholdValue;
    }
    if (trigger != null) {
      _json["trigger"] = (trigger).toJson();
    }
    return _json;
  }
}

/// An object representing a resource that can be used for monitoring, logging,
/// billing, or other purposes. Examples include virtual machine instances,
/// databases, and storage devices such as disks. The type field identifies a
/// MonitoredResourceDescriptor object that describes the resource's schema.
/// Information in the labels field identifies the actual resource and its
/// attributes according to the schema. For example, a particular Compute Engine
/// VM instance could be represented by the following object, because the
/// MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and
/// "zone":
/// { "type": "gce_instance",
///   "labels": { "instance_id": "12345678901234",
///               "zone": "us-central1-a" }}
class MonitoredResource {
  /// Required. Values for all of the labels listed in the associated monitored
  /// resource descriptor. For example, Compute Engine VM instances use the
  /// labels "project_id", "instance_id", and "zone".
  core.Map<core.String, core.String> labels;

  /// Required. The monitored resource type. This field must match the type
  /// field of a MonitoredResourceDescriptor object. For example, the type of a
  /// Compute Engine VM instance is gce_instance. For a list of types, see
  /// Monitoring resource types and Logging resource types.
  core.String type;

  MonitoredResource();

  MonitoredResource.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// An object that describes the schema of a MonitoredResource object using a
/// type name and a set of labels. For example, the monitored resource
/// descriptor for Google Compute Engine VM instances has a type of
/// "gce_instance" and specifies the use of the labels "instance_id" and "zone"
/// to identify particular VM instances.Different APIs can support different
/// monitored resource types. APIs generally provide a list method that returns
/// the monitored resource descriptors used by the API.
class MonitoredResourceDescriptor {
  /// Optional. A detailed description of the monitored resource type that might
  /// be used in documentation.
  core.String description;

  /// Optional. A concise name for the monitored resource type that might be
  /// displayed in user interfaces. It should be a Title Cased Noun Phrase,
  /// without any article or other determiners. For example, "Google Cloud SQL
  /// Database".
  core.String displayName;

  /// Required. A set of labels used to describe instances of this monitored
  /// resource type. For example, an individual Google Cloud SQL database is
  /// identified by values for the labels "database_id" and "zone".
  core.List<LabelDescriptor> labels;

  /// Optional. The launch stage of the monitored resource definition.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects whitelisted. Alpha releases don’t have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the “Deprecation Policy” section of our
  /// Terms of Service (https://cloud.google.com/terms/) and the Google Cloud
  /// Platform Subject to the Deprecation Policy
  /// (https://cloud.google.com/terms/deprecation) documentation.
  core.String launchStage;

  /// Optional. The resource name of the monitored resource descriptor:
  /// "projects/{project_id}/monitoredResourceDescriptors/{type}" where {type}
  /// is the value of the type field in this object and {project_id} is a
  /// project ID that provides API-specific context for accessing the type. APIs
  /// that do not use project information can use the resource name format
  /// "monitoredResourceDescriptors/{type}".
  core.String name;

  /// Required. The monitored resource type. For example, the type
  /// "cloudsql_database" represents databases in Google Cloud SQL. The maximum
  /// length of this value is 256 characters.
  core.String type;

  MonitoredResourceDescriptor();

  MonitoredResourceDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("launchStage")) {
      launchStage = _json["launchStage"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (launchStage != null) {
      _json["launchStage"] = launchStage;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Auxiliary metadata for a MonitoredResource object. MonitoredResource objects
/// contain the minimum set of information to uniquely identify a monitored
/// resource instance. There is some other useful auxiliary metadata. Monitoring
/// and Logging use an ingestion pipeline to extract metadata for cloud
/// resources of all types, and store the metadata in this message.
class MonitoredResourceMetadata {
  /// Output only. Values for predefined system metadata labels. System labels
  /// are a kind of metadata extracted by Google, including "machine_image",
  /// "vpc", "subnet_id", "security_group", "name", etc. System label values can
  /// be only strings, Boolean values, or a list of strings. For example:
  /// { "name": "my-test-instance",
  ///   "security_group": ["a", "b", "c"],
  ///   "spot_instance": false }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> systemLabels;

  /// Output only. A map of user-defined metadata labels.
  core.Map<core.String, core.String> userLabels;

  MonitoredResourceMetadata();

  MonitoredResourceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("systemLabels")) {
      systemLabels =
          (_json["systemLabels"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("userLabels")) {
      userLabels =
          (_json["userLabels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (systemLabels != null) {
      _json["systemLabels"] = systemLabels;
    }
    if (userLabels != null) {
      _json["userLabels"] = userLabels;
    }
    return _json;
  }
}

/// Describes a change made to a configuration.
class MutationRecord {
  /// When the change occurred.
  core.String mutateTime;

  /// The email address of the user making the change.
  core.String mutatedBy;

  MutationRecord();

  MutationRecord.fromJson(core.Map _json) {
    if (_json.containsKey("mutateTime")) {
      mutateTime = _json["mutateTime"];
    }
    if (_json.containsKey("mutatedBy")) {
      mutatedBy = _json["mutatedBy"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mutateTime != null) {
      _json["mutateTime"] = mutateTime;
    }
    if (mutatedBy != null) {
      _json["mutatedBy"] = mutatedBy;
    }
    return _json;
  }
}

/// A NotificationChannel is a medium through which an alert is delivered when a
/// policy violation is detected. Examples of channels include email, SMS, and
/// third-party messaging applications. Fields containing sensitive information
/// like authentication tokens or contact info are only partially populated on
/// retrieval.
class NotificationChannel {
  /// An optional human-readable description of this notification channel. This
  /// description may provide additional details, beyond the display name, for
  /// the channel. This may not exceed 1024 Unicode characters.
  core.String description;

  /// An optional human-readable name for this notification channel. It is
  /// recommended that you specify a non-empty and unique name in order to make
  /// it easier to identify the channels in your project, though this is not
  /// enforced. The display name is limited to 512 Unicode characters.
  core.String displayName;

  /// Whether notifications are forwarded to the described channel. This makes
  /// it possible to disable delivery of notifications to a particular channel
  /// without removing the channel from all alerting policies that reference the
  /// channel. This is a more convenient approach when the change is temporary
  /// and you want to receive notifications from the same set of alerting
  /// policies on the channel at some point in the future.
  core.bool enabled;

  /// Configuration fields that define the channel and its behavior. The
  /// permissible and required labels are specified in the
  /// NotificationChannelDescriptor.labels of the NotificationChannelDescriptor
  /// corresponding to the type field.
  core.Map<core.String, core.String> labels;

  /// The full REST resource name for this channel. The syntax is:
  /// projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]
  /// The [CHANNEL_ID] is automatically assigned by the server on creation.
  core.String name;

  /// The type of the notification channel. This field matches the value of the
  /// NotificationChannelDescriptor.type field.
  core.String type;

  /// User-supplied key/value data that does not need to conform to the
  /// corresponding NotificationChannelDescriptor's schema, unlike the labels
  /// field. This field is intended to be used for organizing and identifying
  /// the NotificationChannel objects.The field can contain up to 64 entries.
  /// Each key and value is limited to 63 Unicode characters or 128 bytes,
  /// whichever is smaller. Labels and values can contain only lowercase
  /// letters, numerals, underscores, and dashes. Keys must begin with a letter.
  core.Map<core.String, core.String> userLabels;

  /// Indicates whether this channel has been verified or not. On a
  /// ListNotificationChannels or GetNotificationChannel operation, this field
  /// is expected to be populated.If the value is UNVERIFIED, then it indicates
  /// that the channel is non-functioning (it both requires verification and
  /// lacks verification); otherwise, it is assumed that the channel works.If
  /// the channel is neither VERIFIED nor UNVERIFIED, it implies that the
  /// channel is of a type that does not require verification or that this
  /// specific channel has been exempted from verification because it was
  /// created prior to verification being required for channels of this
  /// type.This field cannot be modified using a standard
  /// UpdateNotificationChannel operation. To change the value of this field,
  /// you must call VerifyNotificationChannel.
  /// Possible string values are:
  /// - "VERIFICATION_STATUS_UNSPECIFIED" : Sentinel value used to indicate that
  /// the state is unknown, omitted, or is not applicable (as in the case of
  /// channels that neither support nor require verification in order to
  /// function).
  /// - "UNVERIFIED" : The channel has yet to be verified and requires
  /// verification to function. Note that this state also applies to the case
  /// where the verification process has been initiated by sending a
  /// verification code but where the verification code has not been submitted
  /// to complete the process.
  /// - "VERIFIED" : It has been proven that notifications can be received on
  /// this notification channel and that someone on the project has access to
  /// messages that are delivered to that channel.
  core.String verificationStatus;

  NotificationChannel();

  NotificationChannel.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("userLabels")) {
      userLabels =
          (_json["userLabels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (userLabels != null) {
      _json["userLabels"] = userLabels;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    return _json;
  }
}

/// A description of a notification channel. The descriptor includes the
/// properties of the channel and the set of labels or fields that must be
/// specified to configure channels of a given type.
class NotificationChannelDescriptor {
  /// A human-readable description of the notification channel type. The
  /// description may include a description of the properties of the channel and
  /// pointers to external documentation.
  core.String description;

  /// A human-readable name for the notification channel type. This form of the
  /// name is suitable for a user interface.
  core.String displayName;

  /// The set of labels that must be defined to identify a particular channel of
  /// the corresponding type. Each label includes a description for how that
  /// field should be populated.
  core.List<LabelDescriptor> labels;

  /// The full REST resource name for this descriptor. The syntax is:
  /// projects/[PROJECT_ID]/notificationChannelDescriptors/[TYPE]
  /// In the above, [TYPE] is the value of the type field.
  core.String name;

  /// The tiers that support this notification channel; the project service tier
  /// must be one of the supported_tiers.
  core.List<core.String> supportedTiers;

  /// The type of notification channel, such as "email", "sms", etc.
  /// Notification channel types are globally unique.
  core.String type;

  NotificationChannelDescriptor();

  NotificationChannelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.List)
          .map<LabelDescriptor>((value) => new LabelDescriptor.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("supportedTiers")) {
      supportedTiers =
          (_json["supportedTiers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (supportedTiers != null) {
      _json["supportedTiers"] = supportedTiers;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A protocol buffer option, which can be attached to a message, field,
/// enumeration, etc.
class Option {
  /// The option's name. For protobuf built-in options (options defined in
  /// descriptor.proto), this is the short name. For example, "map_entry". For
  /// custom options, it should be the fully-qualified name. For example,
  /// "google.api.http".
  core.String name;

  /// The option's value packed in an Any message. If the value is a primitive,
  /// the corresponding wrapper type defined in google/protobuf/wrappers.proto
  /// should be used. If the value is an enum, it should be stored as an int32
  /// value using the google.protobuf.Int32Value type.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> value;

  Option();

  Option.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = (_json["value"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A single data point in a time series.
class Point {
  /// The time interval to which the data point applies. For GAUGE metrics, only
  /// the end time of the interval is used. For DELTA metrics, the start and end
  /// time should specify a non-zero interval, with subsequent points specifying
  /// contiguous and non-overlapping intervals. For CUMULATIVE metrics, the
  /// start and end time should specify a non-zero interval, with subsequent
  /// points specifying the same start time and increasing end times, until an
  /// event resets the cumulative value to zero and sets a new start time for
  /// the following points.
  TimeInterval interval;

  /// The value of the data point.
  TypedValue value;

  Point();

  Point.fromJson(core.Map _json) {
    if (_json.containsKey("interval")) {
      interval = new TimeInterval.fromJson(_json["interval"]);
    }
    if (_json.containsKey("value")) {
      value = new TypedValue.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (interval != null) {
      _json["interval"] = (interval).toJson();
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// The range of the population values.
class Range {
  /// The maximum of the population values.
  core.double max;

  /// The minimum of the population values.
  core.double min;

  Range();

  Range.fromJson(core.Map _json) {
    if (_json.containsKey("max")) {
      max = _json["max"].toDouble();
    }
    if (_json.containsKey("min")) {
      min = _json["min"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (max != null) {
      _json["max"] = max;
    }
    if (min != null) {
      _json["min"] = min;
    }
    return _json;
  }
}

/// The resource submessage for group checks. It can be used instead of a
/// monitored resource, when multiple resources are being monitored.
class ResourceGroup {
  /// The group of resources being monitored. Should be only the group_id, not
  /// projects/<project_id>/groups/<group_id>.
  core.String groupId;

  /// The resource type of the group members.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Default value (not valid).
  /// - "INSTANCE" : A group of instances from Google Cloud Platform (GCP) or
  /// Amazon Web Services (AWS).
  /// - "AWS_ELB_LOAD_BALANCER" : A group of Amazon ELB load balancers.
  core.String resourceType;

  ResourceGroup();

  ResourceGroup.fromJson(core.Map _json) {
    if (_json.containsKey("groupId")) {
      groupId = _json["groupId"];
    }
    if (_json.containsKey("resourceType")) {
      resourceType = _json["resourceType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupId != null) {
      _json["groupId"] = groupId;
    }
    if (resourceType != null) {
      _json["resourceType"] = resourceType;
    }
    return _json;
  }
}

/// The SendNotificationChannelVerificationCode request.
class SendNotificationChannelVerificationCodeRequest {
  SendNotificationChannelVerificationCodeRequest();

  SendNotificationChannelVerificationCodeRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// SourceContext represents information about the source of a protobuf element,
/// like the file in which it is defined.
class SourceContext {
  /// The path-qualified name of the .proto file that contained the associated
  /// protobuf element. For example: "google/protobuf/source_context.proto".
  core.String fileName;

  SourceContext();

  SourceContext.fromJson(core.Map _json) {
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    return _json;
  }
}

/// The context of a span, attached to google.api.Distribution.Exemplars in
/// google.api.Distribution values during aggregation.It contains the name of a
/// span with format:  projects/PROJECT_ID/traces/TRACE_ID/spans/SPAN_ID
class SpanContext {
  /// The resource name of the span in the following format:
  /// projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SPAN_ID]
  /// TRACE_ID is a unique identifier for a trace within a project; it is a
  /// 32-character hexadecimal encoding of a 16-byte array.SPAN_ID is a unique
  /// identifier for a span within a trace; it is a 16-character hexadecimal
  /// encoding of an 8-byte array.
  core.String spanName;

  SpanContext();

  SpanContext.fromJson(core.Map _json) {
    if (_json.containsKey("spanName")) {
      spanName = _json["spanName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (spanName != null) {
      _json["spanName"] = spanName;
    }
    return _json;
  }
}

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// gRPC (https://github.com/grpc). Each Status message contains three pieces of
/// data: error code, error message, and error details.You can find out more
/// about this error model and how to work with it in the API Design Guide
/// (https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
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
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Information required for a TCP uptime check request.
class TcpCheck {
  /// The port to the page to run the check against. Will be combined with host
  /// (specified within the MonitoredResource) to construct the full URL.
  /// Required.
  core.int port;

  TcpCheck();

  TcpCheck.fromJson(core.Map _json) {
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (port != null) {
      _json["port"] = port;
    }
    return _json;
  }
}

/// A closed time interval. It extends from the start time to the end time, and
/// includes both: [startTime, endTime]. Valid time intervals depend on the
/// MetricKind of the metric value. In no case can the end time be earlier than
/// the start time.
/// For a GAUGE metric, the startTime value is technically optional; if  no
/// value is specified, the start time defaults to the value of the  end time,
/// and the interval represents a single point in time. Such an  interval is
/// valid only for GAUGE metrics, which are point-in-time  measurements.
/// For DELTA and CUMULATIVE metrics, the start time must be later than  the end
/// time.
/// In all cases, the start time of the next interval must be  at least a
/// microsecond after the end time of the previous interval.  Because the
/// interval is closed, if the start time of a new interval  is the same as the
/// end time of the previous interval, data written  at the new start time could
/// overwrite data written at the previous  end time.
class TimeInterval {
  /// Required. The end of the time interval.
  core.String endTime;

  /// Optional. The beginning of the time interval. The default value for the
  /// start time is the end time. The start time must not be later than the end
  /// time.
  core.String startTime;

  TimeInterval();

  TimeInterval.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// A collection of data points that describes the time-varying values of a
/// metric. A time series is identified by a combination of a fully-specified
/// monitored resource and a fully-specified metric. This type is used for both
/// listing and creating time series.
class TimeSeries {
  /// Output only. The associated monitored resource metadata. When reading a a
  /// timeseries, this field will include metadata labels that are explicitly
  /// named in the reduction. When creating a timeseries, this field is ignored.
  MonitoredResourceMetadata metadata;

  /// The associated metric. A fully-specified metric used to identify the time
  /// series.
  Metric metric;

  /// The metric kind of the time series. When listing time series, this metric
  /// kind might be different from the metric kind of the associated metric if
  /// this time series is an alignment or reduction of other time series.When
  /// creating a time series, this field is optional. If present, it must be the
  /// same as the metric kind of the associated metric. If the associated
  /// metric's descriptor must be auto-created, then this field specifies the
  /// metric kind of the new descriptor and must be either GAUGE (the default)
  /// or CUMULATIVE.
  /// Possible string values are:
  /// - "METRIC_KIND_UNSPECIFIED" : Do not use this default value.
  /// - "GAUGE" : An instantaneous measurement of a value.
  /// - "DELTA" : The change in a value during a time interval.
  /// - "CUMULATIVE" : A value accumulated over a time interval. Cumulative
  /// measurements in a time series should have the same start time and
  /// increasing end times, until an event resets the cumulative value to zero
  /// and sets a new start time for the following points.
  core.String metricKind;

  /// The data points of this time series. When listing time series, points are
  /// returned in reverse time order.When creating a time series, this field
  /// must contain exactly one point and the point's type must be the same as
  /// the value type of the associated metric. If the associated metric's
  /// descriptor must be auto-created, then the value type of the descriptor is
  /// determined by the point's type, which must be BOOL, INT64, DOUBLE, or
  /// DISTRIBUTION.
  core.List<Point> points;

  /// The associated monitored resource. Custom metrics can use only certain
  /// monitored resource types in their time series data.
  MonitoredResource resource;

  /// The value type of the time series. When listing time series, this value
  /// type might be different from the value type of the associated metric if
  /// this time series is an alignment or reduction of other time series.When
  /// creating a time series, this field is optional. If present, it must be the
  /// same as the type of the data in the points field.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Do not use this default value.
  /// - "BOOL" : The value is a boolean. This value type can be used only if the
  /// metric kind is GAUGE.
  /// - "INT64" : The value is a signed 64-bit integer.
  /// - "DOUBLE" : The value is a double precision floating point number.
  /// - "STRING" : The value is a text string. This value type can be used only
  /// if the metric kind is GAUGE.
  /// - "DISTRIBUTION" : The value is a Distribution.
  /// - "MONEY" : The value is money.
  core.String valueType;

  TimeSeries();

  TimeSeries.fromJson(core.Map _json) {
    if (_json.containsKey("metadata")) {
      metadata = new MonitoredResourceMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("metric")) {
      metric = new Metric.fromJson(_json["metric"]);
    }
    if (_json.containsKey("metricKind")) {
      metricKind = _json["metricKind"];
    }
    if (_json.containsKey("points")) {
      points = (_json["points"] as core.List)
          .map<Point>((value) => new Point.fromJson(value))
          .toList();
    }
    if (_json.containsKey("resource")) {
      resource = new MonitoredResource.fromJson(_json["resource"]);
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (metric != null) {
      _json["metric"] = (metric).toJson();
    }
    if (metricKind != null) {
      _json["metricKind"] = metricKind;
    }
    if (points != null) {
      _json["points"] = points.map((value) => (value).toJson()).toList();
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/// Specifies how many time series must fail a predicate to trigger a condition.
/// If not specified, then a {count: 1} trigger is used.
class Trigger {
  /// The absolute number of time series that must fail the predicate for the
  /// condition to be triggered.
  core.int count;

  /// The percentage of time series that must fail the predicate for the
  /// condition to be triggered.
  core.double percent;

  Trigger();

  Trigger.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("percent")) {
      percent = _json["percent"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (percent != null) {
      _json["percent"] = percent;
    }
    return _json;
  }
}

/// A protocol buffer message type.
class Type {
  /// The list of fields.
  core.List<Field> fields;

  /// The fully qualified message name.
  core.String name;

  /// The list of types appearing in oneof definitions in this type.
  core.List<core.String> oneofs;

  /// The protocol buffer options.
  core.List<Option> options;

  /// The source context.
  SourceContext sourceContext;

  /// The source syntax.
  /// Possible string values are:
  /// - "SYNTAX_PROTO2" : Syntax proto2.
  /// - "SYNTAX_PROTO3" : Syntax proto3.
  core.String syntax;

  Type();

  Type.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<Field>((value) => new Field.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("oneofs")) {
      oneofs = (_json["oneofs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("options")) {
      options = (_json["options"] as core.List)
          .map<Option>((value) => new Option.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceContext")) {
      sourceContext = new SourceContext.fromJson(_json["sourceContext"]);
    }
    if (_json.containsKey("syntax")) {
      syntax = _json["syntax"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (oneofs != null) {
      _json["oneofs"] = oneofs;
    }
    if (options != null) {
      _json["options"] = options.map((value) => (value).toJson()).toList();
    }
    if (sourceContext != null) {
      _json["sourceContext"] = (sourceContext).toJson();
    }
    if (syntax != null) {
      _json["syntax"] = syntax;
    }
    return _json;
  }
}

/// A single strongly-typed value.
class TypedValue {
  /// A Boolean value: true or false.
  core.bool boolValue;

  /// A distribution value.
  Distribution distributionValue;

  /// A 64-bit double-precision floating-point number. Its magnitude is
  /// approximately &plusmn;10<sup>&plusmn;300</sup> and it has 16 significant
  /// digits of precision.
  core.double doubleValue;

  /// A 64-bit integer. Its range is approximately &plusmn;9.2x10<sup>18</sup>.
  core.String int64Value;

  /// A variable-length string value.
  core.String stringValue;

  TypedValue();

  TypedValue.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("distributionValue")) {
      distributionValue = new Distribution.fromJson(_json["distributionValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"].toDouble();
    }
    if (_json.containsKey("int64Value")) {
      int64Value = _json["int64Value"];
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
    if (distributionValue != null) {
      _json["distributionValue"] = (distributionValue).toJson();
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (int64Value != null) {
      _json["int64Value"] = int64Value;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/// This message configures which resources and services to monitor for
/// availability.
class UptimeCheckConfig {
  /// The expected content on the page the check is run against. Currently, only
  /// the first entry in the list is supported, and other entries will be
  /// ignored. The server will look for an exact match of the string in the page
  /// response's content. This field is optional and should only be specified if
  /// a content match is required.
  core.List<ContentMatcher> contentMatchers;

  /// A human-friendly name for the uptime check configuration. The display name
  /// should be unique within a Stackdriver Workspace in order to make it easier
  /// to identify; however, uniqueness is not enforced. Required.
  core.String displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  HttpCheck httpCheck;

  /// The internal checkers that this check will egress from. If is_internal is
  /// true and this list is empty, the check will egress from all the
  /// InternalCheckers configured for the project that owns this CheckConfig.
  core.List<InternalChecker> internalCheckers;

  /// The monitored resource (https://cloud.google.com/monitoring/api/resources)
  /// associated with the configuration. The following monitored resource types
  /// are supported for uptime checks:  uptime_url  gce_instance  gae_app
  /// aws_ec2_instance  aws_elb_load_balancer
  MonitoredResource monitoredResource;

  /// A unique resource name for this UptimeCheckConfig. The format
  /// is:projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID].This field
  /// should be omitted when creating the uptime check configuration; on create,
  /// the resource name is assigned by the server and included in the response.
  core.String name;

  /// How often, in seconds, the uptime check is performed. Currently, the only
  /// supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes),
  /// and 900s (15 minutes). Optional, defaults to 60s.
  core.String period;

  /// The group resource associated with the configuration.
  ResourceGroup resourceGroup;

  /// The list of regions from which the check will be run. Some regions contain
  /// one location, and others contain more than one. If this field is
  /// specified, enough regions to include a minimum of 3 locations must be
  /// provided, or an error message is returned. Not specifying this field will
  /// result in uptime checks running from all regions.
  core.List<core.String> selectedRegions;

  /// Contains information needed to make a TCP check.
  TcpCheck tcpCheck;

  /// The maximum amount of time to wait for the request to complete (must be
  /// between 1 and 60 seconds). Required.
  core.String timeout;

  UptimeCheckConfig();

  UptimeCheckConfig.fromJson(core.Map _json) {
    if (_json.containsKey("contentMatchers")) {
      contentMatchers = (_json["contentMatchers"] as core.List)
          .map<ContentMatcher>((value) => new ContentMatcher.fromJson(value))
          .toList();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("httpCheck")) {
      httpCheck = new HttpCheck.fromJson(_json["httpCheck"]);
    }
    if (_json.containsKey("internalCheckers")) {
      internalCheckers = (_json["internalCheckers"] as core.List)
          .map<InternalChecker>((value) => new InternalChecker.fromJson(value))
          .toList();
    }
    if (_json.containsKey("monitoredResource")) {
      monitoredResource =
          new MonitoredResource.fromJson(_json["monitoredResource"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("period")) {
      period = _json["period"];
    }
    if (_json.containsKey("resourceGroup")) {
      resourceGroup = new ResourceGroup.fromJson(_json["resourceGroup"]);
    }
    if (_json.containsKey("selectedRegions")) {
      selectedRegions =
          (_json["selectedRegions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tcpCheck")) {
      tcpCheck = new TcpCheck.fromJson(_json["tcpCheck"]);
    }
    if (_json.containsKey("timeout")) {
      timeout = _json["timeout"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentMatchers != null) {
      _json["contentMatchers"] =
          contentMatchers.map((value) => (value).toJson()).toList();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (httpCheck != null) {
      _json["httpCheck"] = (httpCheck).toJson();
    }
    if (internalCheckers != null) {
      _json["internalCheckers"] =
          internalCheckers.map((value) => (value).toJson()).toList();
    }
    if (monitoredResource != null) {
      _json["monitoredResource"] = (monitoredResource).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (period != null) {
      _json["period"] = period;
    }
    if (resourceGroup != null) {
      _json["resourceGroup"] = (resourceGroup).toJson();
    }
    if (selectedRegions != null) {
      _json["selectedRegions"] = selectedRegions;
    }
    if (tcpCheck != null) {
      _json["tcpCheck"] = (tcpCheck).toJson();
    }
    if (timeout != null) {
      _json["timeout"] = timeout;
    }
    return _json;
  }
}

/// Contains the region, location, and list of IP addresses where checkers in
/// the location run from.
class UptimeCheckIp {
  /// The IP address from which the uptime check originates. This is a full IP
  /// address (not an IP address range). Most IP addresses, as of this
  /// publication, are in IPv4 format; however, one should not rely on the IP
  /// addresses being in IPv4 format indefinitely and should support
  /// interpreting this field in either IPv4 or IPv6 format.
  core.String ipAddress;

  /// A more specific location within the region that typically encodes a
  /// particular city/town/metro (and its containing state/province or country)
  /// within the broader umbrella region category.
  core.String location;

  /// A broad region category in which the IP address is located.
  /// Possible string values are:
  /// - "REGION_UNSPECIFIED" : Default value if no region is specified. Will
  /// result in uptime checks running from all regions.
  /// - "USA" : Allows checks to run from locations within the United States of
  /// America.
  /// - "EUROPE" : Allows checks to run from locations within the continent of
  /// Europe.
  /// - "SOUTH_AMERICA" : Allows checks to run from locations within the
  /// continent of South America.
  /// - "ASIA_PACIFIC" : Allows checks to run from locations within the Asia
  /// Pacific area (ex: Singapore).
  core.String region;

  UptimeCheckIp();

  UptimeCheckIp.fromJson(core.Map _json) {
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (region != null) {
      _json["region"] = region;
    }
    return _json;
  }
}

/// The VerifyNotificationChannel request.
class VerifyNotificationChannelRequest {
  /// The verification code that was delivered to the channel as a result of
  /// invoking the SendNotificationChannelVerificationCode API method or that
  /// was retrieved from a verified channel via
  /// GetNotificationChannelVerificationCode. For example, one might have
  /// "G-123456" or "TKNZGhhd2EyN3I1MnRnMjRv" (in general, one is only
  /// guaranteed that the code is valid UTF-8; one should not make any
  /// assumptions regarding the structure or format of the code).
  core.String code;

  VerifyNotificationChannelRequest();

  VerifyNotificationChannelRequest.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    return _json;
  }
}
