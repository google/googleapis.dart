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

/// Cloud Asset API - v1p7beta1
///
/// The Cloud Asset API manages the history and inventory of Google Cloud
/// resources.
///
/// For more information, see
/// <https://cloud.google.com/asset-inventory/docs/quickstart>
///
/// Create an instance of [CloudAssetApi] to access these resources:
///
/// - [OperationsResource]
/// - [V1p7beta1Resource]
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

/// The Cloud Asset API manages the history and inventory of Google Cloud
/// resources.
class CloudAssetApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  V1p7beta1Resource get v1p7beta1 => V1p7beta1Resource(_requester);

  CloudAssetApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudasset.googleapis.com/',
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
  /// Value must have pattern `^\[^/\]+/\[^/\]+/operations/\[^/\]+/.*$`.
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

    final url_ = 'v1p7beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1p7beta1Resource {
  final commons.ApiRequester _requester;

  V1p7beta1Resource(commons.ApiRequester client) : _requester = client;

  /// Exports assets with time and resource types to a given Cloud Storage
  /// location/BigQuery table.
  ///
  /// For Cloud Storage location destinations, the output format is
  /// newline-delimited JSON. Each line represents a
  /// google.cloud.asset.v1p7beta1.Asset in the JSON format; for BigQuery table
  /// destinations, the output table stores the fields in asset proto as
  /// columns. This API implements the google.longrunning.Operation API , which
  /// allows you to keep track of the export. We recommend intervals of at least
  /// 2 seconds with exponential retry to poll the export operation result. For
  /// regular-size resource parent, the export operation usually finishes within
  /// 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The relative name of the root asset. This can only be
  /// an organization number (such as "organizations/123"), a project ID (such
  /// as "projects/my-project-id"), or a project number (such as
  /// "projects/12345"), or a folder number (such as "folders/123").
  /// Value must have pattern `^\[^/\]+/\[^/\]+$`.
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
    GoogleCloudAssetV1p7beta1ExportAssetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p7beta1/' + core.Uri.encodeFull('$parent') + ':exportAssets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A BigQuery destination for exporting assets to.
class GoogleCloudAssetV1p7beta1BigQueryDestination {
  /// The BigQuery dataset in format "projects/projectId/datasets/datasetId", to
  /// which the snapshot result should be exported.
  ///
  /// If this dataset does not exist, the export call returns an
  /// INVALID_ARGUMENT error.
  ///
  /// Required.
  core.String? dataset;

  /// If the destination table already exists and this flag is `TRUE`, the table
  /// will be overwritten by the contents of assets snapshot.
  ///
  /// If the flag is `FALSE` or unset and the destination table already exists,
  /// the export call returns an INVALID_ARGUMENT error.
  core.bool? force;

  /// \[partition_spec\] determines whether to export to partitioned table(s)
  /// and how to partition the data.
  ///
  /// If \[partition_spec\] is unset or \[partition_spec.partition_key\] is
  /// unset or `PARTITION_KEY_UNSPECIFIED`, the snapshot results will be
  /// exported to non-partitioned table(s). \[force\] will decide whether to
  /// overwrite existing table(s). If \[partition_spec\] is specified. First,
  /// the snapshot results will be written to partitioned table(s) with two
  /// additional timestamp columns, readTime and requestTime, one of which will
  /// be the partition key. Secondly, in the case when any destination table
  /// already exists, it will first try to update existing table's schema as
  /// necessary by appending additional columns. Then, if \[force\] is `TRUE`,
  /// the corresponding partition will be overwritten by the snapshot results
  /// (data in different partitions will remain intact); if \[force\] is unset
  /// or `FALSE`, it will append the data. An error will be returned if the
  /// schema update or data appension fails.
  GoogleCloudAssetV1p7beta1PartitionSpec? partitionSpec;

