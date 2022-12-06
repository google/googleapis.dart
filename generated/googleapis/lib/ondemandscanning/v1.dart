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

/// On-Demand Scanning API - v1
///
/// A service to scan container images for vulnerabilities.
///
/// For more information, see
/// <https://cloud.google.com/container-analysis/docs/on-demand-scanning/>
///
/// Create an instance of [OnDemandScanningApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsScansResource]
///       - [ProjectsLocationsScansVulnerabilitiesResource]
library ondemandscanning.v1;

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

/// A service to scan container images for vulnerabilities.
class OnDemandScanningApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  OnDemandScanningApi(http.Client client,
      {core.String rootUrl = 'https://ondemandscanning.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsScansResource get scans =>
      ProjectsLocationsScansResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
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
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Waits until the specified long-running operation is done or reaches at
  /// most a specified timeout, returning the latest state.
  ///
  /// If the operation is already done, the latest state is immediately
  /// returned. If the timeout specified is greater than the default HTTP/RPC
  /// timeout, the HTTP/RPC timeout is used. If the server does not support this
  /// method, it returns `google.rpc.Code.UNIMPLEMENTED`. Note that this method
  /// is on a best-effort basis. It may return the latest state before the
  /// specified timeout (including immediately), meaning even an immediate
  /// response is no guarantee that the operation is done.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to wait on.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [timeout] - The maximum duration to wait before timing out. If left blank,
  /// the wait will be at most the time permitted by the underlying HTTP/RPC
  /// protocol. If RPC context deadline is also specified, the shorter one will
  /// be used.
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
  async.Future<Operation> wait(
    core.String name, {
    core.String? timeout,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (timeout != null) 'timeout': [timeout],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':wait';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsScansResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsScansVulnerabilitiesResource get vulnerabilities =>
      ProjectsLocationsScansVulnerabilitiesResource(_requester);

  ProjectsLocationsScansResource(commons.ApiRequester client)
      : _requester = client;

  /// Initiates an analysis of the provided packages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the resource for which analysis is
  /// requested. Format: projects/\[project_name\]/locations/\[location\]
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> analyzePackages(
    AnalyzePackagesRequestV1 request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/scans:analyzePackages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsScansVulnerabilitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsScansVulnerabilitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists vulnerabilities resulting from a successfully completed scan.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the collection of Vulnerabilities being
  /// requested. Format:
  /// projects/\[project_name\]/locations/\[location\]/scans/\[scan_id\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scans/\[^/\]+$`.
  ///
  /// [pageSize] - The number of vulnerabilities to retrieve.
  ///
  /// [pageToken] - The page token, resulting from a previous call to
  /// ListVulnerabilities.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVulnerabilitiesResponseV1].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVulnerabilitiesResponseV1> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vulnerabilities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVulnerabilitiesResponseV1.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An alias to a repo revision.
typedef AliasContext = $AliasContext;

/// Indicates which analysis completed successfully.
///
/// Multiple types of analysis can be performed on a single resource.
typedef AnalysisCompleted = $AnalysisCompleted;

/// AnalyzePackagesRequest is the request to analyze a list of packages and
/// create Vulnerability Occurrences for it.
class AnalyzePackagesRequestV1 {
  /// Whether to include OSV data in the scan.
  ///
  /// For backwards compatibility reasons, this field can be neither removed nor
  /// renamed.
  ///
  /// Deprecated.
  core.bool? includeOsvData;

  /// The packages to analyze.
  core.List<PackageData>? packages;

  /// The resource URI of the container image being scanned.
  ///
  /// Required.
  core.String? resourceUri;

  AnalyzePackagesRequestV1({
    this.includeOsvData,
    this.packages,
    this.resourceUri,
  });

  AnalyzePackagesRequestV1.fromJson(core.Map json_)
      : this(
          includeOsvData: json_.containsKey('includeOsvData')
              ? json_['includeOsvData'] as core.bool
              : null,
          packages: json_.containsKey('packages')
              ? (json_['packages'] as core.List)
                  .map((value) => PackageData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeOsvData != null) 'includeOsvData': includeOsvData!,
        if (packages != null) 'packages': packages!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// Artifact describes a build product.
typedef Artifact = $Artifact;

/// Occurrence that represents a single "attestation".
///
/// The authenticity of an attestation can be verified using the attached
/// signature. If the verifier trusts the public key of the signer, then
/// verifying the signature is sufficient to establish trust. In this
/// circumstance, the authority to which this attestation is attached is
/// primarily useful for lookup (how to find this attestation if you already
/// know the authority and artifact to be verified) and intent (for which
/// authority this attestation was intended to sign.
class AttestationOccurrence {
  /// One or more JWTs encoding a self-contained attestation.
  ///
  /// Each JWT encodes the payload that it verifies within the JWT itself.
  /// Verifier implementation SHOULD ignore the `serialized_payload` field when
  /// verifying these JWTs. If only JWTs are present on this
  /// AttestationOccurrence, then the `serialized_payload` SHOULD be left empty.
  /// Each JWT SHOULD encode a claim specific to the `resource_uri` of this
  /// Occurrence, but this is not validated by Grafeas metadata API
  /// implementations. The JWT itself is opaque to Grafeas.
  core.List<Jwt>? jwts;

  /// The serialized payload that is verified by one or more `signatures`.
  ///
  /// Required.
  core.String? serializedPayload;
  core.List<core.int> get serializedPayloadAsBytes =>
      convert.base64.decode(serializedPayload!);

  set serializedPayloadAsBytes(core.List<core.int> bytes_) {
    serializedPayload =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// One or more signatures over `serialized_payload`.
  ///
  /// Verifier implementations should consider this attestation message verified
  /// if at least one `signature` verifies `serialized_payload`. See `Signature`
  /// in common.proto for more details on signature structure and verification.
  core.List<Signature>? signatures;

  AttestationOccurrence({
    this.jwts,
    this.serializedPayload,
    this.signatures,
  });

  AttestationOccurrence.fromJson(core.Map json_)
      : this(
          jwts: json_.containsKey('jwts')
              ? (json_['jwts'] as core.List)
                  .map((value) => Jwt.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serializedPayload: json_.containsKey('serializedPayload')
              ? json_['serializedPayload'] as core.String
              : null,
          signatures: json_.containsKey('signatures')
              ? (json_['signatures'] as core.List)
                  .map((value) => Signature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jwts != null) 'jwts': jwts!,
        if (serializedPayload != null) 'serializedPayload': serializedPayload!,
        if (signatures != null) 'signatures': signatures!,
      };
}

/// Details of a build occurrence.
class BuildOccurrence {
  /// See InTotoStatement for the replacement.
  ///
  /// In-toto Provenance representation as defined in spec.
  ///
  /// Deprecated.
  InTotoProvenance? intotoProvenance;

  /// In-toto Statement representation as defined in spec.
  ///
  /// The intoto_statement can contain any type of provenance. The serialized
  /// payload of the statement can be stored and signed in the Occurrence's
  /// envelope.
  InTotoStatement? intotoStatement;

  /// The actual provenance for the build.
  BuildProvenance? provenance;

  /// Serialized JSON representation of the provenance, used in generating the
  /// build signature in the corresponding build note.
  ///
  /// After verifying the signature, `provenance_bytes` can be unmarshalled and
  /// compared to the provenance to confirm that it is unchanged. A
  /// base64-encoded string representation of the provenance bytes is used for
  /// the signature in order to interoperate with openssl which expects this
  /// format for signature verification. The serialized form is captured both to
  /// avoid ambiguity in how the provenance is marshalled to json as well to
  /// prevent incompatibilities with future changes.
  core.String? provenanceBytes;

  BuildOccurrence({
    this.intotoProvenance,
    this.intotoStatement,
    this.provenance,
    this.provenanceBytes,
  });

  BuildOccurrence.fromJson(core.Map json_)
      : this(
          intotoProvenance: json_.containsKey('intotoProvenance')
              ? InTotoProvenance.fromJson(json_['intotoProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          intotoStatement: json_.containsKey('intotoStatement')
              ? InTotoStatement.fromJson(json_['intotoStatement']
                  as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? BuildProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          provenanceBytes: json_.containsKey('provenanceBytes')
              ? json_['provenanceBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intotoProvenance != null) 'intotoProvenance': intotoProvenance!,
        if (intotoStatement != null) 'intotoStatement': intotoStatement!,
        if (provenance != null) 'provenance': provenance!,
        if (provenanceBytes != null) 'provenanceBytes': provenanceBytes!,
      };
}

/// Provenance of a build.
///
/// Contains all information needed to verify the full details about the build
/// from source to completion.
class BuildProvenance {
  /// Special options applied to this build.
  ///
  /// This is a catch-all field where build providers can enter any desired
  /// additional details.
  core.Map<core.String, core.String>? buildOptions;

  /// Version string of the builder at the time this build was executed.
  core.String? builderVersion;

  /// Output of the build.
  core.List<Artifact>? builtArtifacts;

  /// Commands requested by the build.
  core.List<Command>? commands;

  /// Time at which the build was created.
  core.String? createTime;

  /// E-mail address of the user who initiated this build.
  ///
  /// Note that this was the user's e-mail address at the time the build was
  /// initiated; this address may not represent the same end-user for all time.
  core.String? creator;

  /// Time at which execution of the build was finished.
  core.String? endTime;

  /// Unique identifier of the build.
  ///
  /// Required.
  core.String? id;

  /// URI where any logs for this provenance were written.
  core.String? logsUri;

  /// ID of the project.
  core.String? projectId;

  /// Details of the Source input to the build.
  Source? sourceProvenance;

  /// Time at which execution of the build was started.
  core.String? startTime;

  /// Trigger identifier if the build was triggered automatically; empty if not.
  core.String? triggerId;

  BuildProvenance({
    this.buildOptions,
    this.builderVersion,
    this.builtArtifacts,
    this.commands,
    this.createTime,
    this.creator,
    this.endTime,
    this.id,
    this.logsUri,
    this.projectId,
    this.sourceProvenance,
    this.startTime,
    this.triggerId,
  });

  BuildProvenance.fromJson(core.Map json_)
      : this(
          buildOptions: json_.containsKey('buildOptions')
              ? (json_['buildOptions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          builderVersion: json_.containsKey('builderVersion')
              ? json_['builderVersion'] as core.String
              : null,
          builtArtifacts: json_.containsKey('builtArtifacts')
              ? (json_['builtArtifacts'] as core.List)
                  .map((value) => Artifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          commands: json_.containsKey('commands')
              ? (json_['commands'] as core.List)
                  .map((value) => Command.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          logsUri: json_.containsKey('logsUri')
              ? json_['logsUri'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          sourceProvenance: json_.containsKey('sourceProvenance')
              ? Source.fromJson(json_['sourceProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          triggerId: json_.containsKey('triggerId')
              ? json_['triggerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildOptions != null) 'buildOptions': buildOptions!,
        if (builderVersion != null) 'builderVersion': builderVersion!,
        if (builtArtifacts != null) 'builtArtifacts': builtArtifacts!,
        if (commands != null) 'commands': commands!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (endTime != null) 'endTime': endTime!,
        if (id != null) 'id': id!,
        if (logsUri != null) 'logsUri': logsUri!,
        if (projectId != null) 'projectId': projectId!,
        if (sourceProvenance != null) 'sourceProvenance': sourceProvenance!,
        if (startTime != null) 'startTime': startTime!,
        if (triggerId != null) 'triggerId': triggerId!,
      };
}

typedef BuilderConfig = $Shared00;

/// Common Vulnerability Scoring System.
///
/// For details, see https://www.first.org/cvss/specification-document This is a
/// message we will try to use for storing various versions of CVSS rather than
/// making a separate proto for storing a specific version.
typedef CVSS = $CVSS;

/// The category to which the update belongs.
typedef Category = $Category;

/// A CloudRepoSourceContext denotes a particular revision in a Google Cloud
/// Source Repo.
class CloudRepoSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext? aliasContext;

  /// The ID of the repo.
  RepoId? repoId;

  /// A revision ID.
  core.String? revisionId;

  CloudRepoSourceContext({
    this.aliasContext,
    this.repoId,
    this.revisionId,
  });

  CloudRepoSourceContext.fromJson(core.Map json_)
      : this(
          aliasContext: json_.containsKey('aliasContext')
              ? AliasContext.fromJson(
                  json_['aliasContext'] as core.Map<core.String, core.dynamic>)
              : null,
          repoId: json_.containsKey('repoId')
              ? RepoId.fromJson(
                  json_['repoId'] as core.Map<core.String, core.dynamic>)
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliasContext != null) 'aliasContext': aliasContext!,
        if (repoId != null) 'repoId': repoId!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Command describes a step performed as part of the build pipeline.
typedef Command = $Command;

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef Completeness = $Completeness;

/// An indication that the compliance checks in the associated ComplianceNote
/// were not satisfied for particular resources or a specified reason.
class ComplianceOccurrence {
  core.String? nonComplianceReason;
  core.List<NonCompliantFile>? nonCompliantFiles;

  ComplianceOccurrence({
    this.nonComplianceReason,
    this.nonCompliantFiles,
  });

  ComplianceOccurrence.fromJson(core.Map json_)
      : this(
          nonComplianceReason: json_.containsKey('nonComplianceReason')
              ? json_['nonComplianceReason'] as core.String
              : null,
          nonCompliantFiles: json_.containsKey('nonCompliantFiles')
              ? (json_['nonCompliantFiles'] as core.List)
                  .map((value) => NonCompliantFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nonComplianceReason != null)
          'nonComplianceReason': nonComplianceReason!,
        if (nonCompliantFiles != null) 'nonCompliantFiles': nonCompliantFiles!,
      };
}

/// Prefer to use a regular Occurrence, and populate the Envelope at the top
/// level of the Occurrence.
///
/// Deprecated.
class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures
  /// in this metadata.
  Envelope? envelope;
  InTotoStatement? statement;

  DSSEAttestationOccurrence({
    this.envelope,
    this.statement,
  });

  DSSEAttestationOccurrence.fromJson(core.Map json_)
      : this(
          envelope: json_.containsKey('envelope')
              ? Envelope.fromJson(
                  json_['envelope'] as core.Map<core.String, core.dynamic>)
              : null,
          statement: json_.containsKey('statement')
              ? InTotoStatement.fromJson(
                  json_['statement'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (envelope != null) 'envelope': envelope!,
        if (statement != null) 'statement': statement!,
      };
}

/// The period during which some deployable was active in a runtime.
typedef DeploymentOccurrence = $DeploymentOccurrence;

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrence {
  AnalysisCompleted? analysisCompleted;

  /// Indicates any errors encountered during analysis of a resource.
  ///
  /// There could be 0 or more of these errors.
  core.List<Status>? analysisError;

  /// The status of discovery for the resource.
  /// Possible string values are:
  /// - "ANALYSIS_STATUS_UNSPECIFIED" : Unknown.
  /// - "PENDING" : Resource is known but no action has been taken yet.
  /// - "SCANNING" : Resource is being analyzed.
  /// - "FINISHED_SUCCESS" : Analysis has finished successfully.
  /// - "COMPLETE" : Analysis has completed.
  /// - "FINISHED_FAILED" : Analysis has finished unsuccessfully, the analysis
  /// itself is in a bad state.
  /// - "FINISHED_UNSUPPORTED" : The resource is known not to be supported.
  core.String? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user.
  ///
  /// The LocalizedMessage is output only and populated by the API.
  Status? analysisStatusError;

  /// The time occurrences related to this discovery occurrence were archived.
  ///
  /// Output only.
  core.String? archiveTime;

  /// Whether the resource is continuously analyzed.
  /// Possible string values are:
  /// - "CONTINUOUS_ANALYSIS_UNSPECIFIED" : Unknown.
  /// - "ACTIVE" : The resource is continuously analyzed.
  /// - "INACTIVE" : The resource is ignored for continuous analysis.
  core.String? continuousAnalysis;

  /// The CPE of the resource being scanned.
  core.String? cpe;

  /// The last time this resource was scanned.
  core.String? lastScanTime;

  DiscoveryOccurrence({
    this.analysisCompleted,
    this.analysisError,
    this.analysisStatus,
    this.analysisStatusError,
    this.archiveTime,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
  });

  DiscoveryOccurrence.fromJson(core.Map json_)
      : this(
          analysisCompleted: json_.containsKey('analysisCompleted')
              ? AnalysisCompleted.fromJson(json_['analysisCompleted']
                  as core.Map<core.String, core.dynamic>)
              : null,
          analysisError: json_.containsKey('analysisError')
              ? (json_['analysisError'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          analysisStatus: json_.containsKey('analysisStatus')
              ? json_['analysisStatus'] as core.String
              : null,
          analysisStatusError: json_.containsKey('analysisStatusError')
              ? Status.fromJson(json_['analysisStatusError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          archiveTime: json_.containsKey('archiveTime')
              ? json_['archiveTime'] as core.String
              : null,
          continuousAnalysis: json_.containsKey('continuousAnalysis')
              ? json_['continuousAnalysis'] as core.String
              : null,
          cpe: json_.containsKey('cpe') ? json_['cpe'] as core.String : null,
          lastScanTime: json_.containsKey('lastScanTime')
              ? json_['lastScanTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisCompleted != null) 'analysisCompleted': analysisCompleted!,
        if (analysisError != null) 'analysisError': analysisError!,
        if (analysisStatus != null) 'analysisStatus': analysisStatus!,
        if (analysisStatusError != null)
          'analysisStatusError': analysisStatusError!,
        if (archiveTime != null) 'archiveTime': archiveTime!,
        if (continuousAnalysis != null)
          'continuousAnalysis': continuousAnalysis!,
        if (cpe != null) 'cpe': cpe!,
        if (lastScanTime != null) 'lastScanTime': lastScanTime!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// MUST match
/// https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto.
///
/// An authenticated message of arbitrary type.
class Envelope {
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> bytes_) {
    payload =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  core.String? payloadType;
  core.List<EnvelopeSignature>? signatures;

  Envelope({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Envelope.fromJson(core.Map json_)
      : this(
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
          payloadType: json_.containsKey('payloadType')
              ? json_['payloadType'] as core.String
              : null,
          signatures: json_.containsKey('signatures')
              ? (json_['signatures'] as core.List)
                  .map((value) => EnvelopeSignature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
        if (payloadType != null) 'payloadType': payloadType!,
        if (signatures != null) 'signatures': signatures!,
      };
}

typedef EnvelopeSignature = $EnvelopeSignature;

/// Container message for hashes of byte content of files, used in source
/// messages to verify integrity of source input to the build.
class FileHashes {
  /// Collection of file hashes.
  ///
  /// Required.
  core.List<Hash>? fileHash;

  FileHashes({
    this.fileHash,
  });

  FileHashes.fromJson(core.Map json_)
      : this(
          fileHash: json_.containsKey('fileHash')
              ? (json_['fileHash'] as core.List)
                  .map((value) => Hash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHash != null) 'fileHash': fileHash!,
      };
}

/// Indicates the location at which a package was found.
typedef FileLocation = $FileLocation;

/// A set of properties that uniquely identify a given Docker image.
typedef Fingerprint = $Fingerprint;

/// A SourceContext referring to a Gerrit project.
class GerritSourceContext {
  /// An alias, which may be a branch or tag.
  AliasContext? aliasContext;

  /// The full project name within the host.
  ///
  /// Projects may be nested, so "project/subproject" is a valid project name.
  /// The "repo name" is the hostURI/project.
  core.String? gerritProject;

  /// The URI of a running Gerrit instance.
  core.String? hostUri;

  /// A revision (commit) ID.
  core.String? revisionId;

  GerritSourceContext({
    this.aliasContext,
    this.gerritProject,
    this.hostUri,
    this.revisionId,
  });

  GerritSourceContext.fromJson(core.Map json_)
      : this(
          aliasContext: json_.containsKey('aliasContext')
              ? AliasContext.fromJson(
                  json_['aliasContext'] as core.Map<core.String, core.dynamic>)
              : null,
          gerritProject: json_.containsKey('gerritProject')
              ? json_['gerritProject'] as core.String
              : null,
          hostUri: json_.containsKey('hostUri')
              ? json_['hostUri'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliasContext != null) 'aliasContext': aliasContext!,
        if (gerritProject != null) 'gerritProject': gerritProject!,
        if (hostUri != null) 'hostUri': hostUri!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// A GitSourceContext denotes a particular revision in a third party Git
/// repository (e.g., GitHub).
typedef GitSourceContext = $GitSourceContext;

/// Indicates the location at which a package was found.
typedef GrafeasV1FileLocation = $FileLocation;

/// Identifies the entity that executed the recipe, which is trusted to have
/// correctly performed the operation and populated this provenance.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = $Shared00;

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    = $GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness;

/// Describes where the config file that kicked off the build came from.
///
/// This is effectively a pointer to the source where buildConfig came from.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    = $GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource;

/// Identifies the event that kicked off the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation {
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource? configSource;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? environment;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation({
    this.configSource,
    this.environment,
    this.parameters,
  });

  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(core.Map json_)
      : this(
          configSource: json_.containsKey('configSource')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
                  json_['configSource'] as core.Map<core.String, core.dynamic>)
              : null,
          environment: json_.containsKey('environment')
              ? json_['environment'] as core.Map<core.String, core.dynamic>
              : null,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configSource != null) 'configSource': configSource!,
        if (environment != null) 'environment': environment!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// The collection of artifacts that influenced the build including sources,
/// dependencies, build tools, base images, and so on.
typedef GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = $Material;

/// Other properties of the build.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata {
  core.String? buildFinishedOn;
  core.String? buildInvocationId;
  core.String? buildStartedOn;
  GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness? completeness;
  core.bool? reproducible;

  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(core.Map json_)
      : this(
          buildFinishedOn: json_.containsKey('buildFinishedOn')
              ? json_['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: json_.containsKey('buildInvocationId')
              ? json_['buildInvocationId'] as core.String
              : null,
          buildStartedOn: json_.containsKey('buildStartedOn')
              ? json_['buildStartedOn'] as core.String
              : null,
          completeness: json_.containsKey('completeness')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
                  json_['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: json_.containsKey('reproducible')
              ? json_['reproducible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
        if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
        if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
        if (completeness != null) 'completeness': completeness!,
        if (reproducible != null) 'reproducible': reproducible!,
      };
}

/// Container message for hash values.
typedef Hash = $Hash;

/// The unique identifier of the update.
typedef Identity = $Identity;

/// Details of the derived image portion of the DockerImage relationship.
///
/// This image would be produced from a Dockerfile with FROM .
class ImageOccurrence {
  /// This contains the base image URL for the derived image occurrence.
  ///
  /// Output only.
  core.String? baseResourceUrl;

  /// The number of layers by which this image differs from the associated image
  /// basis.
  ///
  /// Output only.
  core.int? distance;

  /// The fingerprint of the derived image.
  ///
  /// Required.
  Fingerprint? fingerprint;

  /// This contains layer-specific metadata, if populated it has length
  /// "distance" and is ordered with \[distance\] being the layer immediately
  /// following the base image and \[1\] being the final layer.
  core.List<Layer>? layerInfo;

  ImageOccurrence({
    this.baseResourceUrl,
    this.distance,
    this.fingerprint,
    this.layerInfo,
  });

  ImageOccurrence.fromJson(core.Map json_)
      : this(
          baseResourceUrl: json_.containsKey('baseResourceUrl')
              ? json_['baseResourceUrl'] as core.String
              : null,
          distance: json_.containsKey('distance')
              ? json_['distance'] as core.int
              : null,
          fingerprint: json_.containsKey('fingerprint')
              ? Fingerprint.fromJson(
                  json_['fingerprint'] as core.Map<core.String, core.dynamic>)
              : null,
          layerInfo: json_.containsKey('layerInfo')
              ? (json_['layerInfo'] as core.List)
                  .map((value) => Layer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseResourceUrl != null) 'baseResourceUrl': baseResourceUrl!,
        if (distance != null) 'distance': distance!,
        if (fingerprint != null) 'fingerprint': fingerprint!,
        if (layerInfo != null) 'layerInfo': layerInfo!,
      };
}

class InTotoProvenance {
  /// required
  BuilderConfig? builderConfig;

  /// The collection of artifacts that influenced the build including sources,
  /// dependencies, build tools, base images, and so on.
  ///
  /// This is considered to be incomplete unless metadata.completeness.materials
  /// is true. Unset or null is equivalent to empty.
  core.List<core.String>? materials;
  Metadata? metadata;

  /// Identifies the configuration used for the build.
  ///
  /// When combined with materials, this SHOULD fully describe the build, such
  /// that re-running this recipe results in bit-for-bit identical output (if
  /// the build is reproducible). required
  Recipe? recipe;

  InTotoProvenance({
    this.builderConfig,
    this.materials,
    this.metadata,
    this.recipe,
  });

  InTotoProvenance.fromJson(core.Map json_)
      : this(
          builderConfig: json_.containsKey('builderConfig')
              ? BuilderConfig.fromJson(
                  json_['builderConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? Metadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          recipe: json_.containsKey('recipe')
              ? Recipe.fromJson(
                  json_['recipe'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builderConfig != null) 'builderConfig': builderConfig!,
        if (materials != null) 'materials': materials!,
        if (metadata != null) 'metadata': metadata!,
        if (recipe != null) 'recipe': recipe!,
      };
}

/// Spec defined at
/// https://github.com/in-toto/attestation/tree/main/spec#statement The
/// serialized InTotoStatement will be stored as Envelope.payload.
///
/// Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatement {
  /// Always `https://in-toto.io/Statement/v0.1`.
  core.String? P_type;

  /// `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  core.String? predicateType;
  InTotoProvenance? provenance;
  SlsaProvenance? slsaProvenance;
  SlsaProvenanceZeroTwo? slsaProvenanceZeroTwo;
  core.List<Subject>? subject;

  InTotoStatement({
    this.P_type,
    this.predicateType,
    this.provenance,
    this.slsaProvenance,
    this.slsaProvenanceZeroTwo,
    this.subject,
  });

  InTotoStatement.fromJson(core.Map json_)
      : this(
          P_type:
              json_.containsKey('_type') ? json_['_type'] as core.String : null,
          predicateType: json_.containsKey('predicateType')
              ? json_['predicateType'] as core.String
              : null,
          provenance: json_.containsKey('provenance')
              ? InTotoProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          slsaProvenance: json_.containsKey('slsaProvenance')
              ? SlsaProvenance.fromJson(json_['slsaProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          slsaProvenanceZeroTwo: json_.containsKey('slsaProvenanceZeroTwo')
              ? SlsaProvenanceZeroTwo.fromJson(json_['slsaProvenanceZeroTwo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          subject: json_.containsKey('subject')
              ? (json_['subject'] as core.List)
                  .map((value) => Subject.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_type != null) '_type': P_type!,
        if (predicateType != null) 'predicateType': predicateType!,
        if (provenance != null) 'provenance': provenance!,
        if (slsaProvenance != null) 'slsaProvenance': slsaProvenance!,
        if (slsaProvenanceZeroTwo != null)
          'slsaProvenanceZeroTwo': slsaProvenanceZeroTwo!,
        if (subject != null) 'subject': subject!,
      };
}

typedef Jwt = $Jwt;

/// Indicates a language package available between this package and the
/// customer's resource artifact.
class LanguagePackageDependency {
  core.String? package;
  core.String? version;

  LanguagePackageDependency({
    this.package,
    this.version,
  });

  LanguagePackageDependency.fromJson(core.Map json_)
      : this(
          package: json_.containsKey('package')
              ? json_['package'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (package != null) 'package': package!,
        if (version != null) 'version': version!,
      };
}

/// Layer holds metadata specific to a layer of a Docker image.
typedef Layer = $Layer;

/// License information.
typedef License = $License;

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

/// ListVulnerabilitiesResponse contains a single page of vulnerabilities
/// resulting from a scan.
class ListVulnerabilitiesResponseV1 {
  /// A page token that can be used in a subsequent call to ListVulnerabilities
  /// to continue retrieving results.
  core.String? nextPageToken;

  /// The list of Vulnerability Occurrences resulting from a scan.
  core.List<Occurrence>? occurrences;

  ListVulnerabilitiesResponseV1({
    this.nextPageToken,
    this.occurrences,
  });

  ListVulnerabilitiesResponseV1.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          occurrences: json_.containsKey('occurrences')
              ? (json_['occurrences'] as core.List)
                  .map((value) => Occurrence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (occurrences != null) 'occurrences': occurrences!,
      };
}

/// An occurrence of a particular package installation found within a system's
/// filesystem.
///
/// E.g., glibc was found in `/var/lib/dpkg/status`.
class Location {
  /// The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  ///
  /// Deprecated.
  core.String? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String? path;

  /// The version installed at this location.
  ///
  /// Deprecated.
  Version? version;

  Location({
    this.cpeUri,
    this.path,
    this.version,
  });

  Location.fromJson(core.Map json_)
      : this(
          cpeUri: json_.containsKey('cpeUri')
              ? json_['cpeUri'] as core.String
              : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          version: json_.containsKey('version')
              ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (path != null) 'path': path!,
        if (version != null) 'version': version!,
      };
}

typedef Material = $Material;

/// Other properties of the build.
class Metadata {
  /// The timestamp of when the build completed.
  core.String? buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for
  /// finding associated logs or other ad-hoc analysis.
  ///
  /// The value SHOULD be globally unique, per in-toto Provenance spec.
  core.String? buildInvocationId;

  /// The timestamp of when the build started.
  core.String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be
  /// complete.
  Completeness? completeness;

  /// If true, the builder claims that running the recipe on materials will
  /// produce bit-for-bit identical output.
  core.bool? reproducible;

  Metadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  Metadata.fromJson(core.Map json_)
      : this(
          buildFinishedOn: json_.containsKey('buildFinishedOn')
              ? json_['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: json_.containsKey('buildInvocationId')
              ? json_['buildInvocationId'] as core.String
              : null,
          buildStartedOn: json_.containsKey('buildStartedOn')
              ? json_['buildStartedOn'] as core.String
              : null,
          completeness: json_.containsKey('completeness')
              ? Completeness.fromJson(
                  json_['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: json_.containsKey('reproducible')
              ? json_['reproducible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
        if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
        if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
        if (completeness != null) 'completeness': completeness!,
        if (reproducible != null) 'reproducible': reproducible!,
      };
}

/// Details about files that caused a compliance check to fail.
///
/// display_command is a single command that can be used to display a list of
/// non compliant files. When there is no such command, we can also iterate a
/// list of non compliant file using 'path'.
typedef NonCompliantFile = $NonCompliantFile;

/// An instance of an analysis type that has been found on a resource.
class Occurrence {
  /// Describes an attestation of an artifact.
  AttestationOccurrence? attestation;

  /// Describes a verifiable build.
  BuildOccurrence? build;

  /// Describes a compliance violation on a linked resource.
  ComplianceOccurrence? compliance;

  /// The time this occurrence was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Describes the deployment of an artifact on a runtime.
  DeploymentOccurrence? deployment;

  /// Describes when a resource was discovered.
  DiscoveryOccurrence? discovery;

  /// Describes an attestation of an artifact using dsse.
  DSSEAttestationOccurrence? dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  Envelope? envelope;

  /// Describes how this resource derives from the basis in the associated note.
  ImageOccurrence? image;

  /// This explicitly denotes which of the occurrence details are specified.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NOTE_KIND_UNSPECIFIED" : Default value. This value is unused.
  /// - "VULNERABILITY" : The note and occurrence represent a package
  /// vulnerability.
  /// - "BUILD" : The note and occurrence assert build provenance.
  /// - "IMAGE" : This represents an image basis relationship.
  /// - "PACKAGE" : This represents a package installed via a package manager.
  /// - "DEPLOYMENT" : The note and occurrence track deployment events.
  /// - "DISCOVERY" : The note and occurrence track the initial discovery status
  /// of a resource.
  /// - "ATTESTATION" : This represents a logical "role" that can attest to
  /// artifacts.
  /// - "UPGRADE" : This represents an available package upgrade.
  /// - "COMPLIANCE" : This represents a Compliance Note
  /// - "DSSE_ATTESTATION" : This represents a DSSE attestation Note
  core.String? kind;

  /// The name of the occurrence in the form of
  /// `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  ///
  /// Output only.
  core.String? name;

  /// The analysis note associated with this occurrence, in the form of
  /// `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  ///
  /// This field can be used as a filter in list requests.
  ///
  /// Required. Immutable.
  core.String? noteName;

  /// Describes the installation of a package on the linked resource.
  PackageOccurrence? package;

  /// A description of actions that can be taken to remedy the note.
  core.String? remediation;

  /// A URI that represents the resource for which the occurrence applies.
  ///
  /// For example, `https://gcr.io/project/image@sha256:123abc` for a Docker
  /// image.
  ///
  /// Required. Immutable.
  core.String? resourceUri;

  /// The time this occurrence was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Describes an available package upgrade on the linked resource.
  UpgradeOccurrence? upgrade;

  /// Describes a security vulnerability.
  VulnerabilityOccurrence? vulnerability;

  Occurrence({
    this.attestation,
    this.build,
    this.compliance,
    this.createTime,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.envelope,
    this.image,
    this.kind,
    this.name,
    this.noteName,
    this.package,
    this.remediation,
    this.resourceUri,
    this.updateTime,
    this.upgrade,
    this.vulnerability,
  });

  Occurrence.fromJson(core.Map json_)
      : this(
          attestation: json_.containsKey('attestation')
              ? AttestationOccurrence.fromJson(
                  json_['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          build: json_.containsKey('build')
              ? BuildOccurrence.fromJson(
                  json_['build'] as core.Map<core.String, core.dynamic>)
              : null,
          compliance: json_.containsKey('compliance')
              ? ComplianceOccurrence.fromJson(
                  json_['compliance'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deployment: json_.containsKey('deployment')
              ? DeploymentOccurrence.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          discovery: json_.containsKey('discovery')
              ? DiscoveryOccurrence.fromJson(
                  json_['discovery'] as core.Map<core.String, core.dynamic>)
              : null,
          dsseAttestation: json_.containsKey('dsseAttestation')
              ? DSSEAttestationOccurrence.fromJson(json_['dsseAttestation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          envelope: json_.containsKey('envelope')
              ? Envelope.fromJson(
                  json_['envelope'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? ImageOccurrence.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          noteName: json_.containsKey('noteName')
              ? json_['noteName'] as core.String
              : null,
          package: json_.containsKey('package')
              ? PackageOccurrence.fromJson(
                  json_['package'] as core.Map<core.String, core.dynamic>)
              : null,
          remediation: json_.containsKey('remediation')
              ? json_['remediation'] as core.String
              : null,
          resourceUri: json_.containsKey('resourceUri')
              ? json_['resourceUri'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgrade: json_.containsKey('upgrade')
              ? UpgradeOccurrence.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
          vulnerability: json_.containsKey('vulnerability')
              ? VulnerabilityOccurrence.fromJson(
                  json_['vulnerability'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attestation != null) 'attestation': attestation!,
        if (build != null) 'build': build!,
        if (compliance != null) 'compliance': compliance!,
        if (createTime != null) 'createTime': createTime!,
        if (deployment != null) 'deployment': deployment!,
        if (discovery != null) 'discovery': discovery!,
        if (dsseAttestation != null) 'dsseAttestation': dsseAttestation!,
        if (envelope != null) 'envelope': envelope!,
        if (image != null) 'image': image!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (noteName != null) 'noteName': noteName!,
        if (package != null) 'package': package!,
        if (remediation != null) 'remediation': remediation!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgrade != null) 'upgrade': upgrade!,
        if (vulnerability != null) 'vulnerability': vulnerability!,
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

class PackageData {
  /// The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) in which
  /// the vulnerability may manifest.
  ///
  /// Examples include distro or storage location for vulnerable jar.
  core.String? cpeUri;

  /// The dependency chain between this package and the user's artifact.
  ///
  /// List in order from the customer's package under review first, to the
  /// current package last. Inclusive of the original package and the current
  /// package.
  core.List<LanguagePackageDependency>? dependencyChain;

  /// The path to the jar file / go binary file.
  core.List<FileLocation>? fileLocation;

  /// HashDigest stores the SHA512 hash digest of the jar file if the package is
  /// of type Maven.
  ///
  /// This field will be unset for non Maven packages.
  core.String? hashDigest;

  /// The OS affected by a vulnerability Used to generate the cpe_uri for OS
  /// packages
  core.String? os;

  /// The version of the OS Used to generate the cpe_uri for OS packages
  core.String? osVersion;

  /// The package being analysed for vulnerabilities
  core.String? package;

  /// The type of package: os, maven, go, etc.
  /// Possible string values are:
  /// - "PACKAGE_TYPE_UNSPECIFIED"
  /// - "OS" : Operating System
  /// - "MAVEN" : Java packages from Maven.
  /// - "GO" : Go third-party packages.
  /// - "GO_STDLIB" : Go toolchain + standard library packages.
  core.String? packageType;

  /// CVEs that this package is no longer vulnerable to
  /// go/drydock-dd-custom-binary-scanning
  core.List<core.String>? patchedCve;
  core.String? unused;

  /// The version of the package being analysed
  core.String? version;

  PackageData({
    this.cpeUri,
    this.dependencyChain,
    this.fileLocation,
    this.hashDigest,
    this.os,
    this.osVersion,
    this.package,
    this.packageType,
    this.patchedCve,
    this.unused,
    this.version,
  });

  PackageData.fromJson(core.Map json_)
      : this(
          cpeUri: json_.containsKey('cpeUri')
              ? json_['cpeUri'] as core.String
              : null,
          dependencyChain: json_.containsKey('dependencyChain')
              ? (json_['dependencyChain'] as core.List)
                  .map((value) => LanguagePackageDependency.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fileLocation: json_.containsKey('fileLocation')
              ? (json_['fileLocation'] as core.List)
                  .map((value) => FileLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hashDigest: json_.containsKey('hashDigest')
              ? json_['hashDigest'] as core.String
              : null,
          os: json_.containsKey('os') ? json_['os'] as core.String : null,
          osVersion: json_.containsKey('osVersion')
              ? json_['osVersion'] as core.String
              : null,
          package: json_.containsKey('package')
              ? json_['package'] as core.String
              : null,
          packageType: json_.containsKey('packageType')
              ? json_['packageType'] as core.String
              : null,
          patchedCve: json_.containsKey('patchedCve')
              ? (json_['patchedCve'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          unused: json_.containsKey('unused')
              ? json_['unused'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (dependencyChain != null) 'dependencyChain': dependencyChain!,
        if (fileLocation != null) 'fileLocation': fileLocation!,
        if (hashDigest != null) 'hashDigest': hashDigest!,
        if (os != null) 'os': os!,
        if (osVersion != null) 'osVersion': osVersion!,
        if (package != null) 'package': package!,
        if (packageType != null) 'packageType': packageType!,
        if (patchedCve != null) 'patchedCve': patchedCve!,
        if (unused != null) 'unused': unused!,
        if (version != null) 'version': version!,
      };
}

/// A detail for a distro and package this vulnerability occurrence was found in
/// and its associated fix (if one is available).
class PackageIssue {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was
  /// found in.
  ///
  /// Required.
  core.String? affectedCpeUri;

  /// The package this vulnerability was found in.
  ///
  /// Required.
  core.String? affectedPackage;

  /// The version of the package that is installed on the resource affected by
  /// this vulnerability.
  ///
  /// Required.
  Version? affectedVersion;

  /// The distro or language system assigned severity for this vulnerability
  /// when that is available and note provider assigned severity when it is not
  /// available.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? effectiveSeverity;

  /// The location at which this package was found.
  core.List<GrafeasV1FileLocation>? fileLocation;

  /// Whether a fix is available for this package.
  ///
  /// Output only.
  core.bool? fixAvailable;

  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was
  /// fixed in.
  ///
  /// It is possible for this to be different from the affected_cpe_uri.
  core.String? fixedCpeUri;

  /// The package this vulnerability was fixed in.
  ///
  /// It is possible for this to be different from the affected_package.
  core.String? fixedPackage;

  /// The version of the package this vulnerability was fixed in.
  ///
  /// Setting this to VersionKind.MAXIMUM means no fix is yet available.
  ///
  /// Required.
  Version? fixedVersion;

  /// The type of package (e.g. OS, MAVEN, GO).
  core.String? packageType;

  PackageIssue({
    this.affectedCpeUri,
    this.affectedPackage,
    this.affectedVersion,
    this.effectiveSeverity,
    this.fileLocation,
    this.fixAvailable,
    this.fixedCpeUri,
    this.fixedPackage,
    this.fixedVersion,
    this.packageType,
  });

  PackageIssue.fromJson(core.Map json_)
      : this(
          affectedCpeUri: json_.containsKey('affectedCpeUri')
              ? json_['affectedCpeUri'] as core.String
              : null,
          affectedPackage: json_.containsKey('affectedPackage')
              ? json_['affectedPackage'] as core.String
              : null,
          affectedVersion: json_.containsKey('affectedVersion')
              ? Version.fromJson(json_['affectedVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          effectiveSeverity: json_.containsKey('effectiveSeverity')
              ? json_['effectiveSeverity'] as core.String
              : null,
          fileLocation: json_.containsKey('fileLocation')
              ? (json_['fileLocation'] as core.List)
                  .map((value) => GrafeasV1FileLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fixAvailable: json_.containsKey('fixAvailable')
              ? json_['fixAvailable'] as core.bool
              : null,
          fixedCpeUri: json_.containsKey('fixedCpeUri')
              ? json_['fixedCpeUri'] as core.String
              : null,
          fixedPackage: json_.containsKey('fixedPackage')
              ? json_['fixedPackage'] as core.String
              : null,
          fixedVersion: json_.containsKey('fixedVersion')
              ? Version.fromJson(
                  json_['fixedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          packageType: json_.containsKey('packageType')
              ? json_['packageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (affectedCpeUri != null) 'affectedCpeUri': affectedCpeUri!,
        if (affectedPackage != null) 'affectedPackage': affectedPackage!,
        if (affectedVersion != null) 'affectedVersion': affectedVersion!,
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (fileLocation != null) 'fileLocation': fileLocation!,
        if (fixAvailable != null) 'fixAvailable': fixAvailable!,
        if (fixedCpeUri != null) 'fixedCpeUri': fixedCpeUri!,
        if (fixedPackage != null) 'fixedPackage': fixedPackage!,
        if (fixedVersion != null) 'fixedVersion': fixedVersion!,
        if (packageType != null) 'packageType': packageType!,
      };
}

/// Details on how a particular software package was installed on a system.
class PackageOccurrence {
  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  ///
  /// Architecture will be blank for language packages.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unknown architecture.
  /// - "X86" : X86 architecture.
  /// - "X64" : X64 architecture.
  core.String? architecture;

  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// The cpe_uri will be blank for language packages.
  ///
  /// Output only.
  core.String? cpeUri;

  /// Licenses that have been declared by the authors of the package.
  License? license;

  /// All of the places within the filesystem versions of this package have been
  /// found.
  core.List<Location>? location;

  /// The name of the installed package.
  ///
  /// Required. Output only.
  core.String? name;

  /// The type of package; whether native or non native (e.g., ruby gems,
  /// node.js packages, etc.).
  ///
  /// Output only.
  core.String? packageType;

  /// The version of the package.
  ///
  /// Output only.
  Version? version;

  PackageOccurrence({
    this.architecture,
    this.cpeUri,
    this.license,
    this.location,
    this.name,
    this.packageType,
    this.version,
  });

  PackageOccurrence.fromJson(core.Map json_)
      : this(
          architecture: json_.containsKey('architecture')
              ? json_['architecture'] as core.String
              : null,
          cpeUri: json_.containsKey('cpeUri')
              ? json_['cpeUri'] as core.String
              : null,
          license: json_.containsKey('license')
              ? License.fromJson(
                  json_['license'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? (json_['location'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          packageType: json_.containsKey('packageType')
              ? json_['packageType'] as core.String
              : null,
          version: json_.containsKey('version')
              ? Version.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (architecture != null) 'architecture': architecture!,
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (license != null) 'license': license!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (packageType != null) 'packageType': packageType!,
        if (version != null) 'version': version!,
      };
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
typedef ProjectRepoId = $ProjectRepoId;

/// Steps taken to build the artifact.
///
/// For a TaskRun, typically each container corresponds to one step in the
/// recipe.
typedef Recipe = $Recipe;

/// Metadata for any related URL information.
typedef RelatedUrl = $RelatedUrl;

/// A unique identifier for a Cloud Repo.
class RepoId {
  /// A combination of a project ID and a repo name.
  ProjectRepoId? projectRepoId;

  /// A server-assigned, globally unique identifier.
  core.String? uid;

  RepoId({
    this.projectRepoId,
    this.uid,
  });

  RepoId.fromJson(core.Map json_)
      : this(
          projectRepoId: json_.containsKey('projectRepoId')
              ? ProjectRepoId.fromJson(
                  json_['projectRepoId'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectRepoId != null) 'projectRepoId': projectRepoId!,
        if (uid != null) 'uid': uid!,
      };
}

/// Verifiers (e.g. Kritis implementations) MUST verify signatures with respect
/// to the trust anchors defined in policy (e.g. a Kritis policy).
///
/// Typically this means that the verifier has been configured with a map from
/// `public_key_id` to public key material (and any required parameters, e.g.
/// signing algorithm). In particular, verification implementations MUST NOT
/// treat the signature `public_key_id` as anything more than a key lookup hint.
/// The `public_key_id` DOES NOT validate or authenticate a public key; it only
/// provides a mechanism for quickly selecting a public key ALREADY CONFIGURED
/// on the verifier through a trusted channel. Verification implementations MUST
/// reject signatures in any of the following circumstances: * The
/// `public_key_id` is not recognized by the verifier. * The public key that
/// `public_key_id` refers to does not verify the signature with respect to the
/// payload. The `signature` contents SHOULD NOT be "attached" (where the
/// payload is included with the serialized `signature` bytes). Verifiers MUST
/// ignore any "attached" payload and only verify signatures with respect to
/// explicitly provided payload (e.g. a `payload` field on the proto message
/// that holds this Signature, or the canonical serialization of the proto
/// message that holds this signature).
typedef Signature = $Signature;
typedef SlsaBuilder = $Shared00;

/// Indicates that the builder claims certain fields in this message to be
/// complete.
typedef SlsaCompleteness = $Completeness;

/// Other properties of the build.
class SlsaMetadata {
  /// The timestamp of when the build completed.
  core.String? buildFinishedOn;

  /// Identifies the particular build invocation, which can be useful for
  /// finding associated logs or other ad-hoc analysis.
  ///
  /// The value SHOULD be globally unique, per in-toto Provenance spec.
  core.String? buildInvocationId;

  /// The timestamp of when the build started.
  core.String? buildStartedOn;

  /// Indicates that the builder claims certain fields in this message to be
  /// complete.
  SlsaCompleteness? completeness;

  /// If true, the builder claims that running the recipe on materials will
  /// produce bit-for-bit identical output.
  core.bool? reproducible;

  SlsaMetadata({
    this.buildFinishedOn,
    this.buildInvocationId,
    this.buildStartedOn,
    this.completeness,
    this.reproducible,
  });

  SlsaMetadata.fromJson(core.Map json_)
      : this(
          buildFinishedOn: json_.containsKey('buildFinishedOn')
              ? json_['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: json_.containsKey('buildInvocationId')
              ? json_['buildInvocationId'] as core.String
              : null,
          buildStartedOn: json_.containsKey('buildStartedOn')
              ? json_['buildStartedOn'] as core.String
              : null,
          completeness: json_.containsKey('completeness')
              ? SlsaCompleteness.fromJson(
                  json_['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: json_.containsKey('reproducible')
              ? json_['reproducible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildFinishedOn != null) 'buildFinishedOn': buildFinishedOn!,
        if (buildInvocationId != null) 'buildInvocationId': buildInvocationId!,
        if (buildStartedOn != null) 'buildStartedOn': buildStartedOn!,
        if (completeness != null) 'completeness': completeness!,
        if (reproducible != null) 'reproducible': reproducible!,
      };
}

class SlsaProvenance {
  /// required
  SlsaBuilder? builder;

  /// The collection of artifacts that influenced the build including sources,
  /// dependencies, build tools, base images, and so on.
  ///
  /// This is considered to be incomplete unless metadata.completeness.materials
  /// is true. Unset or null is equivalent to empty.
  core.List<Material>? materials;
  SlsaMetadata? metadata;

  /// Identifies the configuration used for the build.
  ///
  /// When combined with materials, this SHOULD fully describe the build, such
  /// that re-running this recipe results in bit-for-bit identical output (if
  /// the build is reproducible). required
  SlsaRecipe? recipe;

  SlsaProvenance({
    this.builder,
    this.materials,
    this.metadata,
    this.recipe,
  });

  SlsaProvenance.fromJson(core.Map json_)
      : this(
          builder: json_.containsKey('builder')
              ? SlsaBuilder.fromJson(
                  json_['builder'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) => Material.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? SlsaMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          recipe: json_.containsKey('recipe')
              ? SlsaRecipe.fromJson(
                  json_['recipe'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builder != null) 'builder': builder!,
        if (materials != null) 'materials': materials!,
        if (metadata != null) 'metadata': metadata!,
        if (recipe != null) 'recipe': recipe!,
      };
}

/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwo {
  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? buildConfig;
  core.String? buildType;
  GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder? builder;
  GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation? invocation;
  core.List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>? materials;
  GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata? metadata;

  SlsaProvenanceZeroTwo({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  SlsaProvenanceZeroTwo.fromJson(core.Map json_)
      : this(
          buildConfig: json_.containsKey('buildConfig')
              ? json_['buildConfig'] as core.Map<core.String, core.dynamic>
              : null,
          buildType: json_.containsKey('buildType')
              ? json_['buildType'] as core.String
              : null,
          builder: json_.containsKey('builder')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
                  json_['builder'] as core.Map<core.String, core.dynamic>)
              : null,
          invocation: json_.containsKey('invocation')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
                  json_['invocation'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) =>
                      GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildConfig != null) 'buildConfig': buildConfig!,
        if (buildType != null) 'buildType': buildType!,
        if (builder != null) 'builder': builder!,
        if (invocation != null) 'invocation': invocation!,
        if (materials != null) 'materials': materials!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Steps taken to build the artifact.
///
/// For a TaskRun, typically each container corresponds to one step in the
/// recipe.
typedef SlsaRecipe = $SlsaRecipe;

/// Source describes the location of the source used for the build.
class Source {
  /// If provided, some of the source code used for the build may be found in
  /// these locations, in the case where the source repository had multiple
  /// remotes or submodules.
  ///
  /// This list will not include the context specified in the context field.
  core.List<SourceContext>? additionalContexts;

  /// If provided, the input binary artifacts for the build came from this
  /// location.
  core.String? artifactStorageSourceUri;

  /// If provided, the source code used for the build came from this location.
  SourceContext? context;

  /// Hash(es) of the build source, which can be used to verify that the
  /// original source integrity was maintained in the build.
  ///
  /// The keys to this map are file paths used as build source and the values
  /// contain the hash values for those files. If the build source came in a
  /// single package such as a gzipped tarfile (.tar.gz), the FileHash will be
  /// for the single path to that file.
  core.Map<core.String, FileHashes>? fileHashes;

  Source({
    this.additionalContexts,
    this.artifactStorageSourceUri,
    this.context,
    this.fileHashes,
  });

  Source.fromJson(core.Map json_)
      : this(
          additionalContexts: json_.containsKey('additionalContexts')
              ? (json_['additionalContexts'] as core.List)
                  .map((value) => SourceContext.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          artifactStorageSourceUri:
              json_.containsKey('artifactStorageSourceUri')
                  ? json_['artifactStorageSourceUri'] as core.String
                  : null,
          context: json_.containsKey('context')
              ? SourceContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          fileHashes: json_.containsKey('fileHashes')
              ? (json_['fileHashes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    FileHashes.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalContexts != null)
          'additionalContexts': additionalContexts!,
        if (artifactStorageSourceUri != null)
          'artifactStorageSourceUri': artifactStorageSourceUri!,
        if (context != null) 'context': context!,
        if (fileHashes != null) 'fileHashes': fileHashes!,
      };
}

/// A SourceContext is a reference to a tree of files.
///
/// A SourceContext together with a path point to a unique revision of a single
/// file or directory.
class SourceContext {
  /// A SourceContext referring to a revision in a Google Cloud Source Repo.
  CloudRepoSourceContext? cloudRepo;

  /// A SourceContext referring to a Gerrit project.
  GerritSourceContext? gerrit;

  /// A SourceContext referring to any third party Git repo (e.g., GitHub).
  GitSourceContext? git;

  /// Labels with user defined metadata.
  core.Map<core.String, core.String>? labels;

  SourceContext({
    this.cloudRepo,
    this.gerrit,
    this.git,
    this.labels,
  });

  SourceContext.fromJson(core.Map json_)
      : this(
          cloudRepo: json_.containsKey('cloudRepo')
              ? CloudRepoSourceContext.fromJson(
                  json_['cloudRepo'] as core.Map<core.String, core.dynamic>)
              : null,
          gerrit: json_.containsKey('gerrit')
              ? GerritSourceContext.fromJson(
                  json_['gerrit'] as core.Map<core.String, core.dynamic>)
              : null,
          git: json_.containsKey('git')
              ? GitSourceContext.fromJson(
                  json_['git'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudRepo != null) 'cloudRepo': cloudRepo!,
        if (gerrit != null) 'gerrit': gerrit!,
        if (git != null) 'git': git!,
        if (labels != null) 'labels': labels!,
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
typedef Subject = $Subject;

/// The Upgrade Distribution represents metadata about the Upgrade for each
/// operating system (CPE).
///
/// Some distributions have additional metadata around updates, classifying them
/// into various categories and severities.
typedef UpgradeDistribution = $UpgradeDistribution;

/// An Upgrade Occurrence represents that a specific resource_url could install
/// a specific upgrade.
///
/// This presence is supplied via local sources (i.e. it is present in the
/// mirror and the running system has noticed its availability). For Windows,
/// both distribution and windows_update contain information for the Windows
/// update.
class UpgradeOccurrence {
  /// Metadata about the upgrade for available for the specific operating system
  /// for the resource_url.
  ///
  /// This allows efficient filtering, as well as making it easier to use the
  /// occurrence.
  UpgradeDistribution? distribution;

  /// Required for non-Windows OS.
  ///
  /// The package this Upgrade is for.
  core.String? package;

  /// Required for non-Windows OS.
  ///
  /// The version of the package in a machine + human readable form.
  Version? parsedVersion;

  /// Required for Windows OS.
  ///
  /// Represents the metadata about the Windows update.
  WindowsUpdate? windowsUpdate;

  UpgradeOccurrence({
    this.distribution,
    this.package,
    this.parsedVersion,
    this.windowsUpdate,
  });

  UpgradeOccurrence.fromJson(core.Map json_)
      : this(
          distribution: json_.containsKey('distribution')
              ? UpgradeDistribution.fromJson(
                  json_['distribution'] as core.Map<core.String, core.dynamic>)
              : null,
          package: json_.containsKey('package')
              ? json_['package'] as core.String
              : null,
          parsedVersion: json_.containsKey('parsedVersion')
              ? Version.fromJson(
                  json_['parsedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          windowsUpdate: json_.containsKey('windowsUpdate')
              ? WindowsUpdate.fromJson(
                  json_['windowsUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distribution != null) 'distribution': distribution!,
        if (package != null) 'package': package!,
        if (parsedVersion != null) 'parsedVersion': parsedVersion!,
        if (windowsUpdate != null) 'windowsUpdate': windowsUpdate!,
      };
}

/// Version contains structured information about the version of a package.
typedef Version = $Version;

/// An occurrence of a severity vulnerability on a resource.
class VulnerabilityOccurrence {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10
  /// indicates high severity.
  ///
  /// Output only.
  core.double? cvssScore;

  /// CVSS version used to populate cvss_score and severity.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CVSS_VERSION_UNSPECIFIED"
  /// - "CVSS_VERSION_2"
  /// - "CVSS_VERSION_3"
  core.String? cvssVersion;

  /// The cvss v3 score for the vulnerability.
  CVSS? cvssv3;

  /// The distro assigned severity for this vulnerability when it is available,
  /// otherwise this is the note provider assigned severity.
  ///
  /// When there are multiple PackageIssues for this vulnerability, they can
  /// have different effective severities because some might be provided by the
  /// distro while others are provided by the language ecosystem for a language
  /// pack. For this reason, it is advised to use the effective severity on the
  /// PackageIssue level. In the case where multiple PackageIssues have
  /// differing effective severities, this field should be the highest severity
  /// for any of the PackageIssues.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? effectiveSeverity;

  /// Whether at least one of the affected packages has a fix available.
  ///
  /// Output only.
  core.bool? fixAvailable;

  /// A detailed description of this vulnerability.
  ///
  /// Output only.
  core.String? longDescription;

  /// The set of affected locations and their fixes (if available) within the
  /// associated resource.
  ///
  /// Required.
  core.List<PackageIssue>? packageIssue;

  /// URLs related to this vulnerability.
  ///
  /// Output only.
  core.List<RelatedUrl>? relatedUrls;

  /// The note provider assigned severity of this vulnerability.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unknown.
  /// - "MINIMAL" : Minimal severity.
  /// - "LOW" : Low severity.
  /// - "MEDIUM" : Medium severity.
  /// - "HIGH" : High severity.
  /// - "CRITICAL" : Critical severity.
  core.String? severity;

  /// A one sentence description of this vulnerability.
  ///
  /// Output only.
  core.String? shortDescription;

  /// The type of package; whether native or non native (e.g., ruby gems,
  /// node.js packages, etc.).
  core.String? type;

  VulnerabilityOccurrence({
    this.cvssScore,
    this.cvssVersion,
    this.cvssv3,
    this.effectiveSeverity,
    this.fixAvailable,
    this.longDescription,
    this.packageIssue,
    this.relatedUrls,
    this.severity,
    this.shortDescription,
    this.type,
  });

  VulnerabilityOccurrence.fromJson(core.Map json_)
      : this(
          cvssScore: json_.containsKey('cvssScore')
              ? (json_['cvssScore'] as core.num).toDouble()
              : null,
          cvssVersion: json_.containsKey('cvssVersion')
              ? json_['cvssVersion'] as core.String
              : null,
          cvssv3: json_.containsKey('cvssv3')
              ? CVSS.fromJson(
                  json_['cvssv3'] as core.Map<core.String, core.dynamic>)
              : null,
          effectiveSeverity: json_.containsKey('effectiveSeverity')
              ? json_['effectiveSeverity'] as core.String
              : null,
          fixAvailable: json_.containsKey('fixAvailable')
              ? json_['fixAvailable'] as core.bool
              : null,
          longDescription: json_.containsKey('longDescription')
              ? json_['longDescription'] as core.String
              : null,
          packageIssue: json_.containsKey('packageIssue')
              ? (json_['packageIssue'] as core.List)
                  .map((value) => PackageIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relatedUrls: json_.containsKey('relatedUrls')
              ? (json_['relatedUrls'] as core.List)
                  .map((value) => RelatedUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          shortDescription: json_.containsKey('shortDescription')
              ? json_['shortDescription'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cvssScore != null) 'cvssScore': cvssScore!,
        if (cvssVersion != null) 'cvssVersion': cvssVersion!,
        if (cvssv3 != null) 'cvssv3': cvssv3!,
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (fixAvailable != null) 'fixAvailable': fixAvailable!,
        if (longDescription != null) 'longDescription': longDescription!,
        if (packageIssue != null) 'packageIssue': packageIssue!,
        if (relatedUrls != null) 'relatedUrls': relatedUrls!,
        if (severity != null) 'severity': severity!,
        if (shortDescription != null) 'shortDescription': shortDescription!,
        if (type != null) 'type': type!,
      };
}

/// Windows Update represents the metadata about the update for the Windows
/// operating system.
///
/// The fields in this message come from the Windows Update API documented at
/// https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.
class WindowsUpdate {
  /// The list of categories to which the update belongs.
  core.List<Category>? categories;

  /// The localized description of the update.
  core.String? description;

  /// Required - The unique identifier for the update.
  Identity? identity;

  /// The Microsoft Knowledge Base article IDs that are associated with the
  /// update.
  core.List<core.String>? kbArticleIds;

  /// The last published timestamp of the update.
  core.String? lastPublishedTimestamp;

  /// The hyperlink to the support information for the update.
  core.String? supportUrl;

  /// The localized title of the update.
  core.String? title;

  WindowsUpdate({
    this.categories,
    this.description,
    this.identity,
    this.kbArticleIds,
    this.lastPublishedTimestamp,
    this.supportUrl,
    this.title,
  });

  WindowsUpdate.fromJson(core.Map json_)
      : this(
          categories: json_.containsKey('categories')
              ? (json_['categories'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          identity: json_.containsKey('identity')
              ? Identity.fromJson(
                  json_['identity'] as core.Map<core.String, core.dynamic>)
              : null,
          kbArticleIds: json_.containsKey('kbArticleIds')
              ? (json_['kbArticleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastPublishedTimestamp: json_.containsKey('lastPublishedTimestamp')
              ? json_['lastPublishedTimestamp'] as core.String
              : null,
          supportUrl: json_.containsKey('supportUrl')
              ? json_['supportUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (description != null) 'description': description!,
        if (identity != null) 'identity': identity!,
        if (kbArticleIds != null) 'kbArticleIds': kbArticleIds!,
        if (lastPublishedTimestamp != null)
          'lastPublishedTimestamp': lastPublishedTimestamp!,
        if (supportUrl != null) 'supportUrl': supportUrl!,
        if (title != null) 'title': title!,
      };
}
