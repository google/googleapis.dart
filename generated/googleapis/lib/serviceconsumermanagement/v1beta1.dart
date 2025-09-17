// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Service Consumer Management API - v1beta1
///
/// Manages the service consumers of a Service Infrastructure service.
///
/// For more information, see
/// <https://cloud.google.com/service-consumer-management/docs/overview>
///
/// Create an instance of [ServiceConsumerManagementApi] to access these
/// resources:
///
/// - [OperationsResource]
/// - [ServicesResource]
///   - [ServicesConsumerQuotaMetricsResource]
///     - [ServicesConsumerQuotaMetricsLimitsResource]
///       - [ServicesConsumerQuotaMetricsLimitsProducerOverridesResource]
///       - [ServicesConsumerQuotaMetricsLimitsProducerQuotaPoliciesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages the service consumers of a Service Infrastructure service.
class ServiceConsumerManagementApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ServicesResource get services => ServicesResource(_requester);

  ServiceConsumerManagementApi(
    http.Client client, {
    core.String rootUrl = 'https://serviceconsumermanagement.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/\[^/\]+$`.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesConsumerQuotaMetricsResource get consumerQuotaMetrics =>
      ServicesConsumerQuotaMetricsResource(_requester);

  ServicesResource(commons.ApiRequester client) : _requester = client;
}

class ServicesConsumerQuotaMetricsResource {
  final commons.ApiRequester _requester;

  ServicesConsumerQuotaMetricsLimitsResource get limits =>
      ServicesConsumerQuotaMetricsLimitsResource(_requester);

  ServicesConsumerQuotaMetricsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a summary of quota information for a specific quota metric.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the quota metric, returned by a
  /// ListConsumerQuotaMetrics call. An example name would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+$`.
  ///
  /// [view] - Specifies the level of detail for quota information in the
  /// response.
  /// Possible string values are:
  /// - "QUOTA_VIEW_UNSPECIFIED" : No quota view specified. Requests that do not
  /// specify a quota view will typically default to the BASIC view.
  /// - "BASIC" : Only buckets with overrides are shown in the response.
  /// - "FULL" : Include per-location buckets even if they do not have
  /// overrides. When the view is FULL, and a limit has regional or zonal quota,
  /// the limit will include buckets for all regions or zones that could support
  /// overrides, even if none are currently present. In some cases this will
  /// cause the response to become very large; callers that do not need this
  /// extra information should use the BASIC view instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V1Beta1ConsumerQuotaMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V1Beta1ConsumerQuotaMetric> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return V1Beta1ConsumerQuotaMetric.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Create or update multiple producer overrides atomically, all on the same
  /// consumer, but on many different metrics or limits.
  ///
  /// The name field in the quota override message should not be set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the consumer. An example name would be:
  /// `services/compute.googleapis.com/projects/123`
  /// Value must have pattern `^services/\[^/\]+/\[^/\]+/\[^/\]+$`.
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
  async.Future<Operation> importProducerOverrides(
    V1Beta1ImportProducerOverridesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/consumerQuotaMetrics:importProducerOverrides';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create or update multiple producer quota policies atomically, all on the
  /// same ancestor, but on many different metrics or limits.
  ///
  /// The name field in the quota policy message should not be set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the consumer. An example name would be:
  /// `services/compute.googleapis.com/organizations/123`
  /// Value must have pattern `^services/\[^/\]+/\[^/\]+/\[^/\]+$`.
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
  async.Future<Operation> importProducerQuotaPolicies(
    V1Beta1ImportProducerQuotaPoliciesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/consumerQuotaMetrics:importProducerQuotaPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a summary of all quota information about this consumer that is
  /// visible to the service producer, for each quota metric defined by the
  /// service.
  ///
  /// Each metric includes information about all of its defined limits. Each
  /// limit includes the limit configuration (quota unit, preciseness, default
  /// value), the current effective limit value, and all of the overrides
  /// applied to the limit.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent of the quotas resource. An example parent would be:
  /// `services/serviceconsumermanagement.googleapis.com/projects/123`
  /// Value must have pattern `^services/\[^/\]+/\[^/\]+/\[^/\]+$`.
  ///
  /// [pageSize] - Requested size of the next page of data.
  ///
  /// [pageToken] - Token identifying which result to start with; returned by a
  /// previous list call.
  ///
  /// [view] - Specifies the level of detail for quota information in the
  /// response.
  /// Possible string values are:
  /// - "QUOTA_VIEW_UNSPECIFIED" : No quota view specified. Requests that do not
  /// specify a quota view will typically default to the BASIC view.
  /// - "BASIC" : Only buckets with overrides are shown in the response.
  /// - "FULL" : Include per-location buckets even if they do not have
  /// overrides. When the view is FULL, and a limit has regional or zonal quota,
  /// the limit will include buckets for all regions or zones that could support
  /// overrides, even if none are currently present. In some cases this will
  /// cause the response to become very large; callers that do not need this
  /// extra information should use the BASIC view instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V1Beta1ListConsumerQuotaMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V1Beta1ListConsumerQuotaMetricsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/consumerQuotaMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return V1Beta1ListConsumerQuotaMetricsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ServicesConsumerQuotaMetricsLimitsResource {
  final commons.ApiRequester _requester;

  ServicesConsumerQuotaMetricsLimitsProducerOverridesResource
  get producerOverrides =>
      ServicesConsumerQuotaMetricsLimitsProducerOverridesResource(_requester);
  ServicesConsumerQuotaMetricsLimitsProducerQuotaPoliciesResource
  get producerQuotaPolicies =>
      ServicesConsumerQuotaMetricsLimitsProducerQuotaPoliciesResource(
        _requester,
      );

  ServicesConsumerQuotaMetricsLimitsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a summary of quota information for a specific quota limit.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the quota limit, returned by a
  /// ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name
  /// would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+$`.
  ///
  /// [view] - Specifies the level of detail for quota information in the
  /// response.
  /// Possible string values are:
  /// - "QUOTA_VIEW_UNSPECIFIED" : No quota view specified. Requests that do not
  /// specify a quota view will typically default to the BASIC view.
  /// - "BASIC" : Only buckets with overrides are shown in the response.
  /// - "FULL" : Include per-location buckets even if they do not have
  /// overrides. When the view is FULL, and a limit has regional or zonal quota,
  /// the limit will include buckets for all regions or zones that could support
  /// overrides, even if none are currently present. In some cases this will
  /// cause the response to become very large; callers that do not need this
  /// extra information should use the BASIC view instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V1Beta1ConsumerQuotaLimit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V1Beta1ConsumerQuotaLimit> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return V1Beta1ConsumerQuotaLimit.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ServicesConsumerQuotaMetricsLimitsProducerOverridesResource {
  final commons.ApiRequester _requester;

  ServicesConsumerQuotaMetricsLimitsProducerOverridesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a producer override.
  ///
  /// A producer override is applied by the owner or administrator of a service
  /// to increase or decrease the amount of quota a consumer of the service is
  /// allowed to use. To create multiple overrides at once, use
  /// ImportProducerOverrides instead. If an override with the specified
  /// dimensions already exists, this call will fail. To overwrite an existing
  /// override if one is already present ("upsert" semantics), use
  /// ImportProducerOverrides instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent quota limit, returned by a
  /// ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name
  /// would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+$`.
  ///
  /// [force] - Whether to force the creation of the quota override. Setting the
  /// force parameter to 'true' ignores all quota safety checks that would fail
  /// the request. QuotaSafetyCheck lists all such validations.
  ///
  /// [forceJustification] - If force option is set to true, force_justification
  /// is suggested to be set to log the reason in audit logs.
  ///
  /// [forceOnly] - The list of quota safety checks to ignore before the
  /// override mutation. Unlike 'force' field that ignores all the quota safety
  /// checks, the 'force_only' field ignores only the specified checks; other
  /// checks are still enforced. The 'force' and 'force_only' fields cannot both
  /// be set.
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
  async.Future<Operation> create(
    V1Beta1QuotaOverride request,
    core.String parent, {
    core.bool? force,
    core.String? forceJustification,
    core.List<core.String>? forceOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (forceJustification != null)
        'forceJustification': [forceJustification],
      if (forceOnly != null) 'forceOnly': forceOnly,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/producerOverrides';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a producer override.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the override to delete. An example name
  /// would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+/producerOverrides/\[^/\]+$`.
  ///
  /// [force] - Whether to force the deletion of the quota override. Setting the
  /// force parameter to 'true' ignores all quota safety checks that would fail
  /// the request. QuotaSafetyCheck lists all such validations.
  ///
  /// [forceJustification] - If force option is set to true, force_justification
  /// is suggested to be set to log the reason in audit logs.
  ///
  /// [forceOnly] - The list of quota safety checks to ignore before the
  /// override mutation. Unlike 'force' field that ignores all the quota safety
  /// checks, the 'force_only' field ignores only the specified checks; other
  /// checks are still enforced. The 'force' and 'force_only' fields cannot both
  /// be set.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? force,
    core.String? forceJustification,
    core.List<core.String>? forceOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (forceJustification != null)
        'forceJustification': [forceJustification],
      if (forceOnly != null) 'forceOnly': forceOnly,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all producer overrides on this limit.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource name of the parent quota limit, returned by a
  /// ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name
  /// would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+$`.
  ///
  /// [pageSize] - Requested size of the next page of data.
  ///
  /// [pageToken] - Token identifying which result to start with; returned by a
  /// previous list call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V1Beta1ListProducerOverridesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V1Beta1ListProducerOverridesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/producerOverrides';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return V1Beta1ListProducerOverridesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a producer override.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the override to update. An example name
  /// would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+/producerOverrides/\[^/\]+$`.
  ///
  /// [force] - Whether to force the update of the quota override. Setting the
  /// force parameter to 'true' ignores all quota safety checks that would fail
  /// the request. QuotaSafetyCheck lists all such validations.
  ///
  /// [forceJustification] - If force option is set to true, force_justification
  /// is suggested to be set to log the reason in audit logs.
  ///
  /// [forceOnly] - The list of quota safety checks to ignore before the
  /// override mutation. Unlike 'force' field that ignores all the quota safety
  /// checks, the 'force_only' field ignores only the specified checks; other
  /// checks are still enforced. The 'force' and 'force_only' fields cannot both
  /// be set.
  ///
  /// [updateMask] - Update only the specified fields. If unset, all modifiable
  /// fields will be updated.
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
  async.Future<Operation> patch(
    V1Beta1QuotaOverride request,
    core.String name, {
    core.bool? force,
    core.String? forceJustification,
    core.List<core.String>? forceOnly,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (forceJustification != null)
        'forceJustification': [forceJustification],
      if (forceOnly != null) 'forceOnly': forceOnly,
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ServicesConsumerQuotaMetricsLimitsProducerQuotaPoliciesResource {
  final commons.ApiRequester _requester;

  ServicesConsumerQuotaMetricsLimitsProducerQuotaPoliciesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a producer quota policy.
  ///
  /// A producer quota policy is applied by the owner or administrator of a
  /// service at an org or folder node to set the default quota limit for all
  /// consumers under the node where the policy is created. To create multiple
  /// policies at once, use ImportProducerQuotaPolicies instead. If a policy
  /// with the specified dimensions already exists, this call will fail. To
  /// overwrite an existing policy if one is already present ("upsert"
  /// semantics), use ImportProducerQuotaPolicies instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent quota limit. An
  /// example name would be:
  /// `services/compute.googleapis.com/organizations/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+$`.
  ///
  /// [force] - Whether to force the creation of the quota policy. If the policy
  /// creation would decrease the default limit of any consumer tier by more
  /// than 10 percent, the call is rejected, as a safety measure to avoid
  /// accidentally decreasing quota too quickly. Setting the force parameter to
  /// true ignores this restriction.
  ///
  /// [forceJustification] - If force option is set to true, force_justification
  /// is suggested to be set to log the reason in audit logs.
  ///
  /// [validateOnly] - If set to true, validate the request, but do not actually
  /// update.
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
  async.Future<Operation> create(
    V1Beta1ProducerQuotaPolicy request,
    core.String parent, {
    core.bool? force,
    core.String? forceJustification,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (forceJustification != null)
        'forceJustification': [forceJustification],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/producerQuotaPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a producer quota policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the policy to delete. An example
  /// name would be:
  /// `services/compute.googleapis.com/organizations/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerQuotaPolicies/4a3f2c1d`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+/producerQuotaPolicies/\[^/\]+$`.
  ///
  /// [force] - Whether to force the deletion of the quota policy. If the policy
  /// deletion would decrease the default limit of any consumer tier by more
  /// than 10 percent, the call is rejected, as a safety measure to avoid
  /// accidentally decreasing quota too quickly. Setting the force parameter to
  /// true ignores this restriction.
  ///
  /// [forceJustification] - If force option is set to true, force_justification
  /// is suggested to be set to log the reason in audit logs.
  ///
  /// [validateOnly] - If set to true, validate the request, but do not actually
  /// update.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? force,
    core.String? forceJustification,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (forceJustification != null)
        'forceJustification': [forceJustification],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all producer policies created at current consumer node for a limit.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent quota limit. An
  /// example name would be:
  /// `services/compute.googleapis.com/organizations/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+$`.
  ///
  /// [pageSize] - Requested size of the next page of data.
  ///
  /// [pageToken] - Token identifying which result to start with; returned by a
  /// previous list call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [V1Beta1ListProducerQuotaPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<V1Beta1ListProducerQuotaPoliciesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/producerQuotaPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return V1Beta1ListProducerQuotaPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a producer quota policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the producer policy. An example name would
  /// be:
  /// `services/compute.googleapis.com/organizations/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerQuotaPolicies/4a3f2c1d`
  /// Value must have pattern
  /// `^services/\[^/\]+/\[^/\]+/\[^/\]+/consumerQuotaMetrics/\[^/\]+/limits/\[^/\]+/producerQuotaPolicies/\[^/\]+$`.
  ///
  /// [force] - Whether to force the update of the quota policy. If the policy
  /// update would decrease the default limit of any consumer tier by more than
  /// 10 percent, the call is rejected, as a safety measure to avoid
  /// accidentally decreasing quota too quickly. Setting the force parameter to
  /// true ignores this restriction.
  ///
  /// [forceJustification] - If force option is set to true, force_justification
  /// is suggested to be set to log the reason in audit logs.
  ///
  /// [updateMask] - Update only the specified fields. If unset, all modifiable
  /// fields will be updated.
  ///
  /// [validateOnly] - If set to true, validate the request, but do not actually
  /// update.
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
  async.Future<Operation> patch(
    V1Beta1ProducerQuotaPolicy request,
    core.String name, {
    core.bool? force,
    core.String? forceJustification,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (forceJustification != null)
        'forceJustification': [forceJustification],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Consumer quota settings for a quota limit.
class V1Beta1ConsumerQuotaLimit {
  /// Whether this limit is precise or imprecise.
  core.bool? isPrecise;

  /// The name of the parent metric of this limit.
  ///
  /// An example name would be: `compute.googleapis.com/cpus`
  core.String? metric;

  /// The resource name of the quota limit.
  ///
  /// An example name would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
  /// The resource name is intended to be opaque and should not be parsed for
  /// its component strings, since its representation could change in the
  /// future.
  core.String? name;

  /// Summary of the enforced quota buckets, organized by quota dimension,
  /// ordered from least specific to most specific (for example, the global
  /// default bucket, with no quota dimensions, will always appear first).
  core.List<V1Beta1QuotaBucket>? quotaBuckets;

  /// List of all supported locations.
  ///
  /// This field is present only if the limit has a {region} or {zone}
  /// dimension.
  core.List<core.String>? supportedLocations;

  /// The limit unit.
  ///
  /// An example unit would be: `1/{project}/{region}` Note that `{project}` and
  /// `{region}` are not placeholders in this example; the literal characters
  /// `{` and `}` occur in the string.
  core.String? unit;

  V1Beta1ConsumerQuotaLimit({
    this.isPrecise,
    this.metric,
    this.name,
    this.quotaBuckets,
    this.supportedLocations,
    this.unit,
  });

  V1Beta1ConsumerQuotaLimit.fromJson(core.Map json_)
    : this(
        isPrecise: json_['isPrecise'] as core.bool?,
        metric: json_['metric'] as core.String?,
        name: json_['name'] as core.String?,
        quotaBuckets:
            (json_['quotaBuckets'] as core.List?)
                ?.map(
                  (value) => V1Beta1QuotaBucket.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        supportedLocations:
            (json_['supportedLocations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (isPrecise != null) 'isPrecise': isPrecise!,
    if (metric != null) 'metric': metric!,
    if (name != null) 'name': name!,
    if (quotaBuckets != null) 'quotaBuckets': quotaBuckets!,
    if (supportedLocations != null) 'supportedLocations': supportedLocations!,
    if (unit != null) 'unit': unit!,
  };
}

/// Consumer quota settings for a quota metric.
class V1Beta1ConsumerQuotaMetric {
  /// The consumer quota for each quota limit defined on the metric.
  core.List<V1Beta1ConsumerQuotaLimit>? consumerQuotaLimits;

  /// The quota limits targeting the descendant containers of the consumer in
  /// request.
  ///
  /// If the consumer in request is of type `organizations` or `folders`, the
  /// field will list per-project limits in the metric; if the consumer in
  /// request is of type `project`, the field will be empty. The `quota_buckets`
  /// field of each descendant consumer quota limit will not be populated.
  core.List<V1Beta1ConsumerQuotaLimit>? descendantConsumerQuotaLimits;

  /// The display name of the metric.
  ///
  /// An example name would be: "CPUs"
  core.String? displayName;

  /// The name of the metric.
  ///
  /// An example name would be: `compute.googleapis.com/cpus`
  core.String? metric;

  /// The resource name of the quota settings on this metric for this consumer.
  ///
  /// An example name would be:
  /// `services/serviceconsumermanagement.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus`
  /// The resource name is intended to be opaque and should not be parsed for
  /// its component strings, since its representation could change in the
  /// future.
  core.String? name;

  /// The units in which the metric value is reported.
  core.String? unit;

  V1Beta1ConsumerQuotaMetric({
    this.consumerQuotaLimits,
    this.descendantConsumerQuotaLimits,
    this.displayName,
    this.metric,
    this.name,
    this.unit,
  });

  V1Beta1ConsumerQuotaMetric.fromJson(core.Map json_)
    : this(
        consumerQuotaLimits:
            (json_['consumerQuotaLimits'] as core.List?)
                ?.map(
                  (value) => V1Beta1ConsumerQuotaLimit.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        descendantConsumerQuotaLimits:
            (json_['descendantConsumerQuotaLimits'] as core.List?)
                ?.map(
                  (value) => V1Beta1ConsumerQuotaLimit.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        metric: json_['metric'] as core.String?,
        name: json_['name'] as core.String?,
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumerQuotaLimits != null)
      'consumerQuotaLimits': consumerQuotaLimits!,
    if (descendantConsumerQuotaLimits != null)
      'descendantConsumerQuotaLimits': descendantConsumerQuotaLimits!,
    if (displayName != null) 'displayName': displayName!,
    if (metric != null) 'metric': metric!,
    if (name != null) 'name': name!,
    if (unit != null) 'unit': unit!,
  };
}

/// Request message for ImportProducerOverrides
class V1Beta1ImportProducerOverridesRequest {
  /// Whether to force the creation of the quota overrides.
  ///
  /// Setting the force parameter to 'true' ignores all quota safety checks that
  /// would fail the request. QuotaSafetyCheck lists all such validations.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? force;

  /// If force option is set to true, force_justification is suggested to be set
  /// to log the reason in audit logs.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? forceJustification;

  /// The list of quota safety checks to ignore before the override mutation.
  ///
  /// Unlike 'force' field that ignores all the quota safety checks, the
  /// 'force_only' field ignores only the specified checks; other checks are
  /// still enforced. The 'force' and 'force_only' fields cannot both be set.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? forceOnly;

  /// The import data is specified in the request message itself
  V1Beta1OverrideInlineSource? inlineSource;

  V1Beta1ImportProducerOverridesRequest({
    this.force,
    this.forceJustification,
    this.forceOnly,
    this.inlineSource,
  });

  V1Beta1ImportProducerOverridesRequest.fromJson(core.Map json_)
    : this(
        force: json_['force'] as core.bool?,
        forceJustification: json_['forceJustification'] as core.String?,
        forceOnly:
            (json_['forceOnly'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        inlineSource:
            json_.containsKey('inlineSource')
                ? V1Beta1OverrideInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (force != null) 'force': force!,
    if (forceJustification != null) 'forceJustification': forceJustification!,
    if (forceOnly != null) 'forceOnly': forceOnly!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
  };
}

/// Request message for ImportProducerQuotaPolicies
class V1Beta1ImportProducerQuotaPoliciesRequest {
  /// Whether quota policy can result in a decrease of effective limit.
  ///
  /// Don't allow any decreases if force is not specified. If force is
  /// specified, then don't allow any decreases below 120% of the 7d quota
  /// usage, or for cases where usage cannot be examined (custom dimensions/ per
  /// user/per resource), only allow a 10% decrease.
  core.bool? force;

  /// If force or force_skip_quota_usage_check option is set to true,
  /// force_justification is suggested to be set to log the reason in audit
  /// logs.
  core.String? forceJustification;

  /// If set to true, skip the quota usage check.
  ///
  /// This field is only used when the effective limit can be decreased. If the
  /// force field is not set, this field will be ignored.
  core.bool? forceSkipQuotaUsageCheck;

  /// The import data is specified in the request message itself
  V1Beta1PolicyInlineSource? inlineSource;

  /// If set to true, validate the request, but do not actually update.
  core.bool? validateOnly;

  V1Beta1ImportProducerQuotaPoliciesRequest({
    this.force,
    this.forceJustification,
    this.forceSkipQuotaUsageCheck,
    this.inlineSource,
    this.validateOnly,
  });

  V1Beta1ImportProducerQuotaPoliciesRequest.fromJson(core.Map json_)
    : this(
        force: json_['force'] as core.bool?,
        forceJustification: json_['forceJustification'] as core.String?,
        forceSkipQuotaUsageCheck:
            json_['forceSkipQuotaUsageCheck'] as core.bool?,
        inlineSource:
            json_.containsKey('inlineSource')
                ? V1Beta1PolicyInlineSource.fromJson(
                  json_['inlineSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        validateOnly: json_['validateOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (force != null) 'force': force!,
    if (forceJustification != null) 'forceJustification': forceJustification!,
    if (forceSkipQuotaUsageCheck != null)
      'forceSkipQuotaUsageCheck': forceSkipQuotaUsageCheck!,
    if (inlineSource != null) 'inlineSource': inlineSource!,
    if (validateOnly != null) 'validateOnly': validateOnly!,
  };
}

/// Response message for ListConsumerQuotaMetrics.
class V1Beta1ListConsumerQuotaMetricsResponse {
  /// Quota settings for the consumer, organized by quota metric.
  core.List<V1Beta1ConsumerQuotaMetric>? metrics;

  /// Token identifying which result to start with; returned by a previous list
  /// call.
  core.String? nextPageToken;

  V1Beta1ListConsumerQuotaMetricsResponse({this.metrics, this.nextPageToken});

  V1Beta1ListConsumerQuotaMetricsResponse.fromJson(core.Map json_)
    : this(
        metrics:
            (json_['metrics'] as core.List?)
                ?.map(
                  (value) => V1Beta1ConsumerQuotaMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metrics != null) 'metrics': metrics!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ListProducerOverrides.
class V1Beta1ListProducerOverridesResponse {
  /// Token identifying which result to start with; returned by a previous list
  /// call.
  core.String? nextPageToken;

  /// Producer overrides on this limit.
  core.List<V1Beta1QuotaOverride>? overrides;

  V1Beta1ListProducerOverridesResponse({this.nextPageToken, this.overrides});

  V1Beta1ListProducerOverridesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        overrides:
            (json_['overrides'] as core.List?)
                ?.map(
                  (value) => V1Beta1QuotaOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (overrides != null) 'overrides': overrides!,
  };
}

/// Response message for ListProducerQuotaPolicies.
class V1Beta1ListProducerQuotaPoliciesResponse {
  /// Token identifying which result to start with; returned by a previous list
  /// call.
  core.String? nextPageToken;

  /// Producer policies on this limit.
  core.List<V1Beta1ProducerQuotaPolicy>? producerQuotaPolicies;

  V1Beta1ListProducerQuotaPoliciesResponse({
    this.nextPageToken,
    this.producerQuotaPolicies,
  });

  V1Beta1ListProducerQuotaPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        producerQuotaPolicies:
            (json_['producerQuotaPolicies'] as core.List?)
                ?.map(
                  (value) => V1Beta1ProducerQuotaPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (producerQuotaPolicies != null)
      'producerQuotaPolicies': producerQuotaPolicies!,
  };
}

/// Import data embedded in the request message
class V1Beta1OverrideInlineSource {
  /// The overrides to create.
  ///
  /// Each override must have a value for 'metric' and 'unit', to specify which
  /// metric and which limit the override should be applied to. The 'name' field
  /// of the override does not need to be set; it is ignored.
  core.List<V1Beta1QuotaOverride>? overrides;

  V1Beta1OverrideInlineSource({this.overrides});

  V1Beta1OverrideInlineSource.fromJson(core.Map json_)
    : this(
        overrides:
            (json_['overrides'] as core.List?)
                ?.map(
                  (value) => V1Beta1QuotaOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (overrides != null) 'overrides': overrides!,
  };
}

/// Import data embedded in the request message
class V1Beta1PolicyInlineSource {
  /// The policies to create.
  ///
  /// Each policy must have a value for 'metric' and 'unit', to specify which
  /// metric and which limit the policy should be applied to.
  core.List<V1Beta1ProducerQuotaPolicy>? policies;

  V1Beta1PolicyInlineSource({this.policies});

  V1Beta1PolicyInlineSource.fromJson(core.Map json_)
    : this(
        policies:
            (json_['policies'] as core.List?)
                ?.map(
                  (value) => V1Beta1ProducerQuotaPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policies != null) 'policies': policies!,
  };
}

/// Quota policy created by service producer.
class V1Beta1ProducerQuotaPolicy {
  /// The cloud resource container at which the quota policy is created.
  ///
  /// The format is {container_type}/{container_number}
  core.String? container;

  /// If this map is nonempty, then this policy applies only to specific values
  /// for dimensions defined in the limit unit.
  ///
  /// For example, a policy on a limit with the unit 1/{project}/{region} could
  /// contain an entry with the key "region" and the value "us-east-1"; the
  /// policy is only applied to quota consumed in that region. This map has the
  /// following restrictions: * Keys that are not defined in the limit's unit
  /// are not valid keys. Any string appearing in {brackets} in the unit
  /// (besides {project} or {user}) is a defined key. * "project" is not a valid
  /// key; the project is already specified in the parent resource name. *
  /// "user" is not a valid key; the API does not support quota polcies that
  /// apply only to a specific user. * If "region" appears as a key, its value
  /// must be a valid Cloud region. * If "zone" appears as a key, its value must
  /// be a valid Cloud zone. * If any valid key other than "region" or "zone"
  /// appears in the map, then all valid keys other than "region" or "zone" must
  /// also appear in the map.
  core.Map<core.String, core.String>? dimensions;

  /// The name of the metric to which this policy applies.
  ///
  /// An example name would be: `compute.googleapis.com/cpus`
  core.String? metric;

  /// The resource name of the producer policy.
  ///
  /// An example name would be:
  /// `services/compute.googleapis.com/organizations/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerQuotaPolicies/4a3f2c1d`
  core.String? name;

  /// The quota policy value.
  ///
  /// Can be any nonnegative integer, or -1 (unlimited quota).
  core.String? policyValue;

  /// The limit unit of the limit to which this policy applies.
  ///
  /// An example unit would be: `1/{project}/{region}` Note that `{project}` and
  /// `{region}` are not placeholders in this example; the literal characters
  /// `{` and `}` occur in the string.
  core.String? unit;

  V1Beta1ProducerQuotaPolicy({
    this.container,
    this.dimensions,
    this.metric,
    this.name,
    this.policyValue,
    this.unit,
  });

  V1Beta1ProducerQuotaPolicy.fromJson(core.Map json_)
    : this(
        container: json_['container'] as core.String?,
        dimensions: (json_['dimensions']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        metric: json_['metric'] as core.String?,
        name: json_['name'] as core.String?,
        policyValue: json_['policyValue'] as core.String?,
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (container != null) 'container': container!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (metric != null) 'metric': metric!,
    if (name != null) 'name': name!,
    if (policyValue != null) 'policyValue': policyValue!,
    if (unit != null) 'unit': unit!,
  };
}

/// A quota bucket is a quota provisioning unit for a specific set of
/// dimensions.
class V1Beta1QuotaBucket {
  /// Admin override on this quota bucket.
  V1Beta1QuotaOverride? adminOverride;

  /// Consumer override on this quota bucket.
  V1Beta1QuotaOverride? consumerOverride;

  /// The default limit of this quota bucket, as specified by the service
  /// configuration.
  core.String? defaultLimit;

  /// The dimensions of this quota bucket.
  ///
  /// If this map is empty, this is the global bucket, which is the default
  /// quota value applied to all requests that do not have a more specific
  /// override. If this map is nonempty, the default limit, effective limit, and
  /// quota overrides apply only to requests that have the dimensions given in
  /// the map. For example, if the map has key "region" and value "us-east-1",
  /// then the specified effective limit is only effective in that region, and
  /// the specified overrides apply only in that region.
  core.Map<core.String, core.String>? dimensions;

  /// The effective limit of this quota bucket.
  ///
  /// Equal to default_limit if there are no overrides.
  core.String? effectiveLimit;

  /// Producer override on this quota bucket.
  V1Beta1QuotaOverride? producerOverride;

  /// Producer policy inherited from the closet ancestor of the current
  /// consumer.
  V1Beta1ProducerQuotaPolicy? producerQuotaPolicy;

  /// Rollout information of this quota bucket.
  ///
  /// This field is present only if the effective limit will change due to the
  /// ongoing rollout of the service config.
  V1Beta1RolloutInfo? rolloutInfo;

  V1Beta1QuotaBucket({
    this.adminOverride,
    this.consumerOverride,
    this.defaultLimit,
    this.dimensions,
    this.effectiveLimit,
    this.producerOverride,
    this.producerQuotaPolicy,
    this.rolloutInfo,
  });

  V1Beta1QuotaBucket.fromJson(core.Map json_)
    : this(
        adminOverride:
            json_.containsKey('adminOverride')
                ? V1Beta1QuotaOverride.fromJson(
                  json_['adminOverride'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        consumerOverride:
            json_.containsKey('consumerOverride')
                ? V1Beta1QuotaOverride.fromJson(
                  json_['consumerOverride']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        defaultLimit: json_['defaultLimit'] as core.String?,
        dimensions: (json_['dimensions']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        effectiveLimit: json_['effectiveLimit'] as core.String?,
        producerOverride:
            json_.containsKey('producerOverride')
                ? V1Beta1QuotaOverride.fromJson(
                  json_['producerOverride']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        producerQuotaPolicy:
            json_.containsKey('producerQuotaPolicy')
                ? V1Beta1ProducerQuotaPolicy.fromJson(
                  json_['producerQuotaPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rolloutInfo:
            json_.containsKey('rolloutInfo')
                ? V1Beta1RolloutInfo.fromJson(
                  json_['rolloutInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminOverride != null) 'adminOverride': adminOverride!,
    if (consumerOverride != null) 'consumerOverride': consumerOverride!,
    if (defaultLimit != null) 'defaultLimit': defaultLimit!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (effectiveLimit != null) 'effectiveLimit': effectiveLimit!,
    if (producerOverride != null) 'producerOverride': producerOverride!,
    if (producerQuotaPolicy != null)
      'producerQuotaPolicy': producerQuotaPolicy!,
    if (rolloutInfo != null) 'rolloutInfo': rolloutInfo!,
  };
}

/// A quota override
class V1Beta1QuotaOverride {
  /// The resource name of the ancestor that requested the override.
  ///
  /// For example: "organizations/12345" or "folders/67890". Used by admin
  /// overrides only.
  core.String? adminOverrideAncestor;

  /// If this map is nonempty, then this override applies only to specific
  /// values for dimensions defined in the limit unit.
  ///
  /// For example, an override on a limit with the unit 1/{project}/{region}
  /// could contain an entry with the key "region" and the value "us-east-1";
  /// the override is only applied to quota consumed in that region. This map
  /// has the following restrictions: * Keys that are not defined in the limit's
  /// unit are not valid keys. Any string appearing in {brackets} in the unit
  /// (besides {project} or {user}) is a defined key. * "project" is not a valid
  /// key; the project is already specified in the parent resource name. *
  /// "user" is not a valid key; the API does not support quota overrides that
  /// apply only to a specific user. * If "region" appears as a key, its value
  /// must be a valid Cloud region. * If "zone" appears as a key, its value must
  /// be a valid Cloud zone. * If any valid key other than "region" or "zone"
  /// appears in the map, then all valid keys other than "region" or "zone" must
  /// also appear in the map.
  core.Map<core.String, core.String>? dimensions;

  /// The name of the metric to which this override applies.
  ///
  /// An example name would be: `compute.googleapis.com/cpus`
  core.String? metric;

  /// The resource name of the producer override.
  ///
  /// An example name would be:
  /// `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d`
  core.String? name;

  /// The overriding quota limit value.
  ///
  /// Can be any nonnegative integer, or -1 (unlimited quota).
  core.String? overrideValue;

  /// The limit unit of the limit to which this override applies.
  ///
  /// An example unit would be: `1/{project}/{region}` Note that `{project}` and
  /// `{region}` are not placeholders in this example; the literal characters
  /// `{` and `}` occur in the string.
  core.String? unit;

  V1Beta1QuotaOverride({
    this.adminOverrideAncestor,
    this.dimensions,
    this.metric,
    this.name,
    this.overrideValue,
    this.unit,
  });

  V1Beta1QuotaOverride.fromJson(core.Map json_)
    : this(
        adminOverrideAncestor: json_['adminOverrideAncestor'] as core.String?,
        dimensions: (json_['dimensions']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        metric: json_['metric'] as core.String?,
        name: json_['name'] as core.String?,
        overrideValue: json_['overrideValue'] as core.String?,
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminOverrideAncestor != null)
      'adminOverrideAncestor': adminOverrideAncestor!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (metric != null) 'metric': metric!,
    if (name != null) 'name': name!,
    if (overrideValue != null) 'overrideValue': overrideValue!,
    if (unit != null) 'unit': unit!,
  };
}

/// Rollout information of a quota.
///
/// Output only.
typedef V1Beta1RolloutInfo = $RolloutInfo;