  /// If this flag is `TRUE`, the snapshot results will be written to one or
  /// multiple tables, each of which contains results of one asset type.
  ///
  /// The \[force\] and \[partition_spec\] fields will apply to each of them.
  /// Field \[table\] will be concatenated with "_" and the asset type names
  /// (see https://cloud.google.com/asset-inventory/docs/supported-asset-types
  /// for supported asset types) to construct per-asset-type table names, in
  /// which all non-alphanumeric characters like "." and "/" will be substituted
  /// by "_". Example: if field \[table\] is "mytable" and snapshot results
  /// contain "storage.googleapis.com/Bucket" assets, the corresponding table
  /// name will be "mytable_storage_googleapis_com_Bucket". If any of these
  /// tables does not exist, a new table with the concatenated name will be
  /// created. When \[content_type\] in the ExportAssetsRequest is `RESOURCE`,
  /// the schema of each table will include RECORD-type columns mapped to the
  /// nested fields in the Asset.resource.data field of that asset type (up to
  /// the 15 nested level BigQuery supports
  /// (https://cloud.google.com/bigquery/docs/nested-repeated#limitations)). The
  /// fields in \>15 nested levels will be stored in JSON format string as a
  /// child column of its parent RECORD column. If error occurs when exporting
  /// to any table, the whole export call will return an error but the export
  /// results that already succeed will persist. Example: if exporting to
  /// table_type_A succeeds when exporting to table_type_B fails during one
  /// export call, the results in table_type_A will persist and there will not
  /// be partial results persisting in a table.
  core.bool? separateTablesPerAssetType;

  /// The BigQuery table to which the snapshot result should be written.
  ///
  /// If this table does not exist, a new table with the given name will be
  /// created.
  ///
  /// Required.
  core.String? table;

  GoogleCloudAssetV1p7beta1BigQueryDestination({
    this.dataset,
    this.force,
    this.partitionSpec,
    this.separateTablesPerAssetType,
    this.table,
  });

