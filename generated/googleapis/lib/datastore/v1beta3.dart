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

/// Cloud Datastore API - v1beta3
///
/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
///
/// For more information, see <https://cloud.google.com/datastore/>
///
/// Create an instance of [DatastoreApi] to access these resources:
///
/// - [ProjectsResource]
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

/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
class DatastoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatastoreApi(
    http.Client client, {
    core.String rootUrl = 'https://datastore.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Allocates IDs for the given keys, which is useful for referencing an
  /// entity before it is inserted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AllocateIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AllocateIdsResponse> allocateIds(
    AllocateIdsRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':allocateIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AllocateIdsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Begins a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BeginTransactionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BeginTransactionResponse> beginTransaction(
    BeginTransactionRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':beginTransaction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BeginTransactionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Commits a transaction, optionally creating, deleting or modifying some
  /// entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitResponse> commit(
    CommitRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' + commons.escapeVariable('$projectId') + ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Looks up entities by key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupResponse> lookup(
    LookupRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' + commons.escapeVariable('$projectId') + ':lookup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LookupResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Prevents the supplied keys' IDs from being auto-allocated by Cloud
  /// Datastore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReserveIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReserveIdsResponse> reserveIds(
    ReserveIdsRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':reserveIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReserveIdsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RollbackResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RollbackResponse> rollback(
    RollbackRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RollbackResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Runs an aggregation query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunAggregationQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunAggregationQueryResponse> runAggregationQuery(
    RunAggregationQueryRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':runAggregationQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunAggregationQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries for entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the project against which to make the
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunQueryResponse> runQuery(
    RunQueryRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/projects/' +
        commons.escapeVariable('$projectId') +
        ':runQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RunQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Defines an aggregation that produces a single result.
class Aggregation {
  /// Optional name of the property to store the result of the aggregation.
  ///
  /// If not provided, Datastore will pick a default name following the format
  /// `property_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
  /// COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) OVER ( ... );
  /// ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2)
  /// AS property_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) AS property_2
  /// OVER ( ... ); ``` Requires: * Must be unique across all aggregation
  /// aliases. * Conform to entity property name limitations.
  ///
  /// Optional.
  core.String? alias;

  /// Average aggregator.
  Avg? avg;

  /// Count aggregator.
  Count? count;

  /// Sum aggregator.
  Sum? sum;

  Aggregation({this.alias, this.avg, this.count, this.sum});

  Aggregation.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        avg:
            json_.containsKey('avg')
                ? Avg.fromJson(
                  json_['avg'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        count:
            json_.containsKey('count')
                ? Count.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sum:
            json_.containsKey('sum')
                ? Sum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alias != null) 'alias': alias!,
    if (avg != null) 'avg': avg!,
    if (count != null) 'count': count!,
    if (sum != null) 'sum': sum!,
  };
}

/// Datastore query for running an aggregation over a Query.
class AggregationQuery {
  /// Series of aggregations to apply over the results of the `nested_query`.
  ///
  /// Requires: * A minimum of one and maximum of five aggregations per query.
  ///
  /// Optional.
  core.List<Aggregation>? aggregations;

  /// Nested query for aggregation
  Query? nestedQuery;

  AggregationQuery({this.aggregations, this.nestedQuery});

  AggregationQuery.fromJson(core.Map json_)
    : this(
        aggregations:
            (json_['aggregations'] as core.List?)
                ?.map(
                  (value) => Aggregation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nestedQuery:
            json_.containsKey('nestedQuery')
                ? Query.fromJson(
                  json_['nestedQuery'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregations != null) 'aggregations': aggregations!,
    if (nestedQuery != null) 'nestedQuery': nestedQuery!,
  };
}

/// The result of a single bucket from a Datastore aggregation query.
///
/// The keys of `aggregate_properties` are the same for all results in an
/// aggregation query, unlike entity queries which can have different fields
/// present for each result.
class AggregationResult {
  /// The result of the aggregation functions, ex: `COUNT(*) AS total_entities`.
  ///
  /// The key is the alias assigned to the aggregation function on input and the
  /// size of this map equals the number of aggregation functions in the query.
  core.Map<core.String, Value>? aggregateProperties;

  AggregationResult({this.aggregateProperties});

  AggregationResult.fromJson(core.Map json_)
    : this(
        aggregateProperties: (json_['aggregateProperties']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Value.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregateProperties != null)
      'aggregateProperties': aggregateProperties!,
  };
}

/// A batch of aggregation results produced by an aggregation query.
class AggregationResultBatch {
  /// The aggregation results for this batch.
  core.List<AggregationResult>? aggregationResults;

  /// The state of the query after the current batch.
  ///
  /// Only COUNT(*) aggregations are supported in the initial launch. Therefore,
  /// expected result type is limited to `NO_MORE_RESULTS`.
  /// Possible string values are:
  /// - "MORE_RESULTS_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "NOT_FINISHED" : There may be additional batches to fetch from this
  /// query.
  /// - "MORE_RESULTS_AFTER_LIMIT" : The query is finished, but there may be
  /// more results after the limit.
  /// - "MORE_RESULTS_AFTER_CURSOR" : The query is finished, but there may be
  /// more results after the end cursor.
  /// - "NO_MORE_RESULTS" : The query is finished, and there are no more
  /// results.
  core.String? moreResults;

  /// Read timestamp this batch was returned from.
  ///
  /// In a single transaction, subsequent query result batches for the same
  /// query can have a greater timestamp. Each batch's read timestamp is valid
  /// for all preceding batches.
  core.String? readTime;

  AggregationResultBatch({
    this.aggregationResults,
    this.moreResults,
    this.readTime,
  });

  AggregationResultBatch.fromJson(core.Map json_)
    : this(
        aggregationResults:
            (json_['aggregationResults'] as core.List?)
                ?.map(
                  (value) => AggregationResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        moreResults: json_['moreResults'] as core.String?,
        readTime: json_['readTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationResults != null) 'aggregationResults': aggregationResults!,
    if (moreResults != null) 'moreResults': moreResults!,
    if (readTime != null) 'readTime': readTime!,
  };
}

/// The request for Datastore.AllocateIds.
class AllocateIdsRequest {
  /// A list of keys with incomplete key paths for which to allocate IDs.
  ///
  /// No key may be reserved/read-only.
  ///
  /// Required.
  core.List<Key>? keys;

  AllocateIdsRequest({this.keys});

  AllocateIdsRequest.fromJson(core.Map json_)
    : this(
        keys:
            (json_['keys'] as core.List?)
                ?.map(
                  (value) => Key.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keys != null) 'keys': keys!,
  };
}

/// The response for Datastore.AllocateIds.
class AllocateIdsResponse {
  /// The keys specified in the request (in the same order), each with its key
  /// path completed with a newly allocated ID.
  core.List<Key>? keys;

  AllocateIdsResponse({this.keys});

  AllocateIdsResponse.fromJson(core.Map json_)
    : this(
        keys:
            (json_['keys'] as core.List?)
                ?.map(
                  (value) => Key.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keys != null) 'keys': keys!,
  };
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  ///
  /// The order of values in an array is preserved as long as all values have
  /// identical settings for 'exclude_from_indexes'.
  core.List<Value>? values;

  ArrayValue({this.values});

  ArrayValue.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// Average of the values of the requested property.
///
/// * Only numeric values will be aggregated. All non-numeric values including
/// `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`.
/// Infinity math follows IEEE-754 standards. * If the aggregated value set is
/// empty, returns `NULL`. * Always returns the result as a double.
class Avg {
  /// The property to aggregate on.
  PropertyReference? property;

  Avg({this.property});

  Avg.fromJson(core.Map json_)
    : this(
        property:
            json_.containsKey('property')
                ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (property != null) 'property': property!,
  };
}

/// The request for Datastore.BeginTransaction.
class BeginTransactionRequest {
  /// Options for a new transaction.
  TransactionOptions? transactionOptions;

  BeginTransactionRequest({this.transactionOptions});

  BeginTransactionRequest.fromJson(core.Map json_)
    : this(
        transactionOptions:
            json_.containsKey('transactionOptions')
                ? TransactionOptions.fromJson(
                  json_['transactionOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (transactionOptions != null) 'transactionOptions': transactionOptions!,
  };
}

/// The response for Datastore.BeginTransaction.
typedef BeginTransactionResponse = $BeginTransactionResponse00;

/// The request for Datastore.Commit.
class CommitRequest {
  /// The type of commit to perform.
  ///
  /// Defaults to `TRANSACTIONAL`.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "TRANSACTIONAL" : Transactional: The mutations are either all applied,
  /// or none are applied. Learn about transactions
  /// [here](https://cloud.google.com/datastore/docs/concepts/transactions).
  /// - "NON_TRANSACTIONAL" : Non-transactional: The mutations may not apply as
  /// all or none.
  core.String? mode;

  /// The mutations to perform.
  ///
  /// When mode is `TRANSACTIONAL`, mutations affecting a single entity are
  /// applied in order. The following sequences of mutations affecting a single
  /// entity are not permitted in a single `Commit` request: - `insert` followed
  /// by `insert` - `update` followed by `insert` - `upsert` followed by
  /// `insert` - `delete` followed by `update` When mode is `NON_TRANSACTIONAL`,
  /// no two mutations may affect a single entity.
  core.List<Mutation>? mutations;

  /// The identifier of the transaction associated with the commit.
  ///
  /// A transaction identifier is returned by a call to
  /// Datastore.BeginTransaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  CommitRequest({this.mode, this.mutations, this.transaction});

  CommitRequest.fromJson(core.Map json_)
    : this(
        mode: json_['mode'] as core.String?,
        mutations:
            (json_['mutations'] as core.List?)
                ?.map(
                  (value) => Mutation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mode != null) 'mode': mode!,
    if (mutations != null) 'mutations': mutations!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The response for Datastore.Commit.
class CommitResponse {
  /// The transaction commit timestamp.
  ///
  /// Not set for non-transactional commits.
  core.String? commitTime;

  /// The number of index entries updated during the commit, or zero if none
  /// were updated.
  core.int? indexUpdates;

  /// The result of performing the mutations.
  ///
  /// The i-th mutation result corresponds to the i-th mutation in the request.
  core.List<MutationResult>? mutationResults;

  CommitResponse({this.commitTime, this.indexUpdates, this.mutationResults});

  CommitResponse.fromJson(core.Map json_)
    : this(
        commitTime: json_['commitTime'] as core.String?,
        indexUpdates: json_['indexUpdates'] as core.int?,
        mutationResults:
            (json_['mutationResults'] as core.List?)
                ?.map(
                  (value) => MutationResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (commitTime != null) 'commitTime': commitTime!,
    if (indexUpdates != null) 'indexUpdates': indexUpdates!,
    if (mutationResults != null) 'mutationResults': mutationResults!,
  };
}

/// A filter that merges multiple other filters using the given operator.
class CompositeFilter {
  /// The list of filters to combine.
  ///
  /// Requires: * At least one filter is present.
  core.List<Filter>? filters;

  /// The operator for combining multiple filters.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "AND" : The results are required to satisfy each of the combined
  /// filters.
  /// - "OR" : Documents are required to satisfy at least one of the combined
  /// filters.
  core.String? op;

  CompositeFilter({this.filters, this.op});

  CompositeFilter.fromJson(core.Map json_)
    : this(
        filters:
            (json_['filters'] as core.List?)
                ?.map(
                  (value) => Filter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        op: json_['op'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filters != null) 'filters': filters!,
    if (op != null) 'op': op!,
  };
}

/// Count of entities that match the query.
///
/// The `COUNT(*)` aggregation function operates on the entire entity so it does
/// not require a field reference.
typedef Count = $Count00;

/// A Datastore data object.
///
/// Must not exceed 1 MiB - 4 bytes.
class Entity {
  /// The entity's key.
  ///
  /// An entity must have a key, unless otherwise documented (for example, an
  /// entity in `Value.entity_value` may have no key). An entity's kind is its
  /// key path's last element's kind, or null if it has no key.
  Key? key;

  /// The entity's properties.
  ///
  /// The map's keys are property names. A property name matching regex `__.*__`
  /// is reserved. A reserved property name is forbidden in certain documented
  /// contexts. The map keys, represented as UTF-8, must not exceed 1,500 bytes
  /// and cannot be empty.
  core.Map<core.String, Value>? properties;

  Entity({this.key, this.properties});

  Entity.fromJson(core.Map json_)
    : this(
        key:
            json_.containsKey('key')
                ? Key.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties:
            (json_['properties'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                Value.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (properties != null) 'properties': properties!,
  };
}

/// The result of fetching an entity from Datastore.
class EntityResult {
  /// The time at which the entity was created.
  ///
  /// This field is set for `FULL` entity results. If this entity is missing,
  /// this field will not be set.
  core.String? createTime;

  /// A cursor that points to the position after the result entity.
  ///
  /// Set only when the `EntityResult` is part of a `QueryResultBatch` message.
  core.String? cursor;
  core.List<core.int> get cursorAsBytes => convert.base64.decode(cursor!);

  set cursorAsBytes(core.List<core.int> bytes_) {
    cursor = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The resulting entity.
  Entity? entity;

  /// The time at which the entity was last changed.
  ///
  /// This field is set for `FULL` entity results. If this entity is missing,
  /// this field will not be set.
  core.String? updateTime;

  /// The version of the entity, a strictly positive number that monotonically
  /// increases with changes to the entity.
  ///
  /// This field is set for `FULL` entity results. For missing entities in
  /// `LookupResponse`, this is the version of the snapshot that was used to
  /// look up the entity, and it is always set except for eventually consistent
  /// reads.
  core.String? version;

  EntityResult({
    this.createTime,
    this.cursor,
    this.entity,
    this.updateTime,
    this.version,
  });

  EntityResult.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        cursor: json_['cursor'] as core.String?,
        entity:
            json_.containsKey('entity')
                ? Entity.fromJson(
                  json_['entity'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (cursor != null) 'cursor': cursor!,
    if (entity != null) 'entity': entity!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (version != null) 'version': version!,
  };
}

/// Execution statistics for the query.
typedef ExecutionStats = $ExecutionStats;

/// Explain metrics for the query.
class ExplainMetrics {
  /// Aggregated stats from the execution of the query.
  ///
  /// Only present when ExplainOptions.analyze is set to true.
  ExecutionStats? executionStats;

  /// Planning phase information for the query.
  PlanSummary? planSummary;

  ExplainMetrics({this.executionStats, this.planSummary});

  ExplainMetrics.fromJson(core.Map json_)
    : this(
        executionStats:
            json_.containsKey('executionStats')
                ? ExecutionStats.fromJson(
                  json_['executionStats']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        planSummary:
            json_.containsKey('planSummary')
                ? PlanSummary.fromJson(
                  json_['planSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (executionStats != null) 'executionStats': executionStats!,
    if (planSummary != null) 'planSummary': planSummary!,
  };
}

/// Explain options for the query.
typedef ExplainOptions = $ExplainOptions;

/// A holder for any type of filter.
class Filter {
  /// A composite filter.
  CompositeFilter? compositeFilter;

  /// A filter on a property.
  PropertyFilter? propertyFilter;

  Filter({this.compositeFilter, this.propertyFilter});

  Filter.fromJson(core.Map json_)
    : this(
        compositeFilter:
            json_.containsKey('compositeFilter')
                ? CompositeFilter.fromJson(
                  json_['compositeFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        propertyFilter:
            json_.containsKey('propertyFilter')
                ? PropertyFilter.fromJson(
                  json_['propertyFilter']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compositeFilter != null) 'compositeFilter': compositeFilter!,
    if (propertyFilter != null) 'propertyFilter': propertyFilter!,
  };
}

/// Nearest Neighbors search config.
///
/// The ordering provided by FindNearest supersedes the order_by stage. If
/// multiple documents have the same vector distance, the returned document
/// order is not guaranteed to be stable between queries.
class FindNearest {
  /// The Distance Measure to use, required.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DISTANCE_MEASURE_UNSPECIFIED" : Should not be set.
  /// - "EUCLIDEAN" : Measures the EUCLIDEAN distance between the vectors. See
  /// [Euclidean](https://en.wikipedia.org/wiki/Euclidean_distance) to learn
  /// more. The resulting distance decreases the more similar two vectors are.
  /// - "COSINE" : COSINE distance compares vectors based on the angle between
  /// them, which allows you to measure similarity that isn't based on the
  /// vectors magnitude. We recommend using DOT_PRODUCT with unit normalized
  /// vectors instead of COSINE distance, which is mathematically equivalent
  /// with better performance. See
  /// [Cosine Similarity](https://en.wikipedia.org/wiki/Cosine_similarity) to
  /// learn more about COSINE similarity and COSINE distance. The resulting
  /// COSINE distance decreases the more similar two vectors are.
  /// - "DOT_PRODUCT" : Similar to cosine but is affected by the magnitude of
  /// the vectors. See [Dot Product](https://en.wikipedia.org/wiki/Dot_product)
  /// to learn more. The resulting distance increases the more similar two
  /// vectors are.
  core.String? distanceMeasure;

  /// Optional name of the field to output the result of the vector distance
  /// calculation.
  ///
  /// Must conform to entity property limitations.
  ///
  /// Optional.
  core.String? distanceResultProperty;

  /// Option to specify a threshold for which no less similar documents will be
  /// returned.
  ///
  /// The behavior of the specified `distance_measure` will affect the meaning
  /// of the distance threshold. Since DOT_PRODUCT distances increase when the
  /// vectors are more similar, the comparison is inverted. * For EUCLIDEAN,
  /// COSINE: WHERE distance \<= distance_threshold * For DOT_PRODUCT: WHERE
  /// distance \>= distance_threshold
  ///
  /// Optional.
  core.double? distanceThreshold;

  /// The number of nearest neighbors to return.
  ///
  /// Must be a positive integer of no more than 100.
  ///
  /// Required.
  core.int? limit;

  /// The query vector that we are searching on.
  ///
  /// Must be a vector of no more than 2048 dimensions.
  ///
  /// Required.
  Value? queryVector;

  /// An indexed vector property to search upon.
  ///
  /// Only documents which contain vectors whose dimensionality match the
  /// query_vector can be returned.
  ///
  /// Required.
  PropertyReference? vectorProperty;

  FindNearest({
    this.distanceMeasure,
    this.distanceResultProperty,
    this.distanceThreshold,
    this.limit,
    this.queryVector,
    this.vectorProperty,
  });

  FindNearest.fromJson(core.Map json_)
    : this(
        distanceMeasure: json_['distanceMeasure'] as core.String?,
        distanceResultProperty: json_['distanceResultProperty'] as core.String?,
        distanceThreshold:
            (json_['distanceThreshold'] as core.num?)?.toDouble(),
        limit: json_['limit'] as core.int?,
        queryVector:
            json_.containsKey('queryVector')
                ? Value.fromJson(
                  json_['queryVector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vectorProperty:
            json_.containsKey('vectorProperty')
                ? PropertyReference.fromJson(
                  json_['vectorProperty']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (distanceMeasure != null) 'distanceMeasure': distanceMeasure!,
    if (distanceResultProperty != null)
      'distanceResultProperty': distanceResultProperty!,
    if (distanceThreshold != null) 'distanceThreshold': distanceThreshold!,
    if (limit != null) 'limit': limit!,
    if (queryVector != null) 'queryVector': queryVector!,
    if (vectorProperty != null) 'vectorProperty': vectorProperty!,
  };
}

/// A
/// [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
class GqlQuery {
  /// When false, the query string must not contain any literals and instead
  /// must bind all values.
  ///
  /// For example, `SELECT * FROM Kind WHERE a = 'string literal'` is not
  /// allowed, while `SELECT * FROM Kind WHERE a = @value` is.
  core.bool? allowLiterals;

  /// For each non-reserved named binding site in the query string, there must
  /// be a named parameter with that name, but not necessarily the inverse.
  ///
  /// Key must match regex `A-Za-z_$*`, must not match regex `__.*__`, and must
  /// not be `""`.
  core.Map<core.String, GqlQueryParameter>? namedBindings;

  /// Numbered binding site @1 references the first numbered parameter,
  /// effectively using 1-based indexing, rather than the usual 0.
  ///
  /// For each binding site numbered i in `query_string`, there must be an i-th
  /// numbered parameter. The inverse must also be true.
  core.List<GqlQueryParameter>? positionalBindings;

  /// A string of the format described
  /// [here](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
  core.String? queryString;

  GqlQuery({
    this.allowLiterals,
    this.namedBindings,
    this.positionalBindings,
    this.queryString,
  });

  GqlQuery.fromJson(core.Map json_)
    : this(
        allowLiterals: json_['allowLiterals'] as core.bool?,
        namedBindings: (json_['namedBindings']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GqlQueryParameter.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        positionalBindings:
            (json_['positionalBindings'] as core.List?)
                ?.map(
                  (value) => GqlQueryParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        queryString: json_['queryString'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowLiterals != null) 'allowLiterals': allowLiterals!,
    if (namedBindings != null) 'namedBindings': namedBindings!,
    if (positionalBindings != null) 'positionalBindings': positionalBindings!,
    if (queryString != null) 'queryString': queryString!,
  };
}

/// A binding parameter for a GQL query.
class GqlQueryParameter {
  /// A query cursor.
  ///
  /// Query cursors are returned in query result batches.
  core.String? cursor;
  core.List<core.int> get cursorAsBytes => convert.base64.decode(cursor!);

  set cursorAsBytes(core.List<core.int> bytes_) {
    cursor = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// A value parameter.
  Value? value;

  GqlQueryParameter({this.cursor, this.value});

  GqlQueryParameter.fromJson(core.Map json_)
    : this(
        cursor: json_['cursor'] as core.String?,
        value:
            json_.containsKey('value')
                ? Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cursor != null) 'cursor': cursor!,
    if (value != null) 'value': value!,
  };
}

/// A unique identifier for an entity.
///
/// If a key's partition ID or any of its path kinds or names are
/// reserved/read-only, the key is reserved/read-only. A reserved/read-only key
/// is forbidden in certain documented contexts.
class Key {
  /// Entities are partitioned into subsets, currently identified by a project
  /// ID and namespace ID.
  ///
  /// Queries are scoped to a single partition.
  PartitionId? partitionId;

  /// The entity path.
  ///
  /// An entity path consists of one or more elements composed of a kind and a
  /// string or numerical identifier, which identify entities. The first element
  /// identifies a _root entity_, the second element identifies a _child_ of the
  /// root entity, the third element identifies a child of the second entity,
  /// and so forth. The entities identified by all prefixes of the path are
  /// called the element's _ancestors_. An entity path is always fully complete:
  /// *all* of the entity's ancestors are required to be in the path along with
  /// the entity identifier itself. The only exception is that in some
  /// documented cases, the identifier in the last path element (for the entity)
  /// itself may be omitted. For example, the last path element of the key of
  /// `Mutation.insert` may have no identifier. A path can never be empty, and a
  /// path can have at most 100 elements.
  core.List<PathElement>? path;

  Key({this.partitionId, this.path});

  Key.fromJson(core.Map json_)
    : this(
        partitionId:
            json_.containsKey('partitionId')
                ? PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        path:
            (json_['path'] as core.List?)
                ?.map(
                  (value) => PathElement.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (partitionId != null) 'partitionId': partitionId!,
    if (path != null) 'path': path!,
  };
}

/// A representation of a kind.
typedef KindExpression = $KindExpression;

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The request for Datastore.Lookup.
class LookupRequest {
  /// Keys of entities to look up.
  ///
  /// Required.
  core.List<Key>? keys;

  /// The properties to return.
  ///
  /// Defaults to returning all properties. If this field is set and an entity
  /// has a property not referenced in the mask, it will be absent from
  /// LookupResponse.found.entity.properties. The entity's key is always
  /// returned.
  PropertyMask? propertyMask;

  /// The options for this lookup request.
  ReadOptions? readOptions;

  LookupRequest({this.keys, this.propertyMask, this.readOptions});

  LookupRequest.fromJson(core.Map json_)
    : this(
        keys:
            (json_['keys'] as core.List?)
                ?.map(
                  (value) => Key.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        propertyMask:
            json_.containsKey('propertyMask')
                ? PropertyMask.fromJson(
                  json_['propertyMask'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readOptions:
            json_.containsKey('readOptions')
                ? ReadOptions.fromJson(
                  json_['readOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (keys != null) 'keys': keys!,
    if (propertyMask != null) 'propertyMask': propertyMask!,
    if (readOptions != null) 'readOptions': readOptions!,
  };
}

/// The response for Datastore.Lookup.
class LookupResponse {
  /// A list of keys that were not looked up due to resource constraints.
  ///
  /// The order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<Key>? deferred;

  /// Entities found as `ResultType.FULL` entities.
  ///
  /// The order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<EntityResult>? found;

  /// Entities not found as `ResultType.KEY_ONLY` entities.
  ///
  /// The order of results in this field is undefined and has no relation to the
  /// order of the keys in the input.
  core.List<EntityResult>? missing;

  /// The time at which these entities were read or found missing.
  core.String? readTime;

  LookupResponse({this.deferred, this.found, this.missing, this.readTime});

  LookupResponse.fromJson(core.Map json_)
    : this(
        deferred:
            (json_['deferred'] as core.List?)
                ?.map(
                  (value) => Key.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        found:
            (json_['found'] as core.List?)
                ?.map(
                  (value) => EntityResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        missing:
            (json_['missing'] as core.List?)
                ?.map(
                  (value) => EntityResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        readTime: json_['readTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (deferred != null) 'deferred': deferred!,
    if (found != null) 'found': found!,
    if (missing != null) 'missing': missing!,
    if (readTime != null) 'readTime': readTime!,
  };
}

/// A mutation to apply to an entity.
class Mutation {
  /// The version of the entity that this mutation is being applied to.
  ///
  /// If this does not match the current version on the server, the mutation
  /// conflicts.
  core.String? baseVersion;

  /// The strategy to use when a conflict is detected.
  ///
  /// Defaults to `SERVER_VALUE`. If this is set, then
  /// `conflict_detection_strategy` must also be set.
  /// Possible string values are:
  /// - "STRATEGY_UNSPECIFIED" : Unspecified. Defaults to `SERVER_VALUE`.
  /// - "SERVER_VALUE" : The server entity is kept.
  /// - "FAIL" : The whole commit request fails.
  core.String? conflictResolutionStrategy;

  /// The key of the entity to delete.
  ///
  /// The entity may or may not already exist. Must have a complete key path and
  /// must not be reserved/read-only.
  Key? delete;

  /// The entity to insert.
  ///
  /// The entity must not already exist. The entity key's final path element may
  /// be incomplete.
  Entity? insert;

  /// The properties to write in this mutation.
  ///
  /// None of the properties in the mask may have a reserved name, except for
  /// `__key__`. This field is ignored for `delete`. If the entity already
  /// exists, only properties referenced in the mask are updated, others are
  /// left untouched. Properties referenced in the mask but not in the entity
  /// are deleted.
  PropertyMask? propertyMask;

  /// The transforms to perform on the entity.
  ///
  /// This field can be set only when the operation is `insert`, `update`, or
  /// `upsert`. If present, the transforms are be applied to the entity
  /// regardless of the property mask, in order, after the operation.
  ///
  /// Optional.
  core.List<PropertyTransform>? propertyTransforms;

  /// The entity to update.
  ///
  /// The entity must already exist. Must have a complete key path.
  Entity? update;

  /// The update time of the entity that this mutation is being applied to.
  ///
  /// If this does not match the current update time on the server, the mutation
  /// conflicts.
  core.String? updateTime;

  /// The entity to upsert.
  ///
  /// The entity may or may not already exist. The entity key's final path
  /// element may be incomplete.
  Entity? upsert;

  Mutation({
    this.baseVersion,
    this.conflictResolutionStrategy,
    this.delete,
    this.insert,
    this.propertyMask,
    this.propertyTransforms,
    this.update,
    this.updateTime,
    this.upsert,
  });

  Mutation.fromJson(core.Map json_)
    : this(
        baseVersion: json_['baseVersion'] as core.String?,
        conflictResolutionStrategy:
            json_['conflictResolutionStrategy'] as core.String?,
        delete:
            json_.containsKey('delete')
                ? Key.fromJson(
                  json_['delete'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        insert:
            json_.containsKey('insert')
                ? Entity.fromJson(
                  json_['insert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        propertyMask:
            json_.containsKey('propertyMask')
                ? PropertyMask.fromJson(
                  json_['propertyMask'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        propertyTransforms:
            (json_['propertyTransforms'] as core.List?)
                ?.map(
                  (value) => PropertyTransform.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        update:
            json_.containsKey('update')
                ? Entity.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        upsert:
            json_.containsKey('upsert')
                ? Entity.fromJson(
                  json_['upsert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseVersion != null) 'baseVersion': baseVersion!,
    if (conflictResolutionStrategy != null)
      'conflictResolutionStrategy': conflictResolutionStrategy!,
    if (delete != null) 'delete': delete!,
    if (insert != null) 'insert': insert!,
    if (propertyMask != null) 'propertyMask': propertyMask!,
    if (propertyTransforms != null) 'propertyTransforms': propertyTransforms!,
    if (update != null) 'update': update!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upsert != null) 'upsert': upsert!,
  };
}

/// The result of applying a mutation.
class MutationResult {
  /// Whether a conflict was detected for this mutation.
  ///
  /// Always false when a conflict detection strategy field is not set in the
  /// mutation.
  core.bool? conflictDetected;

  /// The create time of the entity.
  ///
  /// This field will not be set after a 'delete'.
  core.String? createTime;

  /// The automatically allocated key.
  ///
  /// Set only when the mutation allocated a key.
  Key? key;

  /// The results of applying each PropertyTransform, in the same order of the
  /// request.
  core.List<Value>? transformResults;

  /// The update time of the entity on the server after processing the mutation.
  ///
  /// If the mutation doesn't change anything on the server, then the timestamp
  /// will be the update timestamp of the current entity. This field will not be
  /// set after a 'delete'.
  core.String? updateTime;

  /// The version of the entity on the server after processing the mutation.
  ///
  /// If the mutation doesn't change anything on the server, then the version
  /// will be the version of the current entity or, if no entity is present, a
  /// version that is strictly greater than the version of any previous entity
  /// and less than the version of any possible future entity.
  core.String? version;

  MutationResult({
    this.conflictDetected,
    this.createTime,
    this.key,
    this.transformResults,
    this.updateTime,
    this.version,
  });

  MutationResult.fromJson(core.Map json_)
    : this(
        conflictDetected: json_['conflictDetected'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        key:
            json_.containsKey('key')
                ? Key.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        transformResults:
            (json_['transformResults'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conflictDetected != null) 'conflictDetected': conflictDetected!,
    if (createTime != null) 'createTime': createTime!,
    if (key != null) 'key': key!,
    if (transformResults != null) 'transformResults': transformResults!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (version != null) 'version': version!,
  };
}

/// A partition ID identifies a grouping of entities.
///
/// The grouping is always by project and namespace, however the namespace ID
/// may be empty. A partition ID contains several dimensions: project ID and
/// namespace ID. Partition dimensions: - May be `""`. - Must be valid UTF-8
/// bytes. - Must have values that match regex `[A-Za-z\d\.\-_]{1,100}` If the
/// value of any dimension matches regex `__.*__`, the partition is
/// reserved/read-only. A reserved/read-only partition ID is forbidden in
/// certain documented contexts. Foreign partition IDs (in which the project ID
/// does not match the context project ID ) are discouraged. Reads and writes of
/// foreign partition IDs may fail if the project is not in an active state.
typedef PartitionId = $PartitionId;

/// A (kind, ID/name) pair used to construct a key path.
///
/// If either name or ID is set, the element is complete. If neither is set, the
/// element is incomplete.
typedef PathElement = $PathElement;

/// Planning phase information for the query.
typedef PlanSummary = $PlanSummary;

/// A representation of a property in a projection.
class Projection {
  /// The property to project.
  PropertyReference? property;

  Projection({this.property});

  Projection.fromJson(core.Map json_)
    : this(
        property:
            json_.containsKey('property')
                ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (property != null) 'property': property!,
  };
}

/// A filter on a specific property.
class PropertyFilter {
  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : The given `property` is less than the given `value`.
  /// Requires: * That `property` comes first in `order_by`.
  /// - "LESS_THAN_OR_EQUAL" : The given `property` is less than or equal to the
  /// given `value`. Requires: * That `property` comes first in `order_by`.
  /// - "GREATER_THAN" : The given `property` is greater than the given `value`.
  /// Requires: * That `property` comes first in `order_by`.
  /// - "GREATER_THAN_OR_EQUAL" : The given `property` is greater than or equal
  /// to the given `value`. Requires: * That `property` comes first in
  /// `order_by`.
  /// - "EQUAL" : The given `property` is equal to the given `value`.
  /// - "IN" : The given `property` is equal to at least one value in the given
  /// array. Requires: * That `value` is a non-empty `ArrayValue`, subject to
  /// disjunction limits. * No `NOT_IN` is in the same query.
  /// - "NOT_EQUAL" : The given `property` is not equal to the given `value`.
  /// Requires: * No other `NOT_EQUAL` or `NOT_IN` is in the same query. * That
  /// `property` comes first in the `order_by`.
  /// - "HAS_ANCESTOR" : Limit the result set to the given entity and its
  /// descendants. Requires: * That `value` is an entity key. * All evaluated
  /// disjunctions must have the same `HAS_ANCESTOR` filter.
  /// - "NOT_IN" : The value of the `property` is not in the given array.
  /// Requires: * That `value` is a non-empty `ArrayValue` with at most 10
  /// values. * No other `OR`, `IN`, `NOT_IN`, `NOT_EQUAL` is in the same query.
  /// * That `field` comes first in the `order_by`.
  core.String? op;

  /// The property to filter by.
  PropertyReference? property;

  /// The value to compare the property to.
  Value? value;

  PropertyFilter({this.op, this.property, this.value});

  PropertyFilter.fromJson(core.Map json_)
    : this(
        op: json_['op'] as core.String?,
        property:
            json_.containsKey('property')
                ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        value:
            json_.containsKey('value')
                ? Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (op != null) 'op': op!,
    if (property != null) 'property': property!,
    if (value != null) 'value': value!,
  };
}

/// The set of arbitrarily nested property paths used to restrict an operation
/// to only a subset of properties in an entity.
typedef PropertyMask = $PropertyMask;

/// The desired order for a specific property.
class PropertyOrder {
  /// The direction to order by.
  ///
  /// Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String? direction;

  /// The property to order by.
  PropertyReference? property;

  PropertyOrder({this.direction, this.property});

  PropertyOrder.fromJson(core.Map json_)
    : this(
        direction: json_['direction'] as core.String?,
        property:
            json_.containsKey('property')
                ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (direction != null) 'direction': direction!,
    if (property != null) 'property': property!,
  };
}

/// A reference to a property relative to the kind expressions.
typedef PropertyReference = $PropertyReference;

/// A transformation of an entity property.
class PropertyTransform {
  /// Appends the given elements in order if they are not already present in the
  /// current property value.
  ///
  /// If the property is not an array, or if the property does not yet exist, it
  /// is first set to the empty array. Equivalent numbers of different types
  /// (e.g. 3L and 3.0) are considered equal when checking if a value is
  /// missing. NaN is equal to NaN, and the null value is equal to the null
  /// value. If the input contains multiple equivalent values, only the first
  /// will be considered. The corresponding transform result will be the null
  /// value.
  ArrayValue? appendMissingElements;

  /// Adds the given value to the property's current value.
  ///
  /// This must be an integer or a double value. If the property is not an
  /// integer or double, or if the property does not yet exist, the
  /// transformation will set the property to the given value. If either of the
  /// given value or the current property value are doubles, both values will be
  /// interpreted as doubles. Double arithmetic and representation of double
  /// values follows IEEE 754 semantics. If there is positive/negative integer
  /// overflow, the property is resolved to the largest magnitude
  /// positive/negative integer.
  Value? increment;

  /// Sets the property to the maximum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the property is not an
  /// integer or double, or if the property does not yet exist, the
  /// transformation will set the property to the given value. If a maximum
  /// operation is applied where the property and the input value are of mixed
  /// types (that is - one is an integer and one is a double) the property takes
  /// on the type of the larger operand. If the operands are equivalent (e.g. 3
  /// and 3.0), the property does not change. 0, 0.0, and -0.0 are all zero. The
  /// maximum of a zero stored value and zero input value is always the stored
  /// value. The maximum of any numeric value x and NaN is NaN.
  Value? maximum;

  /// Sets the property to the minimum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the property is not an
  /// integer or double, or if the property does not yet exist, the
  /// transformation will set the property to the input value. If a minimum
  /// operation is applied where the property and the input value are of mixed
  /// types (that is - one is an integer and one is a double) the property takes
  /// on the type of the smaller operand. If the operands are equivalent (e.g. 3
  /// and 3.0), the property does not change. 0, 0.0, and -0.0 are all zero. The
  /// minimum of a zero stored value and zero input value is always the stored
  /// value. The minimum of any numeric value x and NaN is NaN.
  Value? minimum;

  /// The name of the property.
  ///
  /// Property paths (a list of property names separated by dots (`.`)) may be
  /// used to refer to properties inside entity values. For example `foo.bar`
  /// means the property `bar` inside the entity property `foo`. If a property
  /// name contains a dot `.` or a backlslash `\`, then that name must be
  /// escaped.
  ///
  /// Optional.
  core.String? property;

  /// Removes all of the given elements from the array in the property.
  ///
  /// If the property is not an array, or if the property does not yet exist, it
  /// is set to the empty array. Equivalent numbers of different types (e.g. 3L
  /// and 3.0) are considered equal when deciding whether an element should be
  /// removed. NaN is equal to NaN, and the null value is equal to the null
  /// value. This will remove all equivalent values if there are duplicates. The
  /// corresponding transform result will be the null value.
  ArrayValue? removeAllFromArray;

  /// Sets the property to the given server value.
  /// Possible string values are:
  /// - "SERVER_VALUE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "REQUEST_TIME" : The time at which the server processed the request,
  /// with millisecond precision. If used on multiple properties (same or
  /// different entities) in a transaction, all the properties will get the same
  /// server timestamp.
  core.String? setToServerValue;

  PropertyTransform({
    this.appendMissingElements,
    this.increment,
    this.maximum,
    this.minimum,
    this.property,
    this.removeAllFromArray,
    this.setToServerValue,
  });

  PropertyTransform.fromJson(core.Map json_)
    : this(
        appendMissingElements:
            json_.containsKey('appendMissingElements')
                ? ArrayValue.fromJson(
                  json_['appendMissingElements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        increment:
            json_.containsKey('increment')
                ? Value.fromJson(
                  json_['increment'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        maximum:
            json_.containsKey('maximum')
                ? Value.fromJson(
                  json_['maximum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        minimum:
            json_.containsKey('minimum')
                ? Value.fromJson(
                  json_['minimum'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        property: json_['property'] as core.String?,
        removeAllFromArray:
            json_.containsKey('removeAllFromArray')
                ? ArrayValue.fromJson(
                  json_['removeAllFromArray']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        setToServerValue: json_['setToServerValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appendMissingElements != null)
      'appendMissingElements': appendMissingElements!,
    if (increment != null) 'increment': increment!,
    if (maximum != null) 'maximum': maximum!,
    if (minimum != null) 'minimum': minimum!,
    if (property != null) 'property': property!,
    if (removeAllFromArray != null) 'removeAllFromArray': removeAllFromArray!,
    if (setToServerValue != null) 'setToServerValue': setToServerValue!,
  };
}

/// A query for entities.
///
/// The query stages are executed in the following order: 1. kind 2. filter 3.
/// projection 4. order + start_cursor + end_cursor 5. offset 6. limit 7.
/// find_nearest
class Query {
  /// The properties to make distinct.
  ///
  /// The query results will contain the first result for each distinct
  /// combination of values for the given properties (if empty, all results are
  /// returned). Requires: * If `order` is specified, the set of distinct on
  /// properties must appear before the non-distinct on properties in `order`.
  core.List<PropertyReference>? distinctOn;

  /// An ending point for the query results.
  ///
  /// Query cursors are returned in query result batches and
  /// [can only be used to limit the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  core.String? endCursor;
  core.List<core.int> get endCursorAsBytes => convert.base64.decode(endCursor!);

  set endCursorAsBytes(core.List<core.int> bytes_) {
    endCursor = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The filter to apply.
  Filter? filter;

  /// A potential Nearest Neighbors Search.
  ///
  /// Applies after all other filters and ordering. Finds the closest vector
  /// embeddings to the given query vector.
  ///
  /// Optional.
  FindNearest? findNearest;

  /// The kinds to query (if empty, returns entities of all kinds).
  ///
  /// Currently at most 1 kind may be specified.
  core.List<KindExpression>? kind;

  /// The maximum number of results to return.
  ///
  /// Applies after all other constraints. Optional. Unspecified is interpreted
  /// as no limit. Must be \>= 0 if specified.
  core.int? limit;

  /// The number of results to skip.
  ///
  /// Applies before limit, but after all other constraints. Optional. Must be
  /// \>= 0 if specified.
  core.int? offset;

  /// The order to apply to the query results (if empty, order is unspecified).
  core.List<PropertyOrder>? order;

  /// The projection to return.
  ///
  /// Defaults to returning all properties.
  core.List<Projection>? projection;

  /// A starting point for the query results.
  ///
  /// Query cursors are returned in query result batches and
  /// [can only be used to continue the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  core.String? startCursor;
  core.List<core.int> get startCursorAsBytes =>
      convert.base64.decode(startCursor!);

  set startCursorAsBytes(core.List<core.int> bytes_) {
    startCursor = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  Query({
    this.distinctOn,
    this.endCursor,
    this.filter,
    this.findNearest,
    this.kind,
    this.limit,
    this.offset,
    this.order,
    this.projection,
    this.startCursor,
  });

  Query.fromJson(core.Map json_)
    : this(
        distinctOn:
            (json_['distinctOn'] as core.List?)
                ?.map(
                  (value) => PropertyReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        endCursor: json_['endCursor'] as core.String?,
        filter:
            json_.containsKey('filter')
                ? Filter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        findNearest:
            json_.containsKey('findNearest')
                ? FindNearest.fromJson(
                  json_['findNearest'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind:
            (json_['kind'] as core.List?)
                ?.map(
                  (value) => KindExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        limit: json_['limit'] as core.int?,
        offset: json_['offset'] as core.int?,
        order:
            (json_['order'] as core.List?)
                ?.map(
                  (value) => PropertyOrder.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        projection:
            (json_['projection'] as core.List?)
                ?.map(
                  (value) => Projection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        startCursor: json_['startCursor'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (distinctOn != null) 'distinctOn': distinctOn!,
    if (endCursor != null) 'endCursor': endCursor!,
    if (filter != null) 'filter': filter!,
    if (findNearest != null) 'findNearest': findNearest!,
    if (kind != null) 'kind': kind!,
    if (limit != null) 'limit': limit!,
    if (offset != null) 'offset': offset!,
    if (order != null) 'order': order!,
    if (projection != null) 'projection': projection!,
    if (startCursor != null) 'startCursor': startCursor!,
  };
}

/// A batch of results produced by a query.
class QueryResultBatch {
  /// A cursor that points to the position after the last result in the batch.
  core.String? endCursor;
  core.List<core.int> get endCursorAsBytes => convert.base64.decode(endCursor!);

  set endCursorAsBytes(core.List<core.int> bytes_) {
    endCursor = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The result type for every entity in `entity_results`.
  /// Possible string values are:
  /// - "RESULT_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "FULL" : The key and properties.
  /// - "PROJECTION" : A projected subset of properties. The entity may have no
  /// key.
  /// - "KEY_ONLY" : Only the key.
  core.String? entityResultType;

  /// The results for this batch.
  core.List<EntityResult>? entityResults;

  /// The state of the query after the current batch.
  /// Possible string values are:
  /// - "MORE_RESULTS_TYPE_UNSPECIFIED" : Unspecified. This value is never used.
  /// - "NOT_FINISHED" : There may be additional batches to fetch from this
  /// query.
  /// - "MORE_RESULTS_AFTER_LIMIT" : The query is finished, but there may be
  /// more results after the limit.
  /// - "MORE_RESULTS_AFTER_CURSOR" : The query is finished, but there may be
  /// more results after the end cursor.
  /// - "NO_MORE_RESULTS" : The query is finished, and there are no more
  /// results.
  core.String? moreResults;

  /// Read timestamp this batch was returned from.
  ///
  /// This applies to the range of results from the query's `start_cursor` (or
  /// the beginning of the query if no cursor was given) to this batch's
  /// `end_cursor` (not the query's `end_cursor`). In a single transaction,
  /// subsequent query result batches for the same query can have a greater
  /// timestamp. Each batch's read timestamp is valid for all preceding batches.
  /// This value will not be set for eventually consistent queries in Cloud
  /// Datastore.
  core.String? readTime;

  /// A cursor that points to the position after the last skipped result.
  ///
  /// Will be set when `skipped_results` != 0.
  core.String? skippedCursor;
  core.List<core.int> get skippedCursorAsBytes =>
      convert.base64.decode(skippedCursor!);

  set skippedCursorAsBytes(core.List<core.int> bytes_) {
    skippedCursor = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The number of results skipped, typically because of an offset.
  core.int? skippedResults;

  /// The version number of the snapshot this batch was returned from.
  ///
  /// This applies to the range of results from the query's `start_cursor` (or
  /// the beginning of the query if no cursor was given) to this batch's
  /// `end_cursor` (not the query's `end_cursor`). In a single transaction,
  /// subsequent query result batches for the same query can have a greater
  /// snapshot version number. Each batch's snapshot version is valid for all
  /// preceding batches. The value will be zero for eventually consistent
  /// queries.
  core.String? snapshotVersion;

  QueryResultBatch({
    this.endCursor,
    this.entityResultType,
    this.entityResults,
    this.moreResults,
    this.readTime,
    this.skippedCursor,
    this.skippedResults,
    this.snapshotVersion,
  });

  QueryResultBatch.fromJson(core.Map json_)
    : this(
        endCursor: json_['endCursor'] as core.String?,
        entityResultType: json_['entityResultType'] as core.String?,
        entityResults:
            (json_['entityResults'] as core.List?)
                ?.map(
                  (value) => EntityResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        moreResults: json_['moreResults'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        skippedCursor: json_['skippedCursor'] as core.String?,
        skippedResults: json_['skippedResults'] as core.int?,
        snapshotVersion: json_['snapshotVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endCursor != null) 'endCursor': endCursor!,
    if (entityResultType != null) 'entityResultType': entityResultType!,
    if (entityResults != null) 'entityResults': entityResults!,
    if (moreResults != null) 'moreResults': moreResults!,
    if (readTime != null) 'readTime': readTime!,
    if (skippedCursor != null) 'skippedCursor': skippedCursor!,
    if (skippedResults != null) 'skippedResults': skippedResults!,
    if (snapshotVersion != null) 'snapshotVersion': snapshotVersion!,
  };
}

/// Options specific to read-only transactions.
typedef ReadOnly = $ReadOnly00;

/// The options shared by read requests.
class ReadOptions {
  /// The non-transactional read consistency to use.
  /// Possible string values are:
  /// - "READ_CONSISTENCY_UNSPECIFIED" : Unspecified. This value must not be
  /// used.
  /// - "STRONG" : Strong consistency.
  /// - "EVENTUAL" : Eventual consistency.
  core.String? readConsistency;

  /// Reads entities as they were at the given time.
  ///
  /// This value is only supported for Cloud Firestore in Datastore mode. This
  /// must be a microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
  core.String? readTime;

  /// The identifier of the transaction in which to read.
  ///
  /// A transaction identifier is returned by a call to
  /// Datastore.BeginTransaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ReadOptions({this.readConsistency, this.readTime, this.transaction});

  ReadOptions.fromJson(core.Map json_)
    : this(
        readConsistency: json_['readConsistency'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (readConsistency != null) 'readConsistency': readConsistency!,
    if (readTime != null) 'readTime': readTime!,
    if (transaction != null) 'transaction': transaction!,
  };
}

/// Options specific to read / write transactions.
typedef ReadWrite = $ReadWrite00;

/// The request for Datastore.ReserveIds.
class ReserveIdsRequest {
  /// The ID of the database against which to make the request.
  ///
  /// '(default)' is not allowed; please use empty string '' to refer the
  /// default database.
  core.String? databaseId;

  /// A list of keys with complete key paths whose numeric IDs should not be
  /// auto-allocated.
  ///
  /// Required.
  core.List<Key>? keys;

  ReserveIdsRequest({this.databaseId, this.keys});

  ReserveIdsRequest.fromJson(core.Map json_)
    : this(
        databaseId: json_['databaseId'] as core.String?,
        keys:
            (json_['keys'] as core.List?)
                ?.map(
                  (value) => Key.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (databaseId != null) 'databaseId': databaseId!,
    if (keys != null) 'keys': keys!,
  };
}

/// The response for Datastore.ReserveIds.
typedef ReserveIdsResponse = $Empty;

/// The request for Datastore.Rollback.
class RollbackRequest {
  /// The transaction identifier, returned by a call to
  /// Datastore.BeginTransaction.
  ///
  /// Required.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RollbackRequest({this.transaction});

  RollbackRequest.fromJson(core.Map json_)
    : this(transaction: json_['transaction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (transaction != null) 'transaction': transaction!,
  };
}

/// The response for Datastore.Rollback.
///
/// (an empty message).
typedef RollbackResponse = $Empty;

/// The request for Datastore.RunAggregationQuery.
class RunAggregationQueryRequest {
  /// The query to run.
  AggregationQuery? aggregationQuery;

  /// Explain options for the query.
  ///
  /// If set, additional query statistics will be returned. If not, only query
  /// results will be returned.
  ///
  /// Optional.
  ExplainOptions? explainOptions;

  /// The GQL query to run.
  ///
  /// This query must be an aggregation query.
  GqlQuery? gqlQuery;

  /// Entities are partitioned into subsets, identified by a partition ID.
  ///
  /// Queries are scoped to a single partition. This partition ID is normalized
  /// with the standard default context partition ID.
  PartitionId? partitionId;

  /// The options for this query.
  ReadOptions? readOptions;

  RunAggregationQueryRequest({
    this.aggregationQuery,
    this.explainOptions,
    this.gqlQuery,
    this.partitionId,
    this.readOptions,
  });

  RunAggregationQueryRequest.fromJson(core.Map json_)
    : this(
        aggregationQuery:
            json_.containsKey('aggregationQuery')
                ? AggregationQuery.fromJson(
                  json_['aggregationQuery']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        explainOptions:
            json_.containsKey('explainOptions')
                ? ExplainOptions.fromJson(
                  json_['explainOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gqlQuery:
            json_.containsKey('gqlQuery')
                ? GqlQuery.fromJson(
                  json_['gqlQuery'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        partitionId:
            json_.containsKey('partitionId')
                ? PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readOptions:
            json_.containsKey('readOptions')
                ? ReadOptions.fromJson(
                  json_['readOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationQuery != null) 'aggregationQuery': aggregationQuery!,
    if (explainOptions != null) 'explainOptions': explainOptions!,
    if (gqlQuery != null) 'gqlQuery': gqlQuery!,
    if (partitionId != null) 'partitionId': partitionId!,
    if (readOptions != null) 'readOptions': readOptions!,
  };
}

/// The response for Datastore.RunAggregationQuery.
class RunAggregationQueryResponse {
  /// A batch of aggregation results.
  ///
  /// Always present.
  AggregationResultBatch? batch;

  /// Query explain metrics.
  ///
  /// This is only present when the RunAggregationQueryRequest.explain_options
  /// is provided, and it is sent only once with the last response in the
  /// stream.
  ExplainMetrics? explainMetrics;

  /// The parsed form of the `GqlQuery` from the request, if it was set.
  AggregationQuery? query;

  RunAggregationQueryResponse({this.batch, this.explainMetrics, this.query});

  RunAggregationQueryResponse.fromJson(core.Map json_)
    : this(
        batch:
            json_.containsKey('batch')
                ? AggregationResultBatch.fromJson(
                  json_['batch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        explainMetrics:
            json_.containsKey('explainMetrics')
                ? ExplainMetrics.fromJson(
                  json_['explainMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        query:
            json_.containsKey('query')
                ? AggregationQuery.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batch != null) 'batch': batch!,
    if (explainMetrics != null) 'explainMetrics': explainMetrics!,
    if (query != null) 'query': query!,
  };
}

/// The request for Datastore.RunQuery.
class RunQueryRequest {
  /// Explain options for the query.
  ///
  /// If set, additional query statistics will be returned. If not, only query
  /// results will be returned.
  ///
  /// Optional.
  ExplainOptions? explainOptions;

  /// The GQL query to run.
  ///
  /// This query must be a non-aggregation query.
  GqlQuery? gqlQuery;

  /// Entities are partitioned into subsets, identified by a partition ID.
  ///
  /// Queries are scoped to a single partition. This partition ID is normalized
  /// with the standard default context partition ID.
  PartitionId? partitionId;

  /// The properties to return.
  ///
  /// This field must not be set for a projection query. See
  /// LookupRequest.property_mask.
  PropertyMask? propertyMask;

  /// The query to run.
  Query? query;

  /// The options for this query.
  ReadOptions? readOptions;

  RunQueryRequest({
    this.explainOptions,
    this.gqlQuery,
    this.partitionId,
    this.propertyMask,
    this.query,
    this.readOptions,
  });

  RunQueryRequest.fromJson(core.Map json_)
    : this(
        explainOptions:
            json_.containsKey('explainOptions')
                ? ExplainOptions.fromJson(
                  json_['explainOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gqlQuery:
            json_.containsKey('gqlQuery')
                ? GqlQuery.fromJson(
                  json_['gqlQuery'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        partitionId:
            json_.containsKey('partitionId')
                ? PartitionId.fromJson(
                  json_['partitionId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        propertyMask:
            json_.containsKey('propertyMask')
                ? PropertyMask.fromJson(
                  json_['propertyMask'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        query:
            json_.containsKey('query')
                ? Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readOptions:
            json_.containsKey('readOptions')
                ? ReadOptions.fromJson(
                  json_['readOptions'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (explainOptions != null) 'explainOptions': explainOptions!,
    if (gqlQuery != null) 'gqlQuery': gqlQuery!,
    if (partitionId != null) 'partitionId': partitionId!,
    if (propertyMask != null) 'propertyMask': propertyMask!,
    if (query != null) 'query': query!,
    if (readOptions != null) 'readOptions': readOptions!,
  };
}

/// The response for Datastore.RunQuery.
class RunQueryResponse {
  /// A batch of query results.
  ///
  /// This is always present unless running a query under explain-only mode:
  /// RunQueryRequest.explain_options was provided and ExplainOptions.analyze
  /// was set to false.
  QueryResultBatch? batch;

  /// Query explain metrics.
  ///
  /// This is only present when the RunQueryRequest.explain_options is provided,
  /// and it is sent only once with the last response in the stream.
  ExplainMetrics? explainMetrics;

  /// The parsed form of the `GqlQuery` from the request, if it was set.
  Query? query;

  RunQueryResponse({this.batch, this.explainMetrics, this.query});

  RunQueryResponse.fromJson(core.Map json_)
    : this(
        batch:
            json_.containsKey('batch')
                ? QueryResultBatch.fromJson(
                  json_['batch'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        explainMetrics:
            json_.containsKey('explainMetrics')
                ? ExplainMetrics.fromJson(
                  json_['explainMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        query:
            json_.containsKey('query')
                ? Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batch != null) 'batch': batch!,
    if (explainMetrics != null) 'explainMetrics': explainMetrics!,
    if (query != null) 'query': query!,
  };
}

/// Sum of the values of the requested property.
///
/// * Only numeric values will be aggregated. All non-numeric values including
/// `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`.
/// Infinity math follows IEEE-754 standards. * If the aggregated value set is
/// empty, returns 0. * Returns a 64-bit integer if all aggregated numbers are
/// integers and the sum result does not overflow. Otherwise, the result is
/// returned as a double. Note that even if all the aggregated values are
/// integers, the result is returned as a double if it cannot fit within a
/// 64-bit signed integer. When this occurs, the returned value will lose
/// precision. * When underflow occurs, floating-point aggregation is
/// non-deterministic. This means that running the same query repeatedly without
/// any changes to the underlying values could produce slightly different
/// results each time. In those cases, values should be stored as integers over
/// floating-point numbers.
class Sum {
  /// The property to aggregate on.
  PropertyReference? property;

  Sum({this.property});

  Sum.fromJson(core.Map json_)
    : this(
        property:
            json_.containsKey('property')
                ? PropertyReference.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (property != null) 'property': property!,
  };
}

/// Options for beginning a new transaction.
///
/// Transactions can be created explicitly with calls to
/// Datastore.BeginTransaction or implicitly by setting
/// ReadOptions.new_transaction in read requests.
class TransactionOptions {
  /// The transaction should only allow reads.
  ReadOnly? readOnly;

  /// The transaction should allow both reads and writes.
  ReadWrite? readWrite;

  TransactionOptions({this.readOnly, this.readWrite});

  TransactionOptions.fromJson(core.Map json_)
    : this(
        readOnly:
            json_.containsKey('readOnly')
                ? ReadOnly.fromJson(
                  json_['readOnly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readWrite:
            json_.containsKey('readWrite')
                ? ReadWrite.fromJson(
                  json_['readWrite'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (readOnly != null) 'readOnly': readOnly!,
    if (readWrite != null) 'readWrite': readWrite!,
  };
}

/// A message that can hold any of the supported value types and associated
/// metadata.
class Value {
  /// An array value.
  ///
  /// Cannot contain another array value. A `Value` instance that sets field
  /// `array_value` must not set fields `meaning` or `exclude_from_indexes`.
  ArrayValue? arrayValue;

  /// A blob value.
  ///
  /// May have at most 1,000,000 bytes. When `exclude_from_indexes` is false,
  /// may have at most 1500 bytes. In JSON requests, must be base64-encoded.
  core.String? blobValue;
  core.List<core.int> get blobValueAsBytes => convert.base64.decode(blobValue!);

  set blobValueAsBytes(core.List<core.int> bytes_) {
    blobValue = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// A boolean value.
  core.bool? booleanValue;

  /// A double value.
  core.double? doubleValue;

  /// An entity value.
  ///
  /// - May have no key. - May have a key with an incomplete key path. - May
  /// have a reserved/read-only key.
  Entity? entityValue;

  /// If the value should be excluded from all indexes including those defined
  /// explicitly.
  core.bool? excludeFromIndexes;

  /// A geo point value representing a point on the surface of Earth.
  LatLng? geoPointValue;

  /// An integer value.
  core.String? integerValue;

  /// A key value.
  Key? keyValue;

  /// The `meaning` field should only be populated for backwards compatibility.
  core.int? meaning;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String? nullValue;

  /// A UTF-8 encoded string value.
  ///
  /// When `exclude_from_indexes` is false (it is indexed) , may have at most
  /// 1500 bytes. Otherwise, may be set to at most 1,000,000 bytes.
  core.String? stringValue;

  /// A timestamp value.
  ///
  /// When stored in the Datastore, precise only to microseconds; any additional
  /// precision is rounded down.
  core.String? timestampValue;

  Value({
    this.arrayValue,
    this.blobValue,
    this.booleanValue,
    this.doubleValue,
    this.entityValue,
    this.excludeFromIndexes,
    this.geoPointValue,
    this.integerValue,
    this.keyValue,
    this.meaning,
    this.nullValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map json_)
    : this(
        arrayValue:
            json_.containsKey('arrayValue')
                ? ArrayValue.fromJson(
                  json_['arrayValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        blobValue: json_['blobValue'] as core.String?,
        booleanValue: json_['booleanValue'] as core.bool?,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        entityValue:
            json_.containsKey('entityValue')
                ? Entity.fromJson(
                  json_['entityValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        excludeFromIndexes: json_['excludeFromIndexes'] as core.bool?,
        geoPointValue:
            json_.containsKey('geoPointValue')
                ? LatLng.fromJson(
                  json_['geoPointValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        integerValue: json_['integerValue'] as core.String?,
        keyValue:
            json_.containsKey('keyValue')
                ? Key.fromJson(
                  json_['keyValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        meaning: json_['meaning'] as core.int?,
        nullValue: json_.containsKey('nullValue') ? 'NULL_VALUE' : null,
        stringValue: json_['stringValue'] as core.String?,
        timestampValue: json_['timestampValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (arrayValue != null) 'arrayValue': arrayValue!,
    if (blobValue != null) 'blobValue': blobValue!,
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (doubleValue != null) 'doubleValue': doubleValue!,
    if (entityValue != null) 'entityValue': entityValue!,
    if (excludeFromIndexes != null) 'excludeFromIndexes': excludeFromIndexes!,
    if (geoPointValue != null) 'geoPointValue': geoPointValue!,
    if (integerValue != null) 'integerValue': integerValue!,
    if (keyValue != null) 'keyValue': keyValue!,
    if (meaning != null) 'meaning': meaning!,
    if (nullValue != null) 'nullValue': nullValue!,
    if (stringValue != null) 'stringValue': stringValue!,
    if (timestampValue != null) 'timestampValue': timestampValue!,
  };
}
