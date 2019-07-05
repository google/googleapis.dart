// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.securitycenter.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client securitycenter/v1';

/// Cloud Security Command Center API provides access to temporal views of
/// assets and findings within an organization.
class SecuritycenterApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  OrganizationsResourceApi get organizations =>
      new OrganizationsResourceApi(_requester);

  SecuritycenterApi(http.Client client,
      {core.String rootUrl = "https://securitycenter.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OrganizationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsAssetsResourceApi get assets =>
      new OrganizationsAssetsResourceApi(_requester);
  OrganizationsOperationsResourceApi get operations =>
      new OrganizationsOperationsResourceApi(_requester);
  OrganizationsSourcesResourceApi get sources =>
      new OrganizationsSourcesResourceApi(_requester);

  OrganizationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the settings for an organization.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the organization to get organization settings for. Its
  /// format is
  /// "organizations/[organization_id]/organizationSettings".
  /// Value must have pattern "^organizations/[^/]+/organizationSettings$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrganizationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrganizationSettings> getOrganizationSettings(core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrganizationSettings.fromJson(data));
  }

  /// Updates an organization's settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the settings. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/organizationSettings".
  /// Value must have pattern "^organizations/[^/]+/organizationSettings$".
  ///
  /// [updateMask] - The FieldMask to use when updating the settings resource.
  ///
  ///  If empty all mutable fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrganizationSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrganizationSettings> updateOrganizationSettings(
      OrganizationSettings request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OrganizationSettings.fromJson(data));
  }
}

class OrganizationsAssetsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsAssetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Filters an organization's assets and  groups them by their specified
  /// properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the organization to groupBy. Its format is
  /// "organizations/[organization_id]".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupAssetsResponse> group(
      GroupAssetsRequest request, core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/assets:group';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupAssetsResponse.fromJson(data));
  }

  /// Lists an organization's assets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the organization assets should belong to. Its format is
  /// "organizations/[organization_id]".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [readTime] - Time used as a reference point when filtering assets. The
  /// filter is limited
  /// to assets existing at the supplied time and their values are those at that
  /// specific time. Absence of this field will default to the API's version of
  /// NOW.
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The
  /// string value should follow SQL syntax: comma separated list of fields. For
  /// example: "name,resource_properties.a_property". The default sorting order
  /// is ascending. To specify descending order for a field, a suffix " desc"
  /// should be appended to the field name. For example: "name
  /// desc,resource_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,resource_properties.a_property" and "
  /// name     desc  ,   resource_properties.a_property  " are equivalent.
  ///
  /// The following fields are supported:
  /// name
  /// update_time
  /// resource_properties
  /// security_marks
  /// security_center_properties.resource_name
  /// security_center_properties.resource_parent
  /// security_center_properties.resource_project
  /// security_center_properties.resource_type
  ///
  /// [compareDuration] - When compare_duration is set, the ListAssetsResult's
  /// "state_change"
  /// attribute is updated to indicate whether the asset was added, removed, or
  /// remained present during the compare_duration period of time that precedes
  /// the read_time. This is the time between (read_time - compare_duration) and
  /// read_time.
  ///
  /// The state_change value is derived based on the presence of the asset at
  /// the
  /// two points in time. Intermediate state changes between the two times don't
  /// affect the result. For example, the results aren't affected if the asset
  /// is
  /// removed and re-created again.
  ///
  /// Possible "state_change" values when compare_duration is specified:
  ///
  /// * "ADDED":   indicates that the asset was not present at the start of
  ///                compare_duration, but present at read_time.
  /// * "REMOVED": indicates that the asset was present at the start of
  ///                compare_duration, but not present at read_time.
  /// * "ACTIVE":  indicates that the asset was present at both the
  ///                start and the end of the time period defined by
  ///                compare_duration and read_time.
  ///
  /// If compare_duration is not specified, then the only possible state_change
  /// is "UNUSED",  which will be the state_change set for all assets present at
  /// read_time.
  ///
  /// [filter] - Expression that defines the filter to apply across assets.
  /// The expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`.
  /// Parentheses are supported, and `OR` has higher precedence than `AND`.
  ///
  /// Restrictions have the form `<field> <operator> <value>` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the Asset resource. Examples include:
  ///
  /// * name
  /// * security_center_properties.resource_name
  /// * resource_properties.a_property
  /// * security_marks.marks.marka
  ///
  /// The supported operators are:
  ///
  /// * `=` for all value types.
  /// * `>`, `<`, `>=`, `<=` for integer values.
  /// * `:`, meaning substring matching, for strings.
  ///
  /// The supported value types are:
  ///
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals `true` and `false` without quotes.
  ///
  /// The following are the allowed field and operator combinations:
  ///
  /// * name: `=`
  /// * update_time: `>`, `<`, `>=`, `<=`
  /// * iam_policy.policy_blob: `=`, `:`
  /// * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=`
  /// * security_marks: `=`, `:`
  /// * security_center_properties.resource_name: `=`, `:`
  /// * security_center_properties.resource_type: `=`, `:`
  /// * security_center_properties.resource_parent: `=`, `:`
  /// * security_center_properties.resource_project: `=`, `:`
  /// * security_center_properties.resource_owners: `=`, `:`
  ///
  /// For example, `resource_properties.size = 100` is a valid filter string.
  ///
  /// [pageToken] - The value returned by the last `ListAssetsResponse`;
  /// indicates
  /// that this is a continuation of a prior `ListAssets` call, and
  /// that the system should return the next page of data.
  ///
  /// [fieldMask] - Optional.
  ///
  /// A field mask to specify the ListAssetsResult fields to be listed in the
  /// response.
  /// An empty field mask will list all fields.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is
  /// 10, minimum is 1, maximum is 1000.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAssetsResponse> list(core.String parent,
      {core.String readTime,
      core.String orderBy,
      core.String compareDuration,
      core.String filter,
      core.String pageToken,
      core.String fieldMask,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (readTime != null) {
      _queryParams["readTime"] = [readTime];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (compareDuration != null) {
      _queryParams["compareDuration"] = [compareDuration];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (fieldMask != null) {
      _queryParams["fieldMask"] = [fieldMask];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/assets';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAssetsResponse.fromJson(data));
  }

  /// Runs asset discovery. The discovery is tracked with a long-running
  /// operation.
  ///
  /// This API can only be called with limited frequency for an organization. If
  /// it is called too frequently the caller will receive a TOO_MANY_REQUESTS
  /// error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the organization to run asset discovery for. Its format
  /// is
  /// "organizations/[organization_id]".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> runDiscovery(
      RunAssetDiscoveryRequest request, core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/assets:runDiscovery';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/123/assets/456/securityMarks"
  /// "organizations/123/sources/456/findings/789/securityMarks".
  /// Value must have pattern
  /// "^organizations/[^/]+/assets/[^/]+/securityMarks$".
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource.
  ///
  /// The field mask must not contain duplicate fields.
  /// If empty or set to "marks", all marks will be replaced.  Individual
  /// marks can be updated using "marks.<mark_key>".
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect.
  /// If not set uses current server time.  Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
      SecurityMarks request, core.String name,
      {core.String updateMask, core.String startTime, core.String $fields}) {
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
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SecurityMarks.fromJson(data));
  }
}

class OrganizationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.  The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed.  If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
  /// Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with
  /// an Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^organizations/[^/]+/operations/[^/]+$".
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
  async.Future<Empty> cancel(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^organizations/[^/]+/operations/[^/]+$".
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^organizations/[^/]+/operations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^organizations/[^/]+/operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

class OrganizationsSourcesResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsResourceApi get findings =>
      new OrganizationsSourcesFindingsResourceApi(_requester);

  OrganizationsSourcesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the new source's parent. Its format should be
  /// "organizations/[organization_id]".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> create(Source request, core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sources';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Source.fromJson(data));
  }

  /// Gets a source.
  ///
  /// Request parameters:
  ///
  /// [name] - Relative resource name of the source. Its format is
  /// "organizations/[organization_id]/source/[source_id]".
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> get(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Source.fromJson(data));
  }

  /// Gets the access control policy on the specified Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
      GetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists all sources belonging to an organization.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the parent of sources to list. Its format
  /// should be
  /// "organizations/[organization_id]".
  /// Value must have pattern "^organizations/[^/]+$".
  ///
  /// [pageToken] - The value returned by the last `ListSourcesResponse`;
  /// indicates
  /// that this is a continuation of a prior `ListSources` call, and
  /// that the system should return the next page of data.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is
  /// 10, minimum is 1, maximum is 1000.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSourcesResponse> list(core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/sources';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSourcesResponse.fromJson(data));
  }

  /// Updates a source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this source. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/sources/456"
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [updateMask] - The FieldMask to use when updating the source resource.
  ///
  /// If empty all mutable fields will be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Source].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Source> patch(Source request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Source.fromJson(data));
  }

  /// Sets the access control policy on the specified Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns the permissions that a caller has on the specified source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class OrganizationsSourcesFindingsResourceApi {
  final commons.ApiRequester _requester;

  OrganizationsSourcesFindingsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a finding. The corresponding source must exist for finding
  /// creation
  /// to succeed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the new finding's parent. Its format should be
  /// "organizations/[organization_id]/sources/[source_id]".
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [findingId] - Unique identifier provided by the client within the parent
  /// scope.
  /// It must be alphanumeric and less than or equal to 32 characters and
  /// greater than 0 characters in length.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> create(Finding request, core.String parent,
      {core.String findingId, core.String $fields}) {
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
    if (findingId != null) {
      _queryParams["findingId"] = [findingId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/findings';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Finding.fromJson(data));
  }

  /// Filters an organization or source's findings and  groups them by their
  /// specified properties.
  ///
  /// To group across all sources provide a `-` as the source id.
  /// Example: /v1/organizations/123/sources/-/findings
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the source to groupBy. Its format is
  /// "organizations/[organization_id]/sources/[source_id]". To groupBy across
  /// all sources provide a source_id of `-`. For example:
  /// organizations/123/sources/-
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GroupFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GroupFindingsResponse> group(
      GroupFindingsRequest request, core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/findings:group';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GroupFindingsResponse.fromJson(data));
  }

  /// Lists an organization or source's findings.
  ///
  /// To list across all sources provide a `-` as the source id.
  /// Example: /v1/organizations/123/sources/-/findings
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the source the findings belong to. Its format is
  /// "organizations/[organization_id]/sources/[source_id]". To list across all
  /// sources provide a source_id of `-`. For example:
  /// organizations/123/sources/-
  /// Value must have pattern "^organizations/[^/]+/sources/[^/]+$".
  ///
  /// [readTime] - Time used as a reference point when filtering findings. The
  /// filter is
  /// limited to findings existing at the supplied time and their values are
  /// those at that specific time. Absence of this field will default to the
  /// API's version of NOW.
  ///
  /// [orderBy] - Expression that defines what fields and order to use for
  /// sorting. The
  /// string value should follow SQL syntax: comma separated list of fields. For
  /// example: "name,resource_properties.a_property". The default sorting order
  /// is ascending. To specify descending order for a field, a suffix " desc"
  /// should be appended to the field name. For example: "name
  /// desc,source_properties.a_property". Redundant space characters in the
  /// syntax are insignificant. "name desc,source_properties.a_property" and "
  /// name     desc  ,   source_properties.a_property  " are equivalent.
  ///
  /// The following fields are supported:
  /// name
  /// parent
  /// state
  /// category
  /// resource_name
  /// event_time
  /// source_properties
  /// security_marks
  ///
  /// [compareDuration] - When compare_duration is set, the ListFindingsResult's
  /// "state_change"
  /// attribute is updated to indicate whether the finding had its state
  /// changed,
  /// the finding's state remained unchanged, or if the finding was added in any
  /// state during the compare_duration period of time that precedes the
  /// read_time. This is the time between (read_time - compare_duration) and
  /// read_time.
  ///
  /// The state_change value is derived based on the presence and state of the
  /// finding at the two points in time. Intermediate state changes between the
  /// two times don't affect the result. For example, the results aren't
  /// affected
  /// if the finding is made inactive and then active again.
  ///
  /// Possible "state_change" values when compare_duration is specified:
  ///
  /// * "CHANGED":   indicates that the finding was present at the start of
  ///                  compare_duration, but changed its state at read_time.
  /// * "UNCHANGED": indicates that the finding was present at the start of
  ///                  compare_duration and did not change state at read_time.
  /// * "ADDED":     indicates that the finding was not present at the start
  ///                  of compare_duration, but was present at read_time.
  ///
  /// If compare_duration is not specified, then the only possible state_change
  /// is "UNUSED", which will be the state_change set for all findings present
  /// at
  /// read_time.
  ///
  /// [filter] - Expression that defines the filter to apply across findings.
  /// The expression is a list of one or more restrictions combined via logical
  /// operators `AND` and `OR`.
  /// Parentheses are supported, and `OR` has higher precedence than `AND`.
  ///
  /// Restrictions have the form `<field> <operator> <value>` and may have a `-`
  /// character in front of them to indicate negation. Examples include:
  ///
  ///  * name
  ///  * source_properties.a_property
  ///  * security_marks.marks.marka
  ///
  /// The supported operators are:
  ///
  /// * `=` for all value types.
  /// * `>`, `<`, `>=`, `<=` for integer values.
  /// * `:`, meaning substring matching, for strings.
  ///
  /// The supported value types are:
  ///
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals `true` and `false` without quotes.
  ///
  /// The following field and operator combinations are supported:
  ///
  /// name: `=`
  /// parent: `=`, `:`
  /// resource_name: `=`, `:`
  /// state: `=`, `:`
  /// category: `=`, `:`
  /// external_uri: `=`, `:`
  /// event_time: `>`, `<`, `>=`, `<=`
  /// security_marks: `=`, `:`
  /// source_properties: `=`, `:`, `>`, `<`, `>=`, `<=`
  ///
  /// For example, `source_properties.size = 100` is a valid filter string.
  ///
  /// [pageToken] - The value returned by the last `ListFindingsResponse`;
  /// indicates
  /// that this is a continuation of a prior `ListFindings` call, and
  /// that the system should return the next page of data.
  ///
  /// [fieldMask] - Optional.
  ///
  /// A field mask to specify the Finding fields to be listed in the response.
  /// An empty field mask will list all fields.
  ///
  /// [pageSize] - The maximum number of results to return in a single response.
  /// Default is
  /// 10, minimum is 1, maximum is 1000.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFindingsResponse> list(core.String parent,
      {core.String readTime,
      core.String orderBy,
      core.String compareDuration,
      core.String filter,
      core.String pageToken,
      core.String fieldMask,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (readTime != null) {
      _queryParams["readTime"] = [readTime];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (compareDuration != null) {
      _queryParams["compareDuration"] = [compareDuration];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (fieldMask != null) {
      _queryParams["fieldMask"] = [fieldMask];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/findings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFindingsResponse.fromJson(data));
  }

  /// Creates or updates a finding. The corresponding source must exist for a
  /// finding creation to succeed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of this finding. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/sources/456/findings/789"
  /// Value must have pattern
  /// "^organizations/[^/]+/sources/[^/]+/findings/[^/]+$".
  ///
  /// [updateMask] - The FieldMask to use when updating the finding resource.
  /// This field should
  /// not be specified when creating a finding.
  ///
  /// When updating a finding, an empty mask is treated as updating all mutable
  /// fields and replacing source_properties.  Individual source_properties can
  /// be added/updated by using "source_properties.<property key>" in the field
  /// mask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> patch(Finding request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Finding.fromJson(data));
  }

  /// Updates the state of a finding.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the finding. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/sources/456/finding/789".
  /// Value must have pattern
  /// "^organizations/[^/]+/sources/[^/]+/findings/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Finding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Finding> setState(
      SetFindingStateRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':setState';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Finding.fromJson(data));
  }

  /// Updates security marks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/123/assets/456/securityMarks"
  /// "organizations/123/sources/456/findings/789/securityMarks".
  /// Value must have pattern
  /// "^organizations/[^/]+/sources/[^/]+/findings/[^/]+/securityMarks$".
  ///
  /// [startTime] - The time at which the updated SecurityMarks take effect.
  /// If not set uses current server time.  Updates will be applied to the
  /// SecurityMarks that are active immediately preceding this time.
  ///
  /// [updateMask] - The FieldMask to use when updating the security marks
  /// resource.
  ///
  /// The field mask must not contain duplicate fields.
  /// If empty or set to "marks", all marks will be replaced.  Individual
  /// marks can be updated using "marks.<mark_key>".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityMarks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityMarks> updateSecurityMarks(
      SecurityMarks request, core.String name,
      {core.String startTime, core.String updateMask, core.String $fields}) {
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
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SecurityMarks.fromJson(data));
  }
}

