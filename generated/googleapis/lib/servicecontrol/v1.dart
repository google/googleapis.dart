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

/// Service Control API - v1
///
/// Provides admission control and telemetry reporting for services integrated
/// with Service Infrastructure.
///
/// For more information, see <https://cloud.google.com/service-control/>
///
/// Create an instance of [ServiceControlApi] to access these resources:
///
/// - [ServicesResource]
library servicecontrol.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides admission control and telemetry reporting for services integrated
/// with Service Infrastructure.
class ServiceControlApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google Service Control data
  static const servicecontrolScope =
      'https://www.googleapis.com/auth/servicecontrol';

  final commons.ApiRequester _requester;

  ServicesResource get services => ServicesResource(_requester);

  ServiceControlApi(http.Client client,
      {core.String rootUrl = 'https://servicecontrol.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesResource(commons.ApiRequester client) : _requester = client;

  /// Attempts to allocate quota for the specified consumer.
  ///
  /// It should be called before the operation is executed. This method requires
  /// the `servicemanagement.services.quota` permission on the specified
  /// service. For more information, see
  /// [Cloud IAM](https://cloud.google.com/iam). **NOTE:** The client **must**
  /// fail-open on server errors `INTERNAL`, `UNKNOWN`, `DEADLINE_EXCEEDED`, and
  /// `UNAVAILABLE`. To ensure system reliability, the server may inject these
  /// errors to prohibit any hard dependency on the quota functionality.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - Name of the service as specified in the service
  /// configuration. For example, `"pubsub.googleapis.com"`. See
  /// google.api.Service for the definition of a service name.
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
    AllocateQuotaRequest request,
    core.String serviceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/services/' +
        commons.escapeVariable('$serviceName') +
        ':allocateQuota';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AllocateQuotaResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Checks whether an operation on a service should be allowed to proceed
  /// based on the configuration of the service and related policies.
  ///
  /// It must be called before the operation is executed. If feasible, the
  /// client should cache the check results and reuse them for 60 seconds. In
  /// case of any server errors, the client should rely on the cached results
  /// for much longer time to avoid outage. WARNING: There is general 60s delay
  /// for the configuration and policy propagation, therefore callers MUST NOT
  /// depend on the `Check` method having the latest policy information. NOTE:
  /// the CheckRequest has the size limit (wire-format byte size) of 1MB. This
  /// method requires the `servicemanagement.services.check` permission on the
  /// specified service. For more information, see
  /// [Cloud IAM](https://cloud.google.com/iam).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - The service name as specified in its service
  /// configuration. For example, `"pubsub.googleapis.com"`. See
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
    CheckRequest request,
    core.String serviceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/services/' + commons.escapeVariable('$serviceName') + ':check';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CheckResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reports operation results to Google Service Control, such as logs and
  /// metrics.
  ///
  /// It should be called after an operation is completed. If feasible, the
  /// client should aggregate reporting data for up to 5 seconds to reduce API
  /// traffic. Limiting aggregation to 5 seconds is to reduce data loss during
  /// client crashes. Clients should carefully choose the aggregation time
  /// window to avoid data loss risk more than 0.01% for business and compliance
  /// reasons. NOTE: the ReportRequest has the size limit (wire-format byte
  /// size) of 1MB. This method requires the `servicemanagement.services.report`
  /// permission on the specified service. For more information, see
  /// [Google Cloud IAM](https://cloud.google.com/iam).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [serviceName] - The service name as specified in its service
  /// configuration. For example, `"pubsub.googleapis.com"`. See
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
    ReportRequest request,
    core.String serviceName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/services/' + commons.escapeVariable('$serviceName') + ':report';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ReportResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AllocateInfo {
  /// A list of label keys that were unused by the server in processing the
  /// request.
  ///
  /// Thus, for similar requests repeated in a certain future time window, the
  /// caller can choose to ignore these labels in the requests to achieve better
  /// client-side cache hits and quota aggregation for rate quota. This field is
  /// not populated for allocation quota checks.
  core.List<core.String>? unusedArguments;

  AllocateInfo({
    this.unusedArguments,
  });

  AllocateInfo.fromJson(core.Map _json)
      : this(
          unusedArguments: _json.containsKey('unusedArguments')
              ? (_json['unusedArguments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unusedArguments != null) 'unusedArguments': unusedArguments!,
      };
}

/// Request message for the AllocateQuota method.
class AllocateQuotaRequest {
  /// Operation that describes the quota allocation.
  QuotaOperation? allocateOperation;

  /// Specifies which version of service configuration should be used to process
  /// the request.
  ///
  /// If unspecified or no matching version can be found, the latest one will be
  /// used.
  core.String? serviceConfigId;

  AllocateQuotaRequest({
    this.allocateOperation,
    this.serviceConfigId,
  });

  AllocateQuotaRequest.fromJson(core.Map _json)
      : this(
          allocateOperation: _json.containsKey('allocateOperation')
              ? QuotaOperation.fromJson(_json['allocateOperation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocateOperation != null) 'allocateOperation': allocateOperation!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
      };
}

/// Response message for the AllocateQuota method.
class AllocateQuotaResponse {
  /// Indicates the decision of the allocate.
  core.List<QuotaError>? allocateErrors;

  /// WARNING: DO NOT use this field until this warning message is removed.
  AllocateInfo? allocateInfo;

  /// The same operation_id value used in the AllocateQuotaRequest.
  ///
  /// Used for logging and diagnostics purposes.
  core.String? operationId;

  /// Quota metrics to indicate the result of allocation.
  ///
  /// Depending on the request, one or more of the following metrics will be
  /// included: 1. Per quota group or per quota metric incremental usage will be
  /// specified using the following delta metric :
  /// "serviceruntime.googleapis.com/api/consumer/quota_used_count" 2. The quota
  /// limit reached condition will be specified using the following boolean
  /// metric : "serviceruntime.googleapis.com/quota/exceeded"
  core.List<MetricValueSet>? quotaMetrics;

  /// ID of the actual config used to process the request.
  core.String? serviceConfigId;

  AllocateQuotaResponse({
    this.allocateErrors,
    this.allocateInfo,
    this.operationId,
    this.quotaMetrics,
    this.serviceConfigId,
  });

  AllocateQuotaResponse.fromJson(core.Map _json)
      : this(
          allocateErrors: _json.containsKey('allocateErrors')
              ? (_json['allocateErrors'] as core.List)
                  .map((value) => QuotaError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          allocateInfo: _json.containsKey('allocateInfo')
              ? AllocateInfo.fromJson(
                  _json['allocateInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          quotaMetrics: _json.containsKey('quotaMetrics')
              ? (_json['quotaMetrics'] as core.List)
                  .map((value) => MetricValueSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocateErrors != null) 'allocateErrors': allocateErrors!,
        if (allocateInfo != null) 'allocateInfo': allocateInfo!,
        if (operationId != null) 'operationId': operationId!,
        if (quotaMetrics != null) 'quotaMetrics': quotaMetrics!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
      };
}

/// The allowed types for \[VALUE\] in a `[KEY]:[VALUE]` attribute.
class AttributeValue {
  /// A Boolean value represented by `true` or `false`.
  core.bool? boolValue;

  /// A 64-bit signed integer.
  core.String? intValue;

  /// A string up to 256 bytes long.
  TruncatableString? stringValue;

  AttributeValue({
    this.boolValue,
    this.intValue,
    this.stringValue,
  });

  AttributeValue.fromJson(core.Map _json)
      : this(
          boolValue: _json.containsKey('boolValue')
              ? _json['boolValue'] as core.bool
              : null,
          intValue: _json.containsKey('intValue')
              ? _json['intValue'] as core.String
              : null,
          stringValue: _json.containsKey('stringValue')
              ? TruncatableString.fromJson(
                  _json['stringValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (intValue != null) 'intValue': intValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// A set of attributes, each in the format `[KEY]:[VALUE]`.
class Attributes {
  /// The set of attributes.
  ///
  /// Each attribute's key can be up to 128 bytes long. The value can be a
  /// string up to 256 bytes, a signed 64-bit integer, or the Boolean values
  /// `true` and `false`. For example: "/instance_id": "my-instance"
  /// "/http/user_agent": "" "/http/request_bytes": 300 "abc.com/myattribute":
  /// true
  core.Map<core.String, AttributeValue>? attributeMap;

  /// The number of attributes that were discarded.
  ///
  /// Attributes can be discarded because their keys are too long or because
  /// there are too many attributes. If this value is 0 then all attributes are
  /// valid.
  core.int? droppedAttributesCount;

  Attributes({
    this.attributeMap,
    this.droppedAttributesCount,
  });

  Attributes.fromJson(core.Map _json)
      : this(
          attributeMap: _json.containsKey('attributeMap')
              ? (_json['attributeMap'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    AttributeValue.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          droppedAttributesCount: _json.containsKey('droppedAttributesCount')
              ? _json['droppedAttributesCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeMap != null) 'attributeMap': attributeMap!,
        if (droppedAttributesCount != null)
          'droppedAttributesCount': droppedAttributesCount!,
      };
}

/// Defines the errors to be returned in
/// google.api.servicecontrol.v1.CheckResponse.check_errors.
class CheckError {
  /// The error code.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : This is never used in `CheckResponse`.
  /// - "NOT_FOUND" : The consumer's project id, network container, or resource
  /// container was not found. Same as google.rpc.Code.NOT_FOUND.
  /// - "PERMISSION_DENIED" : The consumer doesn't have access to the specified
  /// resource. Same as google.rpc.Code.PERMISSION_DENIED.
  /// - "RESOURCE_EXHAUSTED" : Quota check failed. Same as
  /// google.rpc.Code.RESOURCE_EXHAUSTED.
  /// - "BUDGET_EXCEEDED" : Budget check failed.
  /// - "DENIAL_OF_SERVICE_DETECTED" : The consumer's request has been flagged
  /// as a DoS attack.
  /// - "LOAD_SHEDDING" : The consumer's request should be rejected in order to
  /// protect the service from being overloaded.
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
  /// consumer folder or organization.
  /// - "IP_ADDRESS_BLOCKED" : The IP address of the consumer is invalid for the
  /// specific consumer project.
  /// - "REFERER_BLOCKED" : The referer address of the consumer request is
  /// invalid for the specific consumer project.
  /// - "CLIENT_APP_BLOCKED" : The client application of the consumer request is
  /// invalid for the specific consumer project.
  /// - "API_TARGET_BLOCKED" : The API targeted by this request is invalid for
  /// the specified consumer project.
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
  /// of Beta/GA of https://cloud.google.com/vpc-service-controls, this error is
  /// no longer returned. If the security backend is unavailable, rpc
  /// UNAVAILABLE status will be returned instead. It should be ignored and
  /// should not be used to reject client requests.
  /// - "LOCATION_POLICY_BACKEND_UNAVAILABLE" : Backend server for evaluating
  /// location policy is unavailable.
  core.String? code;

  /// Free-form text providing details on the error cause of the error.
  core.String? detail;

  /// Contains public information about the check error.
  ///
  /// If available, `status.code` will be non zero and client can propagate it
  /// out as public error.
  Status? status;

  /// Subject to whom this error applies.
  ///
  /// See the specific code enum for more details on this field. For example: -
  /// "project:" - "folder:" - "organization:"
  core.String? subject;

  CheckError({
    this.code,
    this.detail,
    this.status,
    this.subject,
  });

  CheckError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          subject: _json.containsKey('subject')
              ? _json['subject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (detail != null) 'detail': detail!,
        if (status != null) 'status': status!,
        if (subject != null) 'subject': subject!,
      };
}

/// Contains additional information about the check operation.
class CheckInfo {
  /// Consumer info of this check.
  ConsumerInfo? consumerInfo;

  /// A list of fields and label keys that are ignored by the server.
  ///
  /// The client doesn't need to send them for following requests to improve
  /// performance and allow better aggregation.
  core.List<core.String>? unusedArguments;

  CheckInfo({
    this.consumerInfo,
    this.unusedArguments,
  });

  CheckInfo.fromJson(core.Map _json)
      : this(
          consumerInfo: _json.containsKey('consumerInfo')
              ? ConsumerInfo.fromJson(
                  _json['consumerInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          unusedArguments: _json.containsKey('unusedArguments')
              ? (_json['unusedArguments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerInfo != null) 'consumerInfo': consumerInfo!,
        if (unusedArguments != null) 'unusedArguments': unusedArguments!,
      };
}

/// Request message for the Check method.
class CheckRequest {
  /// The operation to be checked.
  Operation? operation;

  /// Requests the project settings to be returned as part of the check
  /// response.
  core.bool? requestProjectSettings;

  /// Specifies which version of service configuration should be used to process
  /// the request.
  ///
  /// If unspecified or no matching version can be found, the latest one will be
  /// used.
  core.String? serviceConfigId;

  /// Indicates if service activation check should be skipped for this request.
  ///
  /// Default behavior is to perform the check and apply relevant quota.
  /// WARNING: Setting this flag to "true" will disable quota enforcement.
  core.bool? skipActivationCheck;

  CheckRequest({
    this.operation,
    this.requestProjectSettings,
    this.serviceConfigId,
    this.skipActivationCheck,
  });

  CheckRequest.fromJson(core.Map _json)
      : this(
          operation: _json.containsKey('operation')
              ? Operation.fromJson(
                  _json['operation'] as core.Map<core.String, core.dynamic>)
              : null,
          requestProjectSettings: _json.containsKey('requestProjectSettings')
              ? _json['requestProjectSettings'] as core.bool
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
          skipActivationCheck: _json.containsKey('skipActivationCheck')
              ? _json['skipActivationCheck'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
        if (requestProjectSettings != null)
          'requestProjectSettings': requestProjectSettings!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
        if (skipActivationCheck != null)
          'skipActivationCheck': skipActivationCheck!,
      };
}

/// Response message for the Check method.
class CheckResponse {
  /// Indicate the decision of the check.
  ///
  /// If no check errors are present, the service should process the operation.
  /// Otherwise the service should use the list of errors to determine the
  /// appropriate action.
  core.List<CheckError>? checkErrors;

  /// Feedback data returned from the server during processing a Check request.
  CheckInfo? checkInfo;

  /// The same operation_id value used in the CheckRequest.
  ///
  /// Used for logging and diagnostics purposes.
  core.String? operationId;

  /// Quota information for the check request associated with this response.
  QuotaInfo? quotaInfo;

  /// The actual config id used to process the request.
  core.String? serviceConfigId;

  /// The current service rollout id used to process the request.
  core.String? serviceRolloutId;

  CheckResponse({
    this.checkErrors,
    this.checkInfo,
    this.operationId,
    this.quotaInfo,
    this.serviceConfigId,
    this.serviceRolloutId,
  });

  CheckResponse.fromJson(core.Map _json)
      : this(
          checkErrors: _json.containsKey('checkErrors')
              ? (_json['checkErrors'] as core.List)
                  .map((value) => CheckError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          checkInfo: _json.containsKey('checkInfo')
              ? CheckInfo.fromJson(
                  _json['checkInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          quotaInfo: _json.containsKey('quotaInfo')
              ? QuotaInfo.fromJson(
                  _json['quotaInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
          serviceRolloutId: _json.containsKey('serviceRolloutId')
              ? _json['serviceRolloutId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checkErrors != null) 'checkErrors': checkErrors!,
        if (checkInfo != null) 'checkInfo': checkInfo!,
        if (operationId != null) 'operationId': operationId!,
        if (quotaInfo != null) 'quotaInfo': quotaInfo!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
        if (serviceRolloutId != null) 'serviceRolloutId': serviceRolloutId!,
      };
}

/// `ConsumerInfo` provides information about the consumer.
class ConsumerInfo {
  /// The consumer identity number, can be Google cloud project number, folder
  /// number or organization number e.g. 1234567890.
  ///
  /// A value of 0 indicates no consumer number is found.
  core.String? consumerNumber;

  /// The Google cloud project number, e.g. 1234567890.
  ///
  /// A value of 0 indicates no project number is found. NOTE: This field is
  /// deprecated after Chemist support flexible consumer id. New code should not
  /// depend on this field anymore.
  core.String? projectNumber;

  /// The type of the consumer which should have been defined in
  /// [Google Resource Manager](https://cloud.google.com/resource-manager/).
  /// Possible string values are:
  /// - "CONSUMER_TYPE_UNSPECIFIED" : This is never used.
  /// - "PROJECT" : The consumer is a Google Cloud Project.
  /// - "FOLDER" : The consumer is a Google Cloud Folder.
  /// - "ORGANIZATION" : The consumer is a Google Cloud Organization.
  /// - "SERVICE_SPECIFIC" : Service-specific resource container which is
  /// defined by the service producer to offer their users the ability to manage
  /// service control functionalities at a finer level of granularity than the
  /// PROJECT.
  core.String? type;

  ConsumerInfo({
    this.consumerNumber,
    this.projectNumber,
    this.type,
  });

  ConsumerInfo.fromJson(core.Map _json)
      : this(
          consumerNumber: _json.containsKey('consumerNumber')
              ? _json['consumerNumber'] as core.String
              : null,
          projectNumber: _json.containsKey('projectNumber')
              ? _json['projectNumber'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerNumber != null) 'consumerNumber': consumerNumber!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (type != null) 'type': type!,
      };
}

/// Distribution represents a frequency distribution of double-valued sample
/// points.
///
/// It contains the size of the population of sample points plus additional
/// optional information: * the arithmetic mean of the samples * the minimum and
/// maximum of the samples * the sum-squared-deviation of the samples, used to
/// compute variance * a histogram of the values of the sample points
class Distribution {
  /// The number of samples in each histogram bucket.
  ///
  /// \`bucket_counts\` are optional. If present, they must sum to the \`count\`
  /// value. The buckets are defined below in \`bucket_option\`. There are N
  /// buckets. \`bucket_counts\[0\]\` is the number of samples in the underflow
  /// bucket. \`bucket_counts\[1\]\` to \`bucket_counts\[N-1\]\` are the numbers
  /// of samples in each of the finite buckets. And \`bucket_counts\[N\] is the
  /// number of samples in the overflow bucket. See the comments of
  /// \`bucket_option\` below for more details. Any suffix of trailing zeros may
  /// be omitted.
  core.List<core.String>? bucketCounts;

  /// The total number of samples in the distribution.
  ///
  /// Must be \>= 0.
  core.String? count;

  /// Example points.
  ///
  /// Must be in increasing order of `value` field.
  core.List<Exemplar>? exemplars;

  /// Buckets with arbitrary user-provided width.
  ExplicitBuckets? explicitBuckets;

  /// Buckets with exponentially growing width.
  ExponentialBuckets? exponentialBuckets;

  /// Buckets with constant width.
  LinearBuckets? linearBuckets;

  /// The maximum of the population of values.
  ///
  /// Ignored if `count` is zero.
  core.double? maximum;

  /// The arithmetic mean of the samples in the distribution.
  ///
  /// If `count` is zero then this field must be zero.
  core.double? mean;

  /// The minimum of the population of values.
  ///
  /// Ignored if `count` is zero.
  core.double? minimum;

  /// The sum of squared deviations from the mean: Sum\[i=1..count\]((x_i -
  /// mean)^2) where each x_i is a sample values.
  ///
  /// If `count` is zero then this field must be zero, otherwise validation of
  /// the request fails.
  core.double? sumOfSquaredDeviation;

  Distribution({
    this.bucketCounts,
    this.count,
    this.exemplars,
    this.explicitBuckets,
    this.exponentialBuckets,
    this.linearBuckets,
    this.maximum,
    this.mean,
    this.minimum,
    this.sumOfSquaredDeviation,
  });

  Distribution.fromJson(core.Map _json)
      : this(
          bucketCounts: _json.containsKey('bucketCounts')
              ? (_json['bucketCounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          exemplars: _json.containsKey('exemplars')
              ? (_json['exemplars'] as core.List)
                  .map((value) => Exemplar.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          explicitBuckets: _json.containsKey('explicitBuckets')
              ? ExplicitBuckets.fromJson(_json['explicitBuckets']
                  as core.Map<core.String, core.dynamic>)
              : null,
          exponentialBuckets: _json.containsKey('exponentialBuckets')
              ? ExponentialBuckets.fromJson(_json['exponentialBuckets']
                  as core.Map<core.String, core.dynamic>)
              : null,
          linearBuckets: _json.containsKey('linearBuckets')
              ? LinearBuckets.fromJson(
                  _json['linearBuckets'] as core.Map<core.String, core.dynamic>)
              : null,
          maximum: _json.containsKey('maximum')
              ? (_json['maximum'] as core.num).toDouble()
              : null,
          mean: _json.containsKey('mean')
              ? (_json['mean'] as core.num).toDouble()
              : null,
          minimum: _json.containsKey('minimum')
              ? (_json['minimum'] as core.num).toDouble()
              : null,
          sumOfSquaredDeviation: _json.containsKey('sumOfSquaredDeviation')
              ? (_json['sumOfSquaredDeviation'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketCounts != null) 'bucketCounts': bucketCounts!,
        if (count != null) 'count': count!,
        if (exemplars != null) 'exemplars': exemplars!,
        if (explicitBuckets != null) 'explicitBuckets': explicitBuckets!,
        if (exponentialBuckets != null)
          'exponentialBuckets': exponentialBuckets!,
        if (linearBuckets != null) 'linearBuckets': linearBuckets!,
        if (maximum != null) 'maximum': maximum!,
        if (mean != null) 'mean': mean!,
        if (minimum != null) 'minimum': minimum!,
        if (sumOfSquaredDeviation != null)
          'sumOfSquaredDeviation': sumOfSquaredDeviation!,
      };
}

/// Exemplars are example points that may be used to annotate aggregated
/// distribution values.
///
/// They are metadata that gives information about a particular value added to a
/// Distribution bucket, such as a trace ID that was active when a value was
/// added. They may contain further information, such as a example values and
/// timestamps, origin, etc.
class Exemplar {
  /// Contextual information about the example value.
  ///
  /// Examples are: Trace: type.googleapis.com/google.monitoring.v3.SpanContext
  /// Literal string: type.googleapis.com/google.protobuf.StringValue Labels
  /// dropped during aggregation:
  /// type.googleapis.com/google.monitoring.v3.DroppedLabels There may be only a
  /// single attachment of any given message type in a single exemplar, and this
  /// is enforced by the system.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? attachments;

  /// The observation (sampling) time of the above value.
  core.String? timestamp;

  /// Value of the exemplar point.
  ///
  /// This value determines to which bucket the exemplar belongs.
  core.double? value;

  Exemplar({
    this.attachments,
    this.timestamp,
    this.value,
  });

  Exemplar.fromJson(core.Map _json)
      : this(
          attachments: _json.containsKey('attachments')
              ? (_json['attachments'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachments != null) 'attachments': attachments!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (value != null) 'value': value!,
      };
}

/// Describing buckets with arbitrary user-provided width.
class ExplicitBuckets {
  /// 'bound' is a list of strictly increasing boundaries between buckets.
  ///
  /// Note that a list of length N-1 defines N buckets because of fenceposting.
  /// See comments on `bucket_options` for details. The i'th finite bucket
  /// covers the interval \[bound\[i-1\], bound\[i\]) where i ranges from 1 to
  /// bound_size() - 1. Note that there are no finite buckets at all if 'bound'
  /// only contains a single element; in that special case the single bound
  /// defines the boundary between the underflow and overflow buckets. bucket
  /// number lower bound upper bound i == 0 (underflow) -inf bound\[i\] 0 \< i
  /// \< bound_size() bound\[i-1\] bound\[i\] i == bound_size() (overflow)
  /// bound\[i-1\] +inf
  core.List<core.double>? bounds;

  ExplicitBuckets({
    this.bounds,
  });

  ExplicitBuckets.fromJson(core.Map _json)
      : this(
          bounds: _json.containsKey('bounds')
              ? (_json['bounds'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bounds != null) 'bounds': bounds!,
      };
}

/// Describing buckets with exponentially growing width.
class ExponentialBuckets {
  /// The i'th exponential bucket covers the interval \[scale *
  /// growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to
  /// num_finite_buckets inclusive.
  ///
  /// Must be larger than 1.0.
  core.double? growthFactor;

  /// The number of finite buckets.
  ///
  /// With the underflow and overflow buckets, the total number of buckets is
  /// `num_finite_buckets` + 2. See comments on `bucket_options` for details.
  core.int? numFiniteBuckets;

  /// The i'th exponential bucket covers the interval \[scale *
  /// growth_factor^(i-1), scale * growth_factor^i) where i ranges from 1 to
  /// num_finite_buckets inclusive.
  ///
  /// Must be \> 0.
  core.double? scale;

  ExponentialBuckets({
    this.growthFactor,
    this.numFiniteBuckets,
    this.scale,
  });

  ExponentialBuckets.fromJson(core.Map _json)
      : this(
          growthFactor: _json.containsKey('growthFactor')
              ? (_json['growthFactor'] as core.num).toDouble()
              : null,
          numFiniteBuckets: _json.containsKey('numFiniteBuckets')
              ? _json['numFiniteBuckets'] as core.int
              : null,
          scale: _json.containsKey('scale')
              ? (_json['scale'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (growthFactor != null) 'growthFactor': growthFactor!,
        if (numFiniteBuckets != null) 'numFiniteBuckets': numFiniteBuckets!,
        if (scale != null) 'scale': scale!,
      };
}

/// A common proto for logging HTTP requests.
///
/// Only contains semantics defined by the HTTP specification. Product-specific
/// logging information MUST be defined in a separate message.
class HttpRequest {
  /// The number of HTTP response bytes inserted into cache.
  ///
  /// Set only when a cache fill was attempted.
  core.String? cacheFillBytes;

  /// Whether or not an entity was served from cache (with or without
  /// validation).
  core.bool? cacheHit;

  /// Whether or not a cache lookup was attempted.
  core.bool? cacheLookup;

  /// Whether or not the response was validated with the origin server before
  /// being served from cache.
  ///
  /// This field is only meaningful if `cache_hit` is True.
  core.bool? cacheValidatedWithOriginServer;

  /// The request processing latency on the server, from the time the request
  /// was received until the response was sent.
  core.String? latency;

  /// Protocol used for the request.
  ///
  /// Examples: "HTTP/1.1", "HTTP/2", "websocket"
  core.String? protocol;

  /// The referer URL of the request, as defined in
  /// [HTTP/1.1 Header Field Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
  core.String? referer;

  /// The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
  ///
  /// Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
  core.String? remoteIp;

  /// The request method.
  ///
  /// Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
  core.String? requestMethod;

  /// The size of the HTTP request message in bytes, including the request
  /// headers and the request body.
  core.String? requestSize;

  /// The scheme (http, https), the host name, the path, and the query portion
  /// of the URL that was requested.
  ///
  /// Example: `"http://example.com/some/info?color=red"`.
  core.String? requestUrl;

  /// The size of the HTTP response message sent back to the client, in bytes,
  /// including the response headers and the response body.
  core.String? responseSize;

  /// The IP address (IPv4 or IPv6) of the origin server that the request was
  /// sent to.
  core.String? serverIp;

  /// The response code indicating the status of the response.
  ///
  /// Examples: 200, 404.
  core.int? status;

  /// The user agent sent by the client.
  ///
  /// Example: `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
  /// CLR 1.0.3705)"`.
  core.String? userAgent;

  HttpRequest({
    this.cacheFillBytes,
    this.cacheHit,
    this.cacheLookup,
    this.cacheValidatedWithOriginServer,
    this.latency,
    this.protocol,
    this.referer,
    this.remoteIp,
    this.requestMethod,
    this.requestSize,
    this.requestUrl,
    this.responseSize,
    this.serverIp,
    this.status,
    this.userAgent,
  });

  HttpRequest.fromJson(core.Map _json)
      : this(
          cacheFillBytes: _json.containsKey('cacheFillBytes')
              ? _json['cacheFillBytes'] as core.String
              : null,
          cacheHit: _json.containsKey('cacheHit')
              ? _json['cacheHit'] as core.bool
              : null,
          cacheLookup: _json.containsKey('cacheLookup')
              ? _json['cacheLookup'] as core.bool
              : null,
          cacheValidatedWithOriginServer:
              _json.containsKey('cacheValidatedWithOriginServer')
                  ? _json['cacheValidatedWithOriginServer'] as core.bool
                  : null,
          latency: _json.containsKey('latency')
              ? _json['latency'] as core.String
              : null,
          protocol: _json.containsKey('protocol')
              ? _json['protocol'] as core.String
              : null,
          referer: _json.containsKey('referer')
              ? _json['referer'] as core.String
              : null,
          remoteIp: _json.containsKey('remoteIp')
              ? _json['remoteIp'] as core.String
              : null,
          requestMethod: _json.containsKey('requestMethod')
              ? _json['requestMethod'] as core.String
              : null,
          requestSize: _json.containsKey('requestSize')
              ? _json['requestSize'] as core.String
              : null,
          requestUrl: _json.containsKey('requestUrl')
              ? _json['requestUrl'] as core.String
              : null,
          responseSize: _json.containsKey('responseSize')
              ? _json['responseSize'] as core.String
              : null,
          serverIp: _json.containsKey('serverIp')
              ? _json['serverIp'] as core.String
              : null,
          status:
              _json.containsKey('status') ? _json['status'] as core.int : null,
          userAgent: _json.containsKey('userAgent')
              ? _json['userAgent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cacheFillBytes != null) 'cacheFillBytes': cacheFillBytes!,
        if (cacheHit != null) 'cacheHit': cacheHit!,
        if (cacheLookup != null) 'cacheLookup': cacheLookup!,
        if (cacheValidatedWithOriginServer != null)
          'cacheValidatedWithOriginServer': cacheValidatedWithOriginServer!,
        if (latency != null) 'latency': latency!,
        if (protocol != null) 'protocol': protocol!,
        if (referer != null) 'referer': referer!,
        if (remoteIp != null) 'remoteIp': remoteIp!,
        if (requestMethod != null) 'requestMethod': requestMethod!,
        if (requestSize != null) 'requestSize': requestSize!,
        if (requestUrl != null) 'requestUrl': requestUrl!,
        if (responseSize != null) 'responseSize': responseSize!,
        if (serverIp != null) 'serverIp': serverIp!,
        if (status != null) 'status': status!,
        if (userAgent != null) 'userAgent': userAgent!,
      };
}

/// Describing buckets with constant width.
class LinearBuckets {
  /// The number of finite buckets.
  ///
  /// With the underflow and overflow buckets, the total number of buckets is
  /// `num_finite_buckets` + 2. See comments on `bucket_options` for details.
  core.int? numFiniteBuckets;

  /// The i'th linear bucket covers the interval \[offset + (i-1) * width,
  /// offset + i * width) where i ranges from 1 to num_finite_buckets,
  /// inclusive.
  core.double? offset;

  /// The i'th linear bucket covers the interval \[offset + (i-1) * width,
  /// offset + i * width) where i ranges from 1 to num_finite_buckets,
  /// inclusive.
  ///
  /// Must be strictly positive.
  core.double? width;

  LinearBuckets({
    this.numFiniteBuckets,
    this.offset,
    this.width,
  });

  LinearBuckets.fromJson(core.Map _json)
      : this(
          numFiniteBuckets: _json.containsKey('numFiniteBuckets')
              ? _json['numFiniteBuckets'] as core.int
              : null,
          offset: _json.containsKey('offset')
              ? (_json['offset'] as core.num).toDouble()
              : null,
          width: _json.containsKey('width')
              ? (_json['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numFiniteBuckets != null) 'numFiniteBuckets': numFiniteBuckets!,
        if (offset != null) 'offset': offset!,
        if (width != null) 'width': width!,
      };
}

/// An individual log entry.
class LogEntry {
  /// Information about the HTTP request associated with this log entry, if
  /// applicable.
  ///
  /// Optional.
  HttpRequest? httpRequest;

  /// A unique ID for the log entry used for deduplication.
  ///
  /// If omitted, the implementation will generate one based on operation_id.
  core.String? insertId;

  /// A set of user-defined (key, value) data that provides additional
  /// information about the log entry.
  core.Map<core.String, core.String>? labels;

  /// The log to which this log entry belongs.
  ///
  /// Examples: `"syslog"`, `"book_log"`.
  ///
  /// Required.
  core.String? name;

  /// Information about an operation associated with the log entry, if
  /// applicable.
  ///
  /// Optional.
  LogEntryOperation? operation;

  /// The log entry payload, represented as a protocol buffer that is expressed
  /// as a JSON object.
  ///
  /// The only accepted type currently is AuditLog.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? protoPayload;

  /// The severity of the log entry.
  ///
  /// The default value is `LogSeverity.DEFAULT`.
  /// Possible string values are:
  /// - "DEFAULT" : (0) The log entry has no assigned severity level.
  /// - "DEBUG" : (100) Debug or trace information.
  /// - "INFO" : (200) Routine information, such as ongoing status or
  /// performance.
  /// - "NOTICE" : (300) Normal but significant events, such as start up, shut
  /// down, or a configuration change.
  /// - "WARNING" : (400) Warning events might cause problems.
  /// - "ERROR" : (500) Error events are likely to cause problems.
  /// - "CRITICAL" : (600) Critical events cause more severe problems or
  /// outages.
  /// - "ALERT" : (700) A person must take an action immediately.
  /// - "EMERGENCY" : (800) One or more systems are unusable.
  core.String? severity;

  /// Source code location information associated with the log entry, if any.
  ///
  /// Optional.
  LogEntrySourceLocation? sourceLocation;

  /// The log entry payload, represented as a structure that is expressed as a
  /// JSON object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? structPayload;

  /// The log entry payload, represented as a Unicode string (UTF-8).
  core.String? textPayload;

  /// The time the event described by the log entry occurred.
  ///
  /// If omitted, defaults to operation start time.
  core.String? timestamp;

  /// Resource name of the trace associated with the log entry, if any.
  ///
  /// If this field contains a relative resource name, you can assume the name
  /// is relative to `//tracing.googleapis.com`. Example:
  /// `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`
  ///
  /// Optional.
  core.String? trace;

  LogEntry({
    this.httpRequest,
    this.insertId,
    this.labels,
    this.name,
    this.operation,
    this.protoPayload,
    this.severity,
    this.sourceLocation,
    this.structPayload,
    this.textPayload,
    this.timestamp,
    this.trace,
  });

  LogEntry.fromJson(core.Map _json)
      : this(
          httpRequest: _json.containsKey('httpRequest')
              ? HttpRequest.fromJson(
                  _json['httpRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          insertId: _json.containsKey('insertId')
              ? _json['insertId'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operation: _json.containsKey('operation')
              ? LogEntryOperation.fromJson(
                  _json['operation'] as core.Map<core.String, core.dynamic>)
              : null,
          protoPayload: _json.containsKey('protoPayload')
              ? _json['protoPayload'] as core.Map<core.String, core.dynamic>
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          sourceLocation: _json.containsKey('sourceLocation')
              ? LogEntrySourceLocation.fromJson(_json['sourceLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          structPayload: _json.containsKey('structPayload')
              ? _json['structPayload'] as core.Map<core.String, core.dynamic>
              : null,
          textPayload: _json.containsKey('textPayload')
              ? _json['textPayload'] as core.String
              : null,
          timestamp: _json.containsKey('timestamp')
              ? _json['timestamp'] as core.String
              : null,
          trace:
              _json.containsKey('trace') ? _json['trace'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (httpRequest != null) 'httpRequest': httpRequest!,
        if (insertId != null) 'insertId': insertId!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (operation != null) 'operation': operation!,
        if (protoPayload != null) 'protoPayload': protoPayload!,
        if (severity != null) 'severity': severity!,
        if (sourceLocation != null) 'sourceLocation': sourceLocation!,
        if (structPayload != null) 'structPayload': structPayload!,
        if (textPayload != null) 'textPayload': textPayload!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (trace != null) 'trace': trace!,
      };
}

/// Additional information about a potentially long-running operation with which
/// a log entry is associated.
class LogEntryOperation {
  /// Set this to True if this is the first log entry in the operation.
  ///
  /// Optional.
  core.bool? first;

  /// An arbitrary operation identifier.
  ///
  /// Log entries with the same identifier are assumed to be part of the same
  /// operation.
  ///
  /// Optional.
  core.String? id;

  /// Set this to True if this is the last log entry in the operation.
  ///
  /// Optional.
  core.bool? last;

  /// An arbitrary producer identifier.
  ///
  /// The combination of `id` and `producer` must be globally unique. Examples
  /// for `producer`: `"MyDivision.MyBigCompany.com"`,
  /// `"github.com/MyProject/MyApplication"`.
  ///
  /// Optional.
  core.String? producer;

  LogEntryOperation({
    this.first,
    this.id,
    this.last,
    this.producer,
  });

  LogEntryOperation.fromJson(core.Map _json)
      : this(
          first:
              _json.containsKey('first') ? _json['first'] as core.bool : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          last: _json.containsKey('last') ? _json['last'] as core.bool : null,
          producer: _json.containsKey('producer')
              ? _json['producer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (first != null) 'first': first!,
        if (id != null) 'id': id!,
        if (last != null) 'last': last!,
        if (producer != null) 'producer': producer!,
      };
}

/// Additional information about the source code location that produced the log
/// entry.
class LogEntrySourceLocation {
  /// Source file name.
  ///
  /// Depending on the runtime environment, this might be a simple name or a
  /// fully-qualified name.
  ///
  /// Optional.
  core.String? file;

  /// Human-readable name of the function or method being invoked, with optional
  /// context such as the class or package name.
  ///
  /// This information may be used in contexts such as the logs viewer, where a
  /// file and line number are less meaningful. The format can vary by language.
  /// For example: `qual.if.ied.Class.method` (Java), `dir/package.func` (Go),
  /// `function` (Python).
  ///
  /// Optional.
  core.String? function;

  /// Line within the source file.
  ///
  /// 1-based; 0 indicates no line number available.
  ///
  /// Optional.
  core.String? line;

  LogEntrySourceLocation({
    this.file,
    this.function,
    this.line,
  });

  LogEntrySourceLocation.fromJson(core.Map _json)
      : this(
          file: _json.containsKey('file') ? _json['file'] as core.String : null,
          function: _json.containsKey('function')
              ? _json['function'] as core.String
              : null,
          line: _json.containsKey('line') ? _json['line'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (file != null) 'file': file!,
        if (function != null) 'function': function!,
        if (line != null) 'line': line!,
      };
}

/// Represents a single metric value.
class MetricValue {
  /// A boolean value.
  core.bool? boolValue;

  /// A distribution value.
  Distribution? distributionValue;

  /// A double precision floating point value.
  core.double? doubleValue;

  /// The end of the time period over which this metric value's measurement
  /// applies.
  ///
  /// If not specified, google.api.servicecontrol.v1.Operation.end_time will be
  /// used.
  core.String? endTime;

  /// A signed 64-bit integer value.
  core.String? int64Value;

  /// The labels describing the metric value.
  ///
  /// See comments on google.api.servicecontrol.v1.Operation.labels for the
  /// overriding relationship. Note that this map must not contain monitored
  /// resource labels.
  core.Map<core.String, core.String>? labels;

  /// A money value.
  Money? moneyValue;

  /// The start of the time period over which this metric value's measurement
  /// applies.
  ///
  /// The time period has different semantics for different metric types
  /// (cumulative, delta, and gauge). See the metric definition documentation in
  /// the service configuration for details. If not specified,
  /// google.api.servicecontrol.v1.Operation.start_time will be used.
  core.String? startTime;

  /// A text string value.
  core.String? stringValue;

  MetricValue({
    this.boolValue,
    this.distributionValue,
    this.doubleValue,
    this.endTime,
    this.int64Value,
    this.labels,
    this.moneyValue,
    this.startTime,
    this.stringValue,
  });

  MetricValue.fromJson(core.Map _json)
      : this(
          boolValue: _json.containsKey('boolValue')
              ? _json['boolValue'] as core.bool
              : null,
          distributionValue: _json.containsKey('distributionValue')
              ? Distribution.fromJson(_json['distributionValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          int64Value: _json.containsKey('int64Value')
              ? _json['int64Value'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          moneyValue: _json.containsKey('moneyValue')
              ? Money.fromJson(
                  _json['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (distributionValue != null) 'distributionValue': distributionValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (endTime != null) 'endTime': endTime!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (labels != null) 'labels': labels!,
        if (moneyValue != null) 'moneyValue': moneyValue!,
        if (startTime != null) 'startTime': startTime!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// Represents a set of metric values in the same metric.
///
/// Each metric value in the set should have a unique combination of start time,
/// end time, and label values.
class MetricValueSet {
  /// The metric name defined in the service configuration.
  core.String? metricName;

  /// The values in this metric.
  core.List<MetricValue>? metricValues;

  MetricValueSet({
    this.metricName,
    this.metricValues,
  });

  MetricValueSet.fromJson(core.Map _json)
      : this(
          metricName: _json.containsKey('metricName')
              ? _json['metricName'] as core.String
              : null,
          metricValues: _json.containsKey('metricValues')
              ? (_json['metricValues'] as core.List)
                  .map((value) => MetricValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricName != null) 'metricName': metricName!,
        if (metricValues != null) 'metricValues': metricValues!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Represents information regarding an operation.
class Operation {
  /// Identity of the consumer who is using the service.
  ///
  /// This field should be filled in for the operations initiated by a consumer,
  /// but not for service-initiated operations that are not related to a
  /// specific consumer. - This can be in one of the following formats: -
  /// project:PROJECT_ID, - project`_`number:PROJECT_NUMBER, -
  /// projects/PROJECT_ID or PROJECT_NUMBER, - folders/FOLDER_NUMBER, -
  /// organizations/ORGANIZATION_NUMBER, - api`_`key:API_KEY.
  core.String? consumerId;

  /// End time of the operation.
  ///
  /// Required when the operation is used in ServiceController.Report, but
  /// optional when the operation is used in ServiceController.Check.
  core.String? endTime;

  /// DO NOT USE.
  ///
  /// This is an experimental field.
  /// Possible string values are:
  /// - "LOW" : Allows data caching, batching, and aggregation. It provides
  /// higher performance with higher data loss risk.
  /// - "HIGH" : Disables data aggregation to minimize data loss. It is for
  /// operations that contains significant monetary value or audit trail. This
  /// feature only applies to the client libraries.
  /// - "DEBUG" : Deprecated. Do not use. Disables data aggregation and enables
  /// additional validation logic. It should only be used during the onboarding
  /// process. It is only available to Google internal services, and the service
  /// must be approved by chemist-dev@google.com in order to use this level.
  core.String? importance;

  /// Labels describing the operation.
  ///
  /// Only the following labels are allowed: - Labels describing monitored
  /// resources as defined in the service configuration. - Default labels of
  /// metric values. When specified, labels defined in the metric value override
  /// these default. - The following labels defined by Google Cloud Platform: -
  /// `cloud.googleapis.com/location` describing the location where the
  /// operation happened, - `servicecontrol.googleapis.com/user_agent`
  /// describing the user agent of the API request, -
  /// `servicecontrol.googleapis.com/service_agent` describing the service used
  /// to handle the API request (e.g. ESP), -
  /// `servicecontrol.googleapis.com/platform` describing the platform where the
  /// API is served, such as App Engine, Compute Engine, or Kubernetes Engine.
  core.Map<core.String, core.String>? labels;

  /// Represents information to be logged.
  core.List<LogEntry>? logEntries;

  /// Represents information about this operation.
  ///
  /// Each MetricValueSet corresponds to a metric defined in the service
  /// configuration. The data type used in the MetricValueSet must agree with
  /// the data type specified in the metric definition. Within a single
  /// operation, it is not allowed to have more than one MetricValue instances
  /// that have the same metric names and identical label value combinations. If
  /// a request has such duplicated MetricValue instances, the entire request is
  /// rejected with an invalid argument error.
  core.List<MetricValueSet>? metricValueSets;

  /// Identity of the operation.
  ///
  /// This must be unique within the scope of the service that generated the
  /// operation. If the service calls Check() and Report() on the same
  /// operation, the two calls should carry the same id. UUID version 4 is
  /// recommended, though not required. In scenarios where an operation is
  /// computed from existing information and an idempotent id is desirable for
  /// deduplication purpose, UUID version 5 is recommended. See RFC 4122 for
  /// details.
  core.String? operationId;

  /// Fully qualified name of the operation.
  ///
  /// Reserved for future use.
  core.String? operationName;

  /// Represents the properties needed for quota check.
  ///
  /// Applicable only if this operation is for a quota check request. If this is
  /// not specified, no quota check will be performed.
  QuotaProperties? quotaProperties;

  /// The resources that are involved in the operation.
  ///
  /// The maximum supported number of entries in this field is 100.
  core.List<ResourceInfo>? resources;

  /// Start time of the operation.
  ///
  /// Required.
  core.String? startTime;

  /// A list of Cloud Trace spans.
  ///
  /// The span names shall contain the id of the destination project which can
  /// be either the produce or the consumer project.
  ///
  /// Unimplemented.
  core.List<TraceSpan>? traceSpans;

  /// Private Preview.
  ///
  /// This feature is only available for approved services. User defined labels
  /// for the resource that this operation is associated with.
  core.Map<core.String, core.String>? userLabels;

  Operation({
    this.consumerId,
    this.endTime,
    this.importance,
    this.labels,
    this.logEntries,
    this.metricValueSets,
    this.operationId,
    this.operationName,
    this.quotaProperties,
    this.resources,
    this.startTime,
    this.traceSpans,
    this.userLabels,
  });

  Operation.fromJson(core.Map _json)
      : this(
          consumerId: _json.containsKey('consumerId')
              ? _json['consumerId'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          importance: _json.containsKey('importance')
              ? _json['importance'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          logEntries: _json.containsKey('logEntries')
              ? (_json['logEntries'] as core.List)
                  .map((value) => LogEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metricValueSets: _json.containsKey('metricValueSets')
              ? (_json['metricValueSets'] as core.List)
                  .map((value) => MetricValueSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          operationName: _json.containsKey('operationName')
              ? _json['operationName'] as core.String
              : null,
          quotaProperties: _json.containsKey('quotaProperties')
              ? QuotaProperties.fromJson(_json['quotaProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) => ResourceInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          traceSpans: _json.containsKey('traceSpans')
              ? (_json['traceSpans'] as core.List)
                  .map((value) => TraceSpan.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          userLabels: _json.containsKey('userLabels')
              ? (_json['userLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerId != null) 'consumerId': consumerId!,
        if (endTime != null) 'endTime': endTime!,
        if (importance != null) 'importance': importance!,
        if (labels != null) 'labels': labels!,
        if (logEntries != null) 'logEntries': logEntries!,
        if (metricValueSets != null) 'metricValueSets': metricValueSets!,
        if (operationId != null) 'operationId': operationId!,
        if (operationName != null) 'operationName': operationName!,
        if (quotaProperties != null) 'quotaProperties': quotaProperties!,
        if (resources != null) 'resources': resources!,
        if (startTime != null) 'startTime': startTime!,
        if (traceSpans != null) 'traceSpans': traceSpans!,
        if (userLabels != null) 'userLabels': userLabels!,
      };
}

/// Represents error information for QuotaOperation.
class QuotaError {
  /// Error code.
  /// Possible string values are:
  /// - "UNSPECIFIED" : This is never used.
  /// - "RESOURCE_EXHAUSTED" : Quota allocation failed. Same as
  /// google.rpc.Code.RESOURCE_EXHAUSTED.
  /// - "OUT_OF_RANGE" : Quota release failed. This error is ONLY returned on a
  /// NORMAL release. More formally: if a user requests a release of 10 tokens,
  /// but only 5 tokens were previously allocated, in a BEST_EFFORT release,
  /// this will be considered a success, 5 tokens will be released, and the
  /// result will be "Ok". If this is done in NORMAL mode, no tokens will be
  /// released, and an OUT_OF_RANGE error will be returned. Same as
  /// google.rpc.Code.OUT_OF_RANGE.
  /// - "BILLING_NOT_ACTIVE" : Consumer cannot access the service because the
  /// service requires active billing.
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
  core.String? code;

  /// Free-form text that provides details on the cause of the error.
  core.String? description;

  /// Contains additional information about the quota error.
  ///
  /// If available, `status.code` will be non zero.
  Status? status;

  /// Subject to whom this error applies.
  ///
  /// See the specific enum for more details on this field. For example,
  /// "clientip:" or "project:".
  core.String? subject;

  QuotaError({
    this.code,
    this.description,
    this.status,
    this.subject,
  });

  QuotaError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          subject: _json.containsKey('subject')
              ? _json['subject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (status != null) 'status': status!,
        if (subject != null) 'subject': subject!,
      };
}

/// Contains the quota information for a quota check response.
class QuotaInfo {
  /// Quota Metrics that have exceeded quota limits.
  ///
  /// For QuotaGroup-based quota, this is QuotaGroup.name For QuotaLimit-based
  /// quota, this is QuotaLimit.name See: google.api.Quota Deprecated: Use
  /// quota_metrics to get per quota group limit exceeded status.
  core.List<core.String>? limitExceeded;

  /// Map of quota group name to the actual number of tokens consumed.
  ///
  /// If the quota check was not successful, then this will not be populated due
  /// to no quota consumption. We are not merging this field with
  /// 'quota_metrics' field because of the complexity of scaling in Chemist
  /// client code base. For simplicity, we will keep this field for Castor (that
  /// scales quota usage) and 'quota_metrics' for SuperQuota (that doesn't scale
  /// quota usage).
  core.Map<core.String, core.int>? quotaConsumed;

  /// Quota metrics to indicate the usage.
  ///
  /// Depending on the check request, one or more of the following metrics will
  /// be included: 1. For rate quota, per quota group or per quota metric
  /// incremental usage will be specified using the following delta metric:
  /// "serviceruntime.googleapis.com/api/consumer/quota_used_count" 2. For
  /// allocation quota, per quota metric total usage will be specified using the
  /// following gauge metric:
  /// "serviceruntime.googleapis.com/allocation/consumer/quota_used_count" 3.
  /// For both rate quota and allocation quota, the quota limit reached
  /// condition will be specified using the following boolean metric:
  /// "serviceruntime.googleapis.com/quota/exceeded"
  core.List<MetricValueSet>? quotaMetrics;

  QuotaInfo({
    this.limitExceeded,
    this.quotaConsumed,
    this.quotaMetrics,
  });

  QuotaInfo.fromJson(core.Map _json)
      : this(
          limitExceeded: _json.containsKey('limitExceeded')
              ? (_json['limitExceeded'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          quotaConsumed: _json.containsKey('quotaConsumed')
              ? (_json['quotaConsumed'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
          quotaMetrics: _json.containsKey('quotaMetrics')
              ? (_json['quotaMetrics'] as core.List)
                  .map((value) => MetricValueSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limitExceeded != null) 'limitExceeded': limitExceeded!,
        if (quotaConsumed != null) 'quotaConsumed': quotaConsumed!,
        if (quotaMetrics != null) 'quotaMetrics': quotaMetrics!,
      };
}

/// Represents information regarding a quota operation.
class QuotaOperation {
  /// Identity of the consumer for whom this quota operation is being performed.
  ///
  /// This can be in one of the following formats: project:, project_number:,
  /// api_key:.
  core.String? consumerId;

  /// Labels describing the operation.
  core.Map<core.String, core.String>? labels;

  /// Fully qualified name of the API method for which this quota operation is
  /// requested.
  ///
  /// This name is used for matching quota rules or metric rules and billing
  /// status rules defined in service configuration. This field should not be
  /// set if any of the following is true: (1) the quota operation is performed
  /// on non-API resources. (2) quota_metrics is set because the caller is doing
  /// quota override. Example of an RPC method name:
  /// google.example.library.v1.LibraryService.CreateShelf
  core.String? methodName;

  /// Identity of the operation.
  ///
  /// For Allocation Quota, this is expected to be unique within the scope of
  /// the service that generated the operation, and guarantees idempotency in
  /// case of retries. In order to ensure best performance and latency in the
  /// Quota backends, operation_ids are optimally associated with time, so that
  /// related operations can be accessed fast in storage. For this reason, the
  /// recommended token for services that intend to operate at a high QPS is
  /// Unix time in nanos + UUID
  core.String? operationId;

  /// Represents information about this operation.
  ///
  /// Each MetricValueSet corresponds to a metric defined in the service
  /// configuration. The data type used in the MetricValueSet must agree with
  /// the data type specified in the metric definition. Within a single
  /// operation, it is not allowed to have more than one MetricValue instances
  /// that have the same metric names and identical label value combinations. If
  /// a request has such duplicated MetricValue instances, the entire request is
  /// rejected with an invalid argument error. This field is mutually exclusive
  /// with method_name.
  core.List<MetricValueSet>? quotaMetrics;

  /// Quota mode for this operation.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Guard against implicit default. Must not be used.
  /// - "NORMAL" : For AllocateQuota request, allocates quota for the amount
  /// specified in the service configuration or specified using the quota
  /// metrics. If the amount is higher than the available quota, allocation
  /// error will be returned and no quota will be allocated. If multiple quotas
  /// are part of the request, and one fails, none of the quotas are allocated
  /// or released.
  /// - "BEST_EFFORT" : The operation allocates quota for the amount specified
  /// in the service configuration or specified using the quota metrics. If the
  /// amount is higher than the available quota, request does not fail but all
  /// available quota will be allocated. For rate quota, BEST_EFFORT will
  /// continue to deduct from other groups even if one does not have enough
  /// quota. For allocation, it will find the minimum available amount across
  /// all groups and deduct that amount from all the affected groups.
  /// - "CHECK_ONLY" : For AllocateQuota request, only checks if there is enough
  /// quota available and does not change the available quota. No lock is placed
  /// on the available quota either.
  /// - "ADJUST_ONLY" : The operation allocates quota for the amount specified
  /// in the service configuration or specified using the quota metrics. If the
  /// requested amount is higher than the available quota, request does not fail
  /// and remaining quota would become negative (going over the limit). Not
  /// supported for Rate Quota.
  core.String? quotaMode;

  QuotaOperation({
    this.consumerId,
    this.labels,
    this.methodName,
    this.operationId,
    this.quotaMetrics,
    this.quotaMode,
  });

  QuotaOperation.fromJson(core.Map _json)
      : this(
          consumerId: _json.containsKey('consumerId')
              ? _json['consumerId'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          methodName: _json.containsKey('methodName')
              ? _json['methodName'] as core.String
              : null,
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          quotaMetrics: _json.containsKey('quotaMetrics')
              ? (_json['quotaMetrics'] as core.List)
                  .map((value) => MetricValueSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          quotaMode: _json.containsKey('quotaMode')
              ? _json['quotaMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerId != null) 'consumerId': consumerId!,
        if (labels != null) 'labels': labels!,
        if (methodName != null) 'methodName': methodName!,
        if (operationId != null) 'operationId': operationId!,
        if (quotaMetrics != null) 'quotaMetrics': quotaMetrics!,
        if (quotaMode != null) 'quotaMode': quotaMode!,
      };
}

/// Represents the properties needed for quota operations.
class QuotaProperties {
  /// Quota mode for this operation.
  /// Possible string values are:
  /// - "ACQUIRE" : Decreases available quota by the cost specified for the
  /// operation. If cost is higher than available quota, operation fails and
  /// returns error.
  /// - "ACQUIRE_BEST_EFFORT" : Decreases available quota by the cost specified
  /// for the operation. If cost is higher than available quota, operation does
  /// not fail and available quota goes down to zero but it returns error.
  /// - "CHECK" : Does not change any available quota. Only checks if there is
  /// enough quota. No lock is placed on the checked tokens neither.
  /// - "RELEASE" : DEPRECATED: Increases available quota by the operation cost
  /// specified for the operation.
  core.String? quotaMode;

  QuotaProperties({
    this.quotaMode,
  });

  QuotaProperties.fromJson(core.Map _json)
      : this(
          quotaMode: _json.containsKey('quotaMode')
              ? _json['quotaMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quotaMode != null) 'quotaMode': quotaMode!,
      };
}

/// Represents the processing error of one Operation in the request.
class ReportError {
  /// The Operation.operation_id value from the request.
  core.String? operationId;

  /// Details of the error when processing the Operation.
  Status? status;

  ReportError({
    this.operationId,
    this.status,
  });

  ReportError.fromJson(core.Map _json)
      : this(
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
        if (status != null) 'status': status!,
      };
}

/// Request message for the Report method.
class ReportRequest {
  /// Operations to be reported.
  ///
  /// Typically the service should report one operation per request. Putting
  /// multiple operations into a single request is allowed, but should be used
  /// only when multiple operations are natually available at the time of the
  /// report. There is no limit on the number of operations in the same
  /// ReportRequest, however the ReportRequest size should be no larger than
  /// 1MB. See ReportResponse.report_errors for partial failure behavior.
  core.List<Operation>? operations;

  /// Specifies which version of service config should be used to process the
  /// request.
  ///
  /// If unspecified or no matching version can be found, the latest one will be
  /// used.
  core.String? serviceConfigId;

  ReportRequest({
    this.operations,
    this.serviceConfigId,
  });

  ReportRequest.fromJson(core.Map _json)
      : this(
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operations != null) 'operations': operations!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
      };
}

/// Response message for the Report method.
class ReportResponse {
  /// Partial failures, one for each `Operation` in the request that failed
  /// processing.
  ///
  /// There are three possible combinations of the RPC status: 1. The
  /// combination of a successful RPC status and an empty `report_errors` list
  /// indicates a complete success where all `Operations` in the request are
  /// processed successfully. 2. The combination of a successful RPC status and
  /// a non-empty `report_errors` list indicates a partial success where some
  /// `Operations` in the request succeeded. Each `Operation` that failed
  /// processing has a corresponding item in this list. 3. A failed RPC status
  /// indicates a general non-deterministic failure. When this happens, it's
  /// impossible to know which of the 'Operations' in the request succeeded or
  /// failed.
  core.List<ReportError>? reportErrors;

  /// The actual config id used to process the request.
  core.String? serviceConfigId;

  /// The current service rollout id used to process the request.
  core.String? serviceRolloutId;

  ReportResponse({
    this.reportErrors,
    this.serviceConfigId,
    this.serviceRolloutId,
  });

  ReportResponse.fromJson(core.Map _json)
      : this(
          reportErrors: _json.containsKey('reportErrors')
              ? (_json['reportErrors'] as core.List)
                  .map((value) => ReportError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceConfigId: _json.containsKey('serviceConfigId')
              ? _json['serviceConfigId'] as core.String
              : null,
          serviceRolloutId: _json.containsKey('serviceRolloutId')
              ? _json['serviceRolloutId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reportErrors != null) 'reportErrors': reportErrors!,
        if (serviceConfigId != null) 'serviceConfigId': serviceConfigId!,
        if (serviceRolloutId != null) 'serviceRolloutId': serviceRolloutId!,
      };
}

/// Describes a resource associated with this operation.
class ResourceInfo {
  /// The identifier of the parent of this resource instance.
  ///
  /// Must be in one of the following formats: - `projects/` - `folders/` -
  /// `organizations/`
  core.String? resourceContainer;

  /// The location of the resource.
  ///
  /// If not empty, the resource will be checked against location policy. The
  /// value must be a valid zone, region or multiregion. For example:
  /// "europe-west4" or "northamerica-northeast1-a"
  core.String? resourceLocation;

  /// Name of the resource.
  ///
  /// This is used for auditing purposes.
  core.String? resourceName;

  ResourceInfo({
    this.resourceContainer,
    this.resourceLocation,
    this.resourceName,
  });

  ResourceInfo.fromJson(core.Map _json)
      : this(
          resourceContainer: _json.containsKey('resourceContainer')
              ? _json['resourceContainer'] as core.String
              : null,
          resourceLocation: _json.containsKey('resourceLocation')
              ? _json['resourceLocation'] as core.String
              : null,
          resourceName: _json.containsKey('resourceName')
              ? _json['resourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceContainer != null) 'resourceContainer': resourceContainer!,
        if (resourceLocation != null) 'resourceLocation': resourceLocation!,
        if (resourceName != null) 'resourceName': resourceName!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A span represents a single operation within a trace.
///
/// Spans can be nested to form a trace tree. Often, a trace contains a root
/// span that describes the end-to-end latency, and one or more subspans for its
/// sub-operations. A trace can also contain multiple root spans, or none at
/// all. Spans do not need to be contiguous—there may be gaps or overlaps
/// between spans in a trace.
class TraceSpan {
  /// A set of attributes on the span.
  ///
  /// You can have up to 32 attributes per span.
  Attributes? attributes;

  /// An optional number of child spans that were generated while this span was
  /// active.
  ///
  /// If set, allows implementation to detect missing child spans.
  core.int? childSpanCount;

  /// A description of the span's operation (up to 128 bytes).
  ///
  /// Stackdriver Trace displays the description in the Google Cloud Platform
  /// Console. For example, the display name can be a qualified method name or a
  /// file name and a line number where the operation is called. A best practice
  /// is to use the same display name within an application and at the same call
  /// point. This makes it easier to correlate spans in different traces.
  TruncatableString? displayName;

  /// The end time of the span.
  ///
  /// On the client side, this is the time kept by the local machine where the
  /// span execution ends. On the server side, this is the time when the server
  /// application handler stops running.
  core.String? endTime;

  /// The resource name of the span in the following format:
  /// projects/\[PROJECT_ID\]/traces/\[TRACE_ID\]/spans/SPAN_ID is a unique
  /// identifier for a trace within a project; it is a 32-character hexadecimal
  /// encoding of a 16-byte array.
  ///
  /// \[SPAN_ID\] is a unique identifier for a span within a trace; it is a
  /// 16-character hexadecimal encoding of an 8-byte array.
  core.String? name;

  /// The \[SPAN_ID\] of this span's parent span.
  ///
  /// If this is a root span, then this field must be empty.
  core.String? parentSpanId;

  /// (Optional) Set this parameter to indicate whether this span is in the same
  /// process as its parent.
  ///
  /// If you do not set this parameter, Stackdriver Trace is unable to take
  /// advantage of this helpful information.
  core.bool? sameProcessAsParentSpan;

  /// The \[SPAN_ID\] portion of the span's resource name.
  core.String? spanId;

  /// Distinguishes between spans generated in a particular context.
  ///
  /// For example, two spans with the same name may be distinguished using
  /// `CLIENT` (caller) and `SERVER` (callee) to identify an RPC call.
  /// Possible string values are:
  /// - "SPAN_KIND_UNSPECIFIED" : Unspecified. Do NOT use as default.
  /// Implementations MAY assume SpanKind.INTERNAL to be default.
  /// - "INTERNAL" : Indicates that the span is used internally. Default value.
  /// - "SERVER" : Indicates that the span covers server-side handling of an RPC
  /// or other remote network request.
  /// - "CLIENT" : Indicates that the span covers the client-side wrapper around
  /// an RPC or other remote request.
  /// - "PRODUCER" : Indicates that the span describes producer sending a
  /// message to a broker. Unlike client and server, there is no direct critical
  /// path latency relationship between producer and consumer spans (e.g.
  /// publishing a message to a pubsub service).
  /// - "CONSUMER" : Indicates that the span describes consumer receiving a
  /// message from a broker. Unlike client and server, there is no direct
  /// critical path latency relationship between producer and consumer spans
  /// (e.g. receiving a message from a pubsub service subscription).
  core.String? spanKind;

  /// The start time of the span.
  ///
  /// On the client side, this is the time kept by the local machine where the
  /// span execution starts. On the server side, this is the time when the
  /// server's application handler starts running.
  core.String? startTime;

  /// An optional final status for this span.
  Status? status;

  TraceSpan({
    this.attributes,
    this.childSpanCount,
    this.displayName,
    this.endTime,
    this.name,
    this.parentSpanId,
    this.sameProcessAsParentSpan,
    this.spanId,
    this.spanKind,
    this.startTime,
    this.status,
  });

  TraceSpan.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? Attributes.fromJson(
                  _json['attributes'] as core.Map<core.String, core.dynamic>)
              : null,
          childSpanCount: _json.containsKey('childSpanCount')
              ? _json['childSpanCount'] as core.int
              : null,
          displayName: _json.containsKey('displayName')
              ? TruncatableString.fromJson(
                  _json['displayName'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentSpanId: _json.containsKey('parentSpanId')
              ? _json['parentSpanId'] as core.String
              : null,
          sameProcessAsParentSpan: _json.containsKey('sameProcessAsParentSpan')
              ? _json['sameProcessAsParentSpan'] as core.bool
              : null,
          spanId: _json.containsKey('spanId')
              ? _json['spanId'] as core.String
              : null,
          spanKind: _json.containsKey('spanKind')
              ? _json['spanKind'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (childSpanCount != null) 'childSpanCount': childSpanCount!,
        if (displayName != null) 'displayName': displayName!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (parentSpanId != null) 'parentSpanId': parentSpanId!,
        if (sameProcessAsParentSpan != null)
          'sameProcessAsParentSpan': sameProcessAsParentSpan!,
        if (spanId != null) 'spanId': spanId!,
        if (spanKind != null) 'spanKind': spanKind!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
      };
}

/// Represents a string that might be shortened to a specified length.
typedef TruncatableString = $TruncatableString;
