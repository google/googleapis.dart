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

/// Pub/Sub Lite API - v1
///
/// For more information, see <https://cloud.google.com/pubsub/lite/docs>
///
/// Create an instance of [PubsubLiteApi] to access these resources:
///
/// - [AdminResource]
///   - [AdminProjectsResource]
///     - [AdminProjectsLocationsResource]
///       - [AdminProjectsLocationsOperationsResource]
///       - [AdminProjectsLocationsReservationsResource]
///         - [AdminProjectsLocationsReservationsTopicsResource]
///       - [AdminProjectsLocationsSubscriptionsResource]
///       - [AdminProjectsLocationsTopicsResource]
///         - [AdminProjectsLocationsTopicsSubscriptionsResource]
/// - [CursorResource]
///   - [CursorProjectsResource]
///     - [CursorProjectsLocationsResource]
///       - [CursorProjectsLocationsSubscriptionsResource]
///         - [CursorProjectsLocationsSubscriptionsCursorsResource]
/// - [TopicStatsResource]
///   - [TopicStatsProjectsResource]
///     - [TopicStatsProjectsLocationsResource]
///       - [TopicStatsProjectsLocationsTopicsResource]
library pubsublite.v1;

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

class PubsubLiteApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  AdminResource get admin => AdminResource(_requester);
  CursorResource get cursor => CursorResource(_requester);
  TopicStatsResource get topicStats => TopicStatsResource(_requester);

  PubsubLiteApi(http.Client client,
      {core.String rootUrl = 'https://pubsublite.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AdminResource {
  final commons.ApiRequester _requester;

  AdminProjectsResource get projects => AdminProjectsResource(_requester);

  AdminResource(commons.ApiRequester client) : _requester = client;
}

class AdminProjectsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsResource get locations =>
      AdminProjectsLocationsResource(_requester);

  AdminProjectsResource(commons.ApiRequester client) : _requester = client;
}

class AdminProjectsLocationsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsOperationsResource get operations =>
      AdminProjectsLocationsOperationsResource(_requester);
  AdminProjectsLocationsReservationsResource get reservations =>
      AdminProjectsLocationsReservationsResource(_requester);
  AdminProjectsLocationsSubscriptionsResource get subscriptions =>
      AdminProjectsLocationsSubscriptionsResource(_requester);
  AdminProjectsLocationsTopicsResource get topics =>
      AdminProjectsLocationsTopicsResource(_requester);

  AdminProjectsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class AdminProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdminProjectsLocationsReservationsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsReservationsTopicsResource get topics =>
      AdminProjectsLocationsReservationsTopicsResource(_requester);

  AdminProjectsLocationsReservationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new reservation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location in which to create the
  /// reservation. Structured like
  /// `projects/{project_number}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [reservationId] - Required. The ID to use for the reservation, which will
  /// become the final component of the reservation's name. This value is
  /// structured like: `my-reservation-name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reservation> create(
    Reservation request,
    core.String parent, {
    core.String? reservationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (reservationId != null) 'reservationId': [reservationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$parent') + '/reservations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Reservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified reservation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the reservation to delete. Structured like:
  /// projects/{project_number}/locations/{location}/reservations/{reservation_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the reservation configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the reservation whose configuration to
  /// return. Structured like:
  /// projects/{project_number}/locations/{location}/reservations/{reservation_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reservation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Reservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of reservations for the given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent whose reservations are to be listed.
  /// Structured like `projects/{project_number}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of reservations to return. The service may
  /// return fewer than this value. If unset or zero, all reservations for the
  /// parent will be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListReservations`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListReservations` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReservationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReservationsResponse> list(
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

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$parent') + '/reservations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReservationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates properties of the specified reservation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the reservation. Structured like:
  /// projects/{project_number}/locations/{location}/reservations/{reservation_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A mask specifying the reservation fields to
  /// change.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Reservation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Reservation> patch(
    Reservation request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Reservation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdminProjectsLocationsReservationsTopicsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsReservationsTopicsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the topics attached to the specified reservation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the reservation whose topics to list.
  /// Structured like:
  /// projects/{project_number}/locations/{location}/reservations/{reservation_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/reservations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of topics to return. The service may
  /// return fewer than this value. If unset or zero, all topics for the given
  /// reservation will be returned.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListReservationTopics` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListReservationTopics` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReservationTopicsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReservationTopicsResponse> list(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name') + '/topics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReservationTopicsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdminProjectsLocationsSubscriptionsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location in which to create the
  /// subscription. Structured like
  /// `projects/{project_number}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [skipBacklog] - If true, the newly created subscription will only receive
  /// messages published after the subscription was created. Otherwise, the
  /// entire message backlog will be received on the subscription. Defaults to
  /// false.
  ///
  /// [subscriptionId] - Required. The ID to use for the subscription, which
  /// will become the final component of the subscription's name. This value is
  /// structured like: `my-sub-name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> create(
    Subscription request,
    core.String parent, {
    core.bool? skipBacklog,
    core.String? subscriptionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (skipBacklog != null) 'skipBacklog': ['${skipBacklog}'],
      if (subscriptionId != null) 'subscriptionId': [subscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/admin/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified subscription.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the subscription configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription whose configuration to
  /// return.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of subscriptions for the given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent whose subscriptions are to be listed.
  /// Structured like `projects/{project_number}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of subscriptions to return. The service
  /// may return fewer than this value. If unset or zero, all subscriptions for
  /// the parent will be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListSubscriptions`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSubscriptions` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionsResponse> list(
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
        'v1/admin/' + core.Uri.encodeFull('$parent') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates properties of the specified subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the subscription. Structured like:
  /// projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A mask specifying the subscription fields to
  /// change.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> patch(
    Subscription request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Performs an out-of-band seek for a subscription to a specified target,
  /// which may be timestamps or named positions within the message backlog.
  ///
  /// Seek translates these targets to cursors for each partition and
  /// orchestrates subscribers to start consuming messages from these seek
  /// cursors. If an operation is returned, the seek has been registered and
  /// subscribers will eventually receive messages from the seek cursors (i.e.
  /// eventual consistency), as long as they are using a minimum supported
  /// client library version and not a system that tracks cursors independently
  /// of Pub/Sub Lite (e.g. Apache Beam, Dataflow, Spark). The seek operation
  /// will fail for unsupported clients. If clients would like to know when
  /// subscribers react to the seek (or not), they can poll the operation. The
  /// seek operation will succeed and complete once subscribers are ready to
  /// receive messages from the seek cursors for all partitions of the topic.
  /// This means that the seek operation will not complete until all subscribers
  /// come online. If the previous seek operation has not yet completed, it will
  /// be aborted and the new invocation of seek will supersede it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription to seek.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Operation> seek(
    SeekSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name') + ':seek';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdminProjectsLocationsTopicsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsTopicsSubscriptionsResource get subscriptions =>
      AdminProjectsLocationsTopicsSubscriptionsResource(_requester);

  AdminProjectsLocationsTopicsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location in which to create the topic.
  /// Structured like `projects/{project_number}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [topicId] - Required. The ID to use for the topic, which will become the
  /// final component of the topic's name. This value is structured like:
  /// `my-topic-name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> create(
    Topic request,
    core.String parent, {
    core.String? topicId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (topicId != null) 'topicId': [topicId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$parent') + '/topics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified topic.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the topic configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic whose configuration to return.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the partition information for the requested topic.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The topic whose partition information to return.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TopicPartitions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TopicPartitions> getPartitions(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name') + '/partitions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TopicPartitions.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of topics for the given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent whose topics are to be listed. Structured
  /// like `projects/{project_number}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of topics to return. The service may
  /// return fewer than this value. If unset or zero, all topics for the parent
  /// will be returned.
  ///
  /// [pageToken] - A page token, received from a previous `ListTopics` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListTopics` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicsResponse> list(
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

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$parent') + '/topics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates properties of the specified topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the topic. Structured like:
  /// projects/{project_number}/locations/{location}/topics/{topic_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A mask specifying the topic fields to change.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> patch(
    Topic request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdminProjectsLocationsTopicsSubscriptionsResource {
  final commons.ApiRequester _requester;

  AdminProjectsLocationsTopicsSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the subscriptions attached to the specified topic.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic whose subscriptions to list.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of subscriptions to return. The service
  /// may return fewer than this value. If unset or zero, all subscriptions for
  /// the given topic will be returned.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListTopicSubscriptions` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListTopicSubscriptions` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicSubscriptionsResponse> list(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/admin/' + core.Uri.encodeFull('$name') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicSubscriptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CursorResource {
  final commons.ApiRequester _requester;

  CursorProjectsResource get projects => CursorProjectsResource(_requester);

  CursorResource(commons.ApiRequester client) : _requester = client;
}

class CursorProjectsResource {
  final commons.ApiRequester _requester;

  CursorProjectsLocationsResource get locations =>
      CursorProjectsLocationsResource(_requester);

  CursorProjectsResource(commons.ApiRequester client) : _requester = client;
}

class CursorProjectsLocationsResource {
  final commons.ApiRequester _requester;

  CursorProjectsLocationsSubscriptionsResource get subscriptions =>
      CursorProjectsLocationsSubscriptionsResource(_requester);

  CursorProjectsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class CursorProjectsLocationsSubscriptionsResource {
  final commons.ApiRequester _requester;

  CursorProjectsLocationsSubscriptionsCursorsResource get cursors =>
      CursorProjectsLocationsSubscriptionsCursorsResource(_requester);

  CursorProjectsLocationsSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Updates the committed cursor.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - The subscription for which to update the cursor.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitCursorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitCursorResponse> commitCursor(
    CommitCursorRequest request,
    core.String subscription, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/cursor/' + core.Uri.encodeFull('$subscription') + ':commitCursor';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitCursorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CursorProjectsLocationsSubscriptionsCursorsResource {
  final commons.ApiRequester _requester;

  CursorProjectsLocationsSubscriptionsCursorsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Returns all committed cursor information for a subscription.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The subscription for which to retrieve cursors.
  /// Structured like
  /// `projects/{project_number}/locations/{location}/subscriptions/{subscription_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of cursors to return. The service may
  /// return fewer than this value. If unset or zero, all cursors for the parent
  /// will be returned.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListPartitionCursors` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListPartitionCursors`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPartitionCursorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPartitionCursorsResponse> list(
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

    final url_ = 'v1/cursor/' + core.Uri.encodeFull('$parent') + '/cursors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPartitionCursorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TopicStatsResource {
  final commons.ApiRequester _requester;

  TopicStatsProjectsResource get projects =>
      TopicStatsProjectsResource(_requester);

  TopicStatsResource(commons.ApiRequester client) : _requester = client;
}

class TopicStatsProjectsResource {
  final commons.ApiRequester _requester;

  TopicStatsProjectsLocationsResource get locations =>
      TopicStatsProjectsLocationsResource(_requester);

  TopicStatsProjectsResource(commons.ApiRequester client) : _requester = client;
}

class TopicStatsProjectsLocationsResource {
  final commons.ApiRequester _requester;

  TopicStatsProjectsLocationsTopicsResource get topics =>
      TopicStatsProjectsLocationsTopicsResource(_requester);

  TopicStatsProjectsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class TopicStatsProjectsLocationsTopicsResource {
  final commons.ApiRequester _requester;

  TopicStatsProjectsLocationsTopicsResource(commons.ApiRequester client)
      : _requester = client;

  /// Compute the head cursor for the partition.
  ///
  /// The head cursor's offset is guaranteed to be less than or equal to all
  /// messages which have not yet been acknowledged as published, and greater
  /// than the offset of any message whose publish has already been
  /// acknowledged. It is zero if there have never been messages in the
  /// partition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The topic for which we should compute the head cursor.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeHeadCursorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeHeadCursorResponse> computeHeadCursor(
    ComputeHeadCursorRequest request,
    core.String topic, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/topicStats/' + core.Uri.encodeFull('$topic') + ':computeHeadCursor';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ComputeHeadCursorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Compute statistics about a range of messages in a given topic and
  /// partition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The topic for which we should compute message stats.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeMessageStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeMessageStatsResponse> computeMessageStats(
    ComputeMessageStatsRequest request,
    core.String topic, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/topicStats/' +
        core.Uri.encodeFull('$topic') +
        ':computeMessageStats';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ComputeMessageStatsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Compute the corresponding cursor for a publish or event time in a topic
  /// partition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The topic for which we should compute the cursor.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ComputeTimeCursorResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ComputeTimeCursorResponse> computeTimeCursor(
    ComputeTimeCursorRequest request,
    core.String topic, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/topicStats/' + core.Uri.encodeFull('$topic') + ':computeTimeCursor';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ComputeTimeCursorResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// The throughput capacity configuration for each partition.
class Capacity {
  /// Publish throughput capacity per partition in MiB/s.
  ///
  /// Must be \>= 4 and \<= 16.
  core.int? publishMibPerSec;

  /// Subscribe throughput capacity per partition in MiB/s.
  ///
  /// Must be \>= 4 and \<= 32.
  core.int? subscribeMibPerSec;

  Capacity({
    this.publishMibPerSec,
    this.subscribeMibPerSec,
  });

  Capacity.fromJson(core.Map json_)
      : this(
          publishMibPerSec: json_.containsKey('publishMibPerSec')
              ? json_['publishMibPerSec'] as core.int
              : null,
          subscribeMibPerSec: json_.containsKey('subscribeMibPerSec')
              ? json_['subscribeMibPerSec'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publishMibPerSec != null) 'publishMibPerSec': publishMibPerSec!,
        if (subscribeMibPerSec != null)
          'subscribeMibPerSec': subscribeMibPerSec!,
      };
}

/// Request for CommitCursor.
class CommitCursorRequest {
  /// The new value for the committed cursor.
  Cursor? cursor;

  /// The partition for which to update the cursor.
  ///
  /// Partitions are zero indexed, so `partition` must be in the range \[0,
  /// topic.num_partitions).
  core.String? partition;

  CommitCursorRequest({
    this.cursor,
    this.partition,
  });

  CommitCursorRequest.fromJson(core.Map json_)
      : this(
          cursor: json_.containsKey('cursor')
              ? Cursor.fromJson(
                  json_['cursor'] as core.Map<core.String, core.dynamic>)
              : null,
          partition: json_.containsKey('partition')
              ? json_['partition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cursor != null) 'cursor': cursor!,
        if (partition != null) 'partition': partition!,
      };
}

/// Response for CommitCursor.
typedef CommitCursorResponse = $Empty;

/// Compute the current head cursor for a partition.
class ComputeHeadCursorRequest {
  /// The partition for which we should compute the head cursor.
  ///
  /// Required.
  core.String? partition;

  ComputeHeadCursorRequest({
    this.partition,
  });

  ComputeHeadCursorRequest.fromJson(core.Map json_)
      : this(
          partition: json_.containsKey('partition')
              ? json_['partition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partition != null) 'partition': partition!,
      };
}

/// Response containing the head cursor for the requested topic and partition.
class ComputeHeadCursorResponse {
  /// The head cursor.
  Cursor? headCursor;

  ComputeHeadCursorResponse({
    this.headCursor,
  });

  ComputeHeadCursorResponse.fromJson(core.Map json_)
      : this(
          headCursor: json_.containsKey('headCursor')
              ? Cursor.fromJson(
                  json_['headCursor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headCursor != null) 'headCursor': headCursor!,
      };
}

/// Compute statistics about a range of messages in a given topic and partition.
class ComputeMessageStatsRequest {
  /// The exclusive end of the range.
  ///
  /// The range is empty if end_cursor \<= start_cursor. Specifying a
  /// start_cursor before the first message and an end_cursor after the last
  /// message will retrieve all messages.
  Cursor? endCursor;

  /// The partition for which we should compute message stats.
  ///
  /// Required.
  core.String? partition;

  /// The inclusive start of the range.
  Cursor? startCursor;

  ComputeMessageStatsRequest({
    this.endCursor,
    this.partition,
    this.startCursor,
  });

  ComputeMessageStatsRequest.fromJson(core.Map json_)
      : this(
          endCursor: json_.containsKey('endCursor')
              ? Cursor.fromJson(
                  json_['endCursor'] as core.Map<core.String, core.dynamic>)
              : null,
          partition: json_.containsKey('partition')
              ? json_['partition'] as core.String
              : null,
          startCursor: json_.containsKey('startCursor')
              ? Cursor.fromJson(
                  json_['startCursor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endCursor != null) 'endCursor': endCursor!,
        if (partition != null) 'partition': partition!,
        if (startCursor != null) 'startCursor': startCursor!,
      };
}

/// Response containing stats for messages in the requested topic and partition.
class ComputeMessageStatsResponse {
  /// The number of quota bytes accounted to these messages.
  core.String? messageBytes;

  /// The count of messages.
  core.String? messageCount;

  /// The minimum event timestamp across these messages.
  ///
  /// For the purposes of this computation, if a message does not have an event
  /// time, we use the publish time. The timestamp will be unset if there are no
  /// messages.
  core.String? minimumEventTime;

  /// The minimum publish timestamp across these messages.
  ///
  /// Note that publish timestamps within a partition are not guaranteed to be
  /// non-decreasing. The timestamp will be unset if there are no messages.
  core.String? minimumPublishTime;

  ComputeMessageStatsResponse({
    this.messageBytes,
    this.messageCount,
    this.minimumEventTime,
    this.minimumPublishTime,
  });

  ComputeMessageStatsResponse.fromJson(core.Map json_)
      : this(
          messageBytes: json_.containsKey('messageBytes')
              ? json_['messageBytes'] as core.String
              : null,
          messageCount: json_.containsKey('messageCount')
              ? json_['messageCount'] as core.String
              : null,
          minimumEventTime: json_.containsKey('minimumEventTime')
              ? json_['minimumEventTime'] as core.String
              : null,
          minimumPublishTime: json_.containsKey('minimumPublishTime')
              ? json_['minimumPublishTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageBytes != null) 'messageBytes': messageBytes!,
        if (messageCount != null) 'messageCount': messageCount!,
        if (minimumEventTime != null) 'minimumEventTime': minimumEventTime!,
        if (minimumPublishTime != null)
          'minimumPublishTime': minimumPublishTime!,
      };
}

/// Compute the corresponding cursor for a publish or event time in a topic
/// partition.
class ComputeTimeCursorRequest {
  /// The partition for which we should compute the cursor.
  ///
  /// Required.
  core.String? partition;

  /// The target publish or event time.
  ///
  /// Specifying a future time will return an unset cursor.
  ///
  /// Required.
  TimeTarget? target;

  ComputeTimeCursorRequest({
    this.partition,
    this.target,
  });

  ComputeTimeCursorRequest.fromJson(core.Map json_)
      : this(
          partition: json_.containsKey('partition')
              ? json_['partition'] as core.String
              : null,
          target: json_.containsKey('target')
              ? TimeTarget.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partition != null) 'partition': partition!,
        if (target != null) 'target': target!,
      };
}

/// Response containing the cursor corresponding to a publish or event time in a
/// topic partition.
class ComputeTimeCursorResponse {
  /// If present, the cursor references the first message with time greater than
  /// or equal to the specified target time.
  ///
  /// If such a message cannot be found, the cursor will be unset (i.e. `cursor`
  /// is not present).
  Cursor? cursor;

  ComputeTimeCursorResponse({
    this.cursor,
  });

  ComputeTimeCursorResponse.fromJson(core.Map json_)
      : this(
          cursor: json_.containsKey('cursor')
              ? Cursor.fromJson(
                  json_['cursor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cursor != null) 'cursor': cursor!,
      };
}

/// A cursor that describes the position of a message within a topic partition.
class Cursor {
  /// The offset of a message within a topic partition.
  ///
  /// Must be greater than or equal 0.
  core.String? offset;

  Cursor({
    this.offset,
  });

  Cursor.fromJson(core.Map json_)
      : this(
          offset: json_.containsKey('offset')
              ? json_['offset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offset != null) 'offset': offset!,
      };
}

/// The settings for a subscription's message delivery.
class DeliveryConfig {
  /// The DeliveryRequirement for this subscription.
  /// Possible string values are:
  /// - "DELIVERY_REQUIREMENT_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "DELIVER_IMMEDIATELY" : The server does not wait for a published message
  /// to be successfully written to storage before delivering it to subscribers.
  /// - "DELIVER_AFTER_STORED" : The server will not deliver a published message
  /// to subscribers until the message has been successfully written to storage.
  /// This will result in higher end-to-end latency, but consistent delivery.
  core.String? deliveryRequirement;

  DeliveryConfig({
    this.deliveryRequirement,
  });

  DeliveryConfig.fromJson(core.Map json_)
      : this(
          deliveryRequirement: json_.containsKey('deliveryRequirement')
              ? json_['deliveryRequirement'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliveryRequirement != null)
          'deliveryRequirement': deliveryRequirement!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response for ListPartitionCursors
class ListPartitionCursorsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The partition cursors from this request.
  core.List<PartitionCursor>? partitionCursors;

  ListPartitionCursorsResponse({
    this.nextPageToken,
    this.partitionCursors,
  });

  ListPartitionCursorsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          partitionCursors: json_.containsKey('partitionCursors')
              ? (json_['partitionCursors'] as core.List)
                  .map((value) => PartitionCursor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (partitionCursors != null) 'partitionCursors': partitionCursors!,
      };
}

/// Response for ListReservationTopics.
class ListReservationTopicsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// The names of topics attached to the reservation.
  ///
  /// The order of the topics is unspecified.
  core.List<core.String>? topics;

  ListReservationTopicsResponse({
    this.nextPageToken,
    this.topics,
  });

  ListReservationTopicsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          topics: json_.containsKey('topics')
              ? (json_['topics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (topics != null) 'topics': topics!,
      };
}

/// Response for ListReservations.
class ListReservationsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// The list of reservation in the requested parent.
  ///
  /// The order of the reservations is unspecified.
  core.List<Reservation>? reservations;

  ListReservationsResponse({
    this.nextPageToken,
    this.reservations,
  });

  ListReservationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reservations: json_.containsKey('reservations')
              ? (json_['reservations'] as core.List)
                  .map((value) => Reservation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reservations != null) 'reservations': reservations!,
      };
}

/// Response for ListSubscriptions.
class ListSubscriptionsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// The list of subscriptions in the requested parent.
  ///
  /// The order of the subscriptions is unspecified.
  core.List<Subscription>? subscriptions;

  ListSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  ListSubscriptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subscriptions: json_.containsKey('subscriptions')
              ? (json_['subscriptions'] as core.List)
                  .map((value) => Subscription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subscriptions != null) 'subscriptions': subscriptions!,
      };
}

/// Response for ListTopicSubscriptions.
class ListTopicSubscriptionsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// The names of subscriptions attached to the topic.
  ///
  /// The order of the subscriptions is unspecified.
  core.List<core.String>? subscriptions;

  ListTopicSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  ListTopicSubscriptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subscriptions: json_.containsKey('subscriptions')
              ? (json_['subscriptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subscriptions != null) 'subscriptions': subscriptions!,
      };
}

/// Response for ListTopics.
class ListTopicsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page of
  /// results.
  ///
  /// If this field is omitted, there are no more results.
  core.String? nextPageToken;

  /// The list of topic in the requested parent.
  ///
  /// The order of the topics is unspecified.
  core.List<Topic>? topics;

  ListTopicsResponse({
    this.nextPageToken,
    this.topics,
  });

  ListTopicsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          topics: json_.containsKey('topics')
              ? (json_['topics'] as core.List)
                  .map((value) => Topic.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (topics != null) 'topics': topics!,
      };
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

  /// The normal response of the operation in case of success.
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

/// The settings for a topic's partitions.
class PartitionConfig {
  /// The capacity configuration.
  Capacity? capacity;

  /// The number of partitions in the topic.
  ///
  /// Must be at least 1. Once a topic has been created the number of partitions
  /// can be increased but not decreased. Message ordering is not guaranteed
  /// across a topic resize. For more information see
  /// https://cloud.google.com/pubsub/lite/docs/topics#scaling_capacity
  core.String? count;

  /// DEPRECATED: Use capacity instead which can express a superset of
  /// configurations.
  ///
  /// Every partition in the topic is allocated throughput equivalent to `scale`
  /// times the standard partition throughput (4 MiB/s). This is also reflected
  /// in the cost of this topic; a topic with `scale` of 2 and count of 10 is
  /// charged for 20 partitions. This value must be in the range \[1,4\].
  core.int? scale;

  PartitionConfig({
    this.capacity,
    this.count,
    this.scale,
  });

  PartitionConfig.fromJson(core.Map json_)
      : this(
          capacity: json_.containsKey('capacity')
              ? Capacity.fromJson(
                  json_['capacity'] as core.Map<core.String, core.dynamic>)
              : null,
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          scale: json_.containsKey('scale') ? json_['scale'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capacity != null) 'capacity': capacity!,
        if (count != null) 'count': count!,
        if (scale != null) 'scale': scale!,
      };
}

/// A pair of a Cursor and the partition it is for.
class PartitionCursor {
  /// The value of the cursor.
  Cursor? cursor;

  /// The partition this is for.
  core.String? partition;

  PartitionCursor({
    this.cursor,
    this.partition,
  });

  PartitionCursor.fromJson(core.Map json_)
      : this(
          cursor: json_.containsKey('cursor')
              ? Cursor.fromJson(
                  json_['cursor'] as core.Map<core.String, core.dynamic>)
              : null,
          partition: json_.containsKey('partition')
              ? json_['partition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cursor != null) 'cursor': cursor!,
        if (partition != null) 'partition': partition!,
      };
}

/// Metadata about a reservation resource.
class Reservation {
  /// The name of the reservation.
  ///
  /// Structured like:
  /// projects/{project_number}/locations/{location}/reservations/{reservation_id}
  core.String? name;

  /// The reserved throughput capacity.
  ///
  /// Every unit of throughput capacity is equivalent to 1 MiB/s of published
  /// messages or 2 MiB/s of subscribed messages. Any topics which are declared
  /// as using capacity from a Reservation will consume resources from this
  /// reservation instead of being charged individually.
  core.String? throughputCapacity;

  Reservation({
    this.name,
    this.throughputCapacity,
  });

  Reservation.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          throughputCapacity: json_.containsKey('throughputCapacity')
              ? json_['throughputCapacity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (throughputCapacity != null)
          'throughputCapacity': throughputCapacity!,
      };
}

/// The settings for this topic's Reservation usage.
class ReservationConfig {
  /// The Reservation to use for this topic's throughput capacity.
  ///
  /// Structured like:
  /// projects/{project_number}/locations/{location}/reservations/{reservation_id}
  core.String? throughputReservation;

  ReservationConfig({
    this.throughputReservation,
  });

  ReservationConfig.fromJson(core.Map json_)
      : this(
          throughputReservation: json_.containsKey('throughputReservation')
              ? json_['throughputReservation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (throughputReservation != null)
          'throughputReservation': throughputReservation!,
      };
}

/// The settings for a topic's message retention.
class RetentionConfig {
  /// The provisioned storage, in bytes, per partition.
  ///
  /// If the number of bytes stored in any of the topic's partitions grows
  /// beyond this value, older messages will be dropped to make room for newer
  /// ones, regardless of the value of `period`.
  core.String? perPartitionBytes;

  /// How long a published message is retained.
  ///
  /// If unset, messages will be retained as long as the bytes retained for each
  /// partition is below `per_partition_bytes`.
  core.String? period;

  RetentionConfig({
    this.perPartitionBytes,
    this.period,
  });

  RetentionConfig.fromJson(core.Map json_)
      : this(
          perPartitionBytes: json_.containsKey('perPartitionBytes')
              ? json_['perPartitionBytes'] as core.String
              : null,
          period: json_.containsKey('period')
              ? json_['period'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (perPartitionBytes != null) 'perPartitionBytes': perPartitionBytes!,
        if (period != null) 'period': period!,
      };
}

/// Request for SeekSubscription.
class SeekSubscriptionRequest {
  /// Seek to a named position with respect to the message backlog.
  /// Possible string values are:
  /// - "NAMED_TARGET_UNSPECIFIED" : Unspecified named target. Do not use.
  /// - "TAIL" : Seek to the oldest retained message.
  /// - "HEAD" : Seek past all recently published messages, skipping the entire
  /// message backlog.
  core.String? namedTarget;

  /// Seek to the first message whose publish or event time is greater than or
  /// equal to the specified query time.
  ///
  /// If no such message can be located, will seek to the end of the message
  /// backlog.
  TimeTarget? timeTarget;

  SeekSubscriptionRequest({
    this.namedTarget,
    this.timeTarget,
  });

  SeekSubscriptionRequest.fromJson(core.Map json_)
      : this(
          namedTarget: json_.containsKey('namedTarget')
              ? json_['namedTarget'] as core.String
              : null,
          timeTarget: json_.containsKey('timeTarget')
              ? TimeTarget.fromJson(
                  json_['timeTarget'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namedTarget != null) 'namedTarget': namedTarget!,
        if (timeTarget != null) 'timeTarget': timeTarget!,
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

/// Metadata about a subscription resource.
class Subscription {
  /// The settings for this subscription's message delivery.
  DeliveryConfig? deliveryConfig;

  /// The name of the subscription.
  ///
  /// Structured like:
  /// projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  core.String? name;

  /// The name of the topic this subscription is attached to.
  ///
  /// Structured like:
  /// projects/{project_number}/locations/{location}/topics/{topic_id}
  core.String? topic;

  Subscription({
    this.deliveryConfig,
    this.name,
    this.topic,
  });

  Subscription.fromJson(core.Map json_)
      : this(
          deliveryConfig: json_.containsKey('deliveryConfig')
              ? DeliveryConfig.fromJson(json_['deliveryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliveryConfig != null) 'deliveryConfig': deliveryConfig!,
        if (name != null) 'name': name!,
        if (topic != null) 'topic': topic!,
      };
}

/// A target publish or event time.
///
/// Can be used for seeking to or retrieving the corresponding cursor.
class TimeTarget {
  /// Request the cursor of the first message with event time greater than or
  /// equal to `event_time`.
  ///
  /// If messages are missing an event time, the publish time is used as a
  /// fallback. As event times are user supplied, subsequent messages may have
  /// event times less than `event_time` and should be filtered by the client,
  /// if necessary.
  core.String? eventTime;

  /// Request the cursor of the first message with publish time greater than or
  /// equal to `publish_time`.
  ///
  /// All messages thereafter are guaranteed to have publish times \>=
  /// `publish_time`.
  core.String? publishTime;

  TimeTarget({
    this.eventTime,
    this.publishTime,
  });

  TimeTarget.fromJson(core.Map json_)
      : this(
          eventTime: json_.containsKey('eventTime')
              ? json_['eventTime'] as core.String
              : null,
          publishTime: json_.containsKey('publishTime')
              ? json_['publishTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventTime != null) 'eventTime': eventTime!,
        if (publishTime != null) 'publishTime': publishTime!,
      };
}

/// Metadata about a topic resource.
class Topic {
  /// The name of the topic.
  ///
  /// Structured like:
  /// projects/{project_number}/locations/{location}/topics/{topic_id}
  core.String? name;

  /// The settings for this topic's partitions.
  PartitionConfig? partitionConfig;

  /// The settings for this topic's Reservation usage.
  ReservationConfig? reservationConfig;

  /// The settings for this topic's message retention.
  RetentionConfig? retentionConfig;

  Topic({
    this.name,
    this.partitionConfig,
    this.reservationConfig,
    this.retentionConfig,
  });

  Topic.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          partitionConfig: json_.containsKey('partitionConfig')
              ? PartitionConfig.fromJson(json_['partitionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reservationConfig: json_.containsKey('reservationConfig')
              ? ReservationConfig.fromJson(json_['reservationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          retentionConfig: json_.containsKey('retentionConfig')
              ? RetentionConfig.fromJson(json_['retentionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (partitionConfig != null) 'partitionConfig': partitionConfig!,
        if (reservationConfig != null) 'reservationConfig': reservationConfig!,
        if (retentionConfig != null) 'retentionConfig': retentionConfig!,
      };
}

/// Response for GetTopicPartitions.
class TopicPartitions {
  /// The number of partitions in the topic.
  core.String? partitionCount;

  TopicPartitions({
    this.partitionCount,
  });

  TopicPartitions.fromJson(core.Map json_)
      : this(
          partitionCount: json_.containsKey('partitionCount')
              ? json_['partitionCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionCount != null) 'partitionCount': partitionCount!,
      };
}