  GoogleCloudAssetV1p7beta1BigQueryDestination.fromJson(core.Map json_)
    : this(
        dataset: json_['dataset'] as core.String?,
        force: json_['force'] as core.bool?,
        partitionSpec:
            json_.containsKey('partitionSpec')
                ? GoogleCloudAssetV1p7beta1PartitionSpec.fromJson(
                  json_['partitionSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        separateTablesPerAssetType:
            json_['separateTablesPerAssetType'] as core.bool?,
        table: json_['table'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataset != null) 'dataset': dataset!,
    if (force != null) 'force': force!,
    if (partitionSpec != null) 'partitionSpec': partitionSpec!,
    if (separateTablesPerAssetType != null)
      'separateTablesPerAssetType': separateTablesPerAssetType!,
    if (table != null) 'table': table!,
  };
}

/// Export asset request.
class GoogleCloudAssetV1p7beta1ExportAssetsRequest {
  /// A list of asset types to take a snapshot for.
  ///
  /// For example: "compute.googleapis.com/Disk". Regular expressions are also
  /// supported. For example: * "compute.googleapis.com.*" snapshots resources
  /// whose asset type starts with "compute.googleapis.com". * ".*Instance"
  /// snapshots resources whose asset type ends with "Instance". *
  /// ".*Instance.*" snapshots resources whose asset type contains "Instance".
  /// See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported
  /// regular expression syntax. If the regular expression does not match any
  /// supported asset type, an INVALID_ARGUMENT error will be returned. If
  /// specified, only matching assets will be returned, otherwise, it will
  /// snapshot all asset types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types.
  core.List<core.String>? assetTypes;

  /// Asset content type.
  ///
  /// If not specified, no content but the asset name will be returned.
  /// Possible string values are:
  /// - "CONTENT_TYPE_UNSPECIFIED" : Unspecified content type.
  /// - "RESOURCE" : Resource metadata.
  /// - "IAM_POLICY" : The actual IAM policy set on a resource.
  /// - "ORG_POLICY" : The organization policy set on an asset.
  /// - "ACCESS_POLICY" : The Access Context Manager policy set on an asset.
  /// - "RELATIONSHIP" : The related resources.
  core.String? contentType;

  /// Output configuration indicating where the results will be output to.
  ///
  /// Required.
  GoogleCloudAssetV1p7beta1OutputConfig? outputConfig;

  /// Timestamp to take an asset snapshot.
  ///
  /// This can only be set to a timestamp between the current time and the
  /// current time minus 35 days (inclusive). If not specified, the current time
  /// will be used. Due to delays in resource data collection and indexing,
  /// there is a volatile window during which running the same query may get
  /// different results.
  core.String? readTime;

  /// A list of relationship types to export, for example:
  /// `INSTANCE_TO_INSTANCEGROUP`.
  ///
  /// This field should only be specified if content_type=RELATIONSHIP. If
  /// specified, it will snapshot \[asset_types\]' specified relationships, or
  /// give errors if any relationship_types' supported types are not in
  /// \[asset_types\]. If not specified, it will snapshot all \[asset_types\]'
  /// supported relationships. An unspecified \[asset_types\] field means all
  /// supported asset_types. See
  /// [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview)
  /// for all supported asset types and relationship types.
  core.List<core.String>? relationshipTypes;

  GoogleCloudAssetV1p7beta1ExportAssetsRequest({
    this.assetTypes,
    this.contentType,
    this.outputConfig,
    this.readTime,
    this.relationshipTypes,
  });

  GoogleCloudAssetV1p7beta1ExportAssetsRequest.fromJson(core.Map json_)
    : this(
        assetTypes:
            (json_['assetTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        contentType: json_['contentType'] as core.String?,
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudAssetV1p7beta1OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        readTime: json_['readTime'] as core.String?,
        relationshipTypes:
            (json_['relationshipTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetTypes != null) 'assetTypes': assetTypes!,
    if (contentType != null) 'contentType': contentType!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
    if (readTime != null) 'readTime': readTime!,
    if (relationshipTypes != null) 'relationshipTypes': relationshipTypes!,
  };
}

/// A Cloud Storage location.
class GoogleCloudAssetV1p7beta1GcsDestination {
  /// The URI of the Cloud Storage object.
  ///
  /// It's the same URI that is used by gsutil. Example:
  /// "gs://bucket_name/object_name". See
  /// [Viewing and Editing Object Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata)
  /// for more information.
  core.String? uri;

  /// The URI prefix of all generated Cloud Storage objects.
  ///
  /// Example: "gs://bucket_name/object_name_prefix". Each object URI is in
  /// format: "gs://bucket_name/object_name_prefix/{ASSET_TYPE}/{SHARD_NUMBER}
  /// and only contains assets for that type. starts from 0. Example:
  /// "gs://bucket_name/object_name_prefix/compute.googleapis.com/Disk/0" is the
  /// first shard of output objects containing all compute.googleapis.com/Disk
  /// assets. An INVALID_ARGUMENT error will be returned if file with the same
  /// name "gs://bucket_name/object_name_prefix" already exists.
  core.String? uriPrefix;

  GoogleCloudAssetV1p7beta1GcsDestination({this.uri, this.uriPrefix});

  GoogleCloudAssetV1p7beta1GcsDestination.fromJson(core.Map json_)
    : this(
        uri: json_['uri'] as core.String?,
        uriPrefix: json_['uriPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (uri != null) 'uri': uri!,
    if (uriPrefix != null) 'uriPrefix': uriPrefix!,
  };
}

/// Output configuration for export assets destination.
class GoogleCloudAssetV1p7beta1OutputConfig {
  /// Destination on BigQuery.
  ///
  /// The output table stores the fields in asset proto as columns in BigQuery.
  GoogleCloudAssetV1p7beta1BigQueryDestination? bigqueryDestination;

  /// Destination on Cloud Storage.
  GoogleCloudAssetV1p7beta1GcsDestination? gcsDestination;

  GoogleCloudAssetV1p7beta1OutputConfig({
    this.bigqueryDestination,
    this.gcsDestination,
  });

  GoogleCloudAssetV1p7beta1OutputConfig.fromJson(core.Map json_)
    : this(
        bigqueryDestination:
            json_.containsKey('bigqueryDestination')
                ? GoogleCloudAssetV1p7beta1BigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsDestination:
            json_.containsKey('gcsDestination')
                ? GoogleCloudAssetV1p7beta1GcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bigqueryDestination != null)
      'bigqueryDestination': bigqueryDestination!,
    if (gcsDestination != null) 'gcsDestination': gcsDestination!,
  };
}

/// Specifications of BigQuery partitioned table as export destination.
typedef GoogleCloudAssetV1p7beta1PartitionSpec = $PartitionSpec;

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
