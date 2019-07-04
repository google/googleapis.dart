// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.servicecontrol.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client servicecontrol/v1';

/// Provides control plane functionality to managed services, such as logging,
/// monitoring, and status checks.
class ServicecontrolApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Manage your Google Service Control data
  static const ServicecontrolScope =
      "https://www.googleapis.com/auth/servicecontrol";

  final commons.ApiRequester _requester;

  ServicesResourceApi get services => new ServicesResourceApi(_requester);

  ServicecontrolApi(http.Client client,
      {core.String rootUrl = "https://servicecontrol.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ServicesResourceApi {
  final commons.ApiRequester _requester;

  ServicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Attempts to allocate quota for the specified consumer. It should be called
  /// before the operation is executed.
  ///
  /// This method requires the `servicemanagement.services.quota`
  /// permission on the specified service. For more information, see
  /// [Cloud IAM](https://cloud.google.com/iam).
  ///
  /// **NOTE:** The client **must** fail-open on server errors `INTERNAL`,
  /// `UNKNOWN`, `DEADLINE_EXCEEDED`, and `UNAVAILABLE`. To ensure system
  /// reliability, the server may inject these errors to prohibit any hard
  /// dependency on the quota functionality.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - Name of the service as specified in the service
  /// configuration. For example,
  /// `"pubsub.googleapis.com"`.
  ///
  /// See google.api.Service for the definition of a service name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AllocateQuotaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AllocateQuotaResponse> allocateQuota(
      AllocateQuotaRequest request, core.String serviceName,
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
    if (serviceName == null) {
      throw new core.ArgumentError("Parameter serviceName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/services/' +
        commons.Escaper.ecapeVariable('$serviceName') +
        ':allocateQuota';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AllocateQuotaResponse.fromJson(data));
  }

  /// Checks whether an operation on a service should be allowed to proceed
  /// based on the configuration of the service and related policies. It must be
  /// called before the operation is executed.
  ///
  /// If feasible, the client should cache the check results and reuse them for
  /// 60 seconds. In case of any server errors, the client should rely on the
  /// cached results for much longer time to avoid outage.
  /// WARNING: There is general 60s delay for the configuration and policy
  /// propagation, therefore callers MUST NOT depend on the `Check` method
  /// having
  /// the latest policy information.
  ///
  /// NOTE: the CheckRequest has the size limit of 64KB.
  ///
  /// This method requires the `servicemanagement.services.check` permission
  /// on the specified service. For more information, see
  /// [Cloud IAM](https://cloud.google.com/iam).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - The service name as specified in its service
  /// configuration. For example,
  /// `"pubsub.googleapis.com"`.
  ///
  /// See
  /// [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
  /// for the definition of a service name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckResponse> check(
      CheckRequest request, core.String serviceName,
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
    if (serviceName == null) {
      throw new core.ArgumentError("Parameter serviceName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/services/' +
        commons.Escaper.ecapeVariable('$serviceName') +
        ':check';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CheckResponse.fromJson(data));
  }

  /// Reports operation results to Google Service Control, such as logs and
  /// metrics. It should be called after an operation is completed.
  ///
  /// If feasible, the client should aggregate reporting data for up to 5
  /// seconds to reduce API traffic. Limiting aggregation to 5 seconds is to
  /// reduce data loss during client crashes. Clients should carefully choose
  /// the aggregation time window to avoid data loss risk more than 0.01%
  /// for business and compliance reasons.
  ///
  /// NOTE: the ReportRequest has the size limit of 1MB.
  ///
  /// This method requires the `servicemanagement.services.report` permission
  /// on the specified service. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - The service name as specified in its service
  /// configuration. For example,
  /// `"pubsub.googleapis.com"`.
  ///
  /// See
  /// [google.api.Service](https://cloud.google.com/service-management/reference/rpc/google.api#google.api.Service)
  /// for the definition of a service name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportResponse> report(
      ReportRequest request, core.String serviceName,
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
    if (serviceName == null) {
      throw new core.ArgumentError("Parameter serviceName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/services/' +
        commons.Escaper.ecapeVariable('$serviceName') +
        ':report';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ReportResponse.fromJson(data));
  }
}

class AllocateInfo {
  /// A list of label keys that were unused by the server in processing the
  /// request. Thus, for similar requests repeated in a certain future time
  /// window, the caller can choose to ignore these labels in the requests
  /// to achieve better client-side cache hits and quota aggregation.
  core.List<core.String> unusedArguments;

  AllocateInfo();

  AllocateInfo.fromJson(core.Map _json) {
    if (_json.containsKey("unusedArguments")) {
      unusedArguments =
          (_json["unusedArguments"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (unusedArguments != null) {
      _json["unusedArguments"] = unusedArguments;
    }
    return _json;
  }
}

/// Request message for the AllocateQuota method.
class AllocateQuotaRequest {
  /// Operation that describes the quota allocation.
  QuotaOperation allocateOperation;

  /// Specifies which version of service configuration should be used to process
  /// the request. If unspecified or no matching version can be found, the
  /// latest
  /// one will be used.
  core.String serviceConfigId;

  AllocateQuotaRequest();

  AllocateQuotaRequest.fromJson(core.Map _json) {
    if (_json.containsKey("allocateOperation")) {
      allocateOperation =
          new QuotaOperation.fromJson(_json["allocateOperation"]);
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allocateOperation != null) {
      _json["allocateOperation"] = (allocateOperation).toJson();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/// Response message for the AllocateQuota method.
class AllocateQuotaResponse {
  /// Indicates the decision of the allocate.
  core.List<QuotaError> allocateErrors;

  /// WARNING: DO NOT use this field until this warning message is removed.
  AllocateInfo allocateInfo;

  /// The same operation_id value used in the AllocateQuotaRequest. Used for
  /// logging and diagnostics purposes.
  core.String operationId;

  /// Quota metrics to indicate the result of allocation. Depending on the
  /// request, one or more of the following metrics will be included:
  ///
  /// 1. Per quota group or per quota metric incremental usage will be specified
  /// using the following delta metric :
  ///   "serviceruntime.googleapis.com/api/consumer/quota_used_count"
  ///
  /// 2. The quota limit reached condition will be specified using the following
  /// boolean metric :
  ///   "serviceruntime.googleapis.com/quota/exceeded"
  core.List<MetricValueSet> quotaMetrics;

  /// ID of the actual config used to process the request.
  core.String serviceConfigId;

  AllocateQuotaResponse();

  AllocateQuotaResponse.fromJson(core.Map _json) {
    if (_json.containsKey("allocateErrors")) {
      allocateErrors = (_json["allocateErrors"] as core.List)
          .map<QuotaError>((value) => new QuotaError.fromJson(value))
          .toList();
    }
    if (_json.containsKey("allocateInfo")) {
      allocateInfo = new AllocateInfo.fromJson(_json["allocateInfo"]);
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("quotaMetrics")) {
      quotaMetrics = (_json["quotaMetrics"] as core.List)
          .map<MetricValueSet>((value) => new MetricValueSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allocateErrors != null) {
      _json["allocateErrors"] =
          allocateErrors.map((value) => (value).toJson()).toList();
    }
    if (allocateInfo != null) {
      _json["allocateInfo"] = (allocateInfo).toJson();
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (quotaMetrics != null) {
      _json["quotaMetrics"] =
          quotaMetrics.map((value) => (value).toJson()).toList();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/// Common audit log format for Google Cloud Platform API operations.
class AuditLog {
  /// Authentication information.
  AuthenticationInfo authenticationInfo;

  /// Authorization information. If there are multiple
  /// resources or permissions involved, then there is
  /// one AuthorizationInfo element for each {resource, permission} tuple.
  core.List<AuthorizationInfo> authorizationInfo;

  /// Other service-specific data about the request, response, and other
  /// information associated with the current audited event.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The name of the service method or operation.
  /// For API calls, this should be the name of the API method.
  /// For example,
  ///
  ///     "google.datastore.v1.Datastore.RunQuery"
  ///     "google.logging.v1.LoggingService.DeleteLog"
  core.String methodName;

  /// The number of items returned from a List or Query API method,
  /// if applicable.
  core.String numResponseItems;

  /// The operation request. This may not include all request parameters,
  /// such as those that are too large, privacy-sensitive, or duplicated
  /// elsewhere in the log record.
  /// It should never include user-generated data, such as file contents.
  /// When the JSON object represented here has a proto equivalent, the proto
  /// name will be indicated in the `@type` property.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> request;

  /// Metadata about the operation.
  RequestMetadata requestMetadata;

  /// The resource location information.
  ResourceLocation resourceLocation;

  /// The resource or collection that is the target of the operation.
  /// The name is a scheme-less URI, not including the API service name.
  /// For example:
  ///
  ///     "shelves/SHELF_ID/books"
  ///     "shelves/SHELF_ID/books/BOOK_ID"
  core.String resourceName;

  /// The resource's original state before mutation. Present only for
  /// operations which have successfully modified the targeted resource(s).
  /// In general, this field should contain all changed fields, except those
  /// that are already been included in `request`, `response`, `metadata` or
  /// `service_data` fields.
  /// When the JSON object represented here has a proto equivalent,
  /// the proto name will be indicated in the `@type` property.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> resourceOriginalState;

  /// The operation response. This may not include all response elements,
  /// such as those that are too large, privacy-sensitive, or duplicated
  /// elsewhere in the log record.
  /// It should never include user-generated data, such as file contents.
  /// When the JSON object represented here has a proto equivalent, the proto
  /// name will be indicated in the `@type` property.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  /// Deprecated, use `metadata` field instead.
  /// Other service-specific data about the request, response, and other
  /// activities.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> serviceData;

  /// The name of the API service performing the operation. For example,
  /// `"datastore.googleapis.com"`.
  core.String serviceName;

  /// The status of the overall operation.
  Status status;

  AuditLog();

  AuditLog.fromJson(core.Map _json) {
    if (_json.containsKey("authenticationInfo")) {
      authenticationInfo =
          new AuthenticationInfo.fromJson(_json["authenticationInfo"]);
    }
    if (_json.containsKey("authorizationInfo")) {
      authorizationInfo = (_json["authorizationInfo"] as core.List)
          .map<AuthorizationInfo>(
              (value) => new AuthorizationInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("methodName")) {
      methodName = _json["methodName"];
    }
    if (_json.containsKey("numResponseItems")) {
      numResponseItems = _json["numResponseItems"];
    }
    if (_json.containsKey("request")) {
      request = (_json["request"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
    if (_json.containsKey("resourceLocation")) {
      resourceLocation =
          new ResourceLocation.fromJson(_json["resourceLocation"]);
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
    if (_json.containsKey("resourceOriginalState")) {
      resourceOriginalState = (_json["resourceOriginalState"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("serviceData")) {
      serviceData =
          (_json["serviceData"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("serviceName")) {
      serviceName = _json["serviceName"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authenticationInfo != null) {
      _json["authenticationInfo"] = (authenticationInfo).toJson();
    }
    if (authorizationInfo != null) {
      _json["authorizationInfo"] =
          authorizationInfo.map((value) => (value).toJson()).toList();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (methodName != null) {
      _json["methodName"] = methodName;
    }
    if (numResponseItems != null) {
      _json["numResponseItems"] = numResponseItems;
    }
    if (request != null) {
      _json["request"] = request;
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    if (resourceLocation != null) {
      _json["resourceLocation"] = (resourceLocation).toJson();
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    if (resourceOriginalState != null) {
      _json["resourceOriginalState"] = resourceOriginalState;
    }
    if (response != null) {
      _json["response"] = response;
    }
    if (serviceData != null) {
      _json["serviceData"] = serviceData;
    }
    if (serviceName != null) {
      _json["serviceName"] = serviceName;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/// This message defines request authentication attributes. Terminology is
/// based on the JSON Web Token (JWT) standard, but the terms also
/// correlate to concepts in other standards.
class Auth {
  /// A list of access level resource names that allow resources to be
  /// accessed by authenticated requester. It is part of Secure GCP processing
  /// for the incoming request. An access level string has the format:
  /// "//{api_service_name}/accessPolicies/{policy_id}/accessLevels/{short_name}"
  ///
  /// Example:
  /// "//accesscontextmanager.googleapis.com/accessPolicies/MY_POLICY_ID/accessLevels/MY_LEVEL"
  core.List<core.String> accessLevels;

  /// The intended audience(s) for this authentication information. Reflects
  /// the audience (`aud`) claim within a JWT. The audience
  /// value(s) depends on the `issuer`, but typically include one or more of
  /// the following pieces of information:
  ///
  /// *  The services intended to receive the credential such as
  ///    ["pubsub.googleapis.com", "storage.googleapis.com"]
  /// *  A set of service-based scopes. For example,
  ///    ["https://www.googleapis.com/auth/cloud-platform"]
  /// *  The client id of an app, such as the Firebase project id for JWTs
  ///    from Firebase Auth.
  ///
  /// Consult the documentation for the credential issuer to determine the
  /// information provided.
  core.List<core.String> audiences;

  /// Structured claims presented with the credential. JWTs include
  /// `{key: value}` pairs for standard and private claims. The following
  /// is a subset of the standard required and optional claims that would
  /// typically be presented for a Google-based JWT:
  ///
  ///    {'iss': 'accounts.google.com',
  ///     'sub': '113289723416554971153',
  ///     'aud': ['123456789012', 'pubsub.googleapis.com'],
  ///     'azp': '123456789012.apps.googleusercontent.com',
  ///     'email': 'jsmith@example.com',
  ///     'iat': 1353601026,
  ///     'exp': 1353604926}
  ///
  /// SAML assertions are similarly specified, but with an identity provider
  /// dependent structure.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> claims;

  /// The authorized presenter of the credential. Reflects the optional
  /// Authorized Presenter (`azp`) claim within a JWT or the
  /// OAuth client id. For example, a Google Cloud Platform client id looks
  /// as follows: "123456789012.apps.googleusercontent.com".
  core.String presenter;

  /// The authenticated principal. Reflects the issuer (`iss`) and subject
  /// (`sub`) claims within a JWT. The issuer and subject should be `/`
  /// delimited, with `/` percent-encoded within the subject fragment. For
  /// Google accounts, the principal format is:
  /// "https://accounts.google.com/{id}"
  core.String principal;

  Auth();

  Auth.fromJson(core.Map _json) {
    if (_json.containsKey("accessLevels")) {
      accessLevels = (_json["accessLevels"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("audiences")) {
      audiences = (_json["audiences"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("claims")) {
      claims = (_json["claims"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("presenter")) {
      presenter = _json["presenter"];
    }
    if (_json.containsKey("principal")) {
      principal = _json["principal"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accessLevels != null) {
      _json["accessLevels"] = accessLevels;
    }
    if (audiences != null) {
      _json["audiences"] = audiences;
    }
    if (claims != null) {
      _json["claims"] = claims;
    }
    if (presenter != null) {
      _json["presenter"] = presenter;
    }
    if (principal != null) {
      _json["principal"] = principal;
    }
    return _json;
  }
}

/// Authentication information for the operation.
class AuthenticationInfo {
  /// The authority selector specified by the requestor, if any.
  /// It is not guaranteed that the principal was allowed to use this authority.
  core.String authoritySelector;

  /// The email address of the authenticated user (or service account on behalf
  /// of third party principal) making the request. For privacy reasons, the
  /// principal email address is redacted for all read-only operations that fail
  /// with a "permission denied" error.
  core.String principalEmail;

  /// Identity delegation history of an authenticated service account that makes
  /// the request. It contains information on the real authorities that try to
  /// access GCP resources by delegating on a service account. When multiple
  /// authorities present, they are guaranteed to be sorted based on the
  /// original
  /// ordering of the identity delegation events.
  core.List<ServiceAccountDelegationInfo> serviceAccountDelegationInfo;

  /// The name of the service account key used to create or exchange
  /// credentials for authenticating the service account making the request.
  /// This is a scheme-less URI full resource name. For example:
  ///
  /// "//iam.googleapis.com/projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}"
  core.String serviceAccountKeyName;

  /// The third party identification (if any) of the authenticated user making
  /// the request.
  /// When the JSON object represented here has a proto equivalent, the proto
  /// name will be indicated in the `@type` property.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> thirdPartyPrincipal;

  AuthenticationInfo();

  AuthenticationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("authoritySelector")) {
      authoritySelector = _json["authoritySelector"];
    }
    if (_json.containsKey("principalEmail")) {
      principalEmail = _json["principalEmail"];
    }
    if (_json.containsKey("serviceAccountDelegationInfo")) {
      serviceAccountDelegationInfo =
          (_json["serviceAccountDelegationInfo"] as core.List)
              .map<ServiceAccountDelegationInfo>(
                  (value) => new ServiceAccountDelegationInfo.fromJson(value))
              .toList();
    }
    if (_json.containsKey("serviceAccountKeyName")) {
      serviceAccountKeyName = _json["serviceAccountKeyName"];
    }
    if (_json.containsKey("thirdPartyPrincipal")) {
      thirdPartyPrincipal = (_json["thirdPartyPrincipal"] as core.Map)
          .cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authoritySelector != null) {
      _json["authoritySelector"] = authoritySelector;
    }
    if (principalEmail != null) {
      _json["principalEmail"] = principalEmail;
    }
    if (serviceAccountDelegationInfo != null) {
      _json["serviceAccountDelegationInfo"] = serviceAccountDelegationInfo
          .map((value) => (value).toJson())
          .toList();
    }
    if (serviceAccountKeyName != null) {
      _json["serviceAccountKeyName"] = serviceAccountKeyName;
    }
    if (thirdPartyPrincipal != null) {
      _json["thirdPartyPrincipal"] = thirdPartyPrincipal;
    }
    return _json;
  }
}

/// Authorization information for the operation.
class AuthorizationInfo {
  /// Whether or not authorization for `resource` and `permission`
  /// was granted.
  core.bool granted;

  /// The required IAM permission.
  core.String permission;

  /// The resource being accessed, as a REST-style string. For example:
  ///
  ///     bigquery.googleapis.com/projects/PROJECTID/datasets/DATASETID
  core.String resource;

  /// Resource attributes used in IAM condition evaluation. This field contains
  /// resource attributes like resource type and resource name.
  ///
  /// To get the whole view of the attributes used in IAM
  /// condition evaluation, the user must also look into
  /// `AuditLog.request_metadata.request_attributes`.
  Resource resourceAttributes;

  AuthorizationInfo();

  AuthorizationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("granted")) {
      granted = _json["granted"];
    }
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("resourceAttributes")) {
      resourceAttributes = new Resource.fromJson(_json["resourceAttributes"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (granted != null) {
      _json["granted"] = granted;
    }
    if (permission != null) {
      _json["permission"] = permission;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (resourceAttributes != null) {
      _json["resourceAttributes"] = (resourceAttributes).toJson();
    }
    return _json;
  }
}

/// Defines the errors to be returned in
/// google.api.servicecontrol.v1.CheckResponse.check_errors.
class CheckError {
  /// The error code.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : This is never used in `CheckResponse`.
  /// - "NOT_FOUND" : The consumer's project id, network container, or resource
  /// container was
  /// not found. Same as google.rpc.Code.NOT_FOUND.
  /// - "PERMISSION_DENIED" : The consumer doesn't have access to the specified
  /// resource.
  /// Same as google.rpc.Code.PERMISSION_DENIED.
  /// - "RESOURCE_EXHAUSTED" : Quota check failed. Same as
  /// google.rpc.Code.RESOURCE_EXHAUSTED.
  /// - "BUDGET_EXCEEDED" : Budget check failed.
  /// - "DENIAL_OF_SERVICE_DETECTED" : The consumer's request has been flagged
  /// as a DoS attack.
  /// - "LOAD_SHEDDING" : The consumer's request should be rejected in order to
  /// protect the service
  /// from being overloaded.
  /// - "ABUSER_DETECTED" : The consumer has been flagged as an abuser.
  /// - "SERVICE_NOT_ACTIVATED" : The consumer hasn't activated the service.
  /// - "VISIBILITY_DENIED" : The consumer cannot access the service due to
  /// visibility configuration.
  /// - "BILLING_DISABLED" : The consumer cannot access the service because
  /// billing is disabled.
  /// - "PROJECT_DELETED" : The consumer's project has been marked as deleted
  /// (soft deletion).
  /// - "PROJECT_INVALID" : The consumer's project number or id does not
  /// represent a valid project.
  /// - "CONSUMER_INVALID" : The input consumer info does not represent a valid
  /// consumer folder or
  /// organization.
  /// - "IP_ADDRESS_BLOCKED" : The IP address of the consumer is invalid for the
  /// specific consumer
  /// project.
  /// - "REFERER_BLOCKED" : The referer address of the consumer request is
  /// invalid for the specific
  /// consumer project.
  /// - "CLIENT_APP_BLOCKED" : The client application of the consumer request is
  /// invalid for the
  /// specific consumer project.
  /// - "API_TARGET_BLOCKED" : The API targeted by this request is invalid for
  /// the specified consumer
  /// project.
  /// - "API_KEY_INVALID" : The consumer's API key is invalid.
  /// - "API_KEY_EXPIRED" : The consumer's API Key has expired.
  /// - "API_KEY_NOT_FOUND" : The consumer's API Key was not found in config
  /// record.
  /// - "SPATULA_HEADER_INVALID" : The consumer's spatula header is invalid.
  /// - "LOAS_ROLE_INVALID" : The consumer's LOAS role is invalid.
  /// - "NO_LOAS_PROJECT" : The consumer's LOAS role has no associated project.
  /// - "LOAS_PROJECT_DISABLED" : The consumer's LOAS project is not `ACTIVE` in
  /// LoquatV2.
  /// - "SECURITY_POLICY_VIOLATED" : Request is not allowed as per security
  /// policies defined in Org Policy.
  /// - "INVALID_CREDENTIAL" : The credential in the request can not be
  /// verified.
  /// - "LOCATION_POLICY_VIOLATED" : Request is not allowed as per location
  /// policies defined in Org Policy.
  /// - "NAMESPACE_LOOKUP_UNAVAILABLE" : The backend server for looking up
  /// project id/number is unavailable.
  /// - "SERVICE_STATUS_UNAVAILABLE" : The backend server for checking service
  /// status is unavailable.
  /// - "BILLING_STATUS_UNAVAILABLE" : The backend server for checking billing
  /// status is unavailable.
  /// - "QUOTA_CHECK_UNAVAILABLE" : The backend server for checking quota limits
  /// is unavailable.
  /// - "LOAS_PROJECT_LOOKUP_UNAVAILABLE" : The Spanner for looking up LOAS
  /// project is unavailable.
  /// - "CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE" : Cloud Resource Manager
  /// backend server is unavailable.
  /// - "SECURITY_POLICY_BACKEND_UNAVAILABLE" : NOTE: for customers in the scope
  /// of Beta/GA of
  /// https://cloud.google.com/vpc-service-controls, this error
  /// is no longer returned. If the security backend is unavailable, rpc
  /// UNAVAILABLE status will be returned instead. It should be ignored and
  /// should not be used to reject client requests.
  /// - "LOCATION_POLICY_BACKEND_UNAVAILABLE" : Backend server for evaluating
  /// location policy is unavailable.
  core.String code;

  /// Free-form text providing details on the error cause of the error.
  core.String detail;

  /// Contains public information about the check error. If available,
  /// `status.code` will be non zero and client can propagate it out as public
  /// error.
  Status status;

  /// Subject to whom this error applies. See the specific code enum for more
  /// details on this field. For example:
  ///     - “project:<project-id or project-number>”
  ///     - “folder:<folder-id>”
  ///     - “organization:<organization-id>”
  core.String subject;

  CheckError();

  CheckError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("detail")) {
      detail = _json["detail"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (detail != null) {
      _json["detail"] = detail;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    return _json;
  }
}

/// Contains additional information about the check operation.
class CheckInfo {
  /// Consumer info of this check.
  ConsumerInfo consumerInfo;

  /// A list of fields and label keys that are ignored by the server.
  /// The client doesn't need to send them for following requests to improve
  /// performance and allow better aggregation.
  core.List<core.String> unusedArguments;

  CheckInfo();

  CheckInfo.fromJson(core.Map _json) {
    if (_json.containsKey("consumerInfo")) {
      consumerInfo = new ConsumerInfo.fromJson(_json["consumerInfo"]);
    }
    if (_json.containsKey("unusedArguments")) {
      unusedArguments =
          (_json["unusedArguments"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerInfo != null) {
      _json["consumerInfo"] = (consumerInfo).toJson();
    }
    if (unusedArguments != null) {
      _json["unusedArguments"] = unusedArguments;
    }
    return _json;
  }
}

/// Request message for the Check method.
class CheckRequest {
  /// The operation to be checked.
  Operation operation;

  /// Requests the project settings to be returned as part of the check
  /// response.
  core.bool requestProjectSettings;

  /// Specifies which version of service configuration should be used to process
  /// the request.
  ///
  /// If unspecified or no matching version can be found, the
  /// latest one will be used.
  core.String serviceConfigId;

  /// Indicates if service activation check should be skipped for this request.
  /// Default behavior is to perform the check and apply relevant quota.
  /// WARNING: Setting this flag to "true" will disable quota enforcement.
  core.bool skipActivationCheck;

  CheckRequest();

  CheckRequest.fromJson(core.Map _json) {
    if (_json.containsKey("operation")) {
      operation = new Operation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("requestProjectSettings")) {
      requestProjectSettings = _json["requestProjectSettings"];
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
    if (_json.containsKey("skipActivationCheck")) {
      skipActivationCheck = _json["skipActivationCheck"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (requestProjectSettings != null) {
      _json["requestProjectSettings"] = requestProjectSettings;
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    if (skipActivationCheck != null) {
      _json["skipActivationCheck"] = skipActivationCheck;
    }
    return _json;
  }
}

/// Response message for the Check method.
class CheckResponse {
  /// Indicate the decision of the check.
  ///
  /// If no check errors are present, the service should process the operation.
  /// Otherwise the service should use the list of errors to determine the
  /// appropriate action.
  core.List<CheckError> checkErrors;

  /// Feedback data returned from the server during processing a Check request.
  CheckInfo checkInfo;

  /// The same operation_id value used in the CheckRequest.
  /// Used for logging and diagnostics purposes.
  core.String operationId;

  /// Quota information for the check request associated with this response.
  QuotaInfo quotaInfo;

  /// The actual config id used to process the request.
  core.String serviceConfigId;

  /// Unimplemented. The current service rollout id used to process the request.
  core.String serviceRolloutId;

  CheckResponse();

  CheckResponse.fromJson(core.Map _json) {
    if (_json.containsKey("checkErrors")) {
      checkErrors = (_json["checkErrors"] as core.List)
          .map<CheckError>((value) => new CheckError.fromJson(value))
          .toList();
    }
    if (_json.containsKey("checkInfo")) {
      checkInfo = new CheckInfo.fromJson(_json["checkInfo"]);
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("quotaInfo")) {
      quotaInfo = new QuotaInfo.fromJson(_json["quotaInfo"]);
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
    if (_json.containsKey("serviceRolloutId")) {
      serviceRolloutId = _json["serviceRolloutId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (checkErrors != null) {
      _json["checkErrors"] =
          checkErrors.map((value) => (value).toJson()).toList();
    }
    if (checkInfo != null) {
      _json["checkInfo"] = (checkInfo).toJson();
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (quotaInfo != null) {
      _json["quotaInfo"] = (quotaInfo).toJson();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    if (serviceRolloutId != null) {
      _json["serviceRolloutId"] = serviceRolloutId;
    }
    return _json;
  }
}

/// `ConsumerInfo` provides information about the consumer.
class ConsumerInfo {
  /// The consumer identity number, can be Google cloud project number, folder
  /// number or organization number e.g. 1234567890. A value of 0 indicates no
  /// consumer number is found.
  core.String consumerNumber;

  /// The Google cloud project number, e.g. 1234567890. A value of 0 indicates
  /// no project number is found.
  ///
  /// NOTE: This field is deprecated after Chemist support flexible consumer
  /// id. New code should not depend on this field anymore.
  core.String projectNumber;

  /// The type of the consumer which should have been defined in
  /// [Google Resource Manager](https://cloud.google.com/resource-manager/).
  /// Possible string values are:
  /// - "CONSUMER_TYPE_UNSPECIFIED" : This is never used.
  /// - "PROJECT" : The consumer is a Google Cloud Project.
  /// - "FOLDER" : The consumer is a Google Cloud Folder.
  /// - "ORGANIZATION" : The consumer is a Google Cloud Organization.
  /// - "SERVICE_SPECIFIC" : Service-specific resource container which is
  /// defined by the service
  /// producer to offer their users the ability to manage service control
  /// functionalities at a finer level of granularity than the PROJECT.
  core.String type;

  ConsumerInfo();

  ConsumerInfo.fromJson(core.Map _json) {
    if (_json.containsKey("consumerNumber")) {
      consumerNumber = _json["consumerNumber"];
    }
    if (_json.containsKey("projectNumber")) {
      projectNumber = _json["projectNumber"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerNumber != null) {
      _json["consumerNumber"] = consumerNumber;
    }
    if (projectNumber != null) {
      _json["projectNumber"] = projectNumber;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Distribution represents a frequency distribution of double-valued sample
/// points. It contains the size of the population of sample points plus
/// additional optional information:
///
///   - the arithmetic mean of the samples
///   - the minimum and maximum of the samples
///   - the sum-squared-deviation of the samples, used to compute variance
///   - a histogram of the values of the sample points
class Distribution {
  /// The number of samples in each histogram bucket. `bucket_counts` are
  /// optional. If present, they must sum to the `count` value.
  ///
  /// The buckets are defined below in `bucket_option`. There are N buckets.
  /// `bucket_counts[0]` is the number of samples in the underflow bucket.
  /// `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples
  /// in each of the finite buckets. And `bucket_counts[N] is the number
  /// of samples in the overflow bucket. See the comments of `bucket_option`
  /// below for more details.
  ///
  /// Any suffix of trailing zeros may be omitted.
  core.List<core.String> bucketCounts;

  /// The total number of samples in the distribution. Must be >= 0.
  core.String count;

  /// Example points. Must be in increasing order of `value` field.
  core.List<Exemplar> exemplars;

  /// Buckets with arbitrary user-provided width.
  ExplicitBuckets explicitBuckets;

  /// Buckets with exponentially growing width.
  ExponentialBuckets exponentialBuckets;

  /// Buckets with constant width.
  LinearBuckets linearBuckets;

  /// The maximum of the population of values. Ignored if `count` is zero.
  core.double maximum;

  /// The arithmetic mean of the samples in the distribution. If `count` is
  /// zero then this field must be zero.
  core.double mean;

  /// The minimum of the population of values. Ignored if `count` is zero.
  core.double minimum;

  /// The sum of squared deviations from the mean:
  ///   Sum[i=1..count]((x_i - mean)^2)
  /// where each x_i is a sample values. If `count` is zero then this field
  /// must be zero, otherwise validation of the request fails.
  core.double sumOfSquaredDeviation;

  Distribution();

  Distribution.fromJson(core.Map _json) {
    if (_json.containsKey("bucketCounts")) {
      bucketCounts = (_json["bucketCounts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("exemplars")) {
      exemplars = (_json["exemplars"] as core.List)
          .map<Exemplar>((value) => new Exemplar.fromJson(value))
          .toList();
    }
    if (_json.containsKey("explicitBuckets")) {
      explicitBuckets = new ExplicitBuckets.fromJson(_json["explicitBuckets"]);
    }
    if (_json.containsKey("exponentialBuckets")) {
      exponentialBuckets =
          new ExponentialBuckets.fromJson(_json["exponentialBuckets"]);
    }
    if (_json.containsKey("linearBuckets")) {
      linearBuckets = new LinearBuckets.fromJson(_json["linearBuckets"]);
    }
    if (_json.containsKey("maximum")) {
      maximum = _json["maximum"].toDouble();
    }
    if (_json.containsKey("mean")) {
      mean = _json["mean"].toDouble();
    }
    if (_json.containsKey("minimum")) {
      minimum = _json["minimum"].toDouble();
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
    if (count != null) {
      _json["count"] = count;
    }
    if (exemplars != null) {
      _json["exemplars"] = exemplars.map((value) => (value).toJson()).toList();
    }
    if (explicitBuckets != null) {
      _json["explicitBuckets"] = (explicitBuckets).toJson();
    }
    if (exponentialBuckets != null) {
      _json["exponentialBuckets"] = (exponentialBuckets).toJson();
    }
    if (linearBuckets != null) {
      _json["linearBuckets"] = (linearBuckets).toJson();
    }
    if (maximum != null) {
      _json["maximum"] = maximum;
    }
    if (mean != null) {
      _json["mean"] = mean;
    }
    if (minimum != null) {
      _json["minimum"] = minimum;
    }
    if (sumOfSquaredDeviation != null) {
      _json["sumOfSquaredDeviation"] = sumOfSquaredDeviation;
    }
    return _json;
  }
}

/// Exemplars are example points that may be used to annotate aggregated
/// distribution values. They are metadata that gives information about a
/// particular value added to a Distribution bucket, such as a trace ID that
/// was active when a value was added. They may contain further information,
/// such as a example values and timestamps, origin, etc.
class Exemplar {
  /// Contextual information about the example value. Examples are:
  ///
  ///   Trace: type.googleapis.com/google.monitoring.v3.SpanContext
  ///
  ///   Literal string: type.googleapis.com/google.protobuf.StringValue
  ///
  ///   Labels dropped during aggregation:
  ///     type.googleapis.com/google.monitoring.v3.DroppedLabels
  ///
  /// There may be only a single attachment of any given message type in a
  /// single exemplar, and this is enforced by the system.
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

/// Describing buckets with arbitrary user-provided width.
class ExplicitBuckets {
  /// 'bound' is a list of strictly increasing boundaries between
  /// buckets. Note that a list of length N-1 defines N buckets because
  /// of fenceposting. See comments on `bucket_options` for details.
  ///
  /// The i'th finite bucket covers the interval
  ///   [bound[i-1], bound[i])
  /// where i ranges from 1 to bound_size() - 1. Note that there are no
  /// finite buckets at all if 'bound' only contains a single element; in
  /// that special case the single bound defines the boundary between the
  /// underflow and overflow buckets.
  ///
  /// bucket number                   lower bound    upper bound
  ///  i == 0 (underflow)              -inf           bound[i]
  ///  0 < i < bound_size()            bound[i-1]     bound[i]
  ///  i == bound_size() (overflow)    bound[i-1]     +inf
  core.List<core.double> bounds;

  ExplicitBuckets();

  ExplicitBuckets.fromJson(core.Map _json) {
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

/// Describing buckets with exponentially growing width.
class ExponentialBuckets {
  /// The i'th exponential bucket covers the interval
  ///   [scale * growth_factor^(i-1), scale * growth_factor^i)
  /// where i ranges from 1 to num_finite_buckets inclusive.
  /// Must be larger than 1.0.
  core.double growthFactor;

  /// The number of finite buckets. With the underflow and overflow buckets,
  /// the total number of buckets is `num_finite_buckets` + 2.
  /// See comments on `bucket_options` for details.
  core.int numFiniteBuckets;

  /// The i'th exponential bucket covers the interval
  ///   [scale * growth_factor^(i-1), scale * growth_factor^i)
  /// where i ranges from 1 to num_finite_buckets inclusive.
  /// Must be > 0.
  core.double scale;

  ExponentialBuckets();

  ExponentialBuckets.fromJson(core.Map _json) {
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

/// First party identity principal.
class FirstPartyPrincipal {
  /// The email address of a Google account.
  /// .
  core.String principalEmail;

  /// Metadata about the service that uses the service account.
  /// .
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> serviceMetadata;

  FirstPartyPrincipal();

  FirstPartyPrincipal.fromJson(core.Map _json) {
    if (_json.containsKey("principalEmail")) {
      principalEmail = _json["principalEmail"];
    }
    if (_json.containsKey("serviceMetadata")) {
      serviceMetadata = (_json["serviceMetadata"] as core.Map)
          .cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (principalEmail != null) {
      _json["principalEmail"] = principalEmail;
    }
    if (serviceMetadata != null) {
      _json["serviceMetadata"] = serviceMetadata;
    }
    return _json;
  }
}

/// A common proto for logging HTTP requests. Only contains semantics
/// defined by the HTTP specification. Product-specific logging
/// information MUST be defined in a separate message.
class HttpRequest {
  /// The number of HTTP response bytes inserted into cache. Set only when a
  /// cache fill was attempted.
  core.String cacheFillBytes;

  /// Whether or not an entity was served from cache
  /// (with or without validation).
  core.bool cacheHit;

  /// Whether or not a cache lookup was attempted.
  core.bool cacheLookup;

  /// Whether or not the response was validated with the origin server before
  /// being served from cache. This field is only meaningful if `cache_hit` is
  /// True.
  core.bool cacheValidatedWithOriginServer;

  /// The request processing latency on the server, from the time the request
  /// was
  /// received until the response was sent.
  core.String latency;

  /// Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
  core.String protocol;

  /// The referer URL of the request, as defined in
  /// [HTTP/1.1 Header Field
  /// Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
  core.String referer;

  /// The IP address (IPv4 or IPv6) of the client that issued the HTTP
  /// request. Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
  core.String remoteIp;

  /// The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
  core.String requestMethod;

  /// The size of the HTTP request message in bytes, including the request
  /// headers and the request body.
  core.String requestSize;

  /// The scheme (http, https), the host name, the path, and the query
  /// portion of the URL that was requested.
  /// Example: `"http://example.com/some/info?color=red"`.
  core.String requestUrl;

  /// The size of the HTTP response message sent back to the client, in bytes,
  /// including the response headers and the response body.
  core.String responseSize;

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  core.String serverIp;

  /// The response code indicating the status of the response.
  /// Examples: 200, 404.
  core.int status;

  /// The user agent sent by the client. Example:
  /// `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
  /// CLR 1.0.3705)"`.
  core.String userAgent;

  HttpRequest();

  HttpRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cacheFillBytes")) {
      cacheFillBytes = _json["cacheFillBytes"];
    }
    if (_json.containsKey("cacheHit")) {
      cacheHit = _json["cacheHit"];
    }
    if (_json.containsKey("cacheLookup")) {
      cacheLookup = _json["cacheLookup"];
    }
    if (_json.containsKey("cacheValidatedWithOriginServer")) {
      cacheValidatedWithOriginServer = _json["cacheValidatedWithOriginServer"];
    }
    if (_json.containsKey("latency")) {
      latency = _json["latency"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("referer")) {
      referer = _json["referer"];
    }
    if (_json.containsKey("remoteIp")) {
      remoteIp = _json["remoteIp"];
    }
    if (_json.containsKey("requestMethod")) {
      requestMethod = _json["requestMethod"];
    }
    if (_json.containsKey("requestSize")) {
      requestSize = _json["requestSize"];
    }
    if (_json.containsKey("requestUrl")) {
      requestUrl = _json["requestUrl"];
    }
    if (_json.containsKey("responseSize")) {
      responseSize = _json["responseSize"];
    }
    if (_json.containsKey("serverIp")) {
      serverIp = _json["serverIp"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cacheFillBytes != null) {
      _json["cacheFillBytes"] = cacheFillBytes;
    }
    if (cacheHit != null) {
      _json["cacheHit"] = cacheHit;
    }
    if (cacheLookup != null) {
      _json["cacheLookup"] = cacheLookup;
    }
    if (cacheValidatedWithOriginServer != null) {
      _json["cacheValidatedWithOriginServer"] = cacheValidatedWithOriginServer;
    }
    if (latency != null) {
      _json["latency"] = latency;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (referer != null) {
      _json["referer"] = referer;
    }
    if (remoteIp != null) {
      _json["remoteIp"] = remoteIp;
    }
    if (requestMethod != null) {
      _json["requestMethod"] = requestMethod;
    }
    if (requestSize != null) {
      _json["requestSize"] = requestSize;
    }
    if (requestUrl != null) {
      _json["requestUrl"] = requestUrl;
    }
    if (responseSize != null) {
      _json["responseSize"] = responseSize;
    }
    if (serverIp != null) {
      _json["serverIp"] = serverIp;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    return _json;
  }
}

/// Describing buckets with constant width.
class LinearBuckets {
  /// The number of finite buckets. With the underflow and overflow buckets,
  /// the total number of buckets is `num_finite_buckets` + 2.
  /// See comments on `bucket_options` for details.
  core.int numFiniteBuckets;

  /// The i'th linear bucket covers the interval
  ///   [offset + (i-1) * width, offset + i * width)
  /// where i ranges from 1 to num_finite_buckets, inclusive.
  core.double offset;

  /// The i'th linear bucket covers the interval
  ///   [offset + (i-1) * width, offset + i * width)
  /// where i ranges from 1 to num_finite_buckets, inclusive.
  /// Must be strictly positive.
  core.double width;

  LinearBuckets();

  LinearBuckets.fromJson(core.Map _json) {
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

/// An individual log entry.
class LogEntry {
  /// Optional. Information about the HTTP request associated with this
  /// log entry, if applicable.
  HttpRequest httpRequest;

  /// A unique ID for the log entry used for deduplication. If omitted,
  /// the implementation will generate one based on operation_id.
  core.String insertId;

  /// A set of user-defined (key, value) data that provides additional
  /// information about the log entry.
  core.Map<core.String, core.String> labels;

  /// Required. The log to which this log entry belongs. Examples: `"syslog"`,
  /// `"book_log"`.
  core.String name;

  /// Optional. Information about an operation associated with the log entry, if
  /// applicable.
  LogEntryOperation operation;

  /// The log entry payload, represented as a protocol buffer that is
  /// expressed as a JSON object. The only accepted type currently is
  /// AuditLog.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> protoPayload;

  /// The severity of the log entry. The default value is
  /// `LogSeverity.DEFAULT`.
  /// Possible string values are:
  /// - "DEFAULT" : (0) The log entry has no assigned severity level.
  /// - "DEBUG" : (100) Debug or trace information.
  /// - "INFO" : (200) Routine information, such as ongoing status or
  /// performance.
  /// - "NOTICE" : (300) Normal but significant events, such as start up, shut
  /// down, or
  /// a configuration change.
  /// - "WARNING" : (400) Warning events might cause problems.
  /// - "ERROR" : (500) Error events are likely to cause problems.
  /// - "CRITICAL" : (600) Critical events cause more severe problems or
  /// outages.
  /// - "ALERT" : (700) A person must take an action immediately.
  /// - "EMERGENCY" : (800) One or more systems are unusable.
  core.String severity;

  /// The log entry payload, represented as a structure that
  /// is expressed as a JSON object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> structPayload;

  /// The log entry payload, represented as a Unicode string (UTF-8).
  core.String textPayload;

  /// The time the event described by the log entry occurred. If
  /// omitted, defaults to operation start time.
  core.String timestamp;

  /// Optional. Resource name of the trace associated with the log entry, if
  /// any.
  /// If this field contains a relative resource name, you can assume the name
  /// is
  /// relative to `//tracing.googleapis.com`. Example:
  /// `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`
  core.String trace;

  LogEntry();

  LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey("httpRequest")) {
      httpRequest = new HttpRequest.fromJson(_json["httpRequest"]);
    }
    if (_json.containsKey("insertId")) {
      insertId = _json["insertId"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operation")) {
      operation = new LogEntryOperation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("protoPayload")) {
      protoPayload =
          (_json["protoPayload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("structPayload")) {
      structPayload =
          (_json["structPayload"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("textPayload")) {
      textPayload = _json["textPayload"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("trace")) {
      trace = _json["trace"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (httpRequest != null) {
      _json["httpRequest"] = (httpRequest).toJson();
    }
    if (insertId != null) {
      _json["insertId"] = insertId;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (protoPayload != null) {
      _json["protoPayload"] = protoPayload;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (structPayload != null) {
      _json["structPayload"] = structPayload;
    }
    if (textPayload != null) {
      _json["textPayload"] = textPayload;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (trace != null) {
      _json["trace"] = trace;
    }
    return _json;
  }
}

/// Additional information about a potentially long-running operation with which
/// a log entry is associated.
class LogEntryOperation {
  /// Optional. Set this to True if this is the first log entry in the
  /// operation.
  core.bool first;

  /// Optional. An arbitrary operation identifier. Log entries with the
  /// same identifier are assumed to be part of the same operation.
  core.String id;

  /// Optional. Set this to True if this is the last log entry in the operation.
  core.bool last;

  /// Optional. An arbitrary producer identifier. The combination of
  /// `id` and `producer` must be globally unique.  Examples for `producer`:
  /// `"MyDivision.MyBigCompany.com"`, `"github.com/MyProject/MyApplication"`.
  core.String producer;

  LogEntryOperation();

  LogEntryOperation.fromJson(core.Map _json) {
    if (_json.containsKey("first")) {
      first = _json["first"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("last")) {
      last = _json["last"];
    }
    if (_json.containsKey("producer")) {
      producer = _json["producer"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (first != null) {
      _json["first"] = first;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (last != null) {
      _json["last"] = last;
    }
    if (producer != null) {
      _json["producer"] = producer;
    }
    return _json;
  }
}

/// Represents a single metric value.
class MetricValue {
  /// A boolean value.
  core.bool boolValue;

  /// A distribution value.
  Distribution distributionValue;

  /// A double precision floating point value.
  core.double doubleValue;

  /// The end of the time period over which this metric value's measurement
  /// applies.
  core.String endTime;

  /// A signed 64-bit integer value.
  core.String int64Value;

  /// The labels describing the metric value.
  /// See comments on google.api.servicecontrol.v1.Operation.labels for
  /// the overriding relationship.
  core.Map<core.String, core.String> labels;

  /// A money value.
  Money moneyValue;

  /// The start of the time period over which this metric value's measurement
  /// applies. The time period has different semantics for different metric
  /// types (cumulative, delta, and gauge). See the metric definition
  /// documentation in the service configuration for details.
  core.String startTime;

  /// A text string value.
  core.String stringValue;

  MetricValue();

  MetricValue.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("distributionValue")) {
      distributionValue = new Distribution.fromJson(_json["distributionValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"].toDouble();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("int64Value")) {
      int64Value = _json["int64Value"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("moneyValue")) {
      moneyValue = new Money.fromJson(_json["moneyValue"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
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
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (int64Value != null) {
      _json["int64Value"] = int64Value;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (moneyValue != null) {
      _json["moneyValue"] = (moneyValue).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/// Represents a set of metric values in the same metric.
/// Each metric value in the set should have a unique combination of start time,
/// end time, and label values.
class MetricValueSet {
  /// The metric name defined in the service configuration.
  core.String metricName;

  /// The values in this metric.
  core.List<MetricValue> metricValues;

  MetricValueSet();

  MetricValueSet.fromJson(core.Map _json) {
    if (_json.containsKey("metricName")) {
      metricName = _json["metricName"];
    }
    if (_json.containsKey("metricValues")) {
      metricValues = (_json["metricValues"] as core.List)
          .map<MetricValue>((value) => new MetricValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metricName != null) {
      _json["metricName"] = metricName;
    }
    if (metricValues != null) {
      _json["metricValues"] =
          metricValues.map((value) => (value).toJson()).toList();
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

/// Represents information regarding an operation.
class Operation {
  /// Identity of the consumer who is using the service.
  /// This field should be filled in for the operations initiated by a
  /// consumer, but not for service-initiated operations that are
  /// not related to a specific consumer.
  ///
  /// - This can be in one of the following formats:
  ///     - project:PROJECT_ID,
  ///     - project`_`number:PROJECT_NUMBER,
  ///     - projects/PROJECT_ID or PROJECT_NUMBER,
  ///     - folders/FOLDER_NUMBER,
  ///     - organizations/ORGANIZATION_NUMBER,
  ///     - api`_`key:API_KEY.
  core.String consumerId;

  /// End time of the operation.
  /// Required when the operation is used in ServiceController.Report,
  /// but optional when the operation is used in ServiceController.Check.
  core.String endTime;

  /// DO NOT USE. This is an experimental field.
  /// Possible string values are:
  /// - "LOW" : The API implementation may cache and aggregate the data.
  /// The data may be lost when rare and unexpected system failures occur.
  /// - "HIGH" : The API implementation doesn't cache and aggregate the data.
  /// If the method returns successfully, it's guaranteed that the data has
  /// been persisted in durable storage.
  /// - "DEBUG" : In addition to the behavior described in HIGH, DEBUG enables
  /// additional validation logic that is only useful during the onboarding
  /// process. This is only available to Google internal services and
  /// the service must be whitelisted by chemist-dev@google.com in order
  /// to use this level.
  core.String importance;

  /// Labels describing the operation. Only the following labels are allowed:
  ///
  /// - Labels describing monitored resources as defined in
  ///   the service configuration.
  /// - Default labels of metric values. When specified, labels defined in the
  ///   metric value override these default.
  /// - The following labels defined by Google Cloud Platform:
  ///     - `cloud.googleapis.com/location` describing the location where the
  ///        operation happened,
  /// - `servicecontrol.googleapis.com/user_agent` describing the user agent
  ///        of the API request,
  /// - `servicecontrol.googleapis.com/service_agent` describing the service
  ///        used to handle the API request (e.g. ESP),
  ///     - `servicecontrol.googleapis.com/platform` describing the platform
  ///        where the API is served, such as App Engine, Compute Engine, or
  ///        Kubernetes Engine.
  core.Map<core.String, core.String> labels;

  /// Represents information to be logged.
  core.List<LogEntry> logEntries;

  /// Represents information about this operation. Each MetricValueSet
  /// corresponds to a metric defined in the service configuration.
  /// The data type used in the MetricValueSet must agree with
  /// the data type specified in the metric definition.
  ///
  /// Within a single operation, it is not allowed to have more than one
  /// MetricValue instances that have the same metric names and identical
  /// label value combinations. If a request has such duplicated MetricValue
  /// instances, the entire request is rejected with
  /// an invalid argument error.
  core.List<MetricValueSet> metricValueSets;

  /// Identity of the operation. This must be unique within the scope of the
  /// service that generated the operation. If the service calls
  /// Check() and Report() on the same operation, the two calls should carry
  /// the same id.
  ///
  /// UUID version 4 is recommended, though not required.
  /// In scenarios where an operation is computed from existing information
  /// and an idempotent id is desirable for deduplication purpose, UUID version
  /// 5
  /// is recommended. See RFC 4122 for details.
  core.String operationId;

  /// Fully qualified name of the operation. Reserved for future use.
  core.String operationName;

  /// Represents the properties needed for quota check. Applicable only if this
  /// operation is for a quota check request. If this is not specified, no quota
  /// check will be performed.
  QuotaProperties quotaProperties;

  /// DO NOT USE. This field is deprecated, use "resources" field instead.
  /// The resource name of the parent of a resource in the resource hierarchy.
  ///
  /// This can be in one of the following formats:
  ///     - “projects/<project-id or project-number>”
  ///     - “folders/<folder-id>”
  ///     - “organizations/<organization-id>”
  core.String resourceContainer;

  /// The resources that are involved in the operation.
  /// The maximum supported number of entries in this field is 100.
  core.List<ResourceInfo> resources;

  /// Required. Start time of the operation.
  core.String startTime;

  /// User defined labels for the resource that this operation is associated
  /// with. Only a combination of 1000 user labels per consumer project are
  /// allowed.
  core.Map<core.String, core.String> userLabels;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("consumerId")) {
      consumerId = _json["consumerId"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("importance")) {
      importance = _json["importance"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("logEntries")) {
      logEntries = (_json["logEntries"] as core.List)
          .map<LogEntry>((value) => new LogEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("metricValueSets")) {
      metricValueSets = (_json["metricValueSets"] as core.List)
          .map<MetricValueSet>((value) => new MetricValueSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("operationName")) {
      operationName = _json["operationName"];
    }
    if (_json.containsKey("quotaProperties")) {
      quotaProperties = new QuotaProperties.fromJson(_json["quotaProperties"]);
    }
    if (_json.containsKey("resourceContainer")) {
      resourceContainer = _json["resourceContainer"];
    }
    if (_json.containsKey("resources")) {
      resources = (_json["resources"] as core.List)
          .map<ResourceInfo>((value) => new ResourceInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("userLabels")) {
      userLabels =
          (_json["userLabels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerId != null) {
      _json["consumerId"] = consumerId;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (importance != null) {
      _json["importance"] = importance;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (logEntries != null) {
      _json["logEntries"] =
          logEntries.map((value) => (value).toJson()).toList();
    }
    if (metricValueSets != null) {
      _json["metricValueSets"] =
          metricValueSets.map((value) => (value).toJson()).toList();
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (operationName != null) {
      _json["operationName"] = operationName;
    }
    if (quotaProperties != null) {
      _json["quotaProperties"] = (quotaProperties).toJson();
    }
    if (resourceContainer != null) {
      _json["resourceContainer"] = resourceContainer;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (userLabels != null) {
      _json["userLabels"] = userLabels;
    }
    return _json;
  }
}

/// This message defines attributes for a node that handles a network request.
/// The node can be either a service or an application that sends, forwards,
/// or receives the request. Service peers should fill in the `service`,
/// `principal`, and `labels` as appropriate.
class Peer {
  /// The IP address of the peer.
  core.String ip;

  /// The labels associated with the peer.
  core.Map<core.String, core.String> labels;

  /// The network port of the peer.
  core.String port;

  /// The identity of this peer. Similar to `Request.auth.principal`, but
  /// relative to the peer instead of the request. For example, the
  /// idenity associated with a load balancer that forwared the request.
  core.String principal;

  /// The CLDR country/region code associated with the above IP address.
  /// If the IP address is private, the `region_code` should reflect the
  /// physical location where this peer is running.
  core.String regionCode;

  /// The canonical service name of the peer.
  ///
  /// NOTE: different systems may have different service naming schemes.
  core.String service;

  Peer();

  Peer.fromJson(core.Map _json) {
    if (_json.containsKey("ip")) {
      ip = _json["ip"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("principal")) {
      principal = _json["principal"];
    }
    if (_json.containsKey("regionCode")) {
      regionCode = _json["regionCode"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ip != null) {
      _json["ip"] = ip;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (principal != null) {
      _json["principal"] = principal;
    }
    if (regionCode != null) {
      _json["regionCode"] = regionCode;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Represents error information for QuotaOperation.
class QuotaError {
  /// Error code.
  /// Possible string values are:
  /// - "UNSPECIFIED" : This is never used.
  /// - "RESOURCE_EXHAUSTED" : Quota allocation failed.
  /// Same as google.rpc.Code.RESOURCE_EXHAUSTED.
  /// - "OUT_OF_RANGE" : Quota release failed.  This error is ONLY returned on a
  /// NORMAL release.
  /// More formally:  if a user requests a release of 10 tokens, but only
  /// 5 tokens were previously allocated, in a BEST_EFFORT release, this will
  /// be considered a success, 5 tokens will be released, and the result will
  /// be "Ok".  If this is done in NORMAL mode, no tokens will be released,
  /// and an OUT_OF_RANGE error will be returned.
  /// Same as google.rpc.Code.OUT_OF_RANGE.
  /// - "BILLING_NOT_ACTIVE" : Consumer cannot access the service because the
  /// service requires active
  /// billing.
  /// - "PROJECT_DELETED" : Consumer's project has been marked as deleted (soft
  /// deletion).
  /// - "API_KEY_INVALID" : Specified API key is invalid.
  /// - "API_KEY_EXPIRED" : Specified API Key has expired.
  /// - "SPATULA_HEADER_INVALID" : Consumer's spatula header is invalid.
  /// - "LOAS_ROLE_INVALID" : The consumer's LOAS role is invalid.
  /// - "NO_LOAS_PROJECT" : The consumer's LOAS role has no associated project.
  /// - "PROJECT_STATUS_UNAVAILABLE" : The backend server for looking up project
  /// id/number is unavailable.
  /// - "SERVICE_STATUS_UNAVAILABLE" : The backend server for checking service
  /// status is unavailable.
  /// - "BILLING_STATUS_UNAVAILABLE" : The backend server for checking billing
  /// status is unavailable.
  /// - "QUOTA_SYSTEM_UNAVAILABLE" : The backend server for checking quota
  /// limits is unavailable.
  core.String code;

  /// Free-form text that provides details on the cause of the error.
  core.String description;

  /// Subject to whom this error applies. See the specific enum for more details
  /// on this field. For example, "clientip:<ip address of client>" or
  /// "project:<Google developer project id>".
  core.String subject;

  QuotaError();

  QuotaError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    return _json;
  }
}

/// Contains the quota information for a quota check response.
class QuotaInfo {
  /// Quota Metrics that have exceeded quota limits.
  /// For QuotaGroup-based quota, this is QuotaGroup.name
  /// For QuotaLimit-based quota, this is QuotaLimit.name
  /// See: google.api.Quota
  /// Deprecated: Use quota_metrics to get per quota group limit exceeded
  /// status.
  core.List<core.String> limitExceeded;

  /// Map of quota group name to the actual number of tokens consumed. If the
  /// quota check was not successful, then this will not be populated due to no
  /// quota consumption.
  ///
  /// We are not merging this field with 'quota_metrics' field because of the
  /// complexity of scaling in Chemist client code base. For simplicity, we will
  /// keep this field for Castor (that scales quota usage) and 'quota_metrics'
  /// for SuperQuota (that doesn't scale quota usage).
  core.Map<core.String, core.int> quotaConsumed;

  /// Quota metrics to indicate the usage. Depending on the check request, one
  /// or
  /// more of the following metrics will be included:
  ///
  /// 1. For rate quota, per quota group or per quota metric incremental usage
  /// will be specified using the following delta metric:
  ///   "serviceruntime.googleapis.com/api/consumer/quota_used_count"
  ///
  /// 2. For allocation quota, per quota metric total usage will be specified
  /// using the following gauge metric:
  ///   "serviceruntime.googleapis.com/allocation/consumer/quota_used_count"
  ///
  /// 3. For both rate quota and allocation quota, the quota limit reached
  /// condition will be specified using the following boolean metric:
  ///   "serviceruntime.googleapis.com/quota/exceeded"
  core.List<MetricValueSet> quotaMetrics;

  QuotaInfo();

  QuotaInfo.fromJson(core.Map _json) {
    if (_json.containsKey("limitExceeded")) {
      limitExceeded = (_json["limitExceeded"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("quotaConsumed")) {
      quotaConsumed =
          (_json["quotaConsumed"] as core.Map).cast<core.String, core.int>();
    }
    if (_json.containsKey("quotaMetrics")) {
      quotaMetrics = (_json["quotaMetrics"] as core.List)
          .map<MetricValueSet>((value) => new MetricValueSet.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (limitExceeded != null) {
      _json["limitExceeded"] = limitExceeded;
    }
    if (quotaConsumed != null) {
      _json["quotaConsumed"] = quotaConsumed;
    }
    if (quotaMetrics != null) {
      _json["quotaMetrics"] =
          quotaMetrics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Represents information regarding a quota operation.
class QuotaOperation {
  /// Identity of the consumer for whom this quota operation is being performed.
  ///
  /// This can be in one of the following formats:
  ///   project:<project_id>,
  ///   project_number:<project_number>,
  ///   api_key:<api_key>.
  core.String consumerId;

  /// Labels describing the operation.
  core.Map<core.String, core.String> labels;

  /// Fully qualified name of the API method for which this quota operation is
  /// requested. This name is used for matching quota rules or metric rules and
  /// billing status rules defined in service configuration.
  ///
  /// This field should not be set if any of the following is true:
  /// (1) the quota operation is performed on non-API resources.
  /// (2) quota_metrics is set because the caller is doing quota override.
  ///
  /// Example of an RPC method name:
  ///     google.example.library.v1.LibraryService.CreateShelf
  core.String methodName;

  /// Identity of the operation. This is expected to be unique within the scope
  /// of the service that generated the operation, and guarantees idempotency in
  /// case of retries.
  ///
  /// UUID version 4 is recommended, though not required. In scenarios where an
  /// operation is computed from existing information and an idempotent id is
  /// desirable for deduplication purpose, UUID version 5 is recommended. See
  /// RFC 4122 for details.
  core.String operationId;

  /// Represents information about this operation. Each MetricValueSet
  /// corresponds to a metric defined in the service configuration.
  /// The data type used in the MetricValueSet must agree with
  /// the data type specified in the metric definition.
  ///
  /// Within a single operation, it is not allowed to have more than one
  /// MetricValue instances that have the same metric names and identical
  /// label value combinations. If a request has such duplicated MetricValue
  /// instances, the entire request is rejected with
  /// an invalid argument error.
  ///
  /// This field is mutually exclusive with method_name.
  core.List<MetricValueSet> quotaMetrics;

  /// Quota mode for this operation.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Guard against implicit default. Must not be used.
  /// - "NORMAL" : For AllocateQuota request, allocates quota for the amount
  /// specified in
  /// the service configuration or specified using the quota metrics. If the
  /// amount is higher than the available quota, allocation error will be
  /// returned and no quota will be allocated.
  /// If multiple quotas are part of the request, and one fails, none of the
  /// quotas are allocated or released.
  /// - "BEST_EFFORT" : The operation allocates quota for the amount specified
  /// in the service
  /// configuration or specified using the quota metrics. If the amount is
  /// higher than the available quota, request does not fail but all available
  /// quota will be allocated.
  /// For rate quota, BEST_EFFORT will continue to deduct from other groups
  /// even if one does not have enough quota. For allocation, it will find the
  /// minimum available amount across all groups and deduct that amount from
  /// all the affected groups.
  /// - "CHECK_ONLY" : For AllocateQuota request, only checks if there is enough
  /// quota
  /// available and does not change the available quota. No lock is placed on
  /// the available quota either.
  core.String quotaMode;

  QuotaOperation();

  QuotaOperation.fromJson(core.Map _json) {
    if (_json.containsKey("consumerId")) {
      consumerId = _json["consumerId"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("methodName")) {
      methodName = _json["methodName"];
    }
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("quotaMetrics")) {
      quotaMetrics = (_json["quotaMetrics"] as core.List)
          .map<MetricValueSet>((value) => new MetricValueSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("quotaMode")) {
      quotaMode = _json["quotaMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consumerId != null) {
      _json["consumerId"] = consumerId;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (methodName != null) {
      _json["methodName"] = methodName;
    }
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (quotaMetrics != null) {
      _json["quotaMetrics"] =
          quotaMetrics.map((value) => (value).toJson()).toList();
    }
    if (quotaMode != null) {
      _json["quotaMode"] = quotaMode;
    }
    return _json;
  }
}

/// Represents the properties needed for quota operations.
class QuotaProperties {
  /// Quota mode for this operation.
  /// Possible string values are:
  /// - "ACQUIRE" : Decreases available quota by the cost specified for the
  /// operation.
  /// If cost is higher than available quota, operation fails and returns
  /// error.
  /// - "ACQUIRE_BEST_EFFORT" : Decreases available quota by the cost specified
  /// for the operation.
  /// If cost is higher than available quota, operation does not fail and
  /// available quota goes down to zero but it returns error.
  /// - "CHECK" : Does not change any available quota. Only checks if there is
  /// enough
  /// quota.
  /// No lock is placed on the checked tokens neither.
  /// - "RELEASE" : Increases available quota by the operation cost specified
  /// for the
  /// operation.
  core.String quotaMode;

  QuotaProperties();

  QuotaProperties.fromJson(core.Map _json) {
    if (_json.containsKey("quotaMode")) {
      quotaMode = _json["quotaMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quotaMode != null) {
      _json["quotaMode"] = quotaMode;
    }
    return _json;
  }
}

/// Represents the processing error of one Operation in the request.
class ReportError {
  /// The Operation.operation_id value from the request.
  core.String operationId;

  /// Details of the error when processing the Operation.
  Status status;

  ReportError();

  ReportError.fromJson(core.Map _json) {
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/// Contains additional info about the report operation.
class ReportInfo {
  /// The Operation.operation_id value from the request.
  core.String operationId;

  /// Quota usage info when processing the `Operation`.
  QuotaInfo quotaInfo;

  ReportInfo();

  ReportInfo.fromJson(core.Map _json) {
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("quotaInfo")) {
      quotaInfo = new QuotaInfo.fromJson(_json["quotaInfo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (quotaInfo != null) {
      _json["quotaInfo"] = (quotaInfo).toJson();
    }
    return _json;
  }
}

/// Request message for the Report method.
class ReportRequest {
  /// Operations to be reported.
  ///
  /// Typically the service should report one operation per request.
  /// Putting multiple operations into a single request is allowed, but should
  /// be used only when multiple operations are natually available at the time
  /// of the report.
  ///
  /// If multiple operations are in a single request, the total request size
  /// should be no larger than 1MB. See ReportResponse.report_errors for
  /// partial failure behavior.
  core.List<Operation> operations;

  /// Specifies which version of service config should be used to process the
  /// request.
  ///
  /// If unspecified or no matching version can be found, the
  /// latest one will be used.
  core.String serviceConfigId;

  ReportRequest();

  ReportRequest.fromJson(core.Map _json) {
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    return _json;
  }
}

/// Response message for the Report method.
class ReportResponse {
  /// Partial failures, one for each `Operation` in the request that failed
  /// processing. There are three possible combinations of the RPC status:
  ///
  /// 1. The combination of a successful RPC status and an empty `report_errors`
  ///    list indicates a complete success where all `Operations` in the
  ///    request are processed successfully.
  /// 2. The combination of a successful RPC status and a non-empty
  ///    `report_errors` list indicates a partial success where some
  ///    `Operations` in the request succeeded. Each
  ///    `Operation` that failed processing has a corresponding item
  ///    in this list.
  /// 3. A failed RPC status indicates a general non-deterministic failure.
  ///    When this happens, it's impossible to know which of the
  ///    'Operations' in the request succeeded or failed.
  core.List<ReportError> reportErrors;

  /// Quota usage for each quota release `Operation` request.
  ///
  /// Fully or partially failed quota release request may or may not be present
  /// in `report_quota_info`. For example, a failed quota release request will
  /// have the current quota usage info when precise quota library returns the
  /// info. A deadline exceeded quota request will not have quota usage info.
  ///
  /// If there is no quota release request, report_quota_info will be empty.
  core.List<ReportInfo> reportInfos;

  /// The actual config id used to process the request.
  core.String serviceConfigId;

  /// Unimplemented. The current service rollout id used to process the request.
  core.String serviceRolloutId;

  ReportResponse();

  ReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey("reportErrors")) {
      reportErrors = (_json["reportErrors"] as core.List)
          .map<ReportError>((value) => new ReportError.fromJson(value))
          .toList();
    }
    if (_json.containsKey("reportInfos")) {
      reportInfos = (_json["reportInfos"] as core.List)
          .map<ReportInfo>((value) => new ReportInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("serviceConfigId")) {
      serviceConfigId = _json["serviceConfigId"];
    }
    if (_json.containsKey("serviceRolloutId")) {
      serviceRolloutId = _json["serviceRolloutId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (reportErrors != null) {
      _json["reportErrors"] =
          reportErrors.map((value) => (value).toJson()).toList();
    }
    if (reportInfos != null) {
      _json["reportInfos"] =
          reportInfos.map((value) => (value).toJson()).toList();
    }
    if (serviceConfigId != null) {
      _json["serviceConfigId"] = serviceConfigId;
    }
    if (serviceRolloutId != null) {
      _json["serviceRolloutId"] = serviceRolloutId;
    }
    return _json;
  }
}

/// This message defines attributes for an HTTP request. If the actual
/// request is not an HTTP request, the runtime system should try to map
/// the actual request to an equivalent HTTP request.
class Request {
  /// The request authentication. May be absent for unauthenticated requests.
  /// Derived from the HTTP request `Authorization` header or equivalent.
  Auth auth;

  /// The HTTP URL fragment. No URL decoding is performed.
  core.String fragment;

  /// The HTTP request headers. If multiple headers share the same key, they
  /// must be merged according to the HTTP spec. All header keys must be
  /// lowercased, because HTTP header keys are case-insensitive.
  core.Map<core.String, core.String> headers;

  /// The HTTP request `Host` header value.
  core.String host;

  /// The unique ID for a request, which can be propagated to downstream
  /// systems. The ID should have low probability of collision
  /// within a single day for a specific service.
  core.String id;

  /// The HTTP request method, such as `GET`, `POST`.
  core.String method;

  /// The HTTP URL path.
  core.String path;

  /// The network protocol used with the request, such as "http/1.1",
  /// "spdy/3", "h2", "h2c", "webrtc", "tcp", "udp", "quic". See
  /// https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids
  /// for details.
  core.String protocol;

  /// The HTTP URL query in the format of `name1=value`&name2=value2`, as it
  /// appears in the first line of the HTTP request. No decoding is performed.
  core.String query;

  /// A special parameter for request reason. It is used by security systems
  /// to associate auditing information with a request.
  core.String reason;

  /// The HTTP URL scheme, such as `http` and `https`.
  core.String scheme;

  /// The HTTP request size in bytes. If unknown, it must be -1.
  core.String size;

  /// The timestamp when the `destination` service receives the first byte of
  /// the request.
  core.String time;

  Request();

  Request.fromJson(core.Map _json) {
    if (_json.containsKey("auth")) {
      auth = new Auth.fromJson(_json["auth"]);
    }
    if (_json.containsKey("fragment")) {
      fragment = _json["fragment"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("path")) {
      path = _json["path"];
    }
    if (_json.containsKey("protocol")) {
      protocol = _json["protocol"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
    if (_json.containsKey("scheme")) {
      scheme = _json["scheme"];
    }
    if (_json.containsKey("size")) {
      size = _json["size"];
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auth != null) {
      _json["auth"] = (auth).toJson();
    }
    if (fragment != null) {
      _json["fragment"] = fragment;
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (path != null) {
      _json["path"] = path;
    }
    if (protocol != null) {
      _json["protocol"] = protocol;
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    if (scheme != null) {
      _json["scheme"] = scheme;
    }
    if (size != null) {
      _json["size"] = size;
    }
    if (time != null) {
      _json["time"] = time;
    }
    return _json;
  }
}

/// Metadata about the request.
class RequestMetadata {
  /// The IP address of the caller.
  /// For caller from internet, this will be public IPv4 or IPv6 address.
  /// For caller from a Compute Engine VM with external IP address, this
  /// will be the VM's external IP address. For caller from a Compute
  /// Engine VM without external IP address, if the VM is in the same
  /// organization (or project) as the accessed resource, `caller_ip` will
  /// be the VM's internal IPv4 address, otherwise the `caller_ip` will be
  /// redacted to "gce-internal-ip".
  /// See https://cloud.google.com/compute/docs/vpc/ for more information.
  core.String callerIp;

  /// The network of the caller.
  /// Set only if the network host project is part of the same GCP organization
  /// (or project) as the accessed resource.
  /// See https://cloud.google.com/compute/docs/vpc/ for more information.
  /// This is a scheme-less URI full resource name. For example:
  ///
  /// "//compute.googleapis.com/projects/PROJECT_ID/global/networks/NETWORK_ID"
  core.String callerNetwork;

  /// The user agent of the caller.
  /// This information is not authenticated and should be treated accordingly.
  /// For example:
  ///
  /// +   `google-api-python-client/1.4.0`:
  ///     The request was made by the Google API client for Python.
  /// +   `Cloud SDK Command Line Tool apitools-client/1.0 gcloud/0.9.62`:
  ///     The request was made by the Google Cloud SDK CLI (gcloud).
  /// +   `AppEngine-Google; (+http://code.google.com/appengine; appid:
  /// s~my-project`:
  ///     The request was made from the `my-project` App Engine app.
  /// NOLINT
  core.String callerSuppliedUserAgent;

  /// The destination of a network activity, such as accepting a TCP connection.
  /// In a multi hop network activity, the destination represents the receiver
  /// of
  /// the last hop. Only two fields are used in this message, Peer.port and
  /// Peer.ip. These fields are optionally populated by those services utilizing
  /// the IAM condition feature.
  Peer destinationAttributes;

  /// Request attributes used in IAM condition evaluation. This field contains
  /// request attributes like request time and access levels associated with
  /// the request.
  ///
  ///
  /// To get the whole view of the attributes used in IAM
  /// condition evaluation, the user must also look into
  /// `AuditLog.authentication_info.resource_attributes`.
  Request requestAttributes;

  RequestMetadata();

  RequestMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("callerIp")) {
      callerIp = _json["callerIp"];
    }
    if (_json.containsKey("callerNetwork")) {
      callerNetwork = _json["callerNetwork"];
    }
    if (_json.containsKey("callerSuppliedUserAgent")) {
      callerSuppliedUserAgent = _json["callerSuppliedUserAgent"];
    }
    if (_json.containsKey("destinationAttributes")) {
      destinationAttributes = new Peer.fromJson(_json["destinationAttributes"]);
    }
    if (_json.containsKey("requestAttributes")) {
      requestAttributes = new Request.fromJson(_json["requestAttributes"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (callerIp != null) {
      _json["callerIp"] = callerIp;
    }
    if (callerNetwork != null) {
      _json["callerNetwork"] = callerNetwork;
    }
    if (callerSuppliedUserAgent != null) {
      _json["callerSuppliedUserAgent"] = callerSuppliedUserAgent;
    }
    if (destinationAttributes != null) {
      _json["destinationAttributes"] = (destinationAttributes).toJson();
    }
    if (requestAttributes != null) {
      _json["requestAttributes"] = (requestAttributes).toJson();
    }
    return _json;
  }
}

/// This message defines core attributes for a resource. A resource is an
/// addressable (named) entity provided by the destination service. For
/// example, a file stored on a network storage service.
class Resource {
  /// The labels or tags on the resource, such as AWS resource tags and
  /// Kubernetes resource labels.
  core.Map<core.String, core.String> labels;

  /// The stable identifier (name) of a resource on the `service`. A resource
  /// can be logically identified as "//{resource.service}/{resource.name}".
  /// The differences between a resource name and a URI are:
  ///
  /// *   Resource name is a logical identifier, independent of network
  ///     protocol and API version. For example,
  ///     `//pubsub.googleapis.com/projects/123/topics/news-feed`.
  /// *   URI often includes protocol and version information, so it can
  ///     be used directly by applications. For example,
  ///     `https://pubsub.googleapis.com/v1/projects/123/topics/news-feed`.
  ///
  /// See https://cloud.google.com/apis/design/resource_names for details.
  core.String name;

  /// The name of the service that this resource belongs to, such as
  /// `pubsub.googleapis.com`. The service may be different from the DNS
  /// hostname that actually serves the request.
  core.String service;

  /// The type of the resource. The scheme is platform-specific because
  /// different platforms define their resources differently.
  core.String type;

  Resource();

  Resource.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
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
    if (name != null) {
      _json["name"] = name;
    }
    if (service != null) {
      _json["service"] = service;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Describes a resource associated with this operation.
class ResourceInfo {
  /// The identifier of the parent of this resource instance.
  /// Must be in one of the following formats:
  ///     - “projects/<project-id or project-number>”
  ///     - “folders/<folder-id>”
  ///     - “organizations/<organization-id>”
  core.String resourceContainer;

  /// The location of the resource. If not empty, the resource will be checked
  /// against location policy. The value must be a valid zone, region or
  /// multiregion. For example: "europe-west4" or "northamerica-northeast1-a"
  core.String resourceLocation;

  /// Name of the resource. This is used for auditing purposes.
  core.String resourceName;

  ResourceInfo();

  ResourceInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resourceContainer")) {
      resourceContainer = _json["resourceContainer"];
    }
    if (_json.containsKey("resourceLocation")) {
      resourceLocation = _json["resourceLocation"];
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceContainer != null) {
      _json["resourceContainer"] = resourceContainer;
    }
    if (resourceLocation != null) {
      _json["resourceLocation"] = resourceLocation;
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    return _json;
  }
}

/// Location information about a resource.
class ResourceLocation {
  /// The locations of a resource after the execution of the operation.
  /// Requests to create or delete a location based resource must populate
  /// the 'current_locations' field and not the 'original_locations' field.
  /// For example:
  ///
  ///     "europe-west1-a"
  ///     "us-east1"
  ///     "nam3"
  core.List<core.String> currentLocations;

  /// The locations of a resource prior to the execution of the operation.
  /// Requests that mutate the resource's location must populate both the
  /// 'original_locations' as well as the 'current_locations' fields.
  /// For example:
  ///
  ///     "europe-west1-a"
  ///     "us-east1"
  ///     "nam3"
  core.List<core.String> originalLocations;

  ResourceLocation();

  ResourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey("currentLocations")) {
      currentLocations =
          (_json["currentLocations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("originalLocations")) {
      originalLocations =
          (_json["originalLocations"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currentLocations != null) {
      _json["currentLocations"] = currentLocations;
    }
    if (originalLocations != null) {
      _json["originalLocations"] = originalLocations;
    }
    return _json;
  }
}

/// Identity delegation history of an authenticated service account.
class ServiceAccountDelegationInfo {
  /// First party (Google) identity as the real authority.
  FirstPartyPrincipal firstPartyPrincipal;

  /// Third party identity as the real authority.
  ThirdPartyPrincipal thirdPartyPrincipal;

  ServiceAccountDelegationInfo();

  ServiceAccountDelegationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("firstPartyPrincipal")) {
      firstPartyPrincipal =
          new FirstPartyPrincipal.fromJson(_json["firstPartyPrincipal"]);
    }
    if (_json.containsKey("thirdPartyPrincipal")) {
      thirdPartyPrincipal =
          new ThirdPartyPrincipal.fromJson(_json["thirdPartyPrincipal"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (firstPartyPrincipal != null) {
      _json["firstPartyPrincipal"] = (firstPartyPrincipal).toJson();
    }
    if (thirdPartyPrincipal != null) {
      _json["thirdPartyPrincipal"] = (thirdPartyPrincipal).toJson();
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

/// Third party identity principal.
class ThirdPartyPrincipal {
  /// Metadata about third party identity.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> thirdPartyClaims;

  ThirdPartyPrincipal();

  ThirdPartyPrincipal.fromJson(core.Map _json) {
    if (_json.containsKey("thirdPartyClaims")) {
      thirdPartyClaims = (_json["thirdPartyClaims"] as core.Map)
          .cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (thirdPartyClaims != null) {
      _json["thirdPartyClaims"] = thirdPartyClaims;
    }
    return _json;
  }
}
