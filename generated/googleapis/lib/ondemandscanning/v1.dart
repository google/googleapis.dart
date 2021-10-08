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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (timeout != null) 'timeout': [timeout],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':wait';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/scans:analyzePackages';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/vulnerabilities';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVulnerabilitiesResponseV1.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// An alias to a repo revision.
class AliasContext {
  /// The alias kind.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Unknown.
  /// - "FIXED" : Git tag.
  /// - "MOVABLE" : Git branch.
  /// - "OTHER" : Used to specify non-standard aliases. For example, if a Git
  /// repo has a ref named "refs/foo/bar".
  core.String? kind;

  /// The alias name.
  core.String? name;

  AliasContext({
    this.kind,
    this.name,
  });

  AliasContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// AnalyzePackagesMetadata contains metadata for an active scan of a container
/// image.
typedef AnalyzePackagesMetadata = $Shared07;

/// AnalyzePackagesMetadata contains metadata for an active scan of a container
/// image.
typedef AnalyzePackagesMetadataV1 = $Shared07;

/// AnalyzePackagesRequest is the request to analyze a list of packages and
/// create Vulnerability Occurrences for it.
class AnalyzePackagesRequestV1 {
  /// Whether to include OSV data in the scan.
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

  AnalyzePackagesRequestV1.fromJson(core.Map _json)
      : this(
          includeOsvData: _json.containsKey('includeOsvData')
              ? _json['includeOsvData'] as core.bool
              : null,
          packages: _json.containsKey('packages')
              ? (_json['packages'] as core.List)
                  .map((value) => PackageData.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeOsvData != null) 'includeOsvData': includeOsvData!,
        if (packages != null) 'packages': packages!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
      };
}

/// AnalyzePackagesResponse contains the information necessary to find results
/// for the given scan.
typedef AnalyzePackagesResponse = $Shared08;

/// AnalyzePackagesResponse contains the information necessary to find results
/// for the given scan.
typedef AnalyzePackagesResponseV1 = $Shared08;

/// Artifact describes a build product.
class Artifact {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
  /// container.
  core.String? checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest
  /// like `gcr.io/projectID/imagename@sha256:123456`.
  core.String? id;

  /// Related artifact names.
  ///
  /// This may be the path to a binary or jar file, or in the case of a
  /// container build, the name used to push the container image to Google
  /// Container Registry, as presented to `docker push`. Note that a single
  /// Artifact ID can have multiple names, for example if two tags are applied
  /// to one image.
  core.List<core.String>? names;

  Artifact({
    this.checksum,
    this.id,
    this.names,
  });