/// Cloud Security Command Center's (Cloud SCC) representation of a Google Cloud
/// Platform (GCP) resource.
///
/// The Asset is a Cloud SCC resource that captures information about a single
/// GCP resource. All modifications to an Asset are only within the context of
/// Cloud SCC and don't affect the referenced GCP resource.
class Asset {
  /// The time at which the asset was created in Cloud SCC.
  core.String createTime;

  /// IAM Policy information associated with the GCP resource described by the
  /// Cloud SCC asset. This information is managed and defined by the GCP
  /// resource and cannot be modified by the user.
  IamPolicy iamPolicy;

  /// The relative resource name of this asset. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/assets/456".
  core.String name;

  /// Resource managed properties. These properties are managed and defined by
  /// the GCP resource and cannot be modified by the user.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> resourceProperties;

  /// Cloud SCC managed properties. These properties are managed by
  /// Cloud SCC and cannot be modified by the user.
  SecurityCenterProperties securityCenterProperties;

  /// User specified security marks. These marks are entirely managed by the
  /// user
  /// and come from the SecurityMarks resource that belongs to the asset.
  SecurityMarks securityMarks;

  /// The time at which the asset was last updated, added, or deleted in Cloud
  /// SCC.
  core.String updateTime;

  Asset();

  Asset.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("iamPolicy")) {
      iamPolicy = new IamPolicy.fromJson(_json["iamPolicy"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("resourceProperties")) {
      resourceProperties = (_json["resourceProperties"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("securityCenterProperties")) {
      securityCenterProperties = new SecurityCenterProperties.fromJson(
          _json["securityCenterProperties"]);
    }
    if (_json.containsKey("securityMarks")) {
      securityMarks = new SecurityMarks.fromJson(_json["securityMarks"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (iamPolicy != null) {
      _json["iamPolicy"] = (iamPolicy).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (resourceProperties != null) {
      _json["resourceProperties"] = resourceProperties;
    }
    if (securityCenterProperties != null) {
      _json["securityCenterProperties"] = (securityCenterProperties).toJson();
    }
    if (securityMarks != null) {
      _json["securityMarks"] = (securityMarks).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The configuration used for Asset Discovery runs.
class AssetDiscoveryConfig {
  /// The mode to use for filtering asset discovery.
  /// Possible string values are:
  /// - "INCLUSION_MODE_UNSPECIFIED" : Unspecified. Setting the mode with this
  /// value will disable
  /// inclusion/exclusion filtering for Asset Discovery.
  /// - "INCLUDE_ONLY" : Asset Discovery will capture only the resources within
  /// the projects
  /// specified. All other resources will be ignored.
  /// - "EXCLUDE" : Asset Discovery will ignore all resources under the projects
  /// specified.
  /// All other resources will be retrieved.
  core.String inclusionMode;

  /// The project ids to use for filtering asset discovery.
  core.List<core.String> projectIds;

  AssetDiscoveryConfig();

  AssetDiscoveryConfig.fromJson(core.Map _json) {
    if (_json.containsKey("inclusionMode")) {
      inclusionMode = _json["inclusionMode"];
    }
    if (_json.containsKey("projectIds")) {
      projectIds = (_json["projectIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inclusionMode != null) {
      _json["inclusionMode"] = inclusionMode;
    }
    if (projectIds != null) {
      _json["projectIds"] = projectIds;
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
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

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Cloud Security Command Center (Cloud SCC) finding.
///
/// A finding is a record of assessment data (security, risk, health or privacy)
/// ingested into Cloud SCC for presentation, notification, analysis,
/// policy testing, and enforcement. For example, an XSS vulnerability in an
/// App Engine application is a finding.
class Finding {
  /// The additional taxonomy group within findings from a given source.
  /// This field is immutable after creation time.
  /// Example: "XSS_FLASH_INJECTION"
  core.String category;

  /// The time at which the finding was created in Cloud SCC.
  core.String createTime;

  /// The time at which the event took place. For example, if the finding
  /// represents an open firewall it would capture the time the detector
  /// believes
  /// the firewall became open. The accuracy is determined by the detector.
  core.String eventTime;

  /// The URI that, if available, points to a web page outside of Cloud SCC
  /// where additional information about the finding can be found. This field is
  /// guaranteed to be either empty or a well formed URL.
  core.String externalUri;

  /// The relative resource name of this finding. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/sources/456/findings/789"
  core.String name;

  /// The relative resource name of the source the finding belongs to. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// This field is immutable after creation time.
  /// For example:
  /// "organizations/123/sources/456"
  core.String parent;

  /// The full resource name of the Google Cloud Platform (GCP) resource this
  /// finding is for. See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  /// This field is immutable after creation time.
  core.String resourceName;

  /// Output only. User specified security marks. These marks are entirely
  /// managed by the user and come from the SecurityMarks resource that belongs
  /// to the finding.
  SecurityMarks securityMarks;

  /// Source specific properties. These properties are managed by the source
  /// that writes the finding. The key names in the source_properties map must
  /// be
  /// between 1 and 255 characters, and must start with a letter and contain
  /// alphanumeric characters or underscores only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> sourceProperties;

  /// The state of the finding.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : The finding requires attention and has not been addressed
  /// yet.
  /// - "INACTIVE" : The finding has been fixed, triaged as a non-issue or
  /// otherwise addressed
  /// and is no longer active.
  core.String state;

  Finding();

  Finding.fromJson(core.Map _json) {
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("eventTime")) {
      eventTime = _json["eventTime"];
    }
    if (_json.containsKey("externalUri")) {
      externalUri = _json["externalUri"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
    if (_json.containsKey("securityMarks")) {
      securityMarks = new SecurityMarks.fromJson(_json["securityMarks"]);
    }
    if (_json.containsKey("sourceProperties")) {
      sourceProperties = (_json["sourceProperties"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (category != null) {
      _json["category"] = category;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (eventTime != null) {
      _json["eventTime"] = eventTime;
    }
    if (externalUri != null) {
      _json["externalUri"] = externalUri;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    if (securityMarks != null) {
      _json["securityMarks"] = (securityMarks).toJson();
    }
    if (sourceProperties != null) {
      _json["sourceProperties"] = sourceProperties;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Response of asset discovery run
class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse {
  /// The duration between asset discovery run start and end
  core.String duration;

  /// The state of an asset discovery run.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Asset discovery run state was unspecified.
  /// - "COMPLETED" : Asset discovery run completed successfully.
  /// - "SUPERSEDED" : Asset discovery run was cancelled with tasks still
  /// pending, as another
  /// run for the same organization was started with a higher priority.
  /// - "TERMINATED" : Asset discovery run was killed and terminated.
  core.String state;

  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse();

  GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Response of asset discovery run
class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse {
  /// The duration between asset discovery run start and end
  core.String duration;

  /// The state of an asset discovery run.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Asset discovery run state was unspecified.
  /// - "COMPLETED" : Asset discovery run completed successfully.
  /// - "SUPERSEDED" : Asset discovery run was cancelled with tasks still
  /// pending, as another
  /// run for the same organization was started with a higher priority.
  /// - "TERMINATED" : Asset discovery run was killed and terminated.
  core.String state;

  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse();

  GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Request message for grouping by assets.
class GroupAssetsRequest {
  /// When compare_duration is set, the GroupResult's "state_change" property is
  /// updated to indicate whether the asset was added, removed, or remained
  /// present during the compare_duration period of time that precedes the
  /// read_time. This is the time between (read_time - compare_duration) and
  /// read_time.
  ///
  /// The state change value is derived based on the presence of the asset at
  /// the
  /// two points in time. Intermediate state changes between the two times don't
  /// affect the result. For example, the results aren't affected if the asset
  /// is
  /// removed and re-created again.
  ///
  /// Possible "state_change" values when compare_duration is specified:
  ///
  /// * "ADDED":   indicates that the asset was not present at the start of
  ///                compare_duration, but present at reference_time.
  /// * "REMOVED": indicates that the asset was present at the start of
  ///                compare_duration, but not present at reference_time.
  /// * "ACTIVE":  indicates that the asset was present at both the
  ///                start and the end of the time period defined by
  ///                compare_duration and reference_time.
  ///
  /// If compare_duration is not specified, then the only possible state_change
  /// is "UNUSED", which will be the state_change set for all assets present at
  /// read_time.
  ///
  /// If this field is set then `state_change` must be a specified field in
  /// `group_by`.
  core.String compareDuration;

  /// Expression that defines the filter to apply across assets.
  /// The expression is a list of zero or more restrictions combined via logical
  /// operators `AND` and `OR`.
  /// Parentheses are supported, and `OR` has higher precedence than `AND`.
  ///
  /// Restrictions have the form `<field> <operator> <value>` and may have a `-`
  /// character in front of them to indicate negation. The fields map to those
  /// defined in the Asset resource. Examples include:
  ///
  /// * name
  /// * security_center_properties.resource_name
  /// * resource_properties.a_property
  /// * security_marks.marks.marka
  ///
  /// The supported operators are:
  ///
  /// * `=` for all value types.
  /// * `>`, `<`, `>=`, `<=` for integer values.
  /// * `:`, meaning substring matching, for strings.
  ///
  /// The supported value types are:
  ///
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals `true` and `false` without quotes.
  ///
  /// The following field and operator combinations are supported:
  ///
  /// * name: `=`
  /// * update_time: `>`, `<`, `>=`, `<=`, `=`
  /// * create_time: `>`, `<`, `>=`, `<=`, `=`
  /// * iam_policy.policy_blob: `=`, `:`
  /// * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=`
  /// * security_marks: `=`, `:`
  /// * security_center_properties.resource_name: `=`, `:`
  /// * security_center_properties.resource_type: `=`, `:`
  /// * security_center_properties.resource_parent: `=`, `:`
  /// * security_center_properties.resource_project: `=`, `:`
  /// * security_center_properties.resource_owners: `=`, `:`
  ///
  /// For example, `resource_properties.size = 100` is a valid filter string.
  core.String filter;

  /// Expression that defines what assets fields to use for grouping. The string
  /// value should follow SQL syntax: comma separated list of fields. For
  /// example:
  /// "security_center_properties.resource_project,security_center_properties.project".
  ///
  /// The following fields are supported when compare_duration is not set:
  ///
  /// * security_center_properties.resource_project
  /// * security_center_properties.resource_type
  /// * security_center_properties.resource_parent
  ///
  /// The following fields are supported when compare_duration is set:
  ///
  /// * security_center_properties.resource_type
  core.String groupBy;

  /// The maximum number of results to return in a single response. Default is
  /// 10, minimum is 1, maximum is 1000.
  core.int pageSize;

  /// The value returned by the last `GroupAssetsResponse`; indicates
  /// that this is a continuation of a prior `GroupAssets` call, and that the
  /// system should return the next page of data.
  core.String pageToken;

  /// Time used as a reference point when filtering assets. The filter is
  /// limited
  /// to assets existing at the supplied time and their values are those at that
  /// specific time. Absence of this field will default to the API's version of
  /// NOW.
  core.String readTime;

  GroupAssetsRequest();

  GroupAssetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("compareDuration")) {
      compareDuration = _json["compareDuration"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("groupBy")) {
      groupBy = _json["groupBy"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compareDuration != null) {
      _json["compareDuration"] = compareDuration;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (groupBy != null) {
      _json["groupBy"] = groupBy;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    return _json;
  }
}

/// Response message for grouping by assets.
class GroupAssetsResponse {
  /// Group results. There exists an element for each existing unique
  /// combination of property/values. The element contains a count for the
  /// number
  /// of times those specific property/values appear.
  core.List<GroupResult> groupByResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String nextPageToken;

  /// Time used for executing the groupBy request.
  core.String readTime;

  /// The total number of results matching the query.
  core.int totalSize;

  GroupAssetsResponse();

  GroupAssetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("groupByResults")) {
      groupByResults = (_json["groupByResults"] as core.List)
          .map<GroupResult>((value) => new GroupResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupByResults != null) {
      _json["groupByResults"] =
          groupByResults.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Request message for grouping by findings.
class GroupFindingsRequest {
  /// When compare_duration is set, the GroupResult's "state_change" attribute
  /// is
  /// updated to indicate whether the finding had its state changed, the
  /// finding's state remained unchanged, or if the finding was added during the
  /// compare_duration period of time that precedes the read_time. This is the
  /// time between (read_time - compare_duration) and read_time.
  ///
  /// The state_change value is derived based on the presence and state of the
  /// finding at the two points in time. Intermediate state changes between the
  /// two times don't affect the result. For example, the results aren't
  /// affected
  /// if the finding is made inactive and then active again.
  ///
  /// Possible "state_change" values when compare_duration is specified:
  ///
  /// * "CHANGED":   indicates that the finding was present at the start of
  ///                  compare_duration, but changed its state at read_time.
  /// * "UNCHANGED": indicates that the finding was present at the start of
  ///                  compare_duration and did not change state at read_time.
  /// * "ADDED":     indicates that the finding was not present at the start
  ///                  of compare_duration, but was present at read_time.
  ///
  /// If compare_duration is not specified, then the only possible state_change
  /// is "UNUSED",  which will be the state_change set for all findings present
  /// at read_time.
  ///
  /// If this field is set then `state_change` must be a specified field in
  /// `group_by`.
  core.String compareDuration;

  /// Expression that defines the filter to apply across findings.
  /// The expression is a list of one or more restrictions combined via logical
  /// operators `AND` and `OR`.
  /// Parentheses are supported, and `OR` has higher precedence than `AND`.
  ///
  /// Restrictions have the form `<field> <operator> <value>` and may have a `-`
  /// character in front of them to indicate negation. Examples include:
  ///
  ///  * name
  ///  * source_properties.a_property
  ///  * security_marks.marks.marka
  ///
  /// The supported operators are:
  ///
  /// * `=` for all value types.
  /// * `>`, `<`, `>=`, `<=` for integer values.
  /// * `:`, meaning substring matching, for strings.
  ///
  /// The supported value types are:
  ///
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals `true` and `false` without quotes.
  ///
  /// The following field and operator combinations are supported:
  ///
  /// * name: `=`
  /// * parent: `=`, `:`
  /// * resource_name: `=`, `:`
  /// * state: `=`, `:`
  /// * category: `=`, `:`
  /// * external_uri: `=`, `:`
  /// * event_time: `>`, `<`, `>=`, `<=`
  /// * security_marks: `=`, `:`
  /// * source_properties: `=`, `:`, `>`, `<`, `>=`, `<=`
  ///
  /// For example, `source_properties.size = 100` is a valid filter string.
  core.String filter;

  /// Expression that defines what assets fields to use for grouping (including
  /// `state_change`). The string value should follow SQL syntax: comma
  /// separated
  /// list of fields. For example: "parent,resource_name".
  ///
  /// The following fields are supported:
  ///
  /// * resource_name
  /// * category
  /// * state
  /// * parent
  ///
  /// The following fields are supported when compare_duration is set:
  ///
  /// * state_change
  core.String groupBy;

  /// The maximum number of results to return in a single response. Default is
  /// 10, minimum is 1, maximum is 1000.
  core.int pageSize;

  /// The value returned by the last `GroupFindingsResponse`; indicates
  /// that this is a continuation of a prior `GroupFindings` call, and
  /// that the system should return the next page of data.
  core.String pageToken;

  /// Time used as a reference point when filtering findings. The filter is
  /// limited to findings existing at the supplied time and their values are
  /// those at that specific time. Absence of this field will default to the
  /// API's version of NOW.
  core.String readTime;

  GroupFindingsRequest();

  GroupFindingsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("compareDuration")) {
      compareDuration = _json["compareDuration"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("groupBy")) {
      groupBy = _json["groupBy"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compareDuration != null) {
      _json["compareDuration"] = compareDuration;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (groupBy != null) {
      _json["groupBy"] = groupBy;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    return _json;
  }
}

/// Response message for group by findings.
class GroupFindingsResponse {
  /// Group results. There exists an element for each existing unique
  /// combination of property/values. The element contains a count for the
  /// number
  /// of times those specific property/values appear.
  core.List<GroupResult> groupByResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String nextPageToken;

  /// Time used for executing the groupBy request.
  core.String readTime;

  /// The total number of results matching the query.
  core.int totalSize;

  GroupFindingsResponse();

  GroupFindingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("groupByResults")) {
      groupByResults = (_json["groupByResults"] as core.List)
          .map<GroupResult>((value) => new GroupResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupByResults != null) {
      _json["groupByResults"] =
          groupByResults.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Result containing the properties and count of a groupBy request.
class GroupResult {
  /// Total count of resources for the given properties.
  core.String count;

  /// Properties matching the groupBy fields in the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> properties;

  GroupResult();

  GroupResult.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("properties")) {
      properties =
          (_json["properties"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}

/// IAM Policy information associated with the GCP resource described by the
/// Cloud SCC asset. This information is managed and defined by the GCP
/// resource and cannot be modified by the user.
class IamPolicy {
  /// The JSON representation of the Policy associated with the asset.
  /// See https://cloud.google.com/iam/reference/rest/v1/Policy for format
  /// details.
  core.String policyBlob;

  IamPolicy();

  IamPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("policyBlob")) {
      policyBlob = _json["policyBlob"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policyBlob != null) {
      _json["policyBlob"] = policyBlob;
    }
    return _json;
  }
}

/// Response message for listing assets.
class ListAssetsResponse {
  /// Assets matching the list request.
  core.List<ListAssetsResult> listAssetsResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String nextPageToken;

  /// Time used for executing the list request.
  core.String readTime;

  /// The total number of assets matching the query.
  core.int totalSize;

  ListAssetsResponse();

  ListAssetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("listAssetsResults")) {
      listAssetsResults = (_json["listAssetsResults"] as core.List)
          .map<ListAssetsResult>(
              (value) => new ListAssetsResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (listAssetsResults != null) {
      _json["listAssetsResults"] =
          listAssetsResults.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Result containing the Asset and its State.
class ListAssetsResult {
  /// Asset matching the search request.
  Asset asset;

  /// State change of the asset between the points in time.
  /// Possible string values are:
  /// - "UNUSED" : State change is unused, this is the canonical default for
  /// this enum.
  /// - "ADDED" : Asset was added between the points in time.
  /// - "REMOVED" : Asset was removed between the points in time.
  /// - "ACTIVE" : Asset was present at both point(s) in time.
  core.String stateChange;

  ListAssetsResult();

  ListAssetsResult.fromJson(core.Map _json) {
    if (_json.containsKey("asset")) {
      asset = new Asset.fromJson(_json["asset"]);
    }
    if (_json.containsKey("stateChange")) {
      stateChange = _json["stateChange"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (asset != null) {
      _json["asset"] = (asset).toJson();
    }
    if (stateChange != null) {
      _json["stateChange"] = stateChange;
    }
    return _json;
  }
}

/// Response message for listing findings.
class ListFindingsResponse {
  /// Findings matching the list request.
  core.List<ListFindingsResult> listFindingsResults;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String nextPageToken;

  /// Time used for executing the list request.
  core.String readTime;

  /// The total number of findings matching the query.
  core.int totalSize;

  ListFindingsResponse();

  ListFindingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("listFindingsResults")) {
      listFindingsResults = (_json["listFindingsResults"] as core.List)
          .map<ListFindingsResult>(
              (value) => new ListFindingsResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
    if (_json.containsKey("totalSize")) {
      totalSize = _json["totalSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (listFindingsResults != null) {
      _json["listFindingsResults"] =
          listFindingsResults.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
    if (totalSize != null) {
      _json["totalSize"] = totalSize;
    }
    return _json;
  }
}

/// Result containing the Finding and its StateChange.
class ListFindingsResult {
  /// Finding matching the search request.
  Finding finding;

  /// State change of the finding between the points in time.
  /// Possible string values are:
  /// - "UNUSED" : State change is unused, this is the canonical default for
  /// this enum.
  /// - "CHANGED" : The finding has changed state in some way between the points
  /// in time
  /// and existed at both points.
  /// - "UNCHANGED" : The finding has not changed state between the points in
  /// time and
  /// existed at both points.
  /// - "ADDED" : The finding was created between the points in time.
  /// - "REMOVED" : The finding at timestamp does not match the filter
  /// specified, but it
  /// did at timestamp - compare_duration.
  core.String stateChange;

  ListFindingsResult();

  ListFindingsResult.fromJson(core.Map _json) {
    if (_json.containsKey("finding")) {
      finding = new Finding.fromJson(_json["finding"]);
    }
    if (_json.containsKey("stateChange")) {
      stateChange = _json["stateChange"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (finding != null) {
      _json["finding"] = (finding).toJson();
    }
    if (stateChange != null) {
      _json["stateChange"] = stateChange;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for listing sources.
class ListSourcesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results.
  core.String nextPageToken;

  /// Sources belonging to the requested parent.
  core.List<Source> sources;

  ListSourcesResponse();

  ListSourcesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sources")) {
      sources = (_json["sources"] as core.List)
          .map<Source>((value) => new Source.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// User specified settings that are attached to the Cloud Security Command
/// Center (Cloud SCC) organization.
class OrganizationSettings {
  /// The configuration used for Asset Discovery runs.
  AssetDiscoveryConfig assetDiscoveryConfig;

  /// A flag that indicates if Asset Discovery should be enabled. If the flag is
  /// set to `true`, then discovery of assets will occur. If it is set to
  /// `false,
  /// all historical assets will remain, but discovery of future assets will not
  /// occur.
  core.bool enableAssetDiscovery;

  /// The relative resource name of the settings. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/organizationSettings".
  core.String name;

  OrganizationSettings();

  OrganizationSettings.fromJson(core.Map _json) {
    if (_json.containsKey("assetDiscoveryConfig")) {
      assetDiscoveryConfig =
          new AssetDiscoveryConfig.fromJson(_json["assetDiscoveryConfig"]);
    }
    if (_json.containsKey("enableAssetDiscovery")) {
      enableAssetDiscovery = _json["enableAssetDiscovery"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assetDiscoveryConfig != null) {
      _json["assetDiscoveryConfig"] = (assetDiscoveryConfig).toJson();
    }
    if (enableAssetDiscovery != null) {
      _json["enableAssetDiscovery"] = enableAssetDiscovery;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Request message for running asset discovery for an organization.
class RunAssetDiscoveryRequest {
  RunAssetDiscoveryRequest();

  RunAssetDiscoveryRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Cloud SCC managed properties. These properties are managed by Cloud SCC and
/// cannot be modified by the user.
class SecurityCenterProperties {
  /// The full resource name of the GCP resource this asset
  /// represents. This field is immutable after create time. See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String resourceName;

  /// Owners of the Google Cloud resource.
  core.List<core.String> resourceOwners;

  /// The full resource name of the immediate parent of the resource. See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String resourceParent;

  /// The full resource name of the project the resource belongs to. See:
  /// https://cloud.google.com/apis/design/resource_names#full_resource_name
  core.String resourceProject;

  /// The type of the GCP resource. Examples include: APPLICATION,
  /// PROJECT, and ORGANIZATION. This is a case insensitive field defined by
  /// Cloud SCC and/or the producer of the resource and is immutable
  /// after create time.
  core.String resourceType;

  SecurityCenterProperties();

  SecurityCenterProperties.fromJson(core.Map _json) {
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
    if (_json.containsKey("resourceOwners")) {
      resourceOwners =
          (_json["resourceOwners"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("resourceParent")) {
      resourceParent = _json["resourceParent"];
    }
    if (_json.containsKey("resourceProject")) {
      resourceProject = _json["resourceProject"];
    }
    if (_json.containsKey("resourceType")) {
      resourceType = _json["resourceType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    if (resourceOwners != null) {
      _json["resourceOwners"] = resourceOwners;
    }
    if (resourceParent != null) {
      _json["resourceParent"] = resourceParent;
    }
    if (resourceProject != null) {
      _json["resourceProject"] = resourceProject;
    }
    if (resourceType != null) {
      _json["resourceType"] = resourceType;
    }
    return _json;
  }
}

/// User specified security marks that are attached to the parent Cloud Security
/// Command Center (Cloud SCC) resource. Security marks are scoped within a
/// Cloud
/// SCC organization -- they can be modified and viewed by all users who have
/// proper permissions on the organization.
class SecurityMarks {
  /// Mutable user specified security marks belonging to the parent resource.
  /// Constraints are as follows:
  ///   - Keys and values are treated as case insensitive
  ///   - Keys must be between 1 - 256 characters (inclusive)
  ///   - Keys must be letters, numbers, underscores, or dashes
  ///   - Values have leading and trailing whitespace trimmed, remaining
  ///     characters must be between 1 - 4096 characters (inclusive)
  core.Map<core.String, core.String> marks;

  /// The relative resource name of the SecurityMarks. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Examples:
  /// "organizations/123/assets/456/securityMarks"
  /// "organizations/123/sources/456/findings/789/securityMarks".
  core.String name;

  SecurityMarks();

  SecurityMarks.fromJson(core.Map _json) {
    if (_json.containsKey("marks")) {
      marks = (_json["marks"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (marks != null) {
      _json["marks"] = marks;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Request message for updating a finding's state.
class SetFindingStateRequest {
  /// The time at which the updated state takes effect.
  core.String startTime;

  /// The desired State of the finding.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : The finding requires attention and has not been addressed
  /// yet.
  /// - "INACTIVE" : The finding has been fixed, triaged as a non-issue or
  /// otherwise addressed
  /// and is no longer active.
  core.String state;

  SetFindingStateRequest();

  SetFindingStateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Cloud Security Command Center's (Cloud SCC) finding source. A finding source
/// is an entity or a mechanism that can produce a finding. A source is like a
/// container of findings that come from the same scanner, logger, monitor, etc.
class Source {
  /// The description of the source (max of 1024 characters).
  /// Example:
  /// "Cloud Security Scanner is a web security scanner for common
  /// vulnerabilities in App Engine applications. It can automatically
  /// scan and detect four common vulnerabilities, including
  /// cross-site-scripting
  /// (XSS), Flash injection, mixed content (HTTP in HTTPS), and
  /// outdated/insecure libraries."
  core.String description;

  /// The source's display name.
  /// A source's display name must be unique amongst its siblings, for example,
  /// two sources with the same parent can't share the same display name.
  /// The display name must have a length between 1 and 64 characters
  /// (inclusive).
  core.String displayName;

  /// The relative resource name of this source. See:
  /// https://cloud.google.com/apis/design/resource_names#relative_resource_name
  /// Example:
  /// "organizations/123/sources/456"
  core.String name;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
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
    if (description != null) {
      _json["description"] = description;
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
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

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}
