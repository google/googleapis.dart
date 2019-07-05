// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudasset.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudasset/v1';

/// The cloud asset API manages the history and inventory of cloud resources.
class CloudassetApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  V1ResourceApi get v1 => new V1ResourceApi(_requester);

  CloudassetApi(http.Client client,
      {core.String rootUrl = "https://cloudasset.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^[^/]+/[^/]+/operations/[^/]+/.+$".
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
}

class V1ResourceApi {
  final commons.ApiRequester _requester;

  V1ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Batch gets the update history of assets that overlap a time window.
  /// For RESOURCE content, this API outputs history with asset in both
  /// non-delete or deleted status.
  /// For IAM_POLICY content, this API outputs history when the asset and its
  /// attached IAM POLICY both exist. This can create gaps in the output
  /// history.
  /// If a specified asset does not exist, this API returns an INVALID_ARGUMENT
  /// error.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative name of the root asset. It can only be
  /// an
  /// organization number (such as "organizations/123"), a project ID (such as
  /// "projects/my-project-id")", or a project number (such as
  /// "projects/12345").
  /// Value must have pattern "^[^/]+/[^/]+$".
  ///
  /// [readTimeWindow_startTime] - Start time of the time window (exclusive).
  ///
  /// [assetNames] - A list of the full names of the assets. For example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// and [Resource Name
  /// Format](https://cloud.google.com/resource-manager/docs/cloud-asset-inventory/resource-name-format)
  /// for more info.
  ///
  /// The request becomes a no-op if the asset name list is empty, and the max
  /// size of the asset name list is 100 in one request.
  ///
  /// [contentType] - Required. The content type.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : A CONTENT_TYPE_UNSPECIFIED.
  /// - "RESOURCE" : A RESOURCE.
  /// - "IAM_POLICY" : A IAM_POLICY.
  ///
  /// [readTimeWindow_endTime] - End time of the time window (inclusive).
  /// Current timestamp if not specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetAssetsHistoryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetAssetsHistoryResponse> batchGetAssetsHistory(
      core.String parent,
      {core.String readTimeWindow_startTime,
      core.List<core.String> assetNames,
      core.String contentType,
      core.String readTimeWindow_endTime,
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
    if (readTimeWindow_startTime != null) {
      _queryParams["readTimeWindow.startTime"] = [readTimeWindow_startTime];
    }
    if (assetNames != null) {
      _queryParams["assetNames"] = assetNames;
    }
    if (contentType != null) {
      _queryParams["contentType"] = [contentType];
    }
    if (readTimeWindow_endTime != null) {
      _queryParams["readTimeWindow.endTime"] = [readTimeWindow_endTime];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        ':batchGetAssetsHistory';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BatchGetAssetsHistoryResponse.fromJson(data));
  }

  /// Exports assets with time and resource types to a given Cloud Storage
  /// location. The output format is newline-delimited JSON.
  /// This API implements the google.longrunning.Operation API allowing you
  /// to keep track of the export.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative name of the root asset. This can only be
  /// an
  /// organization number (such as "organizations/123"), a project ID (such as
  /// "projects/my-project-id"), or a project number (such as "projects/12345"),
  /// or a folder number (such as "folders/123").
  /// Value must have pattern "^[^/]+/[^/]+$".
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
  async.Future<Operation> exportAssets(
      ExportAssetsRequest request, core.String parent,
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
        ':exportAssets';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// Cloud asset. This includes all Google Cloud Platform resources,
/// Cloud IAM policies, and other non-GCP assets.
class Asset {
  /// Type of the asset. Example: "compute.googleapis.com/Disk".
  core.String assetType;

  /// Representation of the actual Cloud IAM policy set on a cloud resource. For
  /// each resource, there must be at most one Cloud IAM policy set on it.
  Policy iamPolicy;

  /// The full name of the asset. For example:
  /// `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
  /// See [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  core.String name;

  /// Representation of the Cloud Organization Policy set on an asset. For each
  /// asset, there could be multiple Organization policies with different
  /// constraints.
  core.List<GoogleCloudOrgpolicyV1Policy> orgPolicy;

  /// Representation of the resource.
  Resource resource;

  Asset();

  Asset.fromJson(core.Map _json) {
    if (_json.containsKey("assetType")) {
      assetType = _json["assetType"];
    }
    if (_json.containsKey("iamPolicy")) {
      iamPolicy = new Policy.fromJson(_json["iamPolicy"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("orgPolicy")) {
      orgPolicy = (_json["orgPolicy"] as core.List)
          .map<GoogleCloudOrgpolicyV1Policy>(
              (value) => new GoogleCloudOrgpolicyV1Policy.fromJson(value))
          .toList();
    }
    if (_json.containsKey("resource")) {
      resource = new Resource.fromJson(_json["resource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assetType != null) {
      _json["assetType"] = assetType;
    }
    if (iamPolicy != null) {
      _json["iamPolicy"] = (iamPolicy).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (orgPolicy != null) {
      _json["orgPolicy"] = orgPolicy.map((value) => (value).toJson()).toList();
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
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

/// Batch get assets history response.
class BatchGetAssetsHistoryResponse {
  /// A list of assets with valid time windows.
  core.List<TemporalAsset> assets;

  BatchGetAssetsHistoryResponse();

  BatchGetAssetsHistoryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("assets")) {
      assets = (_json["assets"] as core.List)
          .map<TemporalAsset>((value) => new TemporalAsset.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assets != null) {
      _json["assets"] = assets.map((value) => (value).toJson()).toList();
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

/// Export asset request.
class ExportAssetsRequest {
  /// A list of asset types of which to take a snapshot for. For example:
  /// "compute.googleapis.com/Disk". If specified, only matching assets will be
  /// returned. See [Introduction to Cloud Asset
  /// Inventory](https://cloud.google.com/resource-manager/docs/cloud-asset-inventory/overview)
  /// for all supported asset types.
  core.List<core.String> assetTypes;

  /// Asset content type. If not specified, no content but the asset name will
  /// be
  /// returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  core.String contentType;

  /// Required. Output configuration indicating where the results will be output
  /// to. All results will be in newline delimited JSON format.
  OutputConfig outputConfig;

  /// Timestamp to take an asset snapshot. This can only be set to a timestamp
  /// between 2018-10-02 UTC (inclusive) and the current time. If not specified,
  /// the current time will be used. Due to delays in resource data collection
  /// and indexing, there is a volatile window during which running the same
  /// query may get different results.
  core.String readTime;

  ExportAssetsRequest();

  ExportAssetsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("assetTypes")) {
      assetTypes = (_json["assetTypes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("contentType")) {
      contentType = _json["contentType"];
    }
    if (_json.containsKey("outputConfig")) {
      outputConfig = new OutputConfig.fromJson(_json["outputConfig"]);
    }
    if (_json.containsKey("readTime")) {
      readTime = _json["readTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assetTypes != null) {
      _json["assetTypes"] = assetTypes;
    }
    if (contentType != null) {
      _json["contentType"] = contentType;
    }
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    if (readTime != null) {
      _json["readTime"] = readTime;
    }
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

/// A Cloud Storage location.
class GcsDestination {
  /// The uri of the Cloud Storage object. It's the same uri that is used by
  /// gsutil. For example: "gs://bucket_name/object_name". See [Viewing and
  /// Editing Object
  /// Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata)
  /// for more information.
  core.String uri;

  /// The uri prefix of all generated Cloud Storage objects. For example:
  /// "gs://bucket_name/object_name_prefix". Each object uri is in format:
  /// "gs://bucket_name/object_name_prefix/<asset type>/<shard number> and only
  /// contains assets for that type. <shard number> starts from 0. For example:
  /// "gs://bucket_name/object_name_prefix/compute.googleapis.com/Disk/0" is
  /// the first shard of output objects containing all
  /// compute.googleapis.com/Disk assets. An INVALID_ARGUMENT error will be
  /// returned if file with the same name "gs://bucket_name/object_name_prefix"
  /// already exists.
  core.String uriPrefix;

  GcsDestination();

  GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
    if (_json.containsKey("uriPrefix")) {
      uriPrefix = _json["uriPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    if (uriPrefix != null) {
      _json["uriPrefix"] = uriPrefix;
    }
    return _json;
  }
}

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
class GoogleCloudOrgpolicyV1BooleanPolicy {
  /// If `true`, then the `Policy` is enforced. If `false`, then any
  /// configuration is acceptable.
  ///
  /// Suppose you have a `Constraint`
  /// `constraints/compute.disableSerialPortAccess` with `constraint_default`
  /// set to `ALLOW`. A `Policy` for that `Constraint` exhibits the following
  /// behavior:
  ///   - If the `Policy` at this resource has enforced set to `false`, serial
  ///     port connection attempts will be allowed.
  ///   - If the `Policy` at this resource has enforced set to `true`, serial
  ///     port connection attempts will be refused.
  ///   - If the `Policy` at this resource is `RestoreDefault`, serial port
  ///     connection attempts will be allowed.
  ///   - If no `Policy` is set at this resource or anywhere higher in the
  ///     resource hierarchy, serial port connection attempts will be allowed.
  ///   - If no `Policy` is set at this resource, but one exists higher in the
  ///     resource hierarchy, the behavior is as if the`Policy` were set at
  ///     this resource.
  ///
  /// The following examples demonstrate the different possible layerings:
  ///
  /// Example 1 (nearest `Constraint` wins):
  ///   `organizations/foo` has a `Policy` with:
  ///     {enforced: false}
  ///   `projects/bar` has no `Policy` set.
  /// The constraint at `projects/bar` and `organizations/foo` will not be
  /// enforced.
  ///
  /// Example 2 (enforcement gets replaced):
  ///   `organizations/foo` has a `Policy` with:
  ///     {enforced: false}
  ///   `projects/bar` has a `Policy` with:
  ///     {enforced: true}
  /// The constraint at `organizations/foo` is not enforced.
  /// The constraint at `projects/bar` is enforced.
  ///
  /// Example 3 (RestoreDefault):
  ///   `organizations/foo` has a `Policy` with:
  ///     {enforced: true}
  ///   `projects/bar` has a `Policy` with:
  ///     {RestoreDefault: {}}
  /// The constraint at `organizations/foo` is enforced.
  /// The constraint at `projects/bar` is not enforced, because
  /// `constraint_default` for the `Constraint` is `ALLOW`.
  core.bool enforced;

  GoogleCloudOrgpolicyV1BooleanPolicy();

  GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("enforced")) {
      enforced = _json["enforced"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enforced != null) {
      _json["enforced"] = enforced;
    }
    return _json;
  }
}

/// Used in `policy_type` to specify how `list_policy` behaves at this
/// resource.
///
/// `ListPolicy` can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that
/// are allowed or denied by setting the `allowed_values` and `denied_values`
/// fields. This is achieved by using the `under:` and optional `is:` prefixes.
/// The `under:` prefix is used to denote resource subtree values.
/// The `is:` prefix is used to denote specific values, and is required only
/// if the value contains a ":". Values prefixed with "is:" are treated the
/// same as values with no prefix.
/// Ancestry subtrees must be in one of the following formats:
///     - “projects/<project-id>”, e.g. “projects/tokyo-rain-123”
///     - “folders/<folder-id>”, e.g. “folders/1234”
///     - “organizations/<organization-id>”, e.g. “organizations/1234”
/// The `supports_under` field of the associated `Constraint`  defines whether
/// ancestry prefixes can be used. You can set `allowed_values` and
/// `denied_values` in the same `Policy` if `all_values` is
/// `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
/// values. If `all_values` is set to either `ALLOW` or `DENY`,
/// `allowed_values` and `denied_values` must be unset.
class GoogleCloudOrgpolicyV1ListPolicy {
  /// The policy all_values state.
  /// Possible string values are:
  /// - "ALL_VALUES_UNSPECIFIED" : Indicates that allowed_values or
  /// denied_values must be set.
  /// - "ALLOW" : A policy with this set allows all values.
  /// - "DENY" : A policy with this set denies all values.
  core.String allValues;

  /// List of values allowed  at this resource. Can only be set if `all_values`
  /// is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String> allowedValues;

  /// List of values denied at this resource. Can only be set if `all_values`
  /// is set to `ALL_VALUES_UNSPECIFIED`.
  core.List<core.String> deniedValues;

  /// Determines the inheritance behavior for this `Policy`.
  ///
  /// By default, a `ListPolicy` set at a resource supercedes any `Policy` set
  /// anywhere up the resource hierarchy. However, if `inherit_from_parent` is
  /// set to `true`, then the values from the effective `Policy` of the parent
  /// resource are inherited, meaning the values set in this `Policy` are
  /// added to the values inherited up the hierarchy.
  ///
  /// Setting `Policy` hierarchies that inherit both allowed values and denied
  /// values isn't recommended in most circumstances to keep the configuration
  /// simple and understandable. However, it is possible to set a `Policy` with
  /// `allowed_values` set that inherits a `Policy` with `denied_values` set.
  /// In this case, the values that are allowed must be in `allowed_values` and
  /// not present in `denied_values`.
  ///
  /// For example, suppose you have a `Constraint`
  /// `constraints/serviceuser.services`, which has a `constraint_type` of
  /// `list_constraint`, and with `constraint_default` set to `ALLOW`.
  /// Suppose that at the Organization level, a `Policy` is applied that
  /// restricts the allowed API activations to {`E1`, `E2`}. Then, if a
  /// `Policy` is applied to a project below the Organization that has
  /// `inherit_from_parent` set to `false` and field all_values set to DENY,
  /// then an attempt to activate any API will be denied.
  ///
  /// The following examples demonstrate different possible layerings for
  /// `projects/bar` parented by `organizations/foo`:
  ///
  /// Example 1 (no inherited values):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values:”E2”}
  ///   `projects/bar` has `inherit_from_parent` `false` and values:
  ///     {allowed_values: "E3" allowed_values: "E4"}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The accepted values at `projects/bar` are `E3`, and `E4`.
  ///
  /// Example 2 (inherited values):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values:”E2”}
  ///   `projects/bar` has a `Policy` with values:
  ///     {value: “E3” value: ”E4” inherit_from_parent: true}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The accepted values at `projects/bar` are `E1`, `E2`, `E3`, and `E4`.
  ///
  /// Example 3 (inheriting both allowed and denied values):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: "E1" allowed_values: "E2"}
  ///   `projects/bar` has a `Policy` with:
  ///     {denied_values: "E1"}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The value accepted at `projects/bar` is `E2`.
  ///
  /// Example 4 (RestoreDefault):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values:”E2”}
  ///   `projects/bar` has a `Policy` with values:
  ///     {RestoreDefault: {}}
  /// The accepted values at `organizations/foo` are `E1`, `E2`.
  /// The accepted values at `projects/bar` are either all or none depending on
  /// the value of `constraint_default` (if `ALLOW`, all; if
  /// `DENY`, none).
  ///
  /// Example 5 (no policy inherits parent policy):
  ///   `organizations/foo` has no `Policy` set.
  ///   `projects/bar` has no `Policy` set.
  /// The accepted values at both levels are either all or none depending on
  /// the value of `constraint_default` (if `ALLOW`, all; if
  /// `DENY`, none).
  ///
  /// Example 6 (ListConstraint allowing all):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values: ”E2”}
  ///   `projects/bar` has a `Policy` with:
  ///     {all: ALLOW}
  /// The accepted values at `organizations/foo` are `E1`, E2`.
  /// Any value is accepted at `projects/bar`.
  ///
  /// Example 7 (ListConstraint allowing none):
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: “E1” allowed_values: ”E2”}
  ///   `projects/bar` has a `Policy` with:
  ///     {all: DENY}
  /// The accepted values at `organizations/foo` are `E1`, E2`.
  /// No value is accepted at `projects/bar`.
  ///
  /// Example 10 (allowed and denied subtrees of Resource Manager hierarchy):
  /// Given the following resource hierarchy
  ///   O1->{F1, F2}; F1->{P1}; F2->{P2, P3},
  ///   `organizations/foo` has a `Policy` with values:
  ///     {allowed_values: "under:organizations/O1"}
  ///   `projects/bar` has a `Policy` with:
  ///     {allowed_values: "under:projects/P3"}
  ///     {denied_values: "under:folders/F2"}
  /// The accepted values at `organizations/foo` are `organizations/O1`,
  ///   `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`,
  ///   `projects/P3`.
  /// The accepted values at `projects/bar` are `organizations/O1`,
  ///   `folders/F1`, `projects/P1`.
  core.bool inheritFromParent;

  /// Optional. The Google Cloud Console will try to default to a configuration
  /// that matches the value specified in this `Policy`. If `suggested_value`
  /// is not set, it will inherit the value specified higher in the hierarchy,
  /// unless `inherit_from_parent` is `false`.
  core.String suggestedValue;

  GoogleCloudOrgpolicyV1ListPolicy();

  GoogleCloudOrgpolicyV1ListPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("allValues")) {
      allValues = _json["allValues"];
    }
    if (_json.containsKey("allowedValues")) {
      allowedValues = (_json["allowedValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("deniedValues")) {
      deniedValues = (_json["deniedValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("inheritFromParent")) {
      inheritFromParent = _json["inheritFromParent"];
    }
    if (_json.containsKey("suggestedValue")) {
      suggestedValue = _json["suggestedValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allValues != null) {
      _json["allValues"] = allValues;
    }
    if (allowedValues != null) {
      _json["allowedValues"] = allowedValues;
    }
    if (deniedValues != null) {
      _json["deniedValues"] = deniedValues;
    }
    if (inheritFromParent != null) {
      _json["inheritFromParent"] = inheritFromParent;
    }
    if (suggestedValue != null) {
      _json["suggestedValue"] = suggestedValue;
    }
    return _json;
  }
}

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class GoogleCloudOrgpolicyV1Policy {
  /// For boolean `Constraints`, whether to enforce the `Constraint` or not.
  GoogleCloudOrgpolicyV1BooleanPolicy booleanPolicy;

  /// The name of the `Constraint` the `Policy` is configuring, for example,
  /// `constraints/serviceuser.services`.
  ///
  /// Immutable after creation.
  core.String constraint;

  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control.
  ///
  /// When the `Policy` is returned from either a `GetPolicy` or a
  /// `ListOrgPolicy` request, this `etag` indicates the version of the current
  /// `Policy` to use when executing a read-modify-write loop.
  ///
  /// When the `Policy` is returned from a `GetEffectivePolicy` request, the
  /// `etag` will be unset.
  ///
  /// When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value
  /// that was returned from a `GetOrgPolicy` request as part of a
  /// read-modify-write loop for concurrency control. Not setting the `etag`in a
  /// `SetOrgPolicy` request will result in an unconditional write of the
  /// `Policy`.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// List of values either allowed or disallowed.
  GoogleCloudOrgpolicyV1ListPolicy listPolicy;

  /// Restores the default behavior of the constraint; independent of
  /// `Constraint` type.
  GoogleCloudOrgpolicyV1RestoreDefault restoreDefault;

  /// The time stamp the `Policy` was previously updated. This is set by the
  /// server, not specified by the caller, and represents the last time a call
  /// to
  /// `SetOrgPolicy` was made for that `Policy`. Any value set by the client
  /// will
  /// be ignored.
  core.String updateTime;

  /// Version of the `Policy`. Default version is 0;
  core.int version;

  GoogleCloudOrgpolicyV1Policy();

  GoogleCloudOrgpolicyV1Policy.fromJson(core.Map _json) {
    if (_json.containsKey("booleanPolicy")) {
      booleanPolicy = new GoogleCloudOrgpolicyV1BooleanPolicy.fromJson(
          _json["booleanPolicy"]);
    }
    if (_json.containsKey("constraint")) {
      constraint = _json["constraint"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("listPolicy")) {
      listPolicy =
          new GoogleCloudOrgpolicyV1ListPolicy.fromJson(_json["listPolicy"]);
    }
    if (_json.containsKey("restoreDefault")) {
      restoreDefault = new GoogleCloudOrgpolicyV1RestoreDefault.fromJson(
          _json["restoreDefault"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanPolicy != null) {
      _json["booleanPolicy"] = (booleanPolicy).toJson();
    }
    if (constraint != null) {
      _json["constraint"] = constraint;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (listPolicy != null) {
      _json["listPolicy"] = (listPolicy).toJson();
    }
    if (restoreDefault != null) {
      _json["restoreDefault"] = (restoreDefault).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Ignores policies set above this resource and restores the
/// `constraint_default` enforcement behavior of the specific `Constraint` at
/// this resource.
///
/// Suppose that `constraint_default` is set to `ALLOW` for the
/// `Constraint` `constraints/serviceuser.services`. Suppose that organization
/// foo.com sets a `Policy` at their Organization resource node that restricts
/// the allowed service activations to deny all service activations. They
/// could then set a `Policy` with the `policy_type` `restore_default` on
/// several experimental projects, restoring the `constraint_default`
/// enforcement of the `Constraint` for only those projects, allowing those
/// projects to have all services activated.
class GoogleCloudOrgpolicyV1RestoreDefault {
  GoogleCloudOrgpolicyV1RestoreDefault();

  GoogleCloudOrgpolicyV1RestoreDefault.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// Output configuration for export assets destination.
class OutputConfig {
  /// Destination on Cloud Storage.
  GcsDestination gcsDestination;

  OutputConfig();

  OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GcsDestination.fromJson(_json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
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

/// Representation of a cloud resource.
class Resource {
  /// The content of the resource, in which some sensitive fields are scrubbed
  /// away and may not be present.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> data;

  /// The URL of the discovery document containing the resource's JSON schema.
  /// For example:
  /// `"https://www.googleapis.com/discovery/v1/apis/compute/v1/rest"`.
  /// It will be left unspecified for resources without a discovery-based API,
  /// such as Cloud Bigtable.
  core.String discoveryDocumentUri;

  /// The JSON schema name listed in the discovery document.
  /// Example: "Project". It will be left unspecified for resources (such as
  /// Cloud Bigtable) without a discovery-based API.
  core.String discoveryName;

  /// The full name of the immediate parent of this resource. See
  /// [Resource
  /// Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
  /// for more information.
  ///
  /// For GCP assets, it is the parent resource defined in the [Cloud IAM policy
  /// hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy).
  /// For example:
  /// `"//cloudresourcemanager.googleapis.com/projects/my_project_123"`.
  ///
  /// For third-party assets, it is up to the users to define.
  core.String parent;

  /// The REST URL for accessing the resource. An HTTP GET operation using this
  /// URL returns the resource itself.
  /// Example:
  /// `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123`.
  /// It will be left unspecified for resources without a REST API.
  core.String resourceUrl;

  /// The API version. Example: "v1".
  core.String version;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("discoveryDocumentUri")) {
      discoveryDocumentUri = _json["discoveryDocumentUri"];
    }
    if (_json.containsKey("discoveryName")) {
      discoveryName = _json["discoveryName"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
    if (_json.containsKey("resourceUrl")) {
      resourceUrl = _json["resourceUrl"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (discoveryDocumentUri != null) {
      _json["discoveryDocumentUri"] = discoveryDocumentUri;
    }
    if (discoveryName != null) {
      _json["discoveryName"] = discoveryName;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    if (resourceUrl != null) {
      _json["resourceUrl"] = resourceUrl;
    }
    if (version != null) {
      _json["version"] = version;
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

/// Temporal asset. In addition to the asset, the temporal asset includes the
/// status of the asset and valid from and to time of it.
class TemporalAsset {
  /// Asset.
  Asset asset;

  /// If the asset is deleted or not.
  core.bool deleted;

  /// The time window when the asset data and state was observed.
  TimeWindow window;

  TemporalAsset();

  TemporalAsset.fromJson(core.Map _json) {
    if (_json.containsKey("asset")) {
      asset = new Asset.fromJson(_json["asset"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("window")) {
      window = new TimeWindow.fromJson(_json["window"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (asset != null) {
      _json["asset"] = (asset).toJson();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (window != null) {
      _json["window"] = (window).toJson();
    }
    return _json;
  }
}

/// A time window of (start_time, end_time].
class TimeWindow {
  /// End time of the time window (inclusive).
  /// Current timestamp if not specified.
  core.String endTime;

  /// Start time of the time window (exclusive).
  core.String startTime;

  TimeWindow();

  TimeWindow.fromJson(core.Map _json) {
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