  Artifact.fromJson(core.Map _json)
      : this(
          checksum: _json.containsKey('checksum')
              ? _json['checksum'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          names: _json.containsKey('names')
              ? (_json['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksum != null) 'checksum': checksum!,
        if (id != null) 'id': id!,
        if (names != null) 'names': names!,
      };
}

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

  set serializedPayloadAsBytes(core.List<core.int> _bytes) {
    serializedPayload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  AttestationOccurrence.fromJson(core.Map _json)
      : this(
          jwts: _json.containsKey('jwts')
              ? (_json['jwts'] as core.List)
                  .map((value) => Jwt.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serializedPayload: _json.containsKey('serializedPayload')
              ? _json['serializedPayload'] as core.String
              : null,
          signatures: _json.containsKey('signatures')
              ? (_json['signatures'] as core.List)
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
  /// In-toto Provenance representation as defined in spec.
  InTotoProvenance? intotoProvenance;

  /// The actual provenance for the build.
  ///
  /// Required.
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
    this.provenance,
    this.provenanceBytes,
  });

  BuildOccurrence.fromJson(core.Map _json)
      : this(
          intotoProvenance: _json.containsKey('intotoProvenance')
              ? InTotoProvenance.fromJson(_json['intotoProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? BuildProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          provenanceBytes: _json.containsKey('provenanceBytes')
              ? _json['provenanceBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (intotoProvenance != null) 'intotoProvenance': intotoProvenance!,
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

  BuildProvenance.fromJson(core.Map _json)
      : this(
          buildOptions: _json.containsKey('buildOptions')
              ? (_json['buildOptions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          builderVersion: _json.containsKey('builderVersion')
              ? _json['builderVersion'] as core.String
              : null,
          builtArtifacts: _json.containsKey('builtArtifacts')
              ? (_json['builtArtifacts'] as core.List)
                  .map((value) => Artifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          commands: _json.containsKey('commands')
              ? (_json['commands'] as core.List)
                  .map((value) => Command.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? _json['creator'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          logsUri: _json.containsKey('logsUri')
              ? _json['logsUri'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          sourceProvenance: _json.containsKey('sourceProvenance')
              ? Source.fromJson(_json['sourceProvenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          triggerId: _json.containsKey('triggerId')
              ? _json['triggerId'] as core.String
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

typedef BuilderConfig = $Shared09;

/// The category to which the update belongs.
class Category {
  /// The identifier of the category.
  core.String? categoryId;

  /// The localized name of the category.
  core.String? name;

  Category({
    this.categoryId,
    this.name,
  });

  Category.fromJson(core.Map _json)
      : this(
          categoryId: _json.containsKey('categoryId')
              ? _json['categoryId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryId != null) 'categoryId': categoryId!,
        if (name != null) 'name': name!,
      };
}

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

  CloudRepoSourceContext.fromJson(core.Map _json)
      : this(
          aliasContext: _json.containsKey('aliasContext')
              ? AliasContext.fromJson(
                  _json['aliasContext'] as core.Map<core.String, core.dynamic>)
              : null,
          repoId: _json.containsKey('repoId')
              ? RepoId.fromJson(
                  _json['repoId'] as core.Map<core.String, core.dynamic>)
              : null,
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliasContext != null) 'aliasContext': aliasContext!,
        if (repoId != null) 'repoId': repoId!,
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// Command describes a step performed as part of the build pipeline.
class Command {
  /// Command-line arguments used when executing this command.
  core.List<core.String>? args;

  /// Working directory (relative to project source root) used when running this
  /// command.
  core.String? dir;

  /// Environment variables set before running this command.
  core.List<core.String>? env;

  /// Optional unique identifier for this command, used in wait_for to reference
  /// this command as a dependency.
  core.String? id;

  /// Name of the command, as presented on the command line, or if the command
  /// is packaged as a Docker container, as presented to `docker pull`.
  ///
  /// Required.
  core.String? name;

  /// The ID(s) of the command(s) that this command depends on.
  core.List<core.String>? waitFor;

  Command({
    this.args,
    this.dir,
    this.env,
    this.id,
    this.name,
    this.waitFor,
  });

  Command.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dir: _json.containsKey('dir') ? _json['dir'] as core.String : null,
          env: _json.containsKey('env')
              ? (_json['env'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          waitFor: _json.containsKey('waitFor')
              ? (_json['waitFor'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (dir != null) 'dir': dir!,
        if (env != null) 'env': env!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (waitFor != null) 'waitFor': waitFor!,
      };
}

/// Indicates that the builder claims certain fields in this message to be
/// complete.
class Completeness {
  /// If true, the builder claims that recipe.arguments is complete, meaning
  /// that all external inputs are properly captured in the recipe.
  core.bool? arguments;

  /// If true, the builder claims that recipe.environment is claimed to be
  /// complete.
  core.bool? environment;

  /// If true, the builder claims that materials are complete, usually through
  /// some controls to prevent network access.
  ///
  /// Sometimes called "hermetic".
  core.bool? materials;

  Completeness({
    this.arguments,
    this.environment,
    this.materials,
  });

  Completeness.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? _json['arguments'] as core.bool
              : null,
          environment: _json.containsKey('environment')
              ? _json['environment'] as core.bool
              : null,
          materials: _json.containsKey('materials')
              ? _json['materials'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (environment != null) 'environment': environment!,
        if (materials != null) 'materials': materials!,
      };
}

/// An indication that the compliance checks in the associated ComplianceNote
/// were not satisfied for particular resources or a specified reason.
class ComplianceOccurrence {
  core.String? nonComplianceReason;
  core.List<NonCompliantFile>? nonCompliantFiles;

  ComplianceOccurrence({
    this.nonComplianceReason,
    this.nonCompliantFiles,
  });

  ComplianceOccurrence.fromJson(core.Map _json)
      : this(
          nonComplianceReason: _json.containsKey('nonComplianceReason')
              ? _json['nonComplianceReason'] as core.String
              : null,
          nonCompliantFiles: _json.containsKey('nonCompliantFiles')
              ? (_json['nonCompliantFiles'] as core.List)
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

class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures
  /// in this metadata.
  Envelope? envelope;
  InTotoStatement? statement;

  DSSEAttestationOccurrence({
    this.envelope,
    this.statement,
  });

  DSSEAttestationOccurrence.fromJson(core.Map _json)
      : this(
          envelope: _json.containsKey('envelope')
              ? Envelope.fromJson(
                  _json['envelope'] as core.Map<core.String, core.dynamic>)
              : null,
          statement: _json.containsKey('statement')
              ? InTotoStatement.fromJson(
                  _json['statement'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (envelope != null) 'envelope': envelope!,
        if (statement != null) 'statement': statement!,
      };
}

/// The period during which some deployable was active in a runtime.
class DeploymentOccurrence {
  /// Address of the runtime element hosting this deployment.
  core.String? address;

  /// Configuration used to create this deployment.
  core.String? config;

  /// Beginning of the lifetime of this deployment.
  ///
  /// Required.
  core.String? deployTime;

  /// Platform hosting this deployment.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Unknown.
  /// - "GKE" : Google Container Engine.
  /// - "FLEX" : Google App Engine: Flexible Environment.
  /// - "CUSTOM" : Custom user-defined platform.
  core.String? platform;

  /// Resource URI for the artifact being deployed taken from the deployable
  /// field with the same name.
  ///
  /// Output only.
  core.List<core.String>? resourceUri;

  /// End of the lifetime of this deployment.
  core.String? undeployTime;

  /// Identity of the user that triggered this deployment.
  core.String? userEmail;

  DeploymentOccurrence({
    this.address,
    this.config,
    this.deployTime,
    this.platform,
    this.resourceUri,
    this.undeployTime,
    this.userEmail,
  });

  DeploymentOccurrence.fromJson(core.Map _json)
      : this(
          address: _json.containsKey('address')
              ? _json['address'] as core.String
              : null,
          config: _json.containsKey('config')
              ? _json['config'] as core.String
              : null,
          deployTime: _json.containsKey('deployTime')
              ? _json['deployTime'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? (_json['resourceUri'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          undeployTime: _json.containsKey('undeployTime')
              ? _json['undeployTime'] as core.String
              : null,
          userEmail: _json.containsKey('userEmail')
              ? _json['userEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (config != null) 'config': config!,
        if (deployTime != null) 'deployTime': deployTime!,
        if (platform != null) 'platform': platform!,
        if (resourceUri != null) 'resourceUri': resourceUri!,
        if (undeployTime != null) 'undeployTime': undeployTime!,
        if (userEmail != null) 'userEmail': userEmail!,
      };
}

/// Provides information about the analysis status of a discovered resource.
class DiscoveryOccurrence {
  /// The status of discovery for the resource.
  /// Possible string values are:
  /// - "ANALYSIS_STATUS_UNSPECIFIED" : Unknown.
  /// - "PENDING" : Resource is known but no action has been taken yet.
  /// - "SCANNING" : Resource is being analyzed.
  /// - "FINISHED_SUCCESS" : Analysis has finished successfully.
  /// - "FINISHED_FAILED" : Analysis has finished unsuccessfully, the analysis
  /// itself is in a bad state.
  /// - "FINISHED_UNSUPPORTED" : The resource is known not to be supported
  core.String? analysisStatus;

  /// When an error is encountered this will contain a LocalizedMessage under
  /// details to show to the user.
  ///
  /// The LocalizedMessage is output only and populated by the API.
  Status? analysisStatusError;

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
    this.analysisStatus,
    this.analysisStatusError,
    this.continuousAnalysis,
    this.cpe,
    this.lastScanTime,
  });

  DiscoveryOccurrence.fromJson(core.Map _json)
      : this(
          analysisStatus: _json.containsKey('analysisStatus')
              ? _json['analysisStatus'] as core.String
              : null,
          analysisStatusError: _json.containsKey('analysisStatusError')
              ? Status.fromJson(_json['analysisStatusError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          continuousAnalysis: _json.containsKey('continuousAnalysis')
              ? _json['continuousAnalysis'] as core.String
              : null,
          cpe: _json.containsKey('cpe') ? _json['cpe'] as core.String : null,
          lastScanTime: _json.containsKey('lastScanTime')
              ? _json['lastScanTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analysisStatus != null) 'analysisStatus': analysisStatus!,
        if (analysisStatusError != null)
          'analysisStatusError': analysisStatusError!,
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// MUST match
/// https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto.
///
/// An authenticated message of arbitrary type.
class Envelope {
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  core.String? payloadType;
  core.List<EnvelopeSignature>? signatures;

  Envelope({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Envelope.fromJson(core.Map _json)
      : this(
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.String
              : null,
          payloadType: _json.containsKey('payloadType')
              ? _json['payloadType'] as core.String
              : null,
          signatures: _json.containsKey('signatures')
              ? (_json['signatures'] as core.List)
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

class EnvelopeSignature {
  core.String? keyid;
  core.String? sig;
  core.List<core.int> get sigAsBytes => convert.base64.decode(sig!);

  set sigAsBytes(core.List<core.int> _bytes) {
    sig =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  EnvelopeSignature({
    this.keyid,
    this.sig,
  });

  EnvelopeSignature.fromJson(core.Map _json)
      : this(
          keyid:
              _json.containsKey('keyid') ? _json['keyid'] as core.String : null,
          sig: _json.containsKey('sig') ? _json['sig'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyid != null) 'keyid': keyid!,
        if (sig != null) 'sig': sig!,
      };
}

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

  FileHashes.fromJson(core.Map _json)
      : this(
          fileHash: _json.containsKey('fileHash')
              ? (_json['fileHash'] as core.List)
                  .map((value) => Hash.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileHash != null) 'fileHash': fileHash!,
      };
}

/// A set of properties that uniquely identify a given Docker image.
class Fingerprint {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  ///
  /// Required.
  core.String? v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  ///
  /// Required.
  core.List<core.String>? v2Blob;

  /// The name of the image's v2 blobs computed via: \[bottom\] := v2_blobbottom
  /// := sha256(v2_blob\[N\] + " " + v2_name\[N+1\]) Only the name of the final
  /// blob is kept.
  ///
  /// Output only.
  core.String? v2Name;

  Fingerprint({
    this.v1Name,
    this.v2Blob,
    this.v2Name,
  });

  Fingerprint.fromJson(core.Map _json)
      : this(
          v1Name: _json.containsKey('v1Name')
              ? _json['v1Name'] as core.String
              : null,
          v2Blob: _json.containsKey('v2Blob')
              ? (_json['v2Blob'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          v2Name: _json.containsKey('v2Name')
              ? _json['v2Name'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (v1Name != null) 'v1Name': v1Name!,
        if (v2Blob != null) 'v2Blob': v2Blob!,
        if (v2Name != null) 'v2Name': v2Name!,
      };
}

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

  GerritSourceContext.fromJson(core.Map _json)
      : this(
          aliasContext: _json.containsKey('aliasContext')
              ? AliasContext.fromJson(
                  _json['aliasContext'] as core.Map<core.String, core.dynamic>)
              : null,
          gerritProject: _json.containsKey('gerritProject')
              ? _json['gerritProject'] as core.String
              : null,
          hostUri: _json.containsKey('hostUri')
              ? _json['hostUri'] as core.String
              : null,
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
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
class GitSourceContext {
  /// Git commit hash.
  core.String? revisionId;

  /// Git repository URL.
  core.String? url;

  GitSourceContext({
    this.revisionId,
    this.url,
  });

  GitSourceContext.fromJson(core.Map _json)
      : this(
          revisionId: _json.containsKey('revisionId')
              ? _json['revisionId'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
        if (url != null) 'url': url!,
      };
}

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed, e.g. "SHA-256".
  ///
  /// Required.
  core.String? type;

  /// The hash value.
  ///
  /// Required.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Hash({
    this.type,
    this.value,
  });

  Hash.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

/// The unique identifier of the update.
class Identity {
  /// The revision number of the update.
  core.int? revision;

  /// The revision independent identifier of the update.
  core.String? updateId;

  Identity({
    this.revision,
    this.updateId,
  });

  Identity.fromJson(core.Map _json)
      : this(
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          updateId: _json.containsKey('updateId')
              ? _json['updateId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revision != null) 'revision': revision!,
        if (updateId != null) 'updateId': updateId!,
      };
}

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

  ImageOccurrence.fromJson(core.Map _json)
      : this(
          baseResourceUrl: _json.containsKey('baseResourceUrl')
              ? _json['baseResourceUrl'] as core.String
              : null,
          distance: _json.containsKey('distance')
              ? _json['distance'] as core.int
              : null,
          fingerprint: _json.containsKey('fingerprint')
              ? Fingerprint.fromJson(
                  _json['fingerprint'] as core.Map<core.String, core.dynamic>)
              : null,
          layerInfo: _json.containsKey('layerInfo')
              ? (_json['layerInfo'] as core.List)
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

  InTotoProvenance.fromJson(core.Map _json)
      : this(
          builderConfig: _json.containsKey('builderConfig')
              ? BuilderConfig.fromJson(
                  _json['builderConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          materials: _json.containsKey('materials')
              ? (_json['materials'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          metadata: _json.containsKey('metadata')
              ? Metadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          recipe: _json.containsKey('recipe')
              ? Recipe.fromJson(
                  _json['recipe'] as core.Map<core.String, core.dynamic>)
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
  /// "https://in-toto.io/Provenance/v0.1" for InTotoProvenance.
  core.String? predicateType;
  InTotoProvenance? provenance;
  core.List<Subject>? subject;

  /// Always "https://in-toto.io/Statement/v0.1".
  core.String? type;

  InTotoStatement({
    this.predicateType,
    this.provenance,
    this.subject,
    this.type,
  });

  InTotoStatement.fromJson(core.Map _json)
      : this(
          predicateType: _json.containsKey('predicateType')
              ? _json['predicateType'] as core.String
              : null,
          provenance: _json.containsKey('provenance')
              ? InTotoProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          subject: _json.containsKey('subject')
              ? (_json['subject'] as core.List)
                  .map((value) => Subject.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (predicateType != null) 'predicateType': predicateType!,
        if (provenance != null) 'provenance': provenance!,
        if (subject != null) 'subject': subject!,
        if (type != null) 'type': type!,
      };
}

typedef Jwt = $Jwt;

/// Layer holds metadata specific to a layer of a Docker image.
class Layer {
  /// The recovered arguments to the Dockerfile directive.
  core.String? arguments;

  /// The recovered Dockerfile directive used to construct this layer.
  ///
  /// See https://docs.docker.com/engine/reference/builder/ for more
  /// information.
  ///
  /// Required.
  core.String? directive;

  Layer({
    this.arguments,
    this.directive,
  });

  Layer.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? _json['arguments'] as core.String
              : null,
          directive: _json.containsKey('directive')
              ? _json['directive'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (directive != null) 'directive': directive!,
      };
}

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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

  ListVulnerabilitiesResponseV1.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          occurrences: _json.containsKey('occurrences')
              ? (_json['occurrences'] as core.List)
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
  /// The CPE URI in [CPE format](https://cpe.mitre.org/specification/) denoting
  /// the package manager version distributing a package.
  ///
  /// Required.
  core.String? cpeUri;

  /// The path from which we gathered that this package/version is installed.
  core.String? path;

  /// The version installed at this location.
  Version? version;

  Location({
    this.cpeUri,
    this.path,
    this.version,
  });

  Location.fromJson(core.Map _json)
      : this(
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (path != null) 'path': path!,
        if (version != null) 'version': version!,
      };
}

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

  Metadata.fromJson(core.Map _json)
      : this(
          buildFinishedOn: _json.containsKey('buildFinishedOn')
              ? _json['buildFinishedOn'] as core.String
              : null,
          buildInvocationId: _json.containsKey('buildInvocationId')
              ? _json['buildInvocationId'] as core.String
              : null,
          buildStartedOn: _json.containsKey('buildStartedOn')
              ? _json['buildStartedOn'] as core.String
              : null,
          completeness: _json.containsKey('completeness')
              ? Completeness.fromJson(
                  _json['completeness'] as core.Map<core.String, core.dynamic>)
              : null,
          reproducible: _json.containsKey('reproducible')
              ? _json['reproducible'] as core.bool
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
class NonCompliantFile {
  /// Command to display the non-compliant files.
  core.String? displayCommand;

  /// display_command is a single command that can be used to display a list of
  /// non compliant files.
  ///
  /// When there is no such command, we can also iterate a list of non compliant
  /// file using 'path'. Empty if `display_command` is set.
  core.String? path;

  /// Explains why a file is non compliant for a CIS check.
  core.String? reason;

  NonCompliantFile({
    this.displayCommand,
    this.path,
    this.reason,
  });

  NonCompliantFile.fromJson(core.Map _json)
      : this(
          displayCommand: _json.containsKey('displayCommand')
              ? _json['displayCommand'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayCommand != null) 'displayCommand': displayCommand!,
        if (path != null) 'path': path!,
        if (reason != null) 'reason': reason!,
      };
}

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

  Occurrence.fromJson(core.Map _json)
      : this(
          attestation: _json.containsKey('attestation')
              ? AttestationOccurrence.fromJson(
                  _json['attestation'] as core.Map<core.String, core.dynamic>)
              : null,
          build: _json.containsKey('build')
              ? BuildOccurrence.fromJson(
                  _json['build'] as core.Map<core.String, core.dynamic>)
              : null,
          compliance: _json.containsKey('compliance')
              ? ComplianceOccurrence.fromJson(
                  _json['compliance'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deployment: _json.containsKey('deployment')
              ? DeploymentOccurrence.fromJson(
                  _json['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          discovery: _json.containsKey('discovery')
              ? DiscoveryOccurrence.fromJson(
                  _json['discovery'] as core.Map<core.String, core.dynamic>)
              : null,
          dsseAttestation: _json.containsKey('dsseAttestation')
              ? DSSEAttestationOccurrence.fromJson(_json['dsseAttestation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          envelope: _json.containsKey('envelope')
              ? Envelope.fromJson(
                  _json['envelope'] as core.Map<core.String, core.dynamic>)
              : null,
          image: _json.containsKey('image')
              ? ImageOccurrence.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          noteName: _json.containsKey('noteName')
              ? _json['noteName'] as core.String
              : null,
          package: _json.containsKey('package')
              ? PackageOccurrence.fromJson(
                  _json['package'] as core.Map<core.String, core.dynamic>)
              : null,
          remediation: _json.containsKey('remediation')
              ? _json['remediation'] as core.String
              : null,
          resourceUri: _json.containsKey('resourceUri')
              ? _json['resourceUri'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          upgrade: _json.containsKey('upgrade')
              ? UpgradeOccurrence.fromJson(
                  _json['upgrade'] as core.Map<core.String, core.dynamic>)
              : null,
          vulnerability: _json.containsKey('vulnerability')
              ? VulnerabilityOccurrence.fromJson(
                  _json['vulnerability'] as core.Map<core.String, core.dynamic>)
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

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

  /// The OS affected by a vulnerability This field is deprecated and the
  /// information is in cpe_uri
  core.String? os;

  /// The version of the OS This field is deprecated and the information is in
  /// cpe_uri
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
  core.String? unused;

  /// The version of the package being analysed
  core.String? version;

  PackageData({
    this.cpeUri,
    this.os,
    this.osVersion,
    this.package,
    this.packageType,
    this.unused,
    this.version,
  });

  PackageData.fromJson(core.Map _json)
      : this(
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          os: _json.containsKey('os') ? _json['os'] as core.String : null,
          osVersion: _json.containsKey('osVersion')
              ? _json['osVersion'] as core.String
              : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
          unused: _json.containsKey('unused')
              ? _json['unused'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (os != null) 'os': os!,
        if (osVersion != null) 'osVersion': osVersion!,
        if (package != null) 'package': package!,
        if (packageType != null) 'packageType': packageType!,
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
    this.fixAvailable,
    this.fixedCpeUri,
    this.fixedPackage,
    this.fixedVersion,
    this.packageType,
  });

  PackageIssue.fromJson(core.Map _json)
      : this(
          affectedCpeUri: _json.containsKey('affectedCpeUri')
              ? _json['affectedCpeUri'] as core.String
              : null,
          affectedPackage: _json.containsKey('affectedPackage')
              ? _json['affectedPackage'] as core.String
              : null,
          affectedVersion: _json.containsKey('affectedVersion')
              ? Version.fromJson(_json['affectedVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          effectiveSeverity: _json.containsKey('effectiveSeverity')
              ? _json['effectiveSeverity'] as core.String
              : null,
          fixAvailable: _json.containsKey('fixAvailable')
              ? _json['fixAvailable'] as core.bool
              : null,
          fixedCpeUri: _json.containsKey('fixedCpeUri')
              ? _json['fixedCpeUri'] as core.String
              : null,
          fixedPackage: _json.containsKey('fixedPackage')
              ? _json['fixedPackage'] as core.String
              : null,
          fixedVersion: _json.containsKey('fixedVersion')
              ? Version.fromJson(
                  _json['fixedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          packageType: _json.containsKey('packageType')
              ? _json['packageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (affectedCpeUri != null) 'affectedCpeUri': affectedCpeUri!,
        if (affectedPackage != null) 'affectedPackage': affectedPackage!,
        if (affectedVersion != null) 'affectedVersion': affectedVersion!,
        if (effectiveSeverity != null) 'effectiveSeverity': effectiveSeverity!,
        if (fixAvailable != null) 'fixAvailable': fixAvailable!,
        if (fixedCpeUri != null) 'fixedCpeUri': fixedCpeUri!,
        if (fixedPackage != null) 'fixedPackage': fixedPackage!,
        if (fixedVersion != null) 'fixedVersion': fixedVersion!,
        if (packageType != null) 'packageType': packageType!,
      };
}

/// Details on how a particular software package was installed on a system.
class PackageOccurrence {
  /// All of the places within the filesystem versions of this package have been
  /// found.
  ///
  /// Required.
  core.List<Location>? location;

  /// The name of the installed package.
  ///
  /// Output only.
  core.String? name;

  PackageOccurrence({
    this.location,
    this.name,
  });

  PackageOccurrence.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? (_json['location'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
      };
}

/// Selects a repo using a Google Cloud Platform project ID (e.g.,
/// winged-cargo-31) and a repo name within that project.
typedef ProjectRepoId = $ProjectRepoId;

/// Steps taken to build the artifact.
///
/// For a TaskRun, typically each container corresponds to one step in the
/// recipe.
class Recipe {
  /// Collection of all external inputs that influenced the build on top of
  /// recipe.definedInMaterial and recipe.entryPoint.
  ///
  /// For example, if the recipe type were "make", then this might be the flags
  /// passed to make aside from the target, which is captured in
  /// recipe.entryPoint. Since the arguments field can greatly vary in
  /// structure, depending on the builder and recipe type, this is of form
  /// "Any".
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? arguments;

  /// Index in materials containing the recipe steps that are not implied by
  /// recipe.type.
  ///
  /// For example, if the recipe type were "make", then this would point to the
  /// source containing the Makefile, not the make program itself. Set to -1 if
  /// the recipe doesn't come from a material, as zero is default unset value
  /// for int64.
  core.String? definedInMaterial;

  /// String identifying the entry point into the build.
  ///
  /// This is often a path to a configuration file and/or a target label within
  /// that file. The syntax and meaning are defined by recipe.type. For example,
  /// if the recipe type were "make", then this would reference the directory in
  /// which to run make as well as which target to use.
  core.String? entryPoint;

  /// Any other builder-controlled inputs necessary for correctly evaluating the
  /// recipe.
  ///
  /// Usually only needed for reproducing the build but not evaluated as part of
  /// policy. Since the environment field can greatly vary in structure,
  /// depending on the builder and recipe type, this is of form "Any".
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? environment;

  /// URI indicating what type of recipe was performed.
  ///
  /// It determines the meaning of recipe.entryPoint, recipe.arguments,
  /// recipe.environment, and materials.
  core.String? type;

  Recipe({
    this.arguments,
    this.definedInMaterial,
    this.entryPoint,
    this.environment,
    this.type,
  });

  Recipe.fromJson(core.Map _json)
      : this(
          arguments: _json.containsKey('arguments')
              ? (_json['arguments'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          definedInMaterial: _json.containsKey('definedInMaterial')
              ? _json['definedInMaterial'] as core.String
              : null,
          entryPoint: _json.containsKey('entryPoint')
              ? _json['entryPoint'] as core.String
              : null,
          environment: _json.containsKey('environment')
              ? (_json['environment'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arguments != null) 'arguments': arguments!,
        if (definedInMaterial != null) 'definedInMaterial': definedInMaterial!,
        if (entryPoint != null) 'entryPoint': entryPoint!,
        if (environment != null) 'environment': environment!,
        if (type != null) 'type': type!,
      };
}

/// Metadata for any related URL information.
class RelatedUrl {
  /// Label to describe usage of the URL.
  core.String? label;

  /// Specific URL associated with the resource.
  core.String? url;

  RelatedUrl({
    this.label,
    this.url,
  });

  RelatedUrl.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (url != null) 'url': url!,
      };
}

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

  RepoId.fromJson(core.Map _json)
      : this(
          projectRepoId: _json.containsKey('projectRepoId')
              ? ProjectRepoId.fromJson(
                  _json['projectRepoId'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
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

  Source.fromJson(core.Map _json)
      : this(
          additionalContexts: _json.containsKey('additionalContexts')
              ? (_json['additionalContexts'] as core.List)
                  .map((value) => SourceContext.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          artifactStorageSourceUri:
              _json.containsKey('artifactStorageSourceUri')
                  ? _json['artifactStorageSourceUri'] as core.String
                  : null,
          context: _json.containsKey('context')
              ? SourceContext.fromJson(
                  _json['context'] as core.Map<core.String, core.dynamic>)
              : null,
          fileHashes: _json.containsKey('fileHashes')
              ? (_json['fileHashes'] as core.Map<core.String, core.dynamic>)
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

  SourceContext.fromJson(core.Map _json)
      : this(
          cloudRepo: _json.containsKey('cloudRepo')
              ? CloudRepoSourceContext.fromJson(
                  _json['cloudRepo'] as core.Map<core.String, core.dynamic>)
              : null,
          gerrit: _json.containsKey('gerrit')
              ? GerritSourceContext.fromJson(
                  _json['gerrit'] as core.Map<core.String, core.dynamic>)
              : null,
          git: _json.containsKey('git')
              ? GitSourceContext.fromJson(
                  _json['git'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
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

class Subject {
  /// "": ""
  core.Map<core.String, core.String>? digest;
  core.String? name;

  Subject({
    this.digest,
    this.name,
  });

  Subject.fromJson(core.Map _json)
      : this(
          digest: _json.containsKey('digest')
              ? (_json['digest'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (digest != null) 'digest': digest!,
        if (name != null) 'name': name!,
      };
}

/// The Upgrade Distribution represents metadata about the Upgrade for each
/// operating system (CPE).
///
/// Some distributions have additional metadata around updates, classifying them
/// into various categories and severities.
class UpgradeDistribution {
  /// The operating system classification of this Upgrade, as specified by the
  /// upstream operating system upgrade feed.
  ///
  /// For Windows the classification is one of the category_ids listed at
  /// https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)
  core.String? classification;

  /// Required - The specific operating system this metadata applies to.
  ///
  /// See https://cpe.mitre.org/specification/.
  core.String? cpeUri;

  /// The cve tied to this Upgrade.
  core.List<core.String>? cve;

  /// The severity as specified by the upstream operating system.
  core.String? severity;

  UpgradeDistribution({
    this.classification,
    this.cpeUri,
    this.cve,
    this.severity,
  });

  UpgradeDistribution.fromJson(core.Map _json)
      : this(
          classification: _json.containsKey('classification')
              ? _json['classification'] as core.String
              : null,
          cpeUri: _json.containsKey('cpeUri')
              ? _json['cpeUri'] as core.String
              : null,
          cve: _json.containsKey('cve')
              ? (_json['cve'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classification != null) 'classification': classification!,
        if (cpeUri != null) 'cpeUri': cpeUri!,
        if (cve != null) 'cve': cve!,
        if (severity != null) 'severity': severity!,
      };
}

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

  UpgradeOccurrence.fromJson(core.Map _json)
      : this(
          distribution: _json.containsKey('distribution')
              ? UpgradeDistribution.fromJson(
                  _json['distribution'] as core.Map<core.String, core.dynamic>)
              : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          parsedVersion: _json.containsKey('parsedVersion')
              ? Version.fromJson(
                  _json['parsedVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          windowsUpdate: _json.containsKey('windowsUpdate')
              ? WindowsUpdate.fromJson(
                  _json['windowsUpdate'] as core.Map<core.String, core.dynamic>)
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
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  core.int? epoch;

  /// Human readable version string.
  ///
  /// This string is of the form :- and is only set when kind is NORMAL.
  core.String? fullName;

  /// Whether this version is specifying part of an inclusive range.
  ///
  /// Grafeas does not have the capability to specify version ranges; instead we
  /// have fields that specify start version and end versions. At times this is
  /// insufficient - we also need to specify whether the version is included in
  /// the range or is excluded from the range. This boolean is expected to be
  /// set to true when the version is included in a range.
  core.bool? inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VERSION_KIND_UNSPECIFIED" : Unknown.
  /// - "NORMAL" : A standard package version.
  /// - "MINIMUM" : A special version representing negative infinity.
  /// - "MAXIMUM" : A special version representing positive infinity.
  core.String? kind;

  /// Required only when version kind is NORMAL.
  ///
  /// The main part of the version name.
  core.String? name;

  /// The iteration of the package build from the above version.
  core.String? revision;

  Version({
    this.epoch,
    this.fullName,
    this.inclusive,
    this.kind,
    this.name,
    this.revision,
  });

  Version.fromJson(core.Map _json)
      : this(
          epoch: _json.containsKey('epoch') ? _json['epoch'] as core.int : null,
          fullName: _json.containsKey('fullName')
              ? _json['fullName'] as core.String
              : null,
          inclusive: _json.containsKey('inclusive')
              ? _json['inclusive'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (epoch != null) 'epoch': epoch!,
        if (fullName != null) 'fullName': fullName!,
        if (inclusive != null) 'inclusive': inclusive!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (revision != null) 'revision': revision!,
      };
}

/// An occurrence of a severity vulnerability on a resource.
class VulnerabilityOccurrence {
  /// The CVSS score of this vulnerability.
  ///
  /// CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10
  /// indicates high severity.
  ///
  /// Output only.
  core.double? cvssScore;

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
    this.effectiveSeverity,
    this.fixAvailable,
    this.longDescription,
    this.packageIssue,
    this.relatedUrls,
    this.severity,
    this.shortDescription,
    this.type,
  });

  VulnerabilityOccurrence.fromJson(core.Map _json)
      : this(
          cvssScore: _json.containsKey('cvssScore')
              ? (_json['cvssScore'] as core.num).toDouble()
              : null,
          effectiveSeverity: _json.containsKey('effectiveSeverity')
              ? _json['effectiveSeverity'] as core.String
              : null,
          fixAvailable: _json.containsKey('fixAvailable')
              ? _json['fixAvailable'] as core.bool
              : null,
          longDescription: _json.containsKey('longDescription')
              ? _json['longDescription'] as core.String
              : null,
          packageIssue: _json.containsKey('packageIssue')
              ? (_json['packageIssue'] as core.List)
                  .map((value) => PackageIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          relatedUrls: _json.containsKey('relatedUrls')
              ? (_json['relatedUrls'] as core.List)
                  .map((value) => RelatedUrl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          shortDescription: _json.containsKey('shortDescription')
              ? _json['shortDescription'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cvssScore != null) 'cvssScore': cvssScore!,
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

  WindowsUpdate.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          identity: _json.containsKey('identity')
              ? Identity.fromJson(
                  _json['identity'] as core.Map<core.String, core.dynamic>)
              : null,
          kbArticleIds: _json.containsKey('kbArticleIds')
              ? (_json['kbArticleIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastPublishedTimestamp: _json.containsKey('lastPublishedTimestamp')
              ? _json['lastPublishedTimestamp'] as core.String
              : null,
          supportUrl: _json.containsKey('supportUrl')
              ? _json['supportUrl'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
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
