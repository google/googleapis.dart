// This is a generated file (see the discoveryapis_generator project).

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
/// noted on the individual method pages.
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
      {core.String rootUrl: "https://monitoring.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsCollectdTimeSeriesResourceApi get collectdTimeSeries =>
      new ProjectsCollectdTimeSeriesResourceApi(_requester);
  ProjectsGroupsResourceApi get groups =>
      new ProjectsGroupsResourceApi(_requester);
  ProjectsMetricDescriptorsResourceApi get metricDescriptors =>
      new ProjectsMetricDescriptorsResourceApi(_requester);
  ProjectsMonitoredResourceDescriptorsResourceApi
      get monitoredResourceDescriptors =>
          new ProjectsMonitoredResourceDescriptorsResourceApi(_requester);
  ProjectsTimeSeriesResourceApi get timeSeries =>
      new ProjectsTimeSeriesResourceApi(_requester);
  ProjectsUptimeCheckConfigsResourceApi get uptimeCheckConfigs =>
      new ProjectsUptimeCheckConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
  /// return. When view field sets to FULL, it limits the number of Points
  /// server will return; if view field is HEADERS, it limits the number of
  /// TimeSeries server will return.
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
  ///     metric.label.instance_name = "my-instance-name"
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
  /// [view] - Specifies which information is returned about the time series.
  /// Possible string values are:
  /// - "FULL" : A FULL.
  /// - "HEADERS" : A HEADERS.
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
      {core.List<core.String> aggregation_groupByFields,
      core.String interval_endTime,
      core.String aggregation_alignmentPeriod,
      core.int pageSize,
      core.String orderBy,
      core.String aggregation_crossSeriesReducer,
      core.String filter,
      core.String pageToken,
      core.String aggregation_perSeriesAligner,
      core.String interval_startTime,
      core.String view,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
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
    if (view != null) {
      _queryParams["view"] = [view];
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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

/// Used to perform string matching. Currently, this matches on the exact
/// content. In the future, it can be expanded to allow for regular expressions
/// and more complex matching.
class ContentMatcher {
  /// String content to match
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
  /// metric and the monitored resource.
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
    if (_json.containsKey("mean")) {
      mean = _json["mean"];
    }
    if (_json.containsKey("range")) {
      range = new Range.fromJson(_json["range"]);
    }
    if (_json.containsKey("sumOfSquaredDeviation")) {
      sumOfSquaredDeviation = _json["sumOfSquaredDeviation"];
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
      bounds = (_json["bounds"] as core.List).cast<core.double>();
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
      growthFactor = _json["growthFactor"];
    }
    if (_json.containsKey("numFiniteBuckets")) {
      numFiniteBuckets = _json["numFiniteBuckets"];
    }
    if (_json.containsKey("scale")) {
      scale = _json["scale"];
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
  /// full URL. Optional (defaults to "/").
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

/// Nimbus InternalCheckers.
class InternalChecker {
  /// The checker ID.
  core.String checkerId;

  /// The checker's human-readable name.
  core.String displayName;

  /// The GCP zone the uptime check should egress from. Only respected for
  /// internal uptime checks, where internal_network is specified.
  core.String gcpZone;

  /// The internal network to perform this uptime check on.
  core.String network;

  /// The GCP project ID. Not necessarily the same as the project_id for the
  /// config.
  core.String projectId;

  InternalChecker();

  InternalChecker.fromJson(core.Map _json) {
    if (_json.containsKey("checkerId")) {
      checkerId = _json["checkerId"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("gcpZone")) {
      gcpZone = _json["gcpZone"];
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (checkerId != null) {
      _json["checkerId"] = checkerId;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (gcpZone != null) {
      _json["gcpZone"] = gcpZone;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
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
      offset = _json["offset"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
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

/// The ListTimeSeries response.
class ListTimeSeriesResponse {
  /// If there are more results than have been returned, then this field is set
  /// to a non-empty value. To see the additional results, use that value as
  /// pageToken in the next call to this method.
  core.String nextPageToken;

  /// One or more time series that match the filter included in the request.
  core.List<TimeSeries> timeSeries;

  ListTimeSeriesResponse();

  ListTimeSeriesResponse.fromJson(core.Map _json) {
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
  /// URL-encoded. All user-defined custom metric types have the DNS name
  /// custom.googleapis.com. Metric types should use a natural hierarchical
  /// grouping. For example:
  /// "custom.googleapis.com/invoice/paid/amount"
  /// "appengine.googleapis.com/http/server/response_latencies"
  core.String type;

  /// Optional. The unit in which the metric value is reported. For example,
  /// kBy/s means kilobytes/sec, and 1 is the dimensionless unit. The supported
  /// units are a subset of The Unified Code for Units of Measure standard
  /// (http://unitsofmeasure.org/ucum.html).<br><br> This field is part of the
  /// metric's documentation, but it is ignored by Stackdriver.
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
  /// Compute Engine VM instance is gce_instance.
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
/// resource instance. There is some other useful auxiliary metadata. Google
/// Stackdriver Monitoring & Logging uses an ingestion pipeline to extract
/// metadata for cloud resources of all types , and stores the metadata in this
/// message.
class MonitoredResourceMetadata {
  /// Output only. Values for predefined system metadata labels. System labels
  /// are a kind of metadata extracted by Google Stackdriver. Stackdriver
  /// determines what system labels are useful and how to obtain their values.
  /// Some examples: "machine_image", "vpc", "subnet_id", "security_group",
  /// "name", etc. System label values can be only strings, Boolean values, or a
  /// list of strings. For example:
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
      max = _json["max"];
    }
    if (_json.containsKey("min")) {
      min = _json["min"];
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

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// gRPC (https://github.com/grpc). The error model is designed to be:
/// Simple to use and understand for most users
/// Flexible enough to meet unexpected needsOverviewThe Status message contains
/// three pieces of data: error code, error message, and error details. The
/// error code should be an enum value of google.rpc.Code, but it may accept
/// additional error codes if needed. The error message should be a
/// developer-facing English message that helps developers understand and
/// resolve the error. If a localized user-facing error message is needed, put
/// the localized message in the error details or localize it in the client. The
/// optional error details may contain arbitrary information about the error.
/// There is a predefined set of error detail types in the package google.rpc
/// that can be used for common error conditions.Language mappingThe Status
/// message is the logical representation of the error model, but it is not
/// necessarily the actual wire format. When the Status message is exposed in
/// different client libraries and different wire protocols, it can be mapped
/// differently. For example, it will likely be mapped to some exceptions in
/// Java, but more likely mapped to some error codes in C.Other usesThe error
/// model and the Status message can be used in a variety of environments,
/// either with or without APIs, to provide a consistent developer experience
/// across different environments.Example uses of this error model include:
/// Partial errors. If a service needs to return partial errors to the client,
/// it may embed the Status in the normal response to indicate the partial
/// errors.
/// Workflow errors. A typical workflow has multiple steps. Each step may have a
/// Status message for error reporting.
/// Batch operations. If a client uses batch request and batch response, the
/// Status message should be used directly inside batch response, one for each
/// error sub-response.
/// Asynchronous operations. If an API call embeds asynchronous operation
/// results in its response, the status of those operations should be
/// represented directly using the Status message.
/// Logging. If some API errors are stored in logs, the message Status could be
/// used directly after any stripping needed for security/privacy reasons.
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

/// A time interval extending just after a start time through an end time. If
/// the start time is the same as the end time, then the interval represents a
/// single point in time.
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
      doubleValue = _json["doubleValue"];
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
  /// should be unique within a Stackdriver Account in order to make it easier
  /// to identify; however, uniqueness is not enforced. Required.
  core.String displayName;

  /// Contains information needed to make an HTTP or HTTPS check.
  HttpCheck httpCheck;

  /// The internal checkers that this check will egress from. If is_internal is
  /// true and this list is empty, the check will egress from all
  /// InternalCheckers configured for the project that owns this CheckConfig.
  core.List<InternalChecker> internalCheckers;

  /// Denotes whether this is a check that egresses from InternalCheckers.
  core.bool isInternal;

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
  /// and 900s (15 minutes). Required.
  core.String period;

  /// The group resource associated with the configuration.
  ResourceGroup resourceGroup;

  /// The list of regions from which the check will be run. If this field is
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
    if (_json.containsKey("isInternal")) {
      isInternal = _json["isInternal"];
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
    if (isInternal != null) {
      _json["isInternal"] = isInternal;
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
